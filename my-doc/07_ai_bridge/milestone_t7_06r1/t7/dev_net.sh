#!/system/bin/sh
# dev_net.sh -- 复网检查：唤醒是本地 KWS，识别走云端；断网时"能唤醒但没 final"
echo "=== ip ==="
ip -o addr show 2>/dev/null | grep inet
echo "=== route ==="
ip route 2>/dev/null | head -5
echo "=== ping gateway/proxy ==="
ping -c 2 -W 2 192.168.1.1 2>&1 | tail -3
ping -c 2 -W 2 192.168.1.13 2>&1 | tail -3
echo "=== dns ==="
getprop | grep -i dns | head -5
