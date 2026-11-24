#!/system/bin/sh
# T9-06R1: inspect the guard/factory lines of the voice capture.
echo "=== factory sessions around the native command"
grep -nE 'onStartTalk|onCloudEOUEvent|onStopTalk|setStreamVolume|NOTIFY_TTS_STATUS' \
    /data/local/tmp/t9/t9_06/06r1_voice.log | tail -20
echo "=== guard continuity lines (any tag)"
grep -inE 'continuity' /data/local/tmp/t9/t9_06/06r1_voice.log | tail -20
echo "=== guard log file (if it writes one)"
ls -l /data/local/tmp/t7/*.log 2>/dev/null | tail -5
for f in /data/local/tmp/t7/guard.log /data/local/tmp/t7/tg_guard.log; do
    [ -f "$f" ] && { echo "--- $f"; tail -20 "$f"; }
done
echo "=== tgt tap log (factory talk)"
ls -l /data/local/tmp/t5_bridge/ai_worker/factory_talk.log 2>/dev/null
tail -8 /data/local/tmp/t5_bridge/ai_worker/factory_talk.log 2>/dev/null
echo "=== END"
