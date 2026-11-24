#!/system/bin/sh
# dev_20_smoke_submit.sh -- T9-07 device smoke: one accepted submit, then the event outlet.
#   su 0 sh /data/local/tmp/t9/t9_07/dev_20_smoke_submit.sh
set -u
UI=/data/local/tmp/t9_ui
ID="t9r7-smoke-$(date +%H%M%S)"
F="$UI/inbox/$ID.json"

echo "== request =="
# Build the file OUTSIDE the inbox, give it to the UI uid, then rename it in: the worker
# unlinks any file it finds in the inbox that is not owned by an allowed uid (T9-06R1
# behaviour, observed here too), so creating it in place would race with that check.
TMP=/data/local/tmp/t9_07_smoke.tmp
printf '{"v":1,"event_id":"%s","text":"第七阶段事件出口冒烟"}' "$ID" > "$TMP" || exit 1
chown 10057:10057 "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$F" || exit 1
ls -l "$F"

echo "== wait for the worker =="
i=0
while [ $i -lt 20 ]; do
    [ -f "$UI/result/$ID.json" ] && break
    sleep 0.5
    i=$((i + 1))
done
echo "result: $(cat "$UI/result/$ID.json" 2>/dev/null || echo '(none)')"

echo "== events dir =="
ls -l "$UI/events"
echo "== newest event =="
L=$(ls "$UI/events" | grep -E '^[0-9]+\.json$' | tail -n 1)
echo "file=$L"
cat "$UI/events/$L"
echo "== status =="
cat "$UI/status.public.json"; echo
echo "== queue =="
ls -l /data/local/tmp/t5_bridge/tts/queue 2>/dev/null | head -5
echo "EXIT=0"
