#!/system/bin/sh
# T9-19e: what did the factory do when the user asked for an alarm?
echo "=== factory alarm / nlu activity in the last minutes ==="
logcat -d -v time 2>/dev/null | grep -iE 'AlarmManager|alarm|NlpResult|GenieTable|VoiceManager|tgl |tgt ' \
  | grep -viE 'XEGN|MultiModal|BufferQueue|libPerf' | tail -40
echo
echo "=== worker: last 6 routes ==="
grep -aE 'route=' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -6
echo
echo "=== native route marker (latest) ==="
cat /data/local/tmp/t5_bridge/work/native_route.public.json 2>/dev/null
echo
echo "=== factory alarm DB (does it hold anything?) ==="
find /data/data/com.alibaba.ailabs.genie.smartapp -iname '*alarm*' 2>/dev/null | head -5
