#!/system/bin/sh
# T9-06 deploy: swap in the inbox-capable worker, keep an exact rollback copy of the accepted one.
# Everything here is reversible by restore_worker.sh (same directory).
D=/data/local/tmp/t5_bridge
B=/data/local/tmp/t9/t9_06/backup
UI=/data/local/tmp/t9_ui
NEW=/data/local/tmp/t9/t9_06/ai_worker.new
NEWSH=/data/local/tmp/t9/t9_06/run_ai_worker.sh.new

echo "=== date"; date
mkdir -p "$B"
if [ ! -f "$B/ai_worker.t8156" ]; then
    cp -f "$D/bin/ai_worker" "$B/ai_worker.t8156" || { echo "BACKUP FAILED"; exit 1; }
    cp -f "$D/run_ai_worker.sh" "$B/run_ai_worker.sh.pre_t9_06" || { echo "BACKUP FAILED"; exit 1; }
fi
echo "=== backup (accepted T8-15.6 worker)"
sha256sum "$B/ai_worker.t8156" "$D/bin/ai_worker"
ls -l "$B"

echo "=== install the new worker + launcher"
cp -f "$NEW" "$D/bin/ai_worker" || { echo "INSTALL FAILED"; exit 1; }
chmod 0755 "$D/bin/ai_worker"
cp -f "$NEWSH" "$D/run_ai_worker.sh" || { echo "INSTALL FAILED"; exit 1; }
chmod 0755 "$D/run_ai_worker.sh"
sha256sum "$D/bin/ai_worker" "$D/run_ai_worker.sh"
sh -n "$D/run_ai_worker.sh" && echo "run_ai_worker.sh syntax OK"

echo "=== allowed uids (root-owned list, read by the launcher)"
cat "$UI/allowed_uids" 2>/dev/null
ls -l "$UI/allowed_uids" 2>/dev/null

echo "=== restart the worker"
sh "$D/run_ai_worker.sh" stop
sleep 2
sh "$D/run_ai_worker.sh" start
sleep 3

echo "=== new worker"
P=$(cat "$D/ai_worker/ai_worker.pid" 2>/dev/null)
echo "pid=$P"
if [ -n "$P" ] && [ -d "/proc/$P" ]; then
    echo "cmdline: $(tr '\0' ' ' < /proc/$P/cmdline)"
else
    echo "worker not running - log tail:"
    tail -20 "$D/ai_worker/ai_worker.log"
fi
echo "=== inbox stats line in the log"
grep -c 'inbox:' "$D/ai_worker/ai_worker.log" 2>/dev/null
echo "=== END"
