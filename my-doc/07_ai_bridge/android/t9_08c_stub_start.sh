#!/system/bin/sh
# t9_08c_stub_start.sh [port] -- 启动设备本机的协议桩（测试夹具）
set -u
T=/data/local/tmp/t9/t9_08c
PORT=${1:-8799}
if pidof t9_08c_stub_server >/dev/null 2>&1; then
    echo "already running: $(pidof t9_08c_stub_server)"
    exit 0
fi
nohup "$T/t9_08c_stub_server" "$PORT" > "$T/stub.log" 2>&1 &
sleep 1
echo "stub pid=$(pidof t9_08c_stub_server)"
head -2 "$T/stub.log" 2>/dev/null