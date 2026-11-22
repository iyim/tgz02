#!/system/bin/sh
# run_t7_05.sh -- T7-05/T7-06 生命周期：TTS 守卫（单一 Supervisor 注入）+ 状态 + 回滚 + 自检
#
# 为什么单独一个脚本：
#   T7-02 用 watch 每 5 s 补装，:core 重启后有 5 s 空窗；T7-03 又起了三个附加
#   Supervisor，出现多套东西抢着往同一个进程注入。现在只保留**一个**生命周期所有者：
#   T6-02 的 Supervisor（只加 --so 参数，不改它代码）。
#
# 设备上通常有**两个** tg_supervisor，但 --so 不同，绝不能一起杀：
#   * T6-01 ASR hook  : tg_supervisor --pidfile /data/local/tmp/t6/tg_supervisor.pid
#   * TTS 守卫(本脚本): tg_supervisor --injector ... --so libtg_ttsguard.so
# 因此本脚本一律用 /proc/<pid>/cmdline 识别"注入守卫的那个"。
#
# 另外：本固件上 root 对别的域 kill -0 会返回 EPERM，判活只看 /proc/<pid> 是否存在。
#
# 用法（root，一条命令一次调用）：
#   sh run_t7_05.sh guard-start      启动唯一守卫（先清掉全部守卫 supervisor）
#   sh run_t7_05.sh guard-stop       停守卫 supervisor -> 卸载注入 -> 复核 hooked=0
#   sh run_t7_05.sh guard-reload     换过 .so 之后用：停 -> 重启 :core -> 重新注入
#   sh run_t7_05.sh guard-status     supervisor + 每个 :core 的 hooked/stats
#   sh run_t7_05.sh route-status     最近一次 route=native 的放行标记
#   sh run_t7_05.sh worker-status    Worker 状态里的 route/gate/session 段
#   sh run_t7_05.sh verify           当前三个产物的 sha256 + 注入状态
#   sh run_t7_05.sh selfcheck        备份是否齐全、sha256 是否与记录一致（防"报告与回滚代码不一致"）
#   sh run_t7_05.sh rollback         停守卫 -> 恢复 T7-04 三个产物 -> 逐项校验 -> 重启 Worker
SUP=/data/local/tmp/t6/tg_supervisor
INJ=/data/local/tmp/t6/tg_injector
T7=/data/local/tmp/t7
T5=/data/local/tmp/t5_bridge
SO=$T7/libtg_ttsguard.so
NAME=com.alibaba.ailabs.genie.smartapp:core
SUPPID=$T7/ttsguard.sup.pid
SUPLOG=$T7/ttsguard.sup.log
WATCHPID=$T7/ttsguard.watch.pid
LOG=$T7/t7_05.log
BK5=$T5/backup_t7_05
BK7=$T7/backup_t7_05

# T7-04 基线（回滚目标）。selfcheck / rollback 都用这一份，改这里就等于改回滚定义。
SHA_WORKER_T704=b3c8dde4cd6d6c0b035689ae6f50fbf92630c35e2de7cd519abd1d2cac1e4ed3
SHA_CONF_T704=82481c539df297b86ecf9dab8c0b5a0afdc3a9a623f43455ed0208516d8dad1e
SHA_GUARD_T704=fc1d27f2357b5a3390035207f4fb8c70fe3c7403dca3335e56d55f8429ab67b4

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"; }

# 必须是 root：read /proc/<pid>/maps、ptrace 注入、写 0600 的 worker.conf 都要 root。
# 本固件上 su 偶发只给 shell（uid=2000），那种情况下 sha256sum 会返回空、cp 会失败，
# 与其留下半回滚状态，不如立刻停在这里报清楚。
if [ "$(id -u)" != "0" ]; then
    echo "FAIL: must run as root (uid=$(id -u)). 用法: su -c 'sh $0 <cmd>'"
    exit 9
fi

alive() { [ -d "/proc/$1" ]; }

