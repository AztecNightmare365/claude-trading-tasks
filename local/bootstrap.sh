#!/usr/bin/env bash
# Set up the trading routines on this machine. Safe to re-run.
#
#   bash bootstrap.sh            # install / update everything
#   bash bootstrap.sh --dry-run  # show what would change, touch nothing
#
# Override the checkout location with REPO_DIR=/some/path bash bootstrap.sh

set -euo pipefail

REPO_DIR="${REPO_DIR:-$HOME/claude-trading-tasks}"
REPO_URL="https://github.com/AztecNightmare365/claude-trading-tasks.git"
SETTINGS="$HOME/.claude/settings.json"
MARK_A="# >>> claude-trading-tasks (managed) >>>"
MARK_B="# <<< claude-trading-tasks (managed) <<<"

DRY=0
[ "${1:-}" = "--dry-run" ] && DRY=1

say()  { printf '\n\033[1m%s\033[0m\n' "$*"; }
ok()   { printf '  ok    %s\n' "$*"; }
warn() { printf '  WARN  %s\n' "$*"; }
die()  { printf '\n  FAIL  %s\n\n' "$*" >&2; exit 1; }
run()  { if [ "$DRY" = 1 ]; then printf '  would: %s\n' "$*"; else eval "$@"; fi; }

# ---------------------------------------------------------------- preflight
say "Checking prerequisites"

for bin in git crontab; do
  command -v "$bin" >/dev/null || die "$bin is not installed"
  ok "$bin"
done

command -v claude >/dev/null || die "claude (Claude Code) is not installed.
        Install it, run 'claude' once to log in, then re-run this script."
ok "claude — $(claude --version 2>/dev/null | head -1)"

# The routines need a logged-in Claude with the claude.ai connectors
# (Robinhood, polygon-io, Gmail) attached to the same account.
if [ ! -d "$HOME/.claude" ]; then
  warn "no ~/.claude yet — have you run 'claude' once and logged in?"
fi

TZ_NOW="$(timedatectl show -p Timezone --value 2>/dev/null || cat /etc/timezone 2>/dev/null || echo unknown)"
if [ "$TZ_NOW" = "America/New_York" ]; then
  ok "timezone $TZ_NOW"
else
  warn "timezone is '$TZ_NOW', not America/New_York."
  warn "The cron schedule is written in Eastern to track market hours across DST."
  warn "Fix with:  sudo timedatectl set-timezone America/New_York"
fi

# ---------------------------------------------------------------- repo
say "Repository"

if [ -d "$REPO_DIR/.git" ]; then
  ok "already cloned at $REPO_DIR"
  run "git -C '$REPO_DIR' fetch origin main --quiet"
  # Don't clobber uncommitted local work; the routines commit into this tree.
  if [ -n "$(git -C "$REPO_DIR" status --porcelain 2>/dev/null)" ]; then
    warn "working tree has uncommitted changes — skipping fast-forward"
  else
    run "git -C '$REPO_DIR' merge --ff-only origin/main --quiet" && ok "up to date with origin/main"
  fi
else
  run "git clone '$REPO_URL' '$REPO_DIR'"
  ok "cloned to $REPO_DIR"
fi

# Routines push unattended, so git must never stop for a credential prompt.
if git -C "$REPO_DIR" config --get credential.helper >/dev/null 2>&1; then
  ok "git credential helper configured"
elif [ -f "$HOME/.git-credentials" ] || [ -d "$HOME/.ssh" ]; then
  ok "git credentials appear to be present"
else
  warn "no git credential helper or SSH key found."
  warn "Unattended 'git push' will hang. Set up an SSH deploy key or a PAT helper."
fi

# ---------------------------------------------------------------- settings
say "Permissions (~/.claude/settings.json)"

SRC="$REPO_DIR/local/claude-settings.json"
[ -f "$SRC" ] || die "missing $SRC"

run "mkdir -p '$HOME/.claude'"

