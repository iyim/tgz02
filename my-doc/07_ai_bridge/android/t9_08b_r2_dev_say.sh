#!/system/bin/sh
# t9_08b_r2_dev_say.sh <event_id> [long|short] -- drop one kind=say request as the inbox owner uid.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_dev_say.sh say1 long"
#
# The sentences live in this script on purpose: passing a long text through adb shell splits it on
# the spaces, and a 4-byte "text" is not a playback window worth pressing stop against.
# long  ~ 9 s of speech on this device (an accepted, measured window)
# short ~ under 1 s
set -u
UI=/data/local/tmp/t9_ui
ID=${1:-say1}
WHICH=${2:-long}
case "$WHICH" in
    long)
        TEXT="This is a deliberately long sentence used to test the stop button on the device. It keeps going so that there is enough time to send a stop request while it is still being spoken by the factory text to speech engine."
        ;;
    short)
        TEXT="Okay, the short one."
        ;;
    *)
        TEXT="$WHICH"
        ;;
esac
TMP=/data/local/tmp/t9_r2_say.tmp

printf '{"v":1,"kind":"say","event_id":"%s","text":"%s"}' "$ID" "$TEXT" > "$TMP" || exit 1
chown "$(stat -c %u "$UI/inbox"):$(stat -c %g "$UI/inbox")" "$TMP" || exit 1
chmod 0640 "$TMP"
mv "$TMP" "$UI/inbox/$ID.json" || exit 1
echo "submitted $ID ($WHICH, ${#TEXT} chars)"
