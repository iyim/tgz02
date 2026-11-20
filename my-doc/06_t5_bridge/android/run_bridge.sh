#!/system/bin/sh
# run_bridge.sh -- T5-05A 本机 ASR 事件桥接收端（tgb_bridge）的设备端控制脚本
#
#   sh run_bridge.sh start            启动（抽象命名空间 tgz2_asr_bridge）
#   sh run_bridge.sh status           是否在跑 + 最近一行状态 + 计数
#   sh run_bridge.sh stop             先 SIGINT，超时再 SIGTERM
#   sh run_bridge.sh log [N]          看进程日志（默认 20 行）
#   sh run_bridge.sh events [N]       看最近 N 条事件（events.jsonl）
#   sh run_bridge.sh stats            打印 bridge_status.json
#
# 所有产物都在 /data/local/tmp/t5_bridge 下，不写 T4 的 WAV 目录、不碰原厂数据。
# start 之后的额外参数会原样传给 tgb_bridge（例：sh run_bridge.sh start --verbose）。

set -u

D=/data/local/tmp/t5_bridge
BIN=$D/tgb_bridge
LOG=$D/tgb_bridge.log
PID=$D/tgb_bridge.pid
WORK=$D/work
SOCK=tgz2_asr_bridge

cmd=${1:-start}
[ $# -gt 0 ] && shift

read_pid()
{
    [ -f "$PID" ] || return 1

    p=$(cat "$PID" 2>/dev/null) || return 1

    case "$p" in
        ''|*[!0-9]*) return 1 ;;
    esac

    [ "$p" -gt 1 ] || return 1

    return 0
}

is_bridge_process()
{
    p=$1

    case "$p" in
        ''|*[!0-9]*) return 1 ;;
    esac

    [ -r "/proc/$p/cmdline" ] || return 1

    # 用 cat 读，不让 tr 继承 stdin：/proc/<pid> 在两次检查之间消失时，
    # 重定向失败会让 tr 改读 stdin（adb shell 管道，永不 EOF），status/stop 会挂住。
    exe=$(cat "/proc/$p/cmdline" 2>/dev/null |
          tr '\000' '\n' |
          sed -n '1p')

    [ "$exe" = "$BIN" ]
}

cleanup_stale_pid()
{
    if read_pid; then
        if ! is_bridge_process "$p"; then
            rm -f "$PID"
        fi
    else
        rm -f "$PID"
    fi
}

wait_exit()
{
    p=$1
    count=$2

    i=0
    while [ "$i" -lt "$count" ]; do
        if ! is_bridge_process "$p"; then
            return 0
        fi

        sleep 0.1
        i=$((i + 1))
    done

    return 1
}

case "$cmd" in
  start)
    cleanup_stale_pid

    if read_pid && is_bridge_process "$p"; then
        echo "already running: pid=$p"
        exit 1
    fi

    [ -x "$BIN" ] || {
        echo "tgb_bridge not executable: $BIN"
        exit 1
    }

    mkdir -p "$WORK" || exit 1
    : > "$LOG"

    nohup "$BIN" \
        --sock "$SOCK" \
        --work-dir "$WORK" \
        "$@" >> "$LOG" 2>&1 &

    child=$!
    echo "$child" > "$PID"

    sleep 1

    if is_bridge_process "$child"; then
        echo "started: pid=$child sock=abstract:$SOCK work=$WORK"
        head -3 "$LOG"
    else
        rm -f "$PID"
        echo "failed to start; log:"
        cat "$LOG"
        exit 1
    fi
    ;;

  status)
    if read_pid && is_bridge_process "$p"; then
        echo "running: pid=$p"
        if [ -f "$WORK/bridge_status.json" ]; then
            cat "$WORK/bridge_status.json"
        else
            echo "no status file yet"
        fi
    else
        cleanup_stale_pid
        echo "not running"
        exit 1
    fi
    ;;

  stats)
    if [ -f "$WORK/bridge_status.json" ]; then
        cat "$WORK/bridge_status.json"
    else
        echo "no status file: $WORK/bridge_status.json"
        exit 1
    fi
    ;;

  log)
    n=${1:-20}
    tail -n "$n" "$LOG"
    ;;

  events)
    n=${1:-10}
    if [ -f "$WORK/events.jsonl" ]; then
        tail -n "$n" "$WORK/events.jsonl"
    else
        echo "no events yet: $WORK/events.jsonl"
    fi
    ;;

  stop)
    if ! read_pid; then
        rm -f "$PID"
        echo "no valid pid file"
        exit 1
    fi

    if ! is_bridge_process "$p"; then
        rm -f "$PID"
        echo "stale pid file; no signal sent"
        exit 1
    fi

    kill -INT "$p" 2>/dev/null || {
        echo "SIGINT failed"
        exit 1
    }

    if wait_exit "$p" 50; then
        rm -f "$PID"
        echo "stopped: pid=$p"
        tail -2 "$LOG"
        exit 0
    fi

    echo "SIGINT timeout; sending TERM"

    if is_bridge_process "$p"; then
        kill -TERM "$p" 2>/dev/null || {
            echo "SIGTERM failed"
            exit 1
        }
    fi

    if wait_exit "$p" 30; then
        rm -f "$PID"
        echo "stopped after TERM: pid=$p"
        tail -2 "$LOG"
        exit 0
    fi

    echo "ERROR: process still running: pid=$p"
    exit 1
    ;;

  *)
    echo "usage: sh $0 {start|status|stats|log [N]|events [N]|stop}"
    exit 2
    ;;
esac
