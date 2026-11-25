#!/system/bin/sh
# t9_07_restore.sh -- T9-07 rollback: put the T9-06R1 worker + wrapper back.
#
#   su -c "sh /data/local/tmp/t9/t9_07/t9_07_restore.sh"
#
# Restores exactly the two files T9-07 replaced, and removes nothing else. The product UI
# APK is a normal app: uninstall it with `pm uninstall com.tgz02.voice`. The event files can
# stay (nothing reads them without the UI) or be removed with the --purge-events flag.
set -u

D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_07
B=$T/backup
UI=/data/local/tmp/t9_ui
PURGE=0
[ "${1:-}" = "--purge-events" ] && PURGE=1

say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-07 restore (back to the accepted T9-06R1 worker) =="
[ -f "$B/ai_worker.t9_06r1" ] || fail "missing $B/ai_worker.t9_06r1"
[ -f "$B/run_ai_worker.sh.t9_06r1" ] || fail "missing $B/run_ai_worker.sh.t9_06r1"

P=$(pidof ai_worker)
if [ -n "$P" ]; then
    say "   stopping worker pid=$P"
    kill -INT "$P" 2>/dev/null
    i=0
    while [ $i -lt 10 ]; do
        [ -d "/proc/$P" ] || break
        sleep 1
        i=$((i + 1))
    done
    [ -d "/proc/$P" ] && kill -TERM "$P" 2>/dev/null
    sleep 1
fi

cp -f "$B/run_ai_worker.sh.t9_06r1" "$D/run_ai_worker.sh" || fail "cannot restore the launcher"
chmod 0755 "$D/run_ai_worker.sh"
cp -f "$B/ai_worker.t9_06r1" "$D/bin/ai_worker" || fail "cannot restore the worker binary"
chmod 0755 "$D/bin/ai_worker"
say "   restored:"
sha256sum "$D/bin/ai_worker" "$D/run_ai_worker.sh" | while read -r h f; do
    say "     sha256 $h  $f"
done

if [ "$PURGE" -eq 1 ]; then
    rm -rf "$UI/events" "$UI/status.public.json"
    say "   removed the event outlet files under $UI"
fi

sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
say "   worker pid=${P:-none}"
[ -n "$P" ] && say "   cmdline: $(tr '\0' ' ' < /proc/"$P"/cmdline)"
say "== restore done =="
say "EXIT=0"
