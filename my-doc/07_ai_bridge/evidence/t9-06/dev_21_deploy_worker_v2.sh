#!/system/bin/sh
# T9-06 deploy (v2): keep the accepted launcher untouched, put the wrapper in its place.
D=/data/local/tmp/t5_bridge
B=/data/local/tmp/t9/t9_06/backup
NEW=/data/local/tmp/t9/t9_06/ai_worker.new
WRAP=/data/local/tmp/t9/t9_06/run_ai_worker_inbox.sh
UIDSRC=/data/local/tmp/t9/t9_06/allowed_uids
UI=/data/local/tmp/t9_ui

echo "=== date"; date

echo "=== 0. restore the accepted launcher from the backup (undo the failed edit)"
cp -f "$B/run_ai_worker.sh.pre_t9_06" "$D/run_ai_worker.sh" || { echo "RESTORE FAILED"; exit 1; }
chmod 0755 "$D/run_ai_worker.sh"
sh -n "$D/run_ai_worker.sh" && echo "accepted launcher syntax OK"

echo "=== 1. the accepted launcher, kept verbatim as .accepted"
cp -f "$D/run_ai_worker.sh" "$D/run_ai_worker.sh.accepted" || { echo "FAILED"; exit 1; }
chmod 0755 "$D/run_ai_worker.sh.accepted"
sha256sum "$B/run_ai_worker.sh.pre_t9_06" "$D/run_ai_worker.sh.accepted"

echo "=== 2. the wrapper takes the public name"
cp -f "$WRAP" "$D/run_ai_worker.sh" || { echo "FAILED"; exit 1; }
chmod 0755 "$D/run_ai_worker.sh"
sh -n "$D/run_ai_worker.sh" && echo "wrapper syntax OK"
ls -l "$D/run_ai_worker.sh" "$D/run_ai_worker.sh.accepted"

echo "=== 3. worker binary"
cp -f "$NEW" "$D/bin/ai_worker" || { echo "FAILED"; exit 1; }
chmod 0755 "$D/bin/ai_worker"
sha256sum "$B/ai_worker.t8156" "$D/bin/ai_worker"

echo "=== 4. allowed uids"
if [ -f "$UIDSRC" ]; then
    cp -f "$UIDSRC" "$UI/allowed_uids" || { echo "FAILED to install allowed_uids"; exit 1; }
fi
chown 0:0 "$UI/allowed_uids" 2>/dev/null
chmod 0644 "$UI/allowed_uids" 2>/dev/null
echo -n "allowed_uids: "; cat "$UI/allowed_uids" 2>/dev/null; echo
ls -l "$UI/allowed_uids" 2>/dev/null

echo "=== 5. restart the worker"
sh "$D/run_ai_worker.sh" stop
sleep 2
sh "$D/run_ai_worker.sh" start
sleep 3

echo "=== 6. verify"
P=$(cat "$D/ai_worker/ai_worker.pid" 2>/dev/null)
echo "pid=$P"
if [ -n "$P" ] && [ -d "/proc/$P" ]; then
    echo "cmdline: $(tr '\0' ' ' < /proc/$P/cmdline)"
else
    echo "worker not running - log tail:"
    tail -20 "$D/ai_worker/ai_worker.log"
fi
echo "=== END"
