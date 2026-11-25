# run_tts_exec.sh -- T5-06D 设备端 TTS 执行器控制脚本（start|stop|status|play|stop-now）
#
# 说明：执行器是 app_process 跑的独立 Java 程序（tts_exec.dex），
#       不改 system、不装 APK、不碰原厂 APK/native。这里只做进程生命周期。
#
# 用法：
#   sh run_tts_exec.sh start            启动（带守护循环：进程退出后自动拉起，最多重启 200 次）
#   sh run_tts_exec.sh stop             停止守护循环 + 执行器
#   sh run_tts_exec.sh status           状态（守护/执行器 pid、队列深度、journal 末尾）
#   sh run_tts_exec.sh play FILE [ID]   直连播报一个 UTF-8 文本文件（自检用）
#   sh run_tts_exec.sh stop-now         让正在播报的条目立刻停止（写 control/stop）
ROOT=${T5D_TTS_ROOT:-/data/local/tmp/t5_bridge/tts}
DEX=${T5D_TTS_DEX:-/data/local/tmp/t5_bridge/tts_exec.dex}
SUP=$ROOT/supervisor.pid
RUN=$ROOT/tts_exec.pid
LOG=$ROOT/tts_exec.log
MAIN=com.tgz02.tts.TtsExec
PATH=/system/bin:/system/xbin:/sbin:$PATH
export PATH

alive() { [ -n "$1" ] && [ -d "/proc/$1" ]; }

# pid 文件是 0600 root：必须通过 su 读
sucat() { su -c "PATH=/system/bin:/system/xbin:/sbin; cat $1 2>/dev/null" 2>/dev/null | tr -d ' \r\n'; }

start() {
    mkdir -p "$ROOT" "$ROOT/queue" "$ROOT/inflight" "$ROOT/done" "$ROOT/failed" \
             "$ROOT/tmp" "$ROOT/control" 2>/dev/null
    S=$(sucat "$SUP"); E=$(sucat "$RUN")
    if alive "$S" && alive "$E"; then
        echo "already running: supervisor=$S exec=$E"
        return 0
    fi
    if [ ! -f "$DEX" ]; then echo "missing dex: $DEX"; return 1; fi
    # 先清掉可能残留的守护循环/执行器（含上一轮遗留的 supervisor），保证只有一个 supervisor
    su -c "PATH=/system/bin:/system/xbin:/sbin; sh /data/local/tmp/t5d06/kill_all.sh" >/dev/null 2>&1
    sleep 1
    su -c "PATH=/system/bin:/system/xbin:/sbin; nohup sh /data/local/tmp/t5_bridge/tts_supervisor.sh >/dev/null 2>&1 &" >/dev/null 2>&1
    i=0
    while [ $i -lt 15 ]; do
        i=$((i+1))
        sleep 1
        alive "$(sucat "$RUN")" && break
    done
    echo "started: supervisor=$(sucat "$SUP") executor=$(sucat "$RUN")"
}

stop() {
    S=$(cat "$SUP" 2>/dev/null)
    E=$(cat "$RUN" 2>/dev/null)
    # 执行器与守护循环都是 root 起的：用 su + pkill 按类名精确收尾（不碰其它 app_process）
    su -c "kill $S 2>/dev/null; kill $E 2>/dev/null; pkill -9 -f $MAIN 2>/dev/null; true"
    rm -f "$SUP" "$RUN"
    echo "stopped (supervisor=${S:-none} executor=${E:-none})"
}

status() {
    S=$(sucat "$SUP"); E=$(sucat "$RUN")
    SUP_ST=dead; EXEC_ST=dead
    # 用 /proc 判活：kill -0 在非 root 会话里对 root 进程会误判 EPERM
    [ -n "$S" ] && [ -d "/proc/$S" ] && SUP_ST=alive
    [ -n "$E" ] && [ -d "/proc/$E" ] && EXEC_ST=alive
    echo "supervisor=${S:-none}/$SUP_ST executor=${E:-none}/$EXEC_ST"
    echo "root=$ROOT dex=$DEX"
    for d in queue inflight done failed; do
        echo "$d=$(ls "$ROOT/$d" 2>/dev/null | wc -l)"
    done
    echo "journal_last: $(su -c "PATH=/system/bin:/system/xbin:/sbin; tail -n 1 $ROOT/journal.jsonl" 2>/dev/null)"
}

play() {
    # 直连播报 = 写入队列，由守护进程统一播报（另起实例会撞单实例锁）
    F="$1"; ID=${2:-adhoc}
    [ -f "$F" ] || { echo "missing file: $F"; return 1; }
    su -c "PATH=/system/bin:/system/xbin:/sbin; CLASSPATH=$DEX app_process /system $MAIN \
           --root $ROOT --enqueue-file $F --event-id $ID"
}

play_now() {
    # 没有守护进程时的一次性播报（同步，带状态）
    F="$1"; ID=${2:-adhoc}
    [ -f "$F" ] || { echo "missing file: $F"; return 1; }
    su -c "PATH=/system/bin:/system/xbin:/sbin; CLASSPATH=$DEX app_process /system $MAIN \
           --root $ROOT --play-file $F --event-id $ID --timeout-ms 90000 --verbose"
}

stop_now() {
    mkdir -p "$ROOT/control"
    echo "stop" > "$ROOT/control/stop"
    echo "stop requested"
}

case "$1" in
    start)    start ;;
    stop)     stop ;;
    status)   status ;;
    play)     play "$2" "$3" ;;
    play-now) play_now "$2" "$3" ;;
    stop-now) stop_now ;;
    *) echo "usage: $0 start|stop|status|play FILE [ID]|play-now FILE [ID]|stop-now"; exit 2 ;;
esac