# Worker 是否在跑：按 cmdline 精确匹配，避免 grep 匹配到自己/run_ai_worker.sh
worker_running() {
    for d in /proc/[0-9]*; do
        [ -r "$d/cmdline" ] || continue
        cmd=$(tr '\0' ' ' 2>/dev/null < "$d/cmdline")
        case "$cmd" in
            */t5_bridge/bin/ai_worker*) return 0 ;;
        esac
    done
    return 1
}

sha_of() {
    # 只输出 64 位小写 sha，取不到就是空
    sha256sum "$1" 2>/dev/null | cut -d' ' -f1
}

core_pids() {
    cand=$(ps -A -o PID,ARGS 2>/dev/null | grep -F "$NAME" | grep -v 'run_t7_05' \
           | sed 's/^ *//' | cut -d' ' -f1)
    for pid in $cand; do
        cmd=$( (tr '\0' ' ' < "/proc/$pid/cmdline") 2>/dev/null | sed 's/ *$//')
        [ "$cmd" = "$NAME" ] && echo "$pid"
    done
}

# 所有"注入守卫生"的 supervisor（按 cmdline 识别，不依赖 pidfile）
guard_sup_pids() {
    for d in /proc/[0-9]*; do
        pid=${d#/proc/}
        [ -r "$d/cmdline" ] || continue
        cmd=$(tr '\0' ' ' 2>/dev/null < "$d/cmdline")
        case "$cmd" in
            *tg_supervisor*libtg_ttsguard*) echo "$pid" ;;
        esac
    done
}

# 只用于报告/告警：T6-01 的 ASR hook supervisor（本脚本绝不杀它）
asr_sup_pids() {
    for d in /proc/[0-9]*; do
        pid=${d#/proc/}
        [ -r "$d/cmdline" ] || continue
        cmd=$(tr '\0' ' ' 2>/dev/null < "$d/cmdline")
        case "$cmd" in
            *tg_supervisor*tg_supervisor.pid*) echo "$pid" ;;
        esac
    done
}

kill_pidfile() {
    f=$1; name=$2
    [ -f "$f" ] || return 0
    p=$(cat "$f" 2>/dev/null)
    if [ -n "$p" ] && alive "$p"; then
        kill "$p" 2>/dev/null
        log "stop $name pid=$p"
        sleep 1
    fi
    rm -f "$f"
}

# 清掉全部守卫 supervisor（先 TERM，再 KILL），并确认已经不存在
kill_guard_sups() {
    round=0
    while [ "$round" -lt 3 ]; do
        cur=$(guard_sup_pids)
        [ -z "$cur" ] && break
        for p in $cur; do
            if [ "$round" -eq 0 ]; then
                kill "$p" 2>/dev/null
                log "stop guard supervisor pid=$p (TERM)"
            else
                kill -9 "$p" 2>/dev/null
                log "stop guard supervisor pid=$p (KILL round=$round)"
            fi
        done
        sleep 1
        round=$((round + 1))
    done
    left=$(guard_sup_pids)
    if [ -n "$left" ]; then
        echo "FAIL guard supervisor still alive: $left (try: kill -9 <pid> 手动)"
        return 1
    fi
    rm -f "$SUPPID"
    return 0
}

# 卸载注入并复核；RTLD_NOLOAD/exit=17 说明 .so 已被删除但仍映射，只能重启 :core
uninstall_all() {
    rc=0
    for p in $(core_pids); do
        out=$("$INJ" --pid "$p" --so "$SO" --uninstall 2>&1 | tail -1)
        echo "uninstall pid=$p $out"
        log "uninstall pid=$p $out"
        case "$out" in
            *RTLD_NOLOAD*|*exit=17*)
                kill -9 "$p" 2>/dev/null
                echo "pid=$p restarted (patch dropped with the process)"
                log "restart pid=$p (deleted mapped copy)"
                ;;
        esac
    done
    sleep 3
    for p in $(core_pids); do
        st=$("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)
        echo "check pid=$p $st"
        case "$st" in
            hooked=1) rc=1 ;;
        esac
    done
    if [ "$rc" -ne 0 ]; then
        echo "WARN a :core still reports hooked=1 (see above)"
    else
        echo "guard uninstalled: hooked=0 on every :core"
    fi
    return "$rc"
}

