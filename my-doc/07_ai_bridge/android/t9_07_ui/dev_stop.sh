#!/system/bin/sh
# dev_stop.sh -- T9-10 acceptance helper: submit the same {"kind":"stop","tts_id":N} request the
# product UI's stop button produces (BackendService.submitStop -> VoiceBridgeClient.requestStop).
# It is used only from adb for the regression; the UI path is the same code.
set -u
UI=/data/local/tmp/t9_ui
ID=${1:-stop1}
TTS=${2:-0}
TMP=/data/local/tmp/t9_10_stop.tmp
printf '{"v":1,"kind":"stop","event_id":"%s","tts_id":%s}' "$ID" "$TTS" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted stop $ID tts_id=$TTS"
