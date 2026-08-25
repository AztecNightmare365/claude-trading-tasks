#!/usr/bin/env bash
# run_session.sh — run one trading routine, record its full output, and ALERT on failure.
#
#   run_session.sh "<label>" <prompt_file> <per_session_log>
#
# Records the routine's full reasoning to BOTH its per-session log and the
# consolidated local/logs/decisions.log (tail -F to watch live).
#
# Health/alerting (all local — no email):
#   local/logs/health.status  — one line: current OK/FAIL state (check at a glance)
#   local/logs/last_success    — epoch of the last fully-successful session (heartbeat)
#   local/logs/ALERTS.log      — append-only history of failures/missed sessions
# On failure it also fires a best-effort desktop notification (notify-send).
#
# A session is SUCCESSFUL only if claude exits 0 AND a new git commit was produced
# (every routine commits/pushes each run — a missing commit means it did not finish).
#
# This wrapper never changes trading logic — the routine does its own analysis,
# orders, and git commit/push exactly as before.

set -uo pipefail

REPO="${REPO_DIR:-$HOME/claude-trading-tasks}"
cd "$REPO" || { echo "run_session: cannot cd to $REPO" >&2; exit 1; }

LABEL="${1:?usage: run_session.sh <label> <prompt_file> <session_log>}"
PROMPT_FILE="${2:?missing prompt file}"
SESSION_LOG="${3:?missing session log}"
DECISIONS="local/logs/decisions.log"
ALERTS="local/logs/ALERTS.log"
HEALTH="local/logs/health.status"
HEARTBEAT="local/logs/last_success"

mkdir -p local/logs

# --- rotation: keep logs bounded (5 MB active file, 5 old generations kept) ---
rotate_if_big() {
  local f="$1" max="$2" keep="$3" i
  [ -f "$f" ] || return 0
  [ "$(wc -c < "$f" 2>/dev/null || echo 0)" -lt "$max" ] && return 0
  rm -f "$f.$keep"
  for (( i=keep-1; i>=1; i-- )); do [ -f "$f.$i" ] && mv "$f.$i" "$f.$((i+1))"; done
  mv "$f" "$f.1"; : > "$f"
}
rotate_if_big "$DECISIONS"   $((5*1024*1024)) 5
rotate_if_big "$SESSION_LOG" $((5*1024*1024)) 5
rotate_if_big "$ALERTS"      $((1*1024*1024)) 3

# --- alert(): durable record + best-effort desktop popup. Used for failures. ---
alert() {
  local msg="$1"
  local line="[$(date '+%Y-%m-%d %H:%M:%S %Z')] $LABEL — $msg"
  printf '%s\n' "$line" | tee -a "$ALERTS" "$DECISIONS" >/dev/null
  printf 'FAIL  %s\n' "$line" > "$HEALTH"
  # Best-effort desktop notification (works if a graphical session is present).
  if command -v notify-send >/dev/null 2>&1; then
    DISPLAY="${DISPLAY:-:0}" \
    DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=/run/user/$(id -u)/bus}" \
    notify-send -u critical "⚠ Trading routine FAILED" "$LABEL: $msg" 2>/dev/null || true
  fi
}

# Banner — written to both logs so each entry is easy to find when scrolling.
{
  printf '\n\n'
  printf '===================================================================\n'
  printf '  %s\n' "$LABEL"
  printf '  %s\n' "$(date '+%A %Y-%m-%d  %H:%M:%S %Z')"
  printf '===================================================================\n\n'
} | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null

# Capture HEAD so we can confirm the routine actually committed.
head_before="$(git rev-parse HEAD 2>/dev/null || echo none)"

# Run the routine; funnel its full output to both logs, nothing to stdout.
claude -p "$(cat "$PROMPT_FILE")" 2>&1 | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null
rc=${PIPESTATUS[0]}

head_after="$(git rev-parse HEAD 2>/dev/null || echo none)"

printf -- '\n---- session end %s (exit=%s) ----\n' "$(date '+%H:%M:%S %Z')" "$rc" \
  | tee -a "$SESSION_LOG" "$DECISIONS" >/dev/null

# --- evaluate success and alert on failure ---
if [ "$rc" -ne 0 ]; then
  reason="claude exited $rc"
  if grep -qiE "session limit|hit your (usage|session)" "$SESSION_LOG" 2>/dev/null; then
    reason="usage/session limit hit (claude exited $rc)"
  fi
  alert "$reason — no trades placed this session; positions unmanaged until next run"
elif [ "$head_after" = "$head_before" ]; then
  alert "ran but produced NO git commit — routine likely did not finish (check the log above)"
else
  date +%s > "$HEARTBEAT"
  printf 'OK    [%s] %s — committed %s\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')" "$LABEL" "${head_after:0:7}" > "$HEALTH"
fi

exit "$rc"
