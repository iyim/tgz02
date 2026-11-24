#!/system/bin/sh
# t9_08c_stub_stop.sh -- 停掉设备本机的协议桩
set -u
P=$(pidof t9_08c_stub_server)
if [ -n "$P" ]; then kill "$P" 2>/dev/null; sleep 1; echo "stopped $P"; else echo "not running"; fi