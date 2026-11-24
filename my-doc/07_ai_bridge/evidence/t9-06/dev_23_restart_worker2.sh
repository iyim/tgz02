#!/system/bin/sh
# T9-06: restart the worker after the binary fix (accepted stop path has no pid file).
D=/data/local/tmp/t5_bridge
echo "=== date"; date
P=$(pidof ai_worker)
echo "old_pid=$P"
if [ -n "$P" ]; then
    kill -INT $P 2>/dev/null
    i=0
    while [ $i -lt 10 ]; do
        [ -d "/proc/$P" ] || break
        sleep 1
        i=$((i + 1))
    done
    [ -d "/proc/$P" ] && kill -TERM $P 2>/dev/null
    sleep 1
fi
[ -d "/proc/$P" ] && { echo "OLD WORKER STILL RUNNING"; exit 1; }
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
echo "new_pid=$P"
sha256sum "$D/bin/ai_worker"
echo "cmdline: $(tr '\0' ' ' < /proc/$P/cmdline)"
echo "=== END"
