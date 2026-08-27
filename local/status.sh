#!/usr/bin/env bash
# status.sh — one-shot dashboard: health, recent trades, alerts, and latest decision.
#
#   bash local/status.sh          # full dashboard
#   bash local/status.sh trades   # just the trade log (pretty table)
#   bash local/status.sh log      # follow the live decision stream (tail -F)
#
# Read-only. Touches nothing.

cd "$(dirname "$0")/.." || exit 1
L=local/logs
b=$(printf '\033[1m'); d=$(printf '\033[0m')   # bold / reset

case "${1:-}" in
  trades)
    column -s, -t < trade_log.csv | less -S
    exit 0 ;;
  log)
    exec tail -n 100 -F "$L/decisions.log" ;;
esac

echo "${b}==== HEALTH ====${d}"
cat "$L/health.status" 2>/dev/null || echo "(no health.status yet)"
if [ -f "$L/last_success" ]; then
  echo "last successful session: $(date -d "@$(cat "$L/last_success")" '+%a %Y-%m-%d %H:%M' 2>/dev/null)"
fi

echo; echo "${b}==== RECENT ALERTS (failures / missed sessions) ====${d}"
if [ -s "$L/ALERTS.log" ]; then tail -n 6 "$L/ALERTS.log"; else echo "none 🎉"; fi

echo; echo "${b}==== LAST 10 CLOSED TRADES ====${d}"
{ head -1 trade_log.csv; tail -n 10 trade_log.csv; } \
  | column -s, -t \
  | awk 'NR==1{print;next}{print}'

echo; echo "${b}==== TOTAL REALIZED P&L (this log) ====${d}"
awk -F, 'NR>1{n++; s+=$12; if($12+0>0)w++} END{
  printf "trades: %d | wins: %d (%.0f%%) | net: $%.2f\n", n, w, (n?100*w/n:0), s
}' trade_log.csv

echo; echo "${b}==== LATEST DECISION (tail of decisions.log) ====${d}"
tail -n 15 "$L/decisions.log" 2>/dev/null

echo
echo "More:  bash local/status.sh trades   (full trade table, scrollable)"
echo "       bash local/status.sh log      (live decision stream)"
echo "       less +G $L/decisions.log       (scroll full history)"
