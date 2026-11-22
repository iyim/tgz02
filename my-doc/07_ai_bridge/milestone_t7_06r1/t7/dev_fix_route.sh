#!/system/bin/sh
# dev_fix_route.sh -- 重启后没有默认路由：补回来（这是主机网络环境，不是原厂 ASR 参数）
ip route add default via 192.168.1.1 dev wlan0 2>&1
echo "=== route ==="
ip route
echo "=== internet ==="
ping -c 2 -W 3 114.114.114.114 2>&1 | tail -3
