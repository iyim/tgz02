#!/system/bin/sh
# bridge_diag.sh -- ASR 桥（abstract unix socket）连接失败定位
echo "=== bridge process ==="
ps -A -o PID,ARGS 2>/dev/null | grep -E 'tg_bridge|tgz2|bridge' | grep -v grep
echo "=== abstract sockets ==="
cat /proc/net/unix 2>/dev/null | grep -i tgz2
echo "=== bridge status ==="
cat /data/local/tmp/t5_bridge/work/bridge_status.json 2>/dev/null
echo
echo "=== bridge log tail ==="
ls -l /data/local/tmp/t5_bridge/*.log 2>/dev/null
tail -n 15 /data/local/tmp/t5_bridge/bridge.log 2>/dev/null
echo "=== avc denials (bridge/socket) ==="
dmesg 2>/dev/null | grep -i avc | grep -iE 'tgz2|unix_stream|connectto' | tail -8
echo "=== app uid ==="
CORE=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$CORE uid=$(stat -c %u /proc/$CORE 2>/dev/null)"
