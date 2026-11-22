#!/system/bin/sh
# dev_diag.sh -- 现场诊断：Worker 日志 / ASR 事件 / 唤醒相关 logcat
echo "=== worker log tail ==="
tail -n 8 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo "=== events file ==="
ls -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== logcat asr/wake ==="
logcat -d -t 300 | grep -iE 'asr_result|onRecognize|wakeup|startTalk' | tail -12
echo "=== hook maps ==="
grep -o 'libtg_hook.so' /proc/$(pidof com.alibaba.ailabs.genie.smartapp:core)/maps | head -1
