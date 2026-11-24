#!/system/bin/sh
# T9-06R1 deploy: private-uid inbox + hardened worker.
D=/data/local/tmp/t5_bridge
B=/data/local/tmp/t9/t9_06/backup
NEW=/data/local/tmp/t9/t9_06/ai_worker.new
UI=/data/local/tmp/t9_ui
UIDUI=10057

echo "=== date"; date
echo "=== 0. keep the T9-06 worker for this round's rollback too"
[ -f "$B/ai_worker.t906" ] || cp -f "$D/bin/ai_worker" "$B/ai_worker.t906"
sha256sum "$D/bin/ai_worker" "$B/ai_worker.t8156" "$B/ai_worker.t906" 2>/dev/null

echo "=== 1. install the hardened worker"
cp -f "$NEW" "$D/bin/ai_worker" || { echo "INSTALL FAILED"; exit 1; }
chmod 0755 "$D/bin/ai_worker"
sha256sum "$D/bin/ai_worker"

echo "=== 2. private inbox for uid $UIDUI"
sh /data/local/tmp/t9/t9_06/t9_06r1_inbox_perms.sh "$UIDUI"

echo "=== 3. restart the worker"
P=$(pidof ai_worker)
[ -n "$P" ] && kill -INT $P
i=0
while [ $i -lt 10 ]; do [ -d "/proc/$P" ] || break; sleep 1; i=$((i+1)); done
[ -d "/proc/$P" ] && kill -TERM $P
sleep 1
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
echo "worker pid=$P"
tr '\0' ' ' < /proc/$P/cmdline
echo
echo "=== 4. permission proof: a NON-allowed app must not be able to create anything"
echo "--- as uid 10056 (com.tgz02.providerprobe):"
run-as com.tgz02.providerprobe sh -c 'echo x > /data/local/tmp/t9_ui/inbox/from_other_app.json' 2>&1
echo "write_as_10056_exit=$?"
run-as com.tgz02.providerprobe sh -c 'ls /data/local/tmp/t9_ui/inbox' 2>&1
echo "--- as uid 10057 (com.tgz02.uibridge), the allowed one:"
run-as com.tgz02.uibridge sh -c 'printf "%s" "{\"v\":1,\"event_id\":\"perm-proof\",\"text\":\"权限证明\"}" > /data/local/tmp/t9_ui/inbox/.perm-proof.tmp && mv /data/local/tmp/t9_ui/inbox/.perm-proof.tmp /data/local/tmp/t9_ui/inbox/perm-proof.json && echo write_ok'
sleep 3
cat "$UI/result/perm-proof.json" 2>/dev/null
echo "=== END"
