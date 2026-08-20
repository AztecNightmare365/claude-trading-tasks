#!/usr/bin/env bash
# run_session.sh — run one trading routine and record its full output to BOTH
# a per-session log and a single consolidated decision log for later review.
#
#   run_session.sh "<label>" <prompt_file> <per_session_log>
#
# Everything the routine prints (its full reasoning + summary) is appended,
# timestamped and labeled, to local/logs/decisions.log — so you can scroll back
# through the day and see why each decision was made:
#
#     tail -f  ~/claude-trading-tasks/local/logs/decisions.log     # live stream
#     less +G  ~/claude-trading-tasks/local/logs/decisions.log     # scroll history
#
# This wrapper only captures output. It does NOT change any trading logic — the
# routine still does its own analysis, orders, git commit/push exactly as before.

set -uo pipefail

REPO="${REPO_DIR:-$HOME/claude-trading-tasks}"
cd "$REPO" || { echo "run_session: cannot cd to $REPO" >&2; exit 1; }

LABEL="${1:?usage: run_session.sh <label> <prompt_file> <session_log>}"
PROMPT_FILE="${2:?missing prompt file}"
SESSION_LOG="${3:?missing session log}"
DECISIONS="local/logs/decisions.log"

mkdir -p local/logs

# Banner — written to both logs so each entry is easy to find when scrolling.
{
  printf '\n\n'
  printf '===================================================================\n'
  printf '  %s\n' "$LABEL"
  printf '  %s\n' "$(date '+%A %Y-%m-%d  %H:%M:%S %Z')"
  printf '===================================================================\n\n'
} | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null

# Run the routine; funnel its full output to both logs, nothing to stdout.
claude -p "$(cat "$PROMPT_FILE")" 2>&1 | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null
rc=${PIPESTATUS[0]}

printf -- '\n---- session end %s (exit=%s) ----\n' "$(date '+%H:%M:%S %Z')" "$rc" \
  | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null

exit "$rc"