guard_start() {
    kill_pidfile "$WATCHPID" watch
    kill_guard_sups
    setsid "$SUP" --injector "$INJ" --so "$SO" --name "$NAME" \
        --pidfile "$SUPPID" --log "$SUPLOG" </dev/null >/dev/null 2>&1 &
    echo $! > "$SUPPID"
    log "guard-start supervisor pid=$(cat "$SUPPID") so=$SO"
    echo "guard supervisor: pid=$(cat "$SUPPID")"
    sleep 3
    guard_status
}

guard_stop() {
    # 1) 先停掉**所有**守卫 supervisor，确保没有进程会重新注入
    kill_guard_sups || return 3
    kill_pidfile "$WATCHPID" watch
    # 2) 再卸载已经装进去的 hook，并复核 hooked=0
    uninstall_all
    rc=$?
    # 3) 最后确认没有残留守卫 supervisor（T6-01 的 ASR supervisor 不计入）
    left=$(guard_sup_pids)
    if [ -n "$left" ]; then
        echo "FAIL guard supervisor came back: $left"
        return 4
    fi
    echo "guard-stop done (asr supervisor left untouched: $(asr_sup_pids | tr '\n' ' '))"
    [ "$rc" -eq 0 ] || echo "WARN uninstall did not reach hooked=0"
    log "guard-stop done rc=$rc"
    return 0
}

# 换过 .so 文件之后必须调用这个：libtg_ttsguard.so 一旦被 mv/替换，进程里映射的
# 还是旧 inode（dlopen 会报 "wasn't loaded and RTLD_NOLOAD prevented it"），
# 只有重启 :core 才会真正加载新文件。
guard_reload() {
    guard_stop || return $?
    for p in $(core_pids); do
        echo "restart :core pid=$p so the new .so is loaded"
        kill -9 "$p" 2>/dev/null
        log "guard-reload restart core pid=$p"
    done
    sleep 6
    guard_start
}

guard_status() {
    guar=$(guard_sup_pids)
    if [ -n "$guar" ]; then
        for g in $guar; do
            echo "supervisor=running pid=$g"
            echo "$g" > "$SUPPID"
        done
    else
        echo "supervisor=stopped"
        rm -f "$SUPPID"
    fi
    echo "asr_supervisor=$(asr_sup_pids | tr '\n' ' ')"
    if [ -f "$WATCHPID" ]; then echo "watch=file-present pid=$(cat "$WATCHPID" 2>/dev/null)"; else echo "watch=stopped"; fi
    pids=$(core_pids)
    [ -z "$pids" ] && { echo "core_pid=none"; return 2; }
    for p in $pids; do
        if grep -q 'libtg_ttsguard' "/proc/$p/maps" 2>/dev/null; then
            echo "pid=$p guard=mapped:yes"
        else
            echo "pid=$p guard=mapped=unknown(kernel hides /proc/$p/maps)"
        fi
        "$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -E 'hooked|stats'
    done
}

route_status() {
    f=$T5/work/native_route.public.json
    if [ -f "$f" ]; then ls -l "$f"; cat "$f"; else echo "no native_route marker yet"; fi
}

worker_status() {
    f=$T5/ai_worker/ai_worker_status.json
    [ -f "$f" ] || { echo "no worker status"; return 2; }
    tr ',' '\n' < "$f" | grep -E '"(route|gate|session)"|"native"|"ai"|"volume"|"weather"|"screen_off"|"time"|"state"|"turns"|"followups"|"held"|"merged"|"last_detail"' | head -40
}

verify() {
    echo "worker      : $(sha_of "$T5/bin/ai_worker")  $T5/bin/ai_worker"
    echo "worker.conf : $(sha_of "$T5/ai_worker/worker.conf")  $T5/ai_worker/worker.conf"
    echo "tts_exec.dex: $(sha_of "$T5/tts_exec.dex")"
    echo "guard.so    : $(sha_of "$SO")  $SO"
    echo "guard sups  : $(guard_sup_pids | tr '\n' ' ')"
    echo "asr   sups  : $(asr_sup_pids | tr '\n' ' ')"
    for p in $(core_pids); do
        echo "core pid=$p $("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)"
    done
}

