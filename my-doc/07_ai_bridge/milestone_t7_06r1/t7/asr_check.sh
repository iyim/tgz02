#!/system/bin/sh
# asr_check.sh -- 唤醒后识别链路的即时状态（hook 计数 / 桥计数 / 事件文件）
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE"
echo "=== asr hook stats ==="
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep -E 'stats='
echo "=== bridge status ==="
cat /data/local/tmp/t5_bridge/work/bridge_status.json
echo
echo "=== events ==="
wc -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== wakeinfo tail ==="
tail -n 2 /data/data/com.alibaba.ailabs.genie.smartapp/files/wake/wakeinfo.jsonl
