#!/system/bin/sh
# dev_final_state.sh -- R2 交付状态快照（verify / status / guard / wakeinfo）
echo "=== verify ==="
sh /data/local/tmp/t7/run_t7_05.sh verify
echo
echo "=== guard-status ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-status
echo
echo "=== worker status: route/gate ==="
tr ',' '\n' < /data/local/tmp/t5_bridge/ai_worker/ai_worker_status.json | grep -E '"(route|gate)"|dup_|same_text|native|"ai"|publish|incomplete|fast_released'
echo
echo "=== worker log tail ==="
tail -n 3 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo
echo "=== wakeinfo status ==="
cat /data/local/tmp/t7/wake/wakeinfo.status 2>/dev/null
echo "=== wakeinfo lines ==="
wc -l /data/local/tmp/t7/wake/wakeinfo.jsonl
echo
echo "=== processes ==="
ps -A -o PID,ARGS 2>/dev/null | grep -E 'smartapp:core|tg_supervisor|bin/ai_worker' | grep -v grep
