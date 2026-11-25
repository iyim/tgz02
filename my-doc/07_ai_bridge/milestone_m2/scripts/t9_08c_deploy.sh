#!/system/bin/sh
# t9_08c_deploy.sh -- T9-08C: install the multi-vendor worker (backs up what it replaces).
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08c/t9_08c_deploy.sh 2>&1"
#
# Expects /data/local/tmp/t9/t9_08c/stage/ai_worker and stage/t9_08c_stub_server.
# Backups go to /data/local/tmp/t9/t9_08c/backup (written once, never overwritten).
# Touches nothing else: no official app file, no :core, no guard/hook, no queue content.
set -u
D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_08c
S=$T/stage
B=$T/backup
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-08C deploy =="
[ -f "$S/ai_worker" ] || fail "missing $S/ai_worker"
mkdir -p "$B" || fail "cannot create $B"
if [ ! -f "$B/ai_worker.pre_08c" ]; then
    cp -f "$D/bin/ai_worker" "$B/ai_worker.pre_08c" || fail "cannot back up the worker"
    chmod 0755 "$B/ai_worker.pre_08c"
    say "   backed up worker -> $B/ai_worker.pre_08c"
else
    say "   worker backup kept -> $B/ai_worker.pre_08c"
fi
sha256sum "$B/ai_worker.pre_08c" | while read -r h f; do say "   backup sha256 $h  $f"; done

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

cp -f "$S/ai_worker" "$D/bin/ai_worker" || fail "cannot install the worker"
chmod 0755 "$D/bin/ai_worker"
if [ -f "$S/t9_08c_stub_server" ]; then
    cp -f "$S/t9_08c_stub_server" "$T/t9_08c_stub_server" || fail "cannot install the stub server"
    chmod 0755 "$T/t9_08c_stub_server"
fi
say "   installed:"
sha256sum "$D/bin/ai_worker" | while read -r h f; do say "     sha256 $h  $f"; done

sh "$D/run_ai_worker.sh" start >/dev/null 2>&1
sleep 3
W=$(pidof ai_worker)
[ -n "$W" ] || fail "the worker did not start"
say "   worker pid=$W"
say "   cmdline: $(tr '\0' ' ' < /proc/"$W"/cmdline)"
say "   model lines:"
grep -E "model config|provider ready" /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -4
say "== deploy done =="
say "EXIT=0"
