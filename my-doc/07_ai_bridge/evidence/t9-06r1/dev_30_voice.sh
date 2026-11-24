#!/system/bin/sh
# T9-06R1 acceptance F/G: real voice regression.
#   F: wake word + a question -> factory ASR -> AI reply -> factory TTS (audible)
#   G: wake word + a factory native command (volume) -> automatic re-listen still works
# The wavs are the T8-15.x fixtures already on the device; tinyplay feeds them to the speaker and
# the factory KWS hears them through the mic (the way every earlier milestone tested this).
L=/data/local/tmp/t9/t9_06/06r1_voice.log
W=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
: > "$L"
echo "=== date"; date
input keyevent KEYCODE_WAKEUP
sleep 1
echo "=== wav present?"
ls -l /data/local/tmp/wake_time_only.wav /data/local/tmp/wake_vol.wav
echo "=== volume state"
dumpsys audio 2>/dev/null | grep -m3 -A2 'STREAM_MUSIC' | head -6
echo "=== worker/journal baseline"
wc -l < "$W"; wc -l < "$J"

logcat -c 2>/dev/null
logcat -v time -s SessionManager AGSpeechEngine AudioStateManager VoiceManager TtsManager > "$L" 2>&1 &
LP=$!
sleep 1

echo "=== F: wake + question"
tinyplay /data/local/tmp/wake_time_only.wav
sleep 28
echo "--- factory session lines:"
grep -E 'onStartTalk|onCloudEOUEvent|onStopTalk|NOTIFY_TTS_STATUS' "$L" | head -12
echo "--- worker reply / tts lines:"
tail -6 "$W"
echo "--- journal tail:"
tail -3 "$J"

echo "=== G: wake + factory native command (volume) and automatic re-listen"
tinyplay /data/local/tmp/wake_vol.wav
sleep 30
echo "--- factory session lines:"
grep -E 'onStartTalk|setStreamVolume|onStopTalk' "$L" | tail -8
echo "--- worker re-listen lines:"
grep -E 'continuity|CONFIRMED|re-listen|relisten' "$W" | tail -8
echo "--- journal tail:"
tail -3 "$J"
echo "--- guard:"
grep -iE 'continuity req|accepted \(first\)|accepted \(new\)' "$L" | tail -6

kill $LP 2>/dev/null
sleep 1
echo "=== END"
