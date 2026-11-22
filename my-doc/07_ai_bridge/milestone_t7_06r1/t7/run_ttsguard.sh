#!/system/bin/sh
# run_ttsguard.sh -- T7-02 TTS 来源守卫（libtg_ttsguard.so）的装卸与守护
#
# 为什么需要这个脚本：
#   1) 原厂 TTS 引擎活在 "com.alibaba.ailabs.genie.smartapp:core" 里，而这个进程是
#      "按需拉起"的：系统回收后 pid 会变（真机实测 1194 -> 30288 -> 30785 -> 31313 -> 484）。
#      原生 hook 随进程消失，所以必须能重复注入。
#   2) 真机上同时存在**两个**同名 :core 进程（实测 484 与 1627 并存），ASR 在其中一个、
#      TTS 播报在另一个。因此这里枚举所有同 cmdline 的进程，逐个注入（幂等）。
#   3) 不改动已验收的 T6-02 Supervisor：守护由本脚本（独立进程）负责。
#
# 注入前置条件（缺一不可，避免把还没初始化完的进程搅乱）：
#   - 目标进程 maps 里已经有 libsmartbox.so（准备注入的原厂模块已加载）
#   - 目标进程存活时间 >= MIN_AGE_S
#
# 用法（root）：
#   run_ttsguard.sh install            注入（枚举全部匹配进程，幂等）
#   run_ttsguard.sh status             每个进程的 mapped / hooked / stats
#   run_ttsguard.sh uninstall          摘除（恢复原厂序言）
#   run_ttsguard.sh ensure             不一致就补注入（watch 每轮调用它）
#   run_ttsguard.sh watch start|stop|status
DIR=/data/local/tmp/t7
SO=$DIR/libtg_ttsguard.so
INJ=/data/local/tmp/t6/tg_injector
NAME=com.alibaba.ailabs.genie.smartapp:core
LOG=$DIR/ttsguard.log
WPID=$DIR/ttsguard.watch.pid
MIN_AGE_S=3

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"; }

# 所有 cmdline 精确等于 NAME 的 pid
# 先 ps 粗筛（1 次 fork），再逐个核对 /proc/<pid>/cmdline（精确匹配，防 ARGS 截断误判）
core_pids() {
    cand=$(ps -A -o PID,ARGS 2>/dev/null | grep -F "$NAME" | grep -v 'run_ttsguard' \
           | sed 's/^ *//' | cut -d' ' -f1)
    for pid in $cand; do
        cmd=$( (tr '\0' ' ' < "/proc/$pid/cmdline") 2>/dev/null | sed 's/ *$//')
        [ "$cmd" = "$NAME" ] && echo "$pid"
    done
}

proc_age_s() {
    # /proc/<pid>/stat 第 22 字段 = 启动时刻（jiffies since boot）；/proc/uptime 第一列 = 已运行秒
    st=$(cut -d' ' -f22 "/proc/$1/stat" 2>/dev/null)
    [ -z "$st" ] && { echo 0; return; }
    up=$(cut -d' ' -f1 /proc/uptime | cut -d. -f1)
    echo $(( up - st / 100 ))
}

has_mod() { grep -q libsmartbox "/proc/$1/maps" 2>/dev/null; }
mapped()  { grep -q libtg_ttsguard "/proc/$1/maps" 2>/dev/null; }

inject_one() {
    pid=$1
    if mapped "$pid"; then
        # 库在内存里不代表补丁在：uninstall 之后库仍然映射着，必须看 hooked
        if "$INJ" --pid "$pid" --so "$SO" --check 2>/dev/null | grep -q 'hooked=1'; then
            return 0
        fi
        log "ensure: pid=$pid mapped but not hooked -> reinstalling"
    fi
    if ! has_mod "$pid"; then
        log "skip pid=$pid: libsmartbox.so not mapped yet"
        return 3
    fi
    age=$(proc_age_s "$pid")
    if [ "$age" -lt "$MIN_AGE_S" ]; then
        log "skip pid=$pid: age=${age}s < ${MIN_AGE_S}s"
        return 3
    fi
    log "inject pid=$pid age=${age}s"
    out=$("$INJ" --pid "$pid" --so "$SO" 2>&1)
    echo "$out" >> "$LOG"
    rc=$?
    # 磁盘上的 .so 被换过（inode 变了）时，进程里那份是 "(deleted)"，dlopen 会拒绝：
    # 让进程重启一次即可（补丁随进程消失，新进程会加载磁盘上的当前文件）
    if echo "$out" | grep -q 'RTLD_NOLOAD'; then
        log "inject: mapped copy deleted, restarting pid=$pid"
        kill -9 "$pid" 2>/dev/null
        return 4
    fi
    log "inject rc=$rc pid=$pid"
    return $rc
}

ensure() {
    pids=$(core_pids)
    if [ -z "$pids" ]; then log "ensure: no $NAME"; return 2; fi
    rc_all=0
    for p in $pids; do
        inject_one "$p" || rc_all=$?
    done
    return $rc_all
}

case "$1" in
install)
    ensure
    ;;
status)
    pids=$(core_pids)
    [ -z "$pids" ] && { echo "core_pid=none"; exit 2; }
    for p in $pids; do
        if mapped "$p"; then echo "pid=$p guard=mapped:yes"; else echo "pid=$p guard=mapped:no"; fi
        "$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -E 'hooked|stats'
    done
    ;;
restart)
    # 让原厂 :core 重启：新进程会加载磁盘上当前的 .so，避免一直映射到"已删除"的旧副本
    for p in $(core_pids); do
        log "restart: kill -9 $p"
        kill -9 "$p" 2>/dev/null
    done
    echo "restart=sent"
    ;;
uninstall)
    for p in $(core_pids); do
        mapped "$p" || continue
        out=$("$INJ" --pid "$p" --so "$SO" --uninstall 2>&1 | tail -2)
        echo "$out"
        # 磁盘上的 .so 被替换过（adb push 会换 inode）时，进程里映射的是 "(deleted)"，
        # Injector 的 --uninstall 走 dlopen(RTLD_NOLOAD) 会失败。此时退化成"让进程重启"，
        # 补丁随进程消失，原厂代码自然恢复；守护循环随后会把新进程重新装好。
        if echo "$out" | grep -q 'RTLD_NOLOAD\|exit=17'; then
            log "uninstall: mapped copy deleted, restarting pid=$p to drop the patch"
            kill -9 "$p" 2>/dev/null
            echo "uninstall: patched process $p restarted (patch dropped with the process)"
        fi
    done
    ;;
ensure)
    ensure; echo "ensure_rc=$?"
    ;;
watch)
    case "$2" in
    start)
        if [ -f "$WPID" ] && kill -0 "$(cat "$WPID")" 2>/dev/null; then
            echo "watch=running pid=$(cat "$WPID")"; exit 0
        fi
        # 完全脱离调用者的会话与标准流：否则 adb shell 会一直等着这个后台子进程
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
*)
    echo "usage: $0 install|status|uninstall|restart|ensure|watch start|stop|status"
    exit 1
    ;;
esac
