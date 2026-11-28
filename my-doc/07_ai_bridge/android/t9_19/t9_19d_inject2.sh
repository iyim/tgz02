#!/system/bin/sh
# T9-19d: drop one asr_final event for the routing check (run as root via su -c "sh this").
UI=/data/local/tmp/t9_ui
TEXT="${1:-现在几点}"
ID="t919d_$(date +%s)"
F="$UI/inbox/$ID.json"

id
printf '{"v":1,"kind":"asr_final","event_type":"asr_final","event_id":"%s","session":"t919d","seq":1,"is_final":true,"text":"%s"}' "$ID" "$TEXT" > "$F" || { echo "write failed"; exit 1; }
chown 10071:10071 "$F" 2>/dev/null || echo "chown skipped"
chmod 0644 "$F"
ls -l "$F"
echo "submitted: $TEXT"
sleep 5
echo "--- worker log ---"
grep -aE 'route=|native|skill|inbox' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -8
echo "--- rejected ---"
ls -t "$UI/rejected" 2>/dev/null | head -3
echo "--- native marker ---"
head -c 500 /data/local/tmp/t5_bridge/work/native_route.public.json 2>/dev/null
echo
