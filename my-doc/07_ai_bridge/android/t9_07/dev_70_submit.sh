#!/system/bin/sh
# dev_70_submit.sh -- T9-07R1: submit one request into the UI inbox as the UI uid, then print
# what the worker did with it (receipt + newest events + journal delta).
#
#   su -c "sh /data/local/tmp/t9/t9_07/dev_70_submit.sh <kind> <text>"
#     kind = ask  -> the worker must answer it through the AI provider
#     kind = say  -> the worker must speak the text verbatim (T9-06 semantics)
set -u
UI=/data/local/tmp/t9_ui
TTS=/data/local/tmp/t5_bridge/tts
J=$TTS/journal.jsonl
KIND=${1:-ask}
shift 2>/dev/null || true
TEXT="$*"
ID="probe-$(date +%H%M%S)"
TMP=/data/local/tmp/t9_07_submit.tmp
FROM=0
[ -f "$J" ] && FROM=$(wc -l < "$J" | tr -d ' ')

printf '{"v":1,"kind":"%s","event_id":"%s","text":"%s"}' "$KIND" "$ID" "$TEXT" > "$TMP" || exit 1
# the request must be owned by whoever owns the inbox (the allowlisted UI uid), otherwise the
# worker correctly treats it as a foreign request and unlinks it
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1

echo "== submitted kind=$KIND id=$ID text=$TEXT"
i=0
while [ $i -lt 40 ]; do
    [ -f "$UI/result/$ID.json" ] && break
    sleep 0.5
    i=$((i + 1))
done
echo "receipt: $(cat "$UI/result/$ID.json" 2>/dev/null || echo '(none)')"

echo "== waiting for the turn =="
i=0
while [ $i -lt 60 ]; do
    if ls "$UI/events" 2>/dev/null | tail -5 | while read -r f; do
           grep -q "\"event_id\":\"$ID\"" "$UI/events/$f" 2>/dev/null && echo yes && break
       done | grep -q yes; then
        break
    fi
    sleep 1
    i=$((i + 1))
done

echo "== events (last 4) =="
ls "$UI/events" | tail -4 | while read -r f; do
    echo "-- $f"
    cat "$UI/events/$f"
done
echo "== journal delta =="
[ -f "$J" ] && tail -n +$((FROM + 1)) "$J" | head -10
echo "== worker log (text turn lines) =="
grep -E "text turn|inbox ask" /data/local/tmp/t5_bridge/ai_worker/ai_worker.log 2>/dev/null | tail -6
echo "EXIT=0"
