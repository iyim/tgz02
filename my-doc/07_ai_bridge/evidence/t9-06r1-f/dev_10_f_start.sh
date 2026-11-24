#!/system/bin/sh
# T9-06R1-FINAL: start a single, self-contained F run (wake -> ASR -> AI -> factory TTS).
# Records the exact offsets of the worker log and the TTS journal so the stop script can print
# ONLY what this run produced (no historical stitching).
W=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
M=/data/local/tmp/t9/t9_06/f_meta.txt
C=/data/local/tmp/t9/t9_06/f_capture.log

pkill -f 'logcat.*SessionManager' 2>/dev/null
sleep 1
{
    echo "t0=$(date '+%Y-%m-%d %H:%M:%S')"
    echo "worker_lines=$(wc -l < "$W" 2>/dev/null || echo 0)"
    echo "journal_lines=$(wc -l < "$J" 2>/dev/null || echo 0)"
} > "$M"
: > "$C"
nohup logcat -v time -s SessionManager AGSpeechEngine AudioStateManager VoiceManager TtsManager tgt \
    > "$C" 2>&1 &
echo "capture_pid=$!"
cat "$M"
