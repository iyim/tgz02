# t9_ui_03_deploy.sh -- T9-UI-03: one-time device preparation for the snapshot channel.
#
#   adb -s <serial> push t9_ui_03_deploy.sh /data/local/tmp/
#   adb -s <serial> shell "su 0 sh /data/local/tmp/t9_ui_03_deploy.sh"
#
# Creates /data/local/tmp/t9_ui/snapshots owned by the app uid (u0_a71 = uid 10071,
# same owner model as inbox/), so the app can publish memory/alarms/skills snapshots
# that the root worker reads.  Idempotent.
UI=/data/local/tmp/t9_ui
SNAP=$UI/snapshots
APP_UID=$(cat $UI/allowed_uids 2>/dev/null | tr -d '[:space:]')

mkdir -p "$SNAP"
# find the app uid the same way the inbox was set up: from the installed package
APP_UID_NUM=$(dumpsys package com.tgz02.voice 2>/dev/null | grep -m1 'userId=' | sed 's/[^0-9]*//g')
if [ -n "$APP_UID_NUM" ]; then
    chown "$APP_UID_NUM":"$APP_UID_NUM" "$SNAP"
    chmod 700 "$SNAP"
    echo "snapshots dir ready: $SNAP uid=$APP_UID_NUM"
else
    echo "WARN: could not resolve app uid; snapshots dir left as root"
fi
ls -la "$UI" | grep snapshots
