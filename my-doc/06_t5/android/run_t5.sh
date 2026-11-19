#!/system/bin/sh
# T5 process controller

set -u

D=/data/local/tmp/t5
BIN=$D/t5_agent
LOG=$D/t5_agent.log
PID=$D/t5_agent.pid
WORK=$D/work
WATCH=/data/local/tmp/t4/segments

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

is_t5_process()
{
    p=$1

    case "$p" in
        ''|*[!0-9]*) return 1 ;;
    esac

    [ -r "/proc/$p/cmdline" ] || return 1

    # 用 cat 读取，绝不让 tr 继承 stdin：/proc/<pid> 在两次检查之间消失时，
    # 原来的 `tr < /proc/$p/cmdline` 会因重定向失败而改读 stdin（adb shell 管道，永不 EOF），
    # 导致 status/stop 永久挂起。cat 打不开就退出，管道随即结束，exe 为空 -> 判非 T5。
    exe=$(cat "/proc/$p/cmdline" 2>/dev/null |
          tr '\000' '\n' |
          sed -n '1p')

    [ "$exe" = "$BIN" ]
}

cleanup_stale_pid()
{
    if read_pid; then
        if ! is_t5_process "$p"; then
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
        if ! is_t5_process "$p"; then
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

    if read_pid && is_t5_process "$p"; then
        echo "already running: pid=$p"
        exit 1
    fi

    [ -x "$BIN" ] || {
        echo "t5_agent not executable: $BIN"
        exit 1
    }

    mkdir -p "$WORK" || exit 1
    : > "$LOG"

    nohup "$BIN" \
        --watch-dir "$WATCH" \
        --work-dir "$WORK" \
        "$@" >> "$LOG" 2>&1 &

    child=$!
    echo "$child" > "$PID"

    sleep 1

    if is_t5_process "$child"; then
        echo "started: pid=$child log=$LOG"
        head -2 "$LOG"
    else
        rm -f "$PID"
        echo "failed to start; log:"
        cat "$LOG"
        exit 1
    fi
    ;;

  once)
    mkdir -p "$WORK" || exit 1
    exec "$BIN" \
        --watch-dir "$WATCH" \
        --work-dir "$WORK" \
        --once "$@"
    ;;

  status)
    if read_pid && is_t5_process "$p"; then
        echo "running: pid=$p"
        tail -3 "$LOG"
    else
        cleanup_stale_pid
        echo "not running"
        exit 1
    fi
    ;;

  log)
    n=${1:-20}
    tail -n "$n" "$LOG"
    ;;

  results)
    n=${1:-10}
    if [ -f "$WORK/results.jsonl" ]; then
        tail -n "$n" "$WORK/results.jsonl"
    else
        echo "no results yet"
    fi
    ;;

  files)
    ls -l "$WORK"
    ;;

  stop)
    if ! read_pid; then
        rm -f "$PID"
        echo "no valid pid file"
        exit 1
    fi

    if ! is_t5_process "$p"; then
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

    if is_t5_process "$p"; then
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
    echo "usage: sh $0 {start|once|status|log [N]|results [N]|files|stop}"
    exit 2
    ;;
esac
