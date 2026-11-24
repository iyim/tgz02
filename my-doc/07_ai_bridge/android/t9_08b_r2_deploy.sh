#!/system/bin/sh
# t9_08b_r2_deploy.sh -- T9-08B-R2: install the new worker + TTS executor, with backups.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_deploy.sh 2>&1"
#
# Expects the staged artifacts next to this script:
#   /data/local/tmp/t9/t9_08b_r2/stage/ai_worker      (ARM32 worker, kind=stop aware)
#   /data/local/tmp/t9/t9_08b_r2/stage/tts_exec.dex   (executor, targeted stop in the play loop)
#
# It backs up what it replaces into .../t9_08b_r2/backup (once, never overwritten), stops the
# worker, installs, restarts the executor via the accepted supervisor, restarts the worker, and
# prints the facts (pids, hashes, cmdline). It touches nothing else: no official app file, no
# :core, no guard/hook, no queue content.
set -u

D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_08b_r2
S=$T/stage
B=$T/backup

say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-08B-R2 deploy =="
[ -f "$S/ai_worker" ] || fail "missing $S/ai_worker"
[ -f "$S/tts_exec.dex" ] || fail "missing $S/tts_exec.dex"
mkdir -p "$B" || fail "cannot create $B"

# 1) backup once
if [ ! -f "$B/ai_worker.pre_r2" ]; then
    cp -f "$D/bin/ai_worker" "$B/ai_worker.pre_r2" || fail "cannot back up the worker"
    chmod 0755 "$B/ai_worker.pre_r2"
    say "   backed up worker     -> $B/ai_worker.pre_r2"
else
    say "   worker backup kept   -> $B/ai_worker.pre_r2"
fi
if [ ! -f "$B/tts_exec.dex.pre_r2" ]; then
    cp -f "$D/tts_exec.dex" "$B/tts_exec.dex.pre_r2" || fail "cannot back up the executor"
    chmod 0600 "$B/tts_exec.dex.pre_r2"
    say "   backed up executor   -> $B/tts_exec.dex.pre_r2"
else
    say "   executor backup kept -> $B/tts_exec.dex.pre_r2"
fi
sha256sum "$B/ai_worker.pre_r2" "$B/tts_exec.dex.pre_r2" | while read -r h f; do
    say "   backup sha256 $h  $f"
done

# 2) stop the worker (SIGINT first: it commits state and exits cleanly)
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

# 3) install
cp -f "$S/ai_worker" "$D/bin/ai_worker" || fail "cannot install the worker binary"
chmod 0755 "$D/bin/ai_worker"
cp -f "$S/tts_exec.dex" "$D/tts_exec.dex" || fail "cannot install the executor dex"
chmod 0600 "$D/tts_exec.dex"
say "   installed:"
sha256sum "$D/bin/ai_worker" "$D/tts_exec.dex" | while read -r h f; do
    say "     sha256 $h  $f"
done

# 4) restart the executor through the accepted supervisor, then the worker
say "   restarting the executor"
sh "$D/run_tts_exec.sh" stop >/dev/null 2>&1
sleep 1
sh "$D/run_tts_exec.sh" start
sleep 2
say "   restarting the worker"
sh "$D/run_ai_worker.sh" start >/dev/null 2>&1
sleep 3

# 5) the facts this stage depends on
W=$(pidof ai_worker)
[ -n "$W" ] || fail "the worker did not start"
E=$(cat "$D/tts/tts_exec.pid" 2>/dev/null | tr -d ' \r\n')
say "   worker pid=$W  executor pid=${E:-none}"
say "   worker cmdline: $(tr '\0' ' ' < /proc/"$W"/cmdline)"
say "   executor cmdline: $(tr '\0' ' ' < /proc/"$E"/cmdline 2>/dev/null)"
say "   control dir: $(ls -ld "$D/tts/control" 2>/dev/null)"
say "== deploy done =="
say "EXIT=0"
