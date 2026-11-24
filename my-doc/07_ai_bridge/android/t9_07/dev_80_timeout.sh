#!/system/bin/sh
# dev_80_timeout.sh -- T9-07R1: restart the worker with a 100 ms provider timeout.
# Used to produce a REAL provider failure on the device (the UI must show it as a failure).
set -u
D=/data/local/tmp/t5_bridge
echo "== restart worker with a 100 ms provider timeout =="
sh "$D/run_ai_worker.sh" stop >/dev/null 2>&1
sleep 1
sh "$D/run_ai_worker.sh" start --deepseek-timeout-ms 100 --deepseek-connect-timeout-ms 100
sleep 3
P=$(pidof ai_worker)
echo "worker pid=${P:-none}"
[ -n "$P" ] && tr '\0' ' ' < /proc/"$P"/cmdline && echo ""
echo "EXIT=0"
