#!/system/bin/sh
# net_diag.sh -- T7-06-R1 §四：网络与识别链路的实际状态（只读）
echo "=== 1) interfaces ==="
ip -o addr show 2>/dev/null | grep inet
echo "=== 2) routes ==="
ip route 2>/dev/null
echo "=== 3) dns props ==="
getprop | grep -E 'net\.dns|net\.eth0|net\.wlan0' | head -10
echo "=== 4) gateway ping ==="
ping -c 2 -W 2 192.168.1.1 2>&1 | tail -3
echo "=== 5) public IP ping (no ICMP ok) ==="
ping -c 2 -W 3 223.5.5.5 2>&1 | tail -3
echo "=== 6) public TCP 443 (AliDoH/aliyun) ==="
(echo > /dev/tcp/223.5.5.5/443) 2>/dev/null && echo "tcp 223.5.5.5:443 OK" || echo "tcp 223.5.5.5:443 FAIL"
(echo > /dev/tcp/8.8.8.8/53) 2>/dev/null && echo "tcp 8.8.8.8:53 OK" || echo "tcp 8.8.8.8:53 FAIL"
echo "=== 7) dns resolve via getprop server ==="
ping -c 1 -W 3 www.aliyun.com 2>&1 | head -3
echo "=== 8) tcp sockets of the app (uid) ==="
PID=$(ps -A -o PID,ARGS 2>/dev/null | grep 'smartapp:core' | grep -v tg_supervisor | sed 's/^ *//' | cut -d' ' -f1 | head -1)
echo "core=$PID"
cat /proc/$PID/net/tcp 2>/dev/null | awk 'NR>1 {print $3, $4}' | sort | uniq -c | head -10
cat /proc/$PID/net/tcp6 2>/dev/null | awk 'NR>1 {print $3, $4}' | sort | uniq -c | head -10
echo "=== 9) supervisor state ==="
ps -A -o PID,ARGS 2>/dev/null | grep tg_supervisor | grep -v grep
grep -c libtg_hook.so /proc/$PID/maps 2>/dev/null
cat /data/local/tmp/t5_bridge/work/bridge_status.json 2>/dev/null
echo
echo "=== 10) events file ==="
ls -l /data/local/tmp/t5_bridge/work/events.jsonl
wc -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== 11) supervisor stats tail ==="
grep 'stats=' /data/local/tmp/t6/supervisor.log 2>/dev/null | tail -2
