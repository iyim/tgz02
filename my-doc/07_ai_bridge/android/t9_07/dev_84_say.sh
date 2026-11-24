#!/system/bin/sh
# dev_84_say.sh -- T9-08B: drop one long "say" request into the inbox and return immediately.
# Used only to have a long, deterministic playback to press 停止播报 against.
#   su -c "sh /data/local/tmp/t9/t9_07/dev_84_say.sh"
set -u
UI=/data/local/tmp/t9_ui
ID="saystop-$(date +%H%M%S)"
TMP=/data/local/tmp/t9_08b_say.tmp
TEXT="This is a deliberately long sentence used to test the stop button on the home screen. It keeps going so that there is enough time to walk back to the main screen and press stop while it is still being spoken by the factory text to speech engine."

printf '{"v":1,"kind":"say","event_id":"%s","text":"%s"}' "$ID" "$TEXT" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted $ID"
