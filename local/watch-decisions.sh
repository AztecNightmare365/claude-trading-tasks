#!/usr/bin/env bash
# Live terminal view of trading decisions — each session's full reasoning
# streams in here as it runs. Leave this open in a terminal.
#
#   bash local/watch-decisions.sh
#
# Shows the last 200 lines then follows. Ctrl-C to stop.
# Uses `tail -F` (follow by name) so it keeps streaming across log rotations.
# To scroll back through history instead:  less +G local/logs/decisions.log
cd "$(dirname "$0")/.." || exit 1
exec tail -n 200 -F local/logs/decisions.log