# 可执行自检：备份是否在、sha 是否与脚本里的常量一致。
# 任何一项不符 => 立刻可见的 FAIL，避免"报告说能回滚、代码其实没恢复"。
selfcheck() {
    fail=0
    for pair in "$BK5/ai_worker.t7_04:$SHA_WORKER_T704" \
                "$BK5/worker.conf.t7_04:$SHA_CONF_T704" \
                "$BK7/libtg_ttsguard.t7_04.so:$SHA_GUARD_T704"; do
        f=${pair%%:*}
        want=${pair#*:}
        got=$(sha_of "$f")
        if [ ! -f "$f" ]; then
            echo "FAIL missing backup: $f"
            fail=1
        elif [ "$got" != "$want" ]; then
            echo "FAIL sha mismatch: $f got=$got want=$want"
            fail=1
        else
            echo "ok   $f sha=$got"
        fi
    done
    [ "$fail" -eq 0 ] && echo "selfcheck: PASS" || echo "selfcheck: FAIL"
    return "$fail"
}

rollback() {
    # 0) 备份必须齐全（否则宁可停在这里，也不要把设备留在半回滚状态）
    selfcheck >/dev/null 2>&1 || { selfcheck; echo "ABORT rollback: backups missing or corrupted"; return 5; }

    # 1) 停守卫（含清全部 supervisor）并卸载 hook，复核 hooked=0
    guard_stop
    grc=$?
    [ "$grc" -eq 0 ] || { echo "ABORT rollback: guard-stop failed rc=$grc"; return 6; }

    # 2) 恢复 T7-04 三个产物
    sh "$T5/run_ai_worker.sh" stop >/dev/null 2>&1
    cp "$BK5/ai_worker.t7_04" "$T5/bin/ai_worker" || { echo "ABORT: worker restore failed"; return 7; }
    chmod 755 "$T5/bin/ai_worker"
    cp "$BK5/worker.conf.t7_04" "$T5/ai_worker/worker.conf" || { echo "ABORT: conf restore failed"; return 7; }
    chmod 600 "$T5/ai_worker/worker.conf"
    cp "$BK7/libtg_ttsguard.t7_04.so" "$SO" || { echo "ABORT: guard .so restore failed"; return 7; }
    chmod 644 "$SO"

    # 3) 逐项校验 sha256
    rc=0
    got=$(sha_of "$T5/bin/ai_worker")
    [ "$got" = "$SHA_WORKER_T704" ] && echo "ok   worker sha=$got" || { echo "FAIL worker sha=$got"; rc=1; }
    got=$(sha_of "$T5/ai_worker/worker.conf")
    [ "$got" = "$SHA_CONF_T704" ] && echo "ok   conf sha=$got" || { echo "FAIL conf sha=$got"; rc=1; }
    got=$(sha_of "$SO")
    [ "$got" = "$SHA_GUARD_T704" ] && echo "ok   guard sha=$got" || { echo "FAIL guard sha=$got"; rc=1; }

    # 4) 重启 Worker
    sh "$T5/run_ai_worker.sh" start-deepseek >/dev/null 2>&1
    sleep 2
    wpid=$([ -n x ] && worker_running && echo running)
    if worker_running; then echo "ok   worker running"; else echo "FAIL worker not running"; rc=1; fi

    log "rollback: worker/conf/guard restored to T7-04, rc=$rc"
    for p in $(core_pids); do
        st=$("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)
        echo "core pid=$p $st (guard not injected after rollback)"
    done
    [ "$rc" -eq 0 ] && echo "rollback: PASS" || echo "rollback: FAIL"
    return "$rc"
}

case "$1" in
guard-start)   guard_start ;;
guard-stop)    guard_stop ;;
guard-status)  guard_status ;;
guard-reload)  guard_reload ;;
route-status)  route_status ;;
worker-status) worker_status ;;
verify)        verify ;;
selfcheck)     selfcheck ;;
rollback)      rollback ;;
*) echo "usage: $0 guard-start|guard-stop|guard-reload|guard-status|route-status|worker-status|verify|selfcheck|rollback"; exit 1 ;;
esac
