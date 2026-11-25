#!/system/bin/sh
# dev_say.sh -- T9-10 acceptance helper: submit a kind=say request (verbatim TTS) so the
# playback lasts long enough to exercise the UI stop button. Same inbox discipline as dev_ask.
set -u
UI=/data/local/tmp/t9_ui
ID=${1:-say1}
TEXT=${2:-hello}
TMP=/data/local/tmp/t9_10_say.tmp
printf '{"v":1,"kind":"say","event_id":"%s","text":"%s"}' "$ID" "$TEXT" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted say $ID"
