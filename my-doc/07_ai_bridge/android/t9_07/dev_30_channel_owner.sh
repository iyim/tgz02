#!/system/bin/sh
# t9_07_channel_owner.sh -- point the T9-06R1 submit channel at the product app.
#
#   su -c "sh /data/local/tmp/t9/t9_07/t9_07_channel_owner.sh 10058"
#
# T9-06R1 made the inbox a 0700 directory owned by exactly one uid, with an explicit allowlist
# file. T9-07 ships a different app (com.tgz02.voice), so the channel owner moves with it:
#   1. allowed_uids := the new uid (the wrapper turns it into --inbox-allowed-uid and,
#      from the first line, into the event-file group so only this app can read the events)
#   2. inbox dir: 0700, owned by the new uid (only that app can drop a request in)
#   3. restart the worker so the new allowlist and group actually take effect
# Nothing else changes: the queue, the TTS executor, the guard and :core are untouched.
set -u

D=/data/local/tmp/t5_bridge
UI=/data/local/tmp/t9_ui
UID_ARG=${1:-}
APP_PKG=${APP_PKG:-com.tgz02.voice}
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

# Without an explicit uid, resolve the installed app's uid. Re-installing the APK can change it,
# so "bind the channel to whoever com.tgz02.voice is right now" is the useful default.
if [ -z "$UID_ARG" ]; then
    UID_ARG=$(dumpsys package "$APP_PKG" 2>/dev/null | grep -m1 'userId=' | tr -dc '0-9')
    [ -n "$UID_ARG" ] || fail "cannot resolve the uid of $APP_PKG (is the APK installed?)"
    say "   resolved $APP_PKG uid=$UID_ARG"
fi

case "$UID_ARG" in
    ''|*[!0-9]*) fail "usage: $0 [app uid]  (default: read the uid of $APP_PKG)" ;;
esac

say "== T9-07 channel owner = new uid $UID_ARG =="
[ -d "$UI/inbox" ] || fail "missing $UI/inbox - run the T9-06 install first"

echo "$UID_ARG" > "$UI/allowed_uids" || fail "cannot write allowed_uids"
chmod 0644 "$UI/allowed_uids"
chown "$UID_ARG:$UID_ARG" "$UI/inbox" || fail "cannot hand the inbox to $UID_ARG"
chmod 0700 "$UI/inbox"
say "   inbox: $(ls -ld "$UI/inbox")"
say "   allowed_uids: $(cat "$UI/allowed_uids")"

P=$(pidof ai_worker)
if [ -n "$P" ]; then
    say "   restarting worker pid=$P so it reads the new allowlist"
    sh "$D/run_ai_worker.sh" stop >/dev/null 2>&1
    sleep 1
fi
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
[ -n "$P" ] || fail "worker did not start"
say "   worker pid=$P"
say "   cmdline: $(tr '\0' ' ' < /proc/"$P"/cmdline)"
say "   events dir: $(ls -ld "$UI/events" 2>/dev/null || echo '(none)')"
say "== done =="
say "EXIT=0"
