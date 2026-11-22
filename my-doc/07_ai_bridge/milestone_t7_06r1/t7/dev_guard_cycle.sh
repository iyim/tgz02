#!/system/bin/sh
# dev_guard_cycle.sh -- 真机：guard-stop -> 复核 hooked=0 -> guard-start -> 复核 hooked=1
set -u
echo "=== before ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-status
echo
echo "=== guard-stop ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-stop
echo "stop_rc=$?"
echo
echo "=== after stop (expect hooked=0, asr sup alive) ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-status
echo
echo "=== guard-start ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-start
echo "start_rc=$?"
echo
sleep 4
echo "=== after start ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-status
