#!/system/bin/sh
# End-to-end proof the voice chain still works after T9-02R2 + T9-04.
LOG=/data/local/tmp/t9/t9_04/postcheck_tts.log
TXT=/data/local/tmp/t9/t9_04/postcheck.txt
: > "$LOG"
printf '设备状态自检 播放正常' > "$TXT"
echo "=== date"; date
input keyevent KEYCODE_WAKEUP
sleep 1
logcat -v time -s AudioStateManager VoiceManager TtsManager > "$LOG" 2>&1 &
LP=$!
sleep 1
echo "=== play through the accepted provider channel"
sh /data/local/tmp/t5_bridge/run_tts_exec.sh play "$TXT" t904postcheck
sleep 12
kill $LP 2>/dev/null
sleep 1
echo "=== play / complete feedback"
grep -E 'tts_feedback|onTtsStart:141|onTtsEnd' "$LOG" | head -10
echo "=== worker journal tail (did the AI side see it?)"
tail -2 /data/local/tmp/t5_bridge/tts/journal.jsonl 2>/dev/null | cut -c1-160
echo "=== END"
