#!/system/bin/sh
# run_dialog.sh -- T7-03 连续对话（免唤醒续听）/ ASR 端点观测库（libtg_dialog.so）的装卸与控制
#
# 与 run_ttsguard.sh 同一套"同名 :core 可能有两个"的处理方式：
#   - 枚举所有 cmdline 精确等于 NAME 的进程；
#   - 只注入已加载 libsmartbox.so 且存活 >= MIN_AGE_S 的进程；
#   - mapped 但 hooked=0 时重新注入（uninstall 之后库还在内存里）。
#
# 用法（root）：
#   run_dialog.sh install                 注入（幂等）
#   run_dialog.sh status                  每个进程的 mapped / hooked / stats
#   run_dialog.sh uninstall               摘除
#   run_dialog.sh restart                 让 :core 重启（换过 .so 之后清掉内存里的旧副本）
#   run_dialog.sh cmd "starttalk 1"       发一条控制命令（见 libtg_dialog.c run_cmd）
#   run_dialog.sh vad 1200                运行时抬高 VAD 判停下限
#   run_dialog.sh snap                    打印最近一次唤醒信息快照
#   run_dialog.sh log [N]                 看本脚本自己的日志
DIR=/data/local/tmp/t7
SO=$DIR/libtg_dialog.so
INJ=/data/local/tmp/t6/tg_injector
NAME=com.alibaba.ailabs.genie.smartapp:core
LOG=$DIR/dialog.log
REQ=/data/local/tmp/t5_bridge/work/talk.req
WPID=$DIR/dialog.watch.pid
MIN_AGE_S=3

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"; }

core_pids() {
    cand=$(ps -A -o PID,ARGS 2>/dev/null | grep -F "$NAME" | grep -v 'run_dialog' \
           | sed 's/^ *//' | cut -d' ' -f1)
    for pid in $cand; do
        cmd=$( (tr '\0' ' ' < "/proc/$pid/cmdline") 2>/dev/null | sed 's/ *$//')
        [ "$cmd" = "$NAME" ] && echo "$pid"
    done
}

proc_age_s() {
    st=$(cut -d' ' -f22 "/proc/$1/stat" 2>/dev/null)
    [ -z "$st" ] && { echo 0; return; }
    up=$(cut -d' ' -f1 /proc/uptime | cut -d. -f1)
    echo $(( up - st / 100 ))
}

has_mod() { cat "/proc/$1/maps" 2>/dev/null | grep -q libsmartbox; }
mapped()  { cat "/proc/$1/maps" 2>/dev/null | grep -q libtg_dialog; }

# 注意（实测）：某些 :core 进程的 /proc/<pid>/maps 会被 SELinux 策略间歇性拒绝读
# （同一 pid 上 wc -l 能读、grep 直接读又 EACCES）。因此这里不再用 maps 做门禁，
# 而是直接尝试注入：注入器自己会核对目标模块/符号/序言，失败即返回非 0，重试就是了。
inject_one() {
    pid=$1
    age=$(proc_age_s "$pid")
    if [ "$age" -lt "$MIN_AGE_S" ]; then
        log "skip pid=$pid: age=${age}s < ${MIN_AGE_S}s"
        return 3
    fi
    out=$("$INJ" --pid "$pid" --so "$SO" --check 2>/dev/null)
    if echo "$out" | grep -q 'hooked=1'; then
        return 0
    fi
    log "inject pid=$pid age=${age}s"
    out=$("$INJ" --pid "$pid" --so "$SO" 2>&1)
    echo "$out" >> "$LOG"
    if echo "$out" | grep -q 'hooked=1\|RESULT ok'; then
        return 0
    fi
    if echo "$out" | grep -q 'RTLD_NOLOAD'; then
        log "inject: mapped copy deleted, restarting pid=$pid"
        kill -9 "$pid" 2>/dev/null
        return 4
    fi
    return 5
}

ensure() {
    pids=$(core_pids)
    if [ -z "$pids" ]; then log "ensure: no $NAME"; return 2; fi
    for p in $pids; do inject_one "$p"; done
    return 0
}

case "$1" in
install)   ensure ;;
ensure)    ensure; echo "ensure_done" ;;
status)
    pids=$(core_pids)
    [ -z "$pids" ] && { echo "core_pid=none"; exit 2; }
    for p in $pids; do
        if mapped "$p"; then echo "pid=$p dialog=mapped:yes"; else echo "pid=$p dialog=mapped:no"; fi
        "$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -E 'hooked|stats'
    done
    ;;
restart)
    for p in $(core_pids); do log "restart: kill -9 $p"; kill -9 "$p" 2>/dev/null; done
    echo "restart=sent"
    ;;
uninstall)
    for p in $(core_pids); do
        mapped "$p" || continue
        out=$("$INJ" --pid "$p" --so "$SO" --uninstall 2>&1 | tail -2)
        echo "$out"
        if echo "$out" | grep -q 'RTLD_NOLOAD\|exit=17'; then
            log "uninstall: mapped copy deleted, restarting pid=$p"
            kill -9 "$p" 2>/dev/null
        fi
    done
    ;;
cmd)
    [ -z "$2" ] && { echo "usage: $0 cmd <command...>"; exit 1; }
    shift
    printf '%s\n' "$*" > "$REQ"
    chmod 666 "$REQ" 2>/dev/null
    echo "queued: $*"
    ;;
talk)
    printf 'starttalk %s\n' "${2:-7}" > "$REQ"; chmod 666 "$REQ" 2>/dev/null
    echo "queued: starttalk ${2:-7}"
    ;;
talk-saved)
    printf 'starttalk_saved %s\n' "${2:-7}" > "$REQ"; chmod 666 "$REQ" 2>/dev/null
    echo "queued: starttalk_saved ${2:-7}"
    ;;
vad)
    [ -z "$2" ] && { echo "usage: $0 vad <ms>"; exit 1; }
    printf 'vad %s\n' "$2" > "$REQ"; chmod 666 "$REQ" 2>/dev/null; echo "queued: vad $2"
    ;;
silence)
    [ -z "$2" ] && { echo "usage: $0 silence <ms>"; exit 1; }
    printf 'silence %s\n' "$2" > "$REQ"; chmod 666 "$REQ" 2>/dev/null; echo "queued: silence $2"
    ;;
snap)      printf 'snap\n' > "$REQ"; chmod 666 "$REQ" 2>/dev/null; echo "queued: snap" ;;
watch)
    case "$2" in
    start)
        if [ -f "$WPID" ] && kill -0 "$(cat "$WPID")" 2>/dev/null; then
            echo "watch=running pid=$(cat "$WPID")"; exit 0
        fi
        setsid sh -c "while :; do '$0' ensure >/dev/null 2>&1; sleep 5; done" \
            </dev/null >/dev/null 2>&1 &
        echo $! > "$WPID"
        echo "watch=started pid=$(cat "$WPID")"
        ;;
    stop)
        if [ -f "$WPID" ]; then kill "$(cat "$WPID")" 2>/dev/null; rm -f "$WPID"; fi
        echo "watch=stopped"
        ;;
    *)
        if [ -f "$WPID" ] && kill -0 "$(cat "$WPID")" 2>/dev/null; then
            echo "watch=running pid=$(cat "$WPID")"
        else
            echo "watch=stopped"
        fi
        ;;
    esac
    ;;
log)       tail -n "${2:-20}" "$LOG" ;;
*)
    echo "usage: $0 {install|ensure|status|restart|uninstall|cmd \"...\"|vad MS|silence MS|snap|log [N]}"
    exit 1
    ;;
esac
