#!/usr/bin/env bash
# boot_catchup.sh — runs once at every boot (via @reboot cron).
#
# Two jobs:
#   1) ALERT if the machine was down across trading sessions (the Aug 24-25 case):
#      compares the last-success heartbeat to now and records any gap.
#   2) CATCH-UP: if we booted mid-market on a weekday and the most recent
#      scheduled session hasn't run yet today, run it now — so positions get
#      managed immediately instead of sitting unmanaged until the next slot.
#
# Guardrails on the catch-up run:
#   - weekdays only, and only between 07:00 and 16:00 ET (machine TZ is ET)
#   - skips if the next scheduled slot is <20 min away (let cron do it)
#   - skips if a session already succeeded at/after that slot today (no double-run)
#
# It does NOT change trading logic — it just invokes run_session.sh, same as cron.

set -uo pipefail
REPO="${REPO_DIR:-$HOME/claude-trading-tasks}"
cd "$REPO" || exit 1
mkdir -p local/logs
ALERTS="local/logs/ALERTS.log"
DECISIONS="local/logs/decisions.log"
HEARTBEAT="local/logs/last_success"

# Let the network / clock settle after boot before doing anything.
sleep "${CATCHUP_BOOT_DELAY:-90}"

note() { printf '[%s] BOOT — %s\n' "$(date '+%Y-%m-%d %H:%M:%S %Z')" "$1" | tee -a "$ALERTS" "$DECISIONS" >/dev/null; }

now=$(date +%s)
dow=$(date +%u)                 # 1=Mon .. 7=Sun
hhmm=$(date +%H%M); hhmm=$((10#$hhmm))
today=$(date +%Y-%m-%d)

# --- 1) downtime alert ---------------------------------------------------------
if [ -f "$HEARTBEAT" ]; then
  last=$(cat "$HEARTBEAT" 2>/dev/null || echo 0)
  gap_h=$(( (now - last) / 3600 ))
  note "system booted. Last successful session was ${gap_h}h ago ($(date -d "@$last" '+%a %m-%d %H:%M' 2>/dev/null))."
  # More than ~18h since a good run means at least one session was very likely missed.
  if [ "$gap_h" -ge 18 ]; then
    note "⚠ GAP: >=${gap_h}h with no successful session — sessions were missed while the machine was down. Review positions."
  fi
else
  note "system booted. No prior heartbeat found (first run or logs reset)."
fi

# --- 2) mid-market catch-up ----------------------------------------------------
# Slot table (ET, minutes-of-day) -> prompt file + label.
slots_min=(700 930 1000 1200 1515)   # written as HHMM for readability below
run_slot() {  # $1 = HHMM key
  case "$1" in
    700)  echo "0700_overnight.txt|7 AM overnight (CATCH-UP)|0700.log" ;;
    930)  echo "0930_open.txt|9:30 AM open-reaction (CATCH-UP)|0930.log" ;;
    1000) echo "1000_trading.txt|10 AM trading (CATCH-UP)|1000.log" ;;
    1200) echo "1200_trading.txt|12 PM trading (CATCH-UP)|1200.log" ;;
    1515) echo "1515_trading.txt|3:15 PM close-out (CATCH-UP)|1515.log" ;;
  esac
}

# Weekend or outside the actionable window → alert only, no catch-up trade.
if [ "$dow" -ge 6 ]; then note "weekend — no catch-up session."; exit 0; fi
if [ "$hhmm" -lt 700 ] || [ "$hhmm" -ge 1600 ]; then
  note "outside 07:00–16:00 ET window (now $(date +%H:%M)) — no catch-up session; next scheduled slot will handle it."
  exit 0
fi

# Find latest past slot and the next upcoming slot (in HHMM space).
latest=""; next=""
for s in 700 930 1000 1200 1515; do
  if [ "$s" -le "$hhmm" ]; then latest="$s"; elif [ -z "$next" ]; then next="$s"; fi
done
[ -z "$latest" ] && { note "before first slot — nothing to catch up."; exit 0; }

# If the next slot is imminent (<20 min), let cron handle it to avoid a double-run.
if [ -n "$next" ]; then
  # crude minutes-to-next using HHMM difference within the hour boundaries
  now_epoch=$now
  nh=$(( next / 100 )); nm=$(( next % 100 ))
  next_epoch=$(date -d "$today $nh:$(printf '%02d' "$nm")" +%s 2>/dev/null || echo 0)
  if [ "$next_epoch" -gt 0 ] && [ $(( next_epoch - now_epoch )) -lt 1200 ]; then
    note "next slot ($next) is <20 min away — letting cron run it, no catch-up."
    exit 0
  fi
fi

# Skip if a session already succeeded at/after the latest slot today (no double-run).
if [ -f "$HEARTBEAT" ]; then
  last=$(cat "$HEARTBEAT" 2>/dev/null || echo 0)
  lh=$(( latest / 100 )); lm=$(( latest % 100 ))
  latest_epoch=$(date -d "$today $lh:$(printf '%02d' "$lm")" +%s 2>/dev/null || echo 0)
  if [ "$last" -ge "$latest_epoch" ] && [ "$latest_epoch" -gt 0 ]; then
    note "latest slot ($latest) already ran successfully today — no catch-up needed."
    exit 0
  fi
fi

IFS='|' read -r pf lbl lg <<<"$(run_slot "$latest")"
note "running CATCH-UP for missed slot $latest → $lbl"
exec bash local/run_session.sh "$lbl" "local/prompts/$pf" "local/logs/$lg"
