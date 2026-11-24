#!/system/bin/sh
# dev_81_normal.sh -- T9-07R1: restart the worker with its normal configuration again.
set -u
D=/data/local/tmp/t5_bridge
echo "== restart worker with the normal configuration =="
sh "$D/run_ai_worker.sh" stop >/dev/null 2>&1
sleep 1
sh "$D/run_ai_worker.sh" start
sleep 3
P=$(pidof ai_worker)
echo "worker pid=${P:-none}"
[ -n "$P" ] && tr '\0' ' ' < /proc/"$P"/cmdline && echo ""
echo "EXIT=0"
