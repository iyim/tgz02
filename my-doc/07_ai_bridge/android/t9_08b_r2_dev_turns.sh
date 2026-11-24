#!/system/bin/sh
# t9_08b_r2_dev_turns.sh -- print the newest "turn" records the worker published to the UI.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_turns.sh"
#
# Used by the acceptance run to prove that a spoken answer was also published to the product UI
# channel (kind="turn" carries the user text and the answer; no body is printed by the executor).
set -u
UI=/data/local/tmp/t9_ui
N=0
ls "$UI/events" 2>/dev/null | tail -12 | while read -r f; do
    if grep -q '"kind":"turn"' "$UI/events/$f" 2>/dev/null; then
        echo "-- $f"
        cat "$UI/events/$f" 2>/dev/null
        echo ""
    fi
done
echo "EXIT=0"
