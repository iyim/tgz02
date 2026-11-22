#!/system/bin/sh
# dev_postboot.sh -- 重启后恢复运行态：ASR Supervisor（init.rc 自带）+ TTS 守卫 + WakeInfo 观测
echo "=== processes ==="
ps -A -o PID,ARGS 2>/dev/null | grep -E 'smartapp:core|tg_supervisor' | grep -v grep
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE"
echo "=== ASR hook mapped? ==="
grep -c libtg_hook.so /proc/$CORE/maps
echo "=== events file ==="
ls -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== guard-start ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-start
echo "=== wakeinfo install ==="
chmod 777 /data/local/tmp/t7/wake
touch /data/local/tmp/t7/wake/wakeinfo.jsonl /data/local/tmp/t7/wake/wakeinfo.status
chmod 666 /data/local/tmp/t7/wake/wakeinfo.jsonl /data/local/tmp/t7/wake/wakeinfo.status
sh /data/local/tmp/t7/dev_inject_wake.sh install
echo "=== worker ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek
