#!/system/bin/sh
# T9-06R1-FINAL: stop the F run and print a self-contained transcript of THIS run only.
W=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
J=/data/local/tmp/t5_bridge/tts/journal.jsonl
M=/data/local/tmp/t9/t9_06/f_meta.txt
C=/data/local/tmp/t9/t9_06/f_capture.log

sleep 1
pkill -f 'logcat.*SessionManager' 2>/dev/null
sleep 1

t0=$(sed -n 's/^t0=//p' "$M")
worker_lines=$(sed -n 's/^worker_lines=//p' "$M")
journal_lines=$(sed -n 's/^journal_lines=//p' "$M")
echo "=== run window"
echo "t0=$t0   t1=$(date '+%Y-%m-%d %H:%M:%S')"
echo "worker_lines_before=$worker_lines journal_lines_before=$journal_lines"

echo
echo "=== [1] factory wake / ASR / EOU / NLP (logcat, this run only)"
grep -E 'onStartTalk:255|onCloudEOUEvent|onNlpResult|asrResult|onStopTalk:697' "$C" | head -20

echo
echo "=== [2] factory TTS engine (this run only)"
grep -E 'TtsManager.cpp:(playTts|onTtsStart|onTtsEnd)' "$C" | head -12

echo
echo "=== [3] provider status as seen by the framework (VoiceManager onNotify / AudioStateManager)"
grep -E 'VoiceManager.*onNotify|tts_feedback' "$C" | head -10

echo
echo "=== [4] guard (tgt) lines"
grep -E 'tgt ' "$C" | head -10

echo
echo "=== [5] AI worker log, lines after the baseline ($((worker_lines + 1))+ )"
tail -n +$((worker_lines + 1)) "$W"

echo
echo "=== [6] TTS journal, entries after the baseline"
tail -n +$((journal_lines + 1)) "$J"

echo
echo "=== [7] play.public.json (authoritative event_id -> tts_id)"
cat /data/local/tmp/t5_bridge/tts/play.public.json

echo
echo "=== [8] device / stack state"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core)
echo "core_pid=$CORE libtg_mappings=$(grep -c libtg_ /proc/$CORE/maps)"
echo "worker_pid=$(pidof ai_worker) cap_worker_pid=$(pidof tgb_bridge)"
echo "=== END"
