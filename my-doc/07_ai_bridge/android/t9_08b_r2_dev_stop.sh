#!/system/bin/sh
# t9_08b_r2_dev_stop.sh <tts_id> -- write the exact request the 停止播报 button writes.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_stop.sh 5246498"
#
# Same file the app writes through VoiceBridgeClient.requestStop():
#   {"v":1,"kind":"stop","event_id":"stop-...","tts_id":<id>}
# owned by the inbox owner uid, then renamed into place. It prints the receipt so a caller can see
# whether the worker really took it (the control file must exist before the receipt says ok).
set -u
UI=/data/local/tmp/t9_ui
TID=${1:-0}

case "$TID" in
    ''|*[!0-9]*) echo "bad tts_id: $TID"; exit 2 ;;
esac
if [ "$TID" -le 0 ]; then echo "bad tts_id: $TID"; exit 2; fi

ID="stop-$(date +%H%M%S)-$$"
TMP=/data/local/tmp/t9_r2_stop.tmp

printf '{"v":1,"kind":"stop","event_id":"%s","tts_id":%s}' "$ID" "$TID" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted $ID target=$TID"

i=0
while [ $i -lt 25 ]; do
    [ -f "$UI/result/$ID.json" ] && break
    sleep 0.2
    i=$((i + 1))
done
echo "receipt: $(cat "$UI/result/$ID.json" 2>/dev/null || echo '(none)')"
