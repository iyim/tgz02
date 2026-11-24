#!/system/bin/sh
# t9_07_deploy.sh -- T9-07: install the worker that publishes the UI event outlet.
#
#   su -c "sh /data/local/tmp/t9/t9_07/t9_07_deploy.sh"
#
# Expects the staged artifacts next to this script:
#   /data/local/tmp/t9/t9_07/stage/ai_worker           (ARM32 worker, --ui-events aware)
#   /data/local/tmp/t9/t9_07/stage/run_ai_worker.sh     (wrapper: --inbox + --ui-events)
#
# It backs up what it replaces into /data/local/tmp/t9/t9_07/backup (once, non-destructive),
# stops the worker, installs, starts, and prints the facts (cmdline, hashes, events dir).
# It touches nothing else: no official app file, no :core, no guard/hook, no queue content,
# and it never rewrites an existing backup with a newer state.
set -u

D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_07
S=$T/stage
B=$T/backup
UI=/data/local/tmp/t9_ui

say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-07 deploy =="
[ -f "$S/ai_worker" ] || fail "missing $S/ai_worker"
[ -f "$S/run_ai_worker.sh" ] || fail "missing $S/run_ai_worker.sh"
mkdir -p "$B" || fail "cannot create $B"

# 1) backup once: the first deploy of this feature is the state we came from
if [ ! -f "$B/ai_worker.t9_06r1" ]; then
    cp -f "$D/bin/ai_worker" "$B/ai_worker.t9_06r1" || fail "cannot back up the worker binary"
    chmod 0755 "$B/ai_worker.t9_06r1"
    say "   backed up worker  -> $B/ai_worker.t9_06r1"
else
    say "   backup kept       -> $B/ai_worker.t9_06r1 (not overwritten)"
fi
if [ ! -f "$B/run_ai_worker.sh.t9_06r1" ]; then
    cp -f "$D/run_ai_worker.sh" "$B/run_ai_worker.sh.t9_06r1" || fail "cannot back up the launcher"
    chmod 0755 "$B/run_ai_worker.sh.t9_06r1"
    say "   backed up launcher -> $B/run_ai_worker.sh.t9_06r1"
else
    say "   launcher backup kept -> $B/run_ai_worker.sh.t9_06r1 (not overwritten)"
fi
sha256sum "$B/ai_worker.t9_06r1" "$B/run_ai_worker.sh.t9_06r1" | while read -r h f; do
    say "   backup sha256 $h  $f"
done

# 2) stop the running worker (SIGINT first: it commits state and exits cleanly)
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
cp -f "$S/run_ai_worker.sh" "$D/run_ai_worker.sh" || fail "cannot install the launcher"
chmod 0755 "$D/run_ai_worker.sh"
say "   installed:"
sha256sum "$D/bin/ai_worker" "$D/run_ai_worker.sh" | while read -r h f; do
    say "     sha256 $h  $f"
done

# 4) the UI tree must exist before the wrapper can derive the event gid from allowed_uids
if [ ! -f "$UI/allowed_uids" ]; then
    say "   NOTE: $UI/allowed_uids is missing - start the UI app once to install it"
fi

# 5) start
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
[ -n "$P" ] || fail "worker did not start"
say "   worker pid=$P"
say "   cmdline: $(tr '\0' ' ' < /proc/"$P"/cmdline)"

# 6) the facts the UI depends on
say "   events dir: $(ls -ld "$UI/events" 2>/dev/null || echo '(not created yet)')"
say "   status    : $(ls -l "$UI/status.public.json" 2>/dev/null || echo '(not written yet)')"
say "   status JSON:"
tr -d '\n' < "$UI/status.public.json" 2>/dev/null; echo ""
say "== deploy done =="
say "EXIT=0"
