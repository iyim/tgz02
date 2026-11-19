#!/system/bin/sh
# run_t5.sh -- control the T5 ASR agent on the device (plain shell, no root needed)
#
#   adb shell "sh /data/local/tmp/t5/run_t5.sh start"          # background, watches T4 dir
#   adb shell "sh /data/local/tmp/t5/run_t5.sh start --verbose"
#   adb shell "sh /data/local/tmp/t5/run_t5.sh once"           # scan + process once, then exit
#   adb shell "sh /data/local/tmp/t5/run_t5.sh status"
#   adb shell "sh /data/local/tmp/t5/run_t5.sh log [N]"        # tail N lines (default 20)
#   adb shell "sh /data/local/tmp/t5/run_t5.sh results [N]"    # tail N result records
#   adb shell "sh /data/local/tmp/t5/run_t5.sh files"          # list work dir
#   adb shell "sh /data/local/tmp/t5/run_t5.sh stop"           # SIGINT, graceful
#
# paths: /data/local/tmp/t5/{t5_agent,t5_agent.log,t5_agent.pid,work/}
#        watch dir default: /data/local/tmp/t4/segments   (override with --watch-dir ...)
set -u

D=/data/local/tmp/t5
BIN=$D/t5_agent
LOG=$D/t5_agent.log
PID=$D/t5_agent.pid
WORK=$D/work
WATCH=/data/local/tmp/t4/segments

cmd=${1:-start}
[ $# -gt 0 ] && shift

case "$cmd" in
  start)
    if [ -f "$PID" ] && kill -0 "$(cat "$PID")" 2>/dev/null; then
      echo "already running: pid=$(cat "$PID")"
      exit 1
    fi
    mkdir -p "$WORK" || exit 1
    : > "$LOG"
    nohup "$BIN" --watch-dir "$WATCH" --work-dir "$WORK" "$@" >> "$LOG" 2>&1 &
    echo $! > "$PID"
    sleep 1
    if kill -0 "$(cat "$PID")" 2>/dev/null; then
      echo "started: pid=$(cat "$PID") log=$LOG work=$WORK watch=$WATCH"
      head -2 "$LOG"
    else
      echo "failed to start; log:"
      cat "$LOG"
      exit 1
    fi
    ;;
  once)
    mkdir -p "$WORK" || exit 1
    exec "$BIN" --watch-dir "$WATCH" --work-dir "$WORK" --once "$@"
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
  log)
    n=${1:-20}
    tail -"$n" "$LOG"
    ;;
  results)
    n=${1:-10}
    if [ -f "$WORK/results.jsonl" ]; then
      tail -"$n" "$WORK/results.jsonl"
    else
      echo "no results yet ($WORK/results.jsonl)"
    fi
    ;;
  files)
    ls -l "$WORK"
    ;;
  stop)
    if [ ! -f "$PID" ]; then
      echo "no pid file"
      exit 1
    fi
    p=$(cat "$PID")
    if kill -0 "$p" 2>/dev/null; then
      kill -INT "$p" 2>/dev/null
      i=0
      while kill -0 "$p" 2>/dev/null && [ $i -lt 50 ]; do
        sleep 0.1
        i=$((i+1))
      done
      if kill -0 "$p" 2>/dev/null; then
        echo "still running after SIGINT, sending TERM"
        kill "$p" 2>/dev/null
        sleep 0.5
      fi
      echo "stopped: pid=$p"
      tail -2 "$LOG"
    else
      echo "not running (stale pid $p)"
    fi
    ;;
  *)
    echo "usage: sh $0 {start|once|status|log [N]|results [N]|files|stop} [extra args]"
    exit 2
    ;;
esac
