#!/system/bin/sh
# t9_06_restore.sh -- T9-06 rollback: put the accepted worker back and close the UI channel.
#
#   su -c "sh /data/local/tmp/t9/t9_06/t9_06_restore.sh [--keep-ui-tree]"
#
# It restores, in this order:
#   1. the accepted launcher (run_ai_worker.sh from the .accepted copy made at deploy time)
#   2. the accepted T8-15.6 worker binary (ai_worker.t8156 from the deploy backup)
#   3. optionally removes /data/local/tmp/t9_ui (the channel is off when that tree is gone)
#   4. restarts the worker and prints what it actually started with
#
# Nothing else is touched: no official file, no :core, no guard/hook, no queue content.
set -u

D=/data/local/tmp/t5_bridge
B=/data/local/tmp/t9/t9_06/backup
UI=/data/local/tmp/t9_ui
KEEP_UI=0
[ "${1:-}" = "--keep-ui-tree" ] && KEEP_UI=1

say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-06 restore =="
[ -f "$B/ai_worker.t8156" ] || fail "missing $B/ai_worker.t8156 - cannot restore the accepted worker"
[ -f "$B/run_ai_worker.sh.pre_t9_06" ] || fail "missing $B/run_ai_worker.sh.pre_t9_06"

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

cp -f "$B/run_ai_worker.sh.pre_t9_06" "$D/run_ai_worker.sh" || fail "cannot restore the launcher"
chmod 0755 "$D/run_ai_worker.sh"
cp -f "$B/ai_worker.t8156" "$D/bin/ai_worker" || fail "cannot restore the worker binary"
chmod 0755 "$D/bin/ai_worker"
say "   restored: $(sha256sum "$D/run_ai_worker.sh" "$D/bin/ai_worker" | tr '\n' ' ')"

if [ "$KEEP_UI" -eq 0 ]; then
    rm -rf "$UI"
    say "   removed $UI (the submit channel is off without it)"
else
    say "   kept $UI, but the accepted launcher does not pass --inbox, so the channel stays off"
fi

sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
say "   worker pid=$P"
[ -n "$P" ] && say "   cmdline: $(tr '\0' ' ' < /proc/"$P"/cmdline)"
say "== restore done =="
say "EXIT=0"
