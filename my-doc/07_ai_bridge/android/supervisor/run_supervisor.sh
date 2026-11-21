#!/system/bin/sh
# run_supervisor.sh -- T6-02 设备端启停包装（只为了"一条 su -c 命令"能完成启停）
#
#   su -c "/data/local/tmp/t6/run_supervisor.sh start [额外参数...]"
#   su -c "/data/local/tmp/t6/run_supervisor.sh stop"
#   su -c "/data/local/tmp/t6/run_supervisor.sh status"
#
# 为什么需要它：Magisk 的 su 在 `su -c "a; b"`、`su -c "a &"` 这类多命令/后台字符串上
# 会退化成非 root 执行，所以调用方必须"一条命令"；后台化与信号发送都放在这里。
set -u
BIN=/data/local/tmp/t6/tg_supervisor
PIDFILE=/data/local/tmp/t6/tg_supervisor.pid
LOG=/data/local/tmp/t6/supervisor.log
cmd=${1:-}
[ $# -gt 0 ] && shift

case "$cmd" in
start)
    if [ -f "$PIDFILE" ]; then
        old=$(cat "$PIDFILE" 2>/dev/null)
        if [ -n "$old" ] && kill -0 "$old" 2>/dev/null; then
            echo "already running pid=$old"
            exit 3
        fi
    fi
    # setsid 让它脱离 adb shell 的会话；stdout/stderr 丢弃（日志走 --log 文件）
    setsid "$BIN" --pidfile "$PIDFILE" --log "$LOG" "$@" >/dev/null 2>&1 &
    echo "start requested"
    ;;
stop)
    if [ ! -f "$PIDFILE" ]; then
        echo "not running (no pidfile)"
        exit 4
    fi
    p=$(cat "$PIDFILE" 2>/dev/null)
    if [ -z "$p" ] || ! kill -0 "$p" 2>/dev/null; then
        echo "not running (stale pidfile pid=$p)"
        rm -f "$PIDFILE"
        exit 4
    fi
    kill -TERM "$p" 2>/dev/null
    i=0
    while kill -0 "$p" 2>/dev/null && [ $i -lt 50 ]; do
        sleep 0.1
        i=$((i+1))
    done
    if kill -0 "$p" 2>/dev/null; then
        kill -KILL "$p" 2>/dev/null
        echo "killed pid=$p"
        exit 5
    fi
    echo "stopped pid=$p"
    ;;
status)
    if [ -f "$PIDFILE" ]; then
        p=$(cat "$PIDFILE" 2>/dev/null)
        if [ -n "$p" ] && kill -0 "$p" 2>/dev/null; then
            echo "running pid=$p"
            exit 0
        fi
        echo "not running (stale pidfile pid=$p)"
        exit 4
    fi
    echo "not running (no pidfile)"
    exit 4
    ;;
*)
    echo "usage: run_supervisor.sh start|stop|status [args...]"
    exit 2
    ;;
esac
exit 0
