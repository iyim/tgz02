#!/system/bin/sh
# asr_restore_ev.sh -- §四 证据：桥在跑 + 事件落盘 + 识别侧计数 + 路由结果
echo "=== bridge ==="
sh /data/local/tmp/t5_bridge/run_bridge.sh status 2>&1 | tail -2
echo "=== events count ==="
wc -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== last final that arrived after the bridge restart ==="
grep 't6-11805-1968336-g3' /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== asr hook stats (live) ==="
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep 'stats='
echo "=== worker route marker ==="
cat /data/local/tmp/t5_bridge/work/native_route.public.json
echo
echo "=== worker log: that event ==="
grep 't6-11805-1968336-g3' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | head -2
echo "=== supervisors ==="
ps -A -o PID,ARGS 2>/dev/null | grep tg_supervisor | grep -v grep
