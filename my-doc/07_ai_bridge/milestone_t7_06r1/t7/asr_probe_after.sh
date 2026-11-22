#!/system/bin/sh
# asr_probe_after.sh -- 唤醒+说话之后的识别链路证据
echo "=== events ==="
wc -l /data/local/tmp/t5_bridge/work/events.jsonl
tail -n 2 /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== asr hook stats (live, via injector) ==="
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE"
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t6/libtg_hook.so --check 2>&1 | grep -E 'stats=|hooked'
echo "=== logcat: asr/speech/wake lines ==="
logcat -d 2>/dev/null | grep -iE 'AliTVASR|ASREngine|Recognizer|speech_engine|wakeup' | tail -25
echo "=== logcat: errors ==="
logcat -d 2>/dev/null | grep -iE ' E |error|fail' | tail -20
