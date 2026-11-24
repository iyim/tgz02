#!/system/bin/sh
# t9_08b_r2_dev_read.sh [journal_from_line] -- one read-only evidence snapshot for T9-08B-R2.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_read.sh 1180"
#
# Prints the playback state, the queue depth, the stop-related lines from both logs and the journal
# records after the given line number (body text is never printed: the journal carries ids only).
set -u
UI=/data/local/tmp/t9_ui
TTS=/data/local/tmp/t5_bridge/tts
J=$TTS/journal.jsonl
FROM=${1:-0}

echo "== play.public.json =="
cat "$TTS/play.public.json" 2>/dev/null; echo
echo "== depths =="
echo "queue=$(ls "$TTS/queue" 2>/dev/null | wc -l | tr -d ' ') inflight=$(ls "$TTS/inflight" 2>/dev/null | wc -l | tr -d ' ') control=[$(ls "$TTS/control" 2>/dev/null | tr '\n' ' ')] journal_lines=$(wc -l < "$J" 2>/dev/null | tr -d ' ')"
echo "== journal delta (from line $FROM) =="
if [ "$FROM" -gt 0 ]; then
    tail -n +$((FROM + 1)) "$J" 2>/dev/null | head -60
else
    tail -8 "$J" 2>/dev/null
fi
echo "== worker log: stop lines =="
grep -E "inbox stop|tts stop" /data/local/tmp/t5_bridge/ai_worker/ai_worker.log 2>/dev/null | tail -10
echo "== executor log: stop lines =="
grep -E "stop:|stale|control:" "$TTS/tts_exec.log" 2>/dev/null | tail -10
echo "== counters =="
grep -o '"stopped": *[0-9]*' "$TTS/state.json" 2>/dev/null | head -1
grep -o '"inbox_stops":[0-9]*' "$UI/status.public.json" 2>/dev/null | head -1
echo "EXIT=0"
