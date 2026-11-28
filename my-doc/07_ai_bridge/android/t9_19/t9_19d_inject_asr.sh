#!/system/bin/sh
# T9-19d: inject one asr_final the way the bridge would, to check the routing decision.
UI=/data/local/tmp/t9_ui
TEXT="${1:-现在几点}"
ID="t919d_$(date +%s)"
TMP=/data/local/tmp/t9_19d_inbox.tmp

printf '{"v":1,"kind":"asr_final","event_type":"asr_final","event_id":"%s","session":"t919d","seq":1,"is_final":true,"text":"%s"}' "$ID" "$TEXT" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted $ID: $TEXT"
sleep 4
echo "--- worker routing log (tail) ---"
tail -12 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log 2>/dev/null | grep -aE 'route=|native|skill|inbox' | tail -8
echo "--- rejected? ---"
ls /data/local/tmp/t9_ui/rejected 2>/dev/null | tail -3
echo "--- native route marker ---"
cat /data/local/tmp/t5_bridge/work/native_route.public.json 2>/dev/null | head -c 400
echo
