#!/system/bin/sh
# watch.sh -- 只读：这一次（用户真人）唤醒有没有走到识别
D=/data/data/com.alibaba.ailabs.genie.smartapp/files/wake
echo "events: $(wc -l < /data/local/tmp/t5_bridge/work/events.jsonl)"
tail -n 1 /data/local/tmp/t5_bridge/work/events.jsonl
echo "--- wakeinfo ---"
cat $D/wakeinfo.status
echo "--- engine ---"
logcat -d 2>/dev/null | grep -E 'AGSpeechEngine|WakeupEngineWrapper' | tail -8
