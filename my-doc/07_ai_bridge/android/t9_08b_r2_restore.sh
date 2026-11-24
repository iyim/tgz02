#!/system/bin/sh
# t9_08b_r2_restore.sh -- T9-08B-R2: put the pre-R2 worker and executor back.
#
#   su 0 sh -c "sh /data/local/tmp/t9/t9_08b_r2/t9_08b_r2_restore.sh 2>&1"
#
# Restores the two binaries this stage replaced (they were backed up by t9_08b_r2_deploy.sh) and
# restarts both components. The product APK is rolled back separately (adb install of the previous
# build), because the app is not part of the root-owned tree.
set -u

D=/data/local/tmp/t5_bridge
T=/data/local/tmp/t9/t9_08b_r2
B=$T/backup

say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-08B-R2 restore =="
[ -f "$B/ai_worker.pre_r2" ] || fail "missing backup $B/ai_worker.pre_r2"
[ -f "$B/tts_exec.dex.pre_r2" ] || fail "missing backup $B/tts_exec.dex.pre_r2"

P=$(pidof ai_worker)
if [ -n "$P" ]; then
    say "   stopping worker pid=$P"
    kill -INT "$P" 2>/dev/null
    sleep 2
    [ -d "/proc/$P" ] && kill -TERM "$P" 2>/dev/null
    sleep 1
fi

cp -f "$B/ai_worker.pre_r2" "$D/bin/ai_worker" || fail "cannot restore the worker"
chmod 0755 "$D/bin/ai_worker"
cp -f "$B/tts_exec.dex.pre_r2" "$D/tts_exec.dex" || fail "cannot restore the executor"
chmod 0600 "$D/tts_exec.dex"
sha256sum "$D/bin/ai_worker" "$D/tts_exec.dex"

sh "$D/run_tts_exec.sh" stop >/dev/null 2>&1
sleep 1
sh "$D/run_tts_exec.sh" start
sleep 2
sh "$D/run_ai_worker.sh" start >/dev/null 2>&1
sleep 3
say "   worker pid=$(pidof ai_worker)  executor pid=$(cat "$D/tts/tts_exec.pid" 2>/dev/null | tr -d ' \r\n')"
say "== restore done =="
say "EXIT=0"
