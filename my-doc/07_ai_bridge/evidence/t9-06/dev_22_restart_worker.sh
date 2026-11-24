#!/system/bin/sh
# T9-06: restart the worker onto the inbox-capable binary (the accepted stop path had no pid
# file, so the old process is stopped with SIGINT/SIGTERM exactly as run_ai_worker.sh stop does).
D=/data/local/tmp/t5_bridge
echo "=== date"; date
echo "=== old worker"
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
    if [ -d "/proc/$P" ]; then
        echo "SIGINT did not stop it; sending SIGTERM"
        kill -TERM $P 2>/dev/null
        sleep 2
    fi
fi
if [ -d "/proc/$P" ]; then echo "STILL RUNNING - aborting"; exit 1; fi
echo "old worker stopped"

echo "=== start (wrapper -> accepted launcher + inbox args)"
sh "$D/run_ai_worker.sh" start
sleep 3

P=$(pidof ai_worker)
echo "new_pid=$P"
if [ -n "$P" ]; then
    echo "cmdline: $(tr '\0' ' ' < /proc/$P/cmdline)"
    echo "uid: $(awk '/^Uid:/{print $2}' /proc/$P/status 2>/dev/null)"
    echo "--- worker log tail"
    tail -6 "$D/ai_worker/ai_worker.log"
else
    echo "worker not running - log tail:"
    tail -20 "$D/ai_worker/ai_worker.log"
fi
echo "=== END"