if [ -f "$SETTINGS" ]; then
  if cmp -s "$SRC" "$SETTINGS"; then
    ok "already installed and identical"
  else
    BACKUP="$SETTINGS.bak.$(date +%Y%m%d%H%M%S)"
    warn "existing settings.json differs — backing up to $(basename "$BACKUP")"
    warn "If you had your own permissions there, merge them in afterwards."
    run "cp '$SETTINGS' '$BACKUP'"
    run "cp '$SRC' '$SETTINGS'"
    ok "installed (previous version saved)"
  fi
else
  run "cp '$SRC' '$SETTINGS'"
  ok "installed"
fi

run "mkdir -p '$REPO_DIR/local/logs'"
ok "log directory ready"

# ---------------------------------------------------------------- cron
say "Schedule"

# Built here rather than read from crontab.et so the paths are real paths on
# THIS machine, and so installing preserves any unrelated cron jobs.
CRON_BLOCK="$(cat <<EOF
$MARK_A
# Managed by $REPO_DIR/local/bootstrap.sh — edit there, not here.
# Times are Eastern; the machine's timezone handles DST.
# Each job runs via local/run_session.sh, which records the routine's full
# output to its per-session log AND to local/logs/decisions.log (a single
# consolidated review log: tail -f local/logs/decisions.log).
SHELL=/bin/bash
0 7 * * 1-5 cd $REPO_DIR && bash local/run_session.sh "7 AM overnight" local/prompts/0700_overnight.txt local/logs/0700.log 2>> local/logs/cron.err
30 9 * * 1-5 cd $REPO_DIR && bash local/run_session.sh "9:30 AM open-reaction" local/prompts/0930_open.txt local/logs/0930.log 2>> local/logs/cron.err
0 10 * * 1-5 cd $REPO_DIR && bash local/run_session.sh "10 AM trading" local/prompts/1000_trading.txt local/logs/1000.log 2>> local/logs/cron.err
0 12 * * 1-5 cd $REPO_DIR && bash local/run_session.sh "12 PM trading" local/prompts/1200_trading.txt local/logs/1200.log 2>> local/logs/cron.err
15 15 * * 1-5 cd $REPO_DIR && bash local/run_session.sh "3:15 PM close-out" local/prompts/1515_trading.txt local/logs/1515.log 2>> local/logs/cron.err
0 10 * * 6 cd $REPO_DIR && bash local/run_session.sh "Weekly review" local/prompts/weekly_review.txt local/logs/weekly.log 2>> local/logs/cron.err
$MARK_B
EOF
)"

EXISTING="$(crontab -l 2>/dev/null || true)"

if [ -n "$EXISTING" ]; then
  CRON_BACKUP="$HOME/crontab.backup.$(date +%Y%m%d%H%M%S)"
  run "crontab -l > '$CRON_BACKUP' 2>/dev/null || true"
  ok "existing crontab backed up to $(basename "$CRON_BACKUP")"
fi

# Strip any previous managed block, keep everything else untouched.
OTHERS="$(printf '%s\n' "$EXISTING" | sed "\|^${MARK_A}\$|,\|^${MARK_B}\$|d")"
NEW_CRON="$(printf '%s\n%s\n' "${OTHERS%$'\n'}" "$CRON_BLOCK" | sed '/^$/{/./!d}')"

if [ "$DRY" = 1 ]; then
  printf '  would install this crontab:\n\n'
  printf '%s\n\n' "$NEW_CRON"
else
  printf '%s\n' "$NEW_CRON" | crontab -
  ok "6 routines scheduled (other cron entries preserved)"
fi

# ---------------------------------------------------------------- done
say "Next step — verify before trusting the schedule"

cat <<EOF

  Run one routine by hand and watch it finish without prompting:

      cd $REPO_DIR
      claude -p "\$(cat local/prompts/0700_overnight.txt)"

  What to check:
    - it does NOT stop to ask permission for any tool
    - the Robinhood / polygon-io connectors resolve (it reads real prices)
    - it commits and pushes at the end without asking for credentials

  If it prompts, copy the tool name from the prompt verbatim — UUID prefix and
  all — into the "allow" list in $SETTINGS, then re-run.

  Health check from then on: every weekday should produce a "7 AM overnight
  brief" commit. A missing one means that run did not complete.

      tail -f $REPO_DIR/local/logs/0700.log

EOF
