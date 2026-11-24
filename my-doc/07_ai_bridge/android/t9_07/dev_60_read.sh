#!/system/bin/sh
# dev_60_read.sh -- T9-07: one evidence snapshot, read-only.
#   su -c "sh /data/local/tmp/t9/t9_07/dev_60_read.sh"
set -u
UI=/data/local/tmp/t9_ui
TTS=/data/local/tmp/t5_bridge/tts
J=$TTS/journal.jsonl
FROM=${1:-0}

echo "== worker =="
echo "pid=$(pidof ai_worker)"
echo "cmdline=$(tr '\0' ' ' < /proc/$(pidof ai_worker)/cmdline 2>/dev/null)"
echo "== play.public.json =="
cat "$TTS/play.public.json" 2>/dev/null; echo
echo "stop_requests=$(grep -c 'tts stop requested' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log 2>/dev/null || echo 0)"
echo "== status.public.json =="
cat "$UI/status.public.json" 2>/dev/null; echo
echo "== events (last 3) =="
ls "$UI/events" 2>/dev/null | tail -3 | while read -r f; do
    echo "-- $f"
    cat "$UI/events/$f"
done
echo "== queue / inflight =="
ls "$TTS/queue" 2>/dev/null | head -5
echo "inflight: $(ls "$TTS/inflight" 2>/dev/null | tr '\n' ' ')"
echo "== journal (last 6, total $(wc -l < "$J" 2>/dev/null || echo 0)) =="
if [ "$FROM" -gt 0 ]; then
    tail -n +$((FROM + 1)) "$J" 2>/dev/null | head -40
else
    tail -6 "$J" 2>/dev/null
fi
echo "== app =="
echo "uid_of_voice=$(dumpsys package com.tgz02.voice | grep -m1 userId)"
echo "inbox=$(ls -ld "$UI/inbox")"
echo "events=$(ls -ld "$UI/events")"
echo "EXIT=0"
