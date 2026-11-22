#!/system/bin/sh
# restore_stack.sh -- 重启后把 T6/T7 运行态一次性拉起来（桥 -> Worker -> 守卫 -> 观测库）
set -u
echo "=== 1) ASR event bridge ==="
sh /data/local/tmp/t5_bridge/run_bridge.sh start 2>&1 | tail -2
echo "=== 2) worker ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -1
echo "=== 3) guard supervisor ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-start 2>&1 | tail -6
echo "=== 4) wakeinfo (read-only) ==="
sh /data/local/tmp/t7/inject_wake.sh install 2>&1 | tail -2
echo "=== 5) state ==="
sh /data/local/tmp/t7/run_t7_05.sh verify
