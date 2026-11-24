#!/system/bin/sh
# t9_08b_r2_dev_ui_probe.sh -- print what the app itself put into the inbox/result channel.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_ui_probe.sh"
#
# The host counts stop_receipts=N before and after a tap on the real 停止播报 button, so the run can
# prove the request came from the app and not from the test harness.
set -u
UI=/data/local/tmp/t9_ui

N=$(ls "$UI/result" 2>/dev/null | grep -c '^stop-')
echo "stop_receipts=$N"
echo "== newest stop receipts =="
ls "$UI/result" 2>/dev/null | grep -E '^stop-' | tail -3 | while read -r f; do
    echo "-- $f"
    cat "$UI/result/$f" 2>/dev/null; echo
done
echo "== newest stop requests still in the inbox =="
ls "$UI/inbox" 2>/dev/null | grep -E '^stop-' | tail -3
echo "EXIT=0"
