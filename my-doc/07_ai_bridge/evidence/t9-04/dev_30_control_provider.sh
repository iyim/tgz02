#!/system/bin/sh
# T9-04 control experiment: does the ALREADY ACCEPTED provider channel (TtsExec -> GenieApi
# method 4) produce real playback + tts feedback right now? Same capture, same tags, so the
# AIDL result can be compared against a known-good baseline instead of against an assumption.
LOG=/data/local/tmp/t9/t9_04/control_provider.log
TXT=/data/local/tmp/t9/t9_04/ctrl.txt
: > "$LOG"
printf '控制实验 播放测试' > "$TXT"
echo "=== date"; date
logcat -v time -s T904 AudioStateManager VoiceManager TtsManager AGSpeechEngine > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== enqueue through the accepted provider path"
sh /data/local/tmp/t5_bridge/run_tts_exec.sh play "$TXT" t904ctrl
sleep 16
kill $LP 2>/dev/null
sleep 1
echo "=== tts feedback / engine lines"
grep -E 'tts_feedback|status = |TtsManager|onNotify|play tts_id' "$LOG" | head -40
echo "=== full capture (head 40)"
head -40 "$LOG"
echo "=== END"
