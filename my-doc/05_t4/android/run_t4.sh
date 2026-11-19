#!/system/bin/sh
# run_t4.sh -- 在设备上启动/查看/停止 T4 接收进程（普通 shell，无需 root）
#
# 用法（本机执行时用 adb shell 调用）：
#   adb shell "sh /data/local/tmp/t4/run_t4.sh start"            # 用默认参数后台启动
#   adb shell "sh /data/local/tmp/t4/run_t4.sh start --secs 35" # 有限时长
#   adb shell "sh /data/local/tmp/t4/run_t4.sh status"
#   adb shell "sh /data/local/tmp/t4/run_t4.sh stop"             # SIGINT，正常收尾并打印 SUMMARY
#   adb shell "sh /data/local/tmp/t4/run_t4.sh log"              # 看日志尾部
#   adb shell "sh /data/local/tmp/t4/run_t4.sh segments"         # 看片段目录
#
# 目录：/data/local/tmp/t4/{t4_receiver,t4_receiver.log,t4_receiver.pid,segments/}
set -u

D=/data/local/tmp/t4
BIN=$D/t4_receiver
LOG=$D/t4_receiver.log
PID=$D/t4_receiver.pid
OUT=$D/segments

cmd=${1:-start}
[ $# -gt 0 ] && shift

case "$cmd" in
  start)
    if [ -f "$PID" ] && kill -0 "$(cat "$PID")" 2>/dev/null; then
      echo "already running: pid=$(cat "$PID")"
      exit 1
    fi
    mkdir -p "$OUT" || exit 1
    chmod 775 "$OUT" 2>/dev/null
    : > "$LOG"
    nohup "$BIN" --abstract tgz2_pcm --out "$OUT" "$@" >> "$LOG" 2>&1 &
    echo $! > "$PID"
    sleep 1
    if kill -0 "$(cat "$PID")" 2>/dev/null; then
      echo "started: pid=$(cat "$PID") log=$LOG out=$OUT"
      head -2 "$LOG"
    else
      echo "failed to start; log:"
      cat "$LOG"
      exit 1
    fi
    ;;
  status)
    if [ -f "$PID" ] && kill -0 "$(cat "$PID")" 2>/dev/null; then
      echo "running: pid=$(cat "$PID")"
      tail -3 "$LOG"
    else
      echo "not running"
      exit 1
    fi
    ;;
  stop)
    if [ -f "$PID" ]; then
      p=$(cat "$PID")
      if kill -0 "$p" 2>/dev/null; then
        kill -INT "$p" 2>/dev/null
        i=0
        while kill -0 "$p" 2>/dev/null && [ $i -lt 50 ]; do
          sleep 0.1
          i=$((i+1))
        done
        if kill -0 "$p" 2>/dev/null; then
          echo "still alive after 5s, sending SIGTERM"
          kill -TERM "$p" 2>/dev/null
          sleep 1
        fi
        echo "stopped: pid=$p"
      else
        echo "pid $p not running"
      fi
      rm -f "$PID"
    else
      echo "no pid file"
    fi
    echo "--- SUMMARY / last lines ---"
    grep -E '"type":"(SUMMARY|SEGMENT)"' "$LOG" | tail -20
    ;;
  log)
    tail -40 "$LOG"
    ;;
  segments)
    ls -l "$OUT"
    ;;
  *)
    echo "usage: $0 {start [args...]|status|stop|log|segments}"
    exit 2
    ;;
esac
