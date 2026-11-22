#!/system/bin/sh
# run_t7_05.sh -- T7-05-R2 生命周期：TTS 守卫（单一 Supervisor 注入）+ 状态 + 回滚 + 自检
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
# T7-05-R2 的核心变化：**fail-closed**。
#   T7-05-R1 里 uninstall_all 失败只打 WARN，guard_stop 照样 return 0，于是
#   回滚可以"报告成功"但 hook 还在进程里。现在：
#     * kill_guard_sups 失败 -> 立刻非零
#     * uninstall 命令非零 / 任何 :core 仍 hooked=1 -> 立刻非零
#     * guard supervisor 残留或重新出现 -> 立刻非零
#     * rollback 任何一步失败 -> 只输出 rollback: FAIL 并返回非零，绝不输出 PASS
#
# 为了能"用真脚本跑故障注入"（而不是复制一份伪代码自证），下面所有外部依赖都留了
# 重定向点（设备上全部保持默认值，一个都不用设）：
#   TG_PROC / TG_PS / TG_SHA / TG_KILL / TG_SLEEP / TG_CP / TG_PERM / TG_STAT
#   TG_SUP / TG_INJ / TG_T5 / TG_T7 / TG_NO_ROOT / TG_WORKER_START / TG_WORKER_STOP
#   TG_SHA_WORKER_T704 / TG_SHA_CONF_T704 / TG_SHA_GUARD_T704
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

SUP=${TG_SUP:-/data/local/tmp/t6/tg_supervisor}
INJ=${TG_INJ:-/data/local/tmp/t6/tg_injector}
T7=${TG_T7:-/data/local/tmp/t7}
T5=${TG_T5:-/data/local/tmp/t5_bridge}
SO=$T7/libtg_ttsguard.so
NAME=com.alibaba.ailabs.genie.smartapp:core
SUPPID=$T7/ttsguard.sup.pid
SUPLOG=$T7/ttsguard.sup.log
WATCHPID=$T7/ttsguard.watch.pid
LOG=$T7/t7_05.log
BK5=$T5/backup_t7_05
BK7=$T7/backup_t7_05

# 外部依赖（主机故障注入时重定向；设备上用默认值）
PROC=${TG_PROC:-/proc}
PSBIN=${TG_PS:-ps}
SHACMD=${TG_SHA:-sha256sum}
KILLX=${TG_KILL:-kill}
SLEEPX=${TG_SLEEP:-sleep}
CPCMD=${TG_CP:-cp}
PERMCMD=${TG_PERM:-chmod}
STATCMD=${TG_STAT:-stat}
SETSIDX=${TG_SETSID:-setsid}
WORKER_START_CMD=${TG_WORKER_START:-sh $T5/run_ai_worker.sh start-deepseek}
WORKER_STOP_CMD=${TG_WORKER_STOP:-sh $T5/run_ai_worker.sh stop}

# T7-04 基线（回滚目标）。selfcheck / rollback 都用这一份，改这里就等于改回滚定义。
SHA_WORKER_T704=${TG_SHA_WORKER_T704:-b3c8dde4cd6d6c0b035689ae6f50fbf92630c35e2de7cd519abd1d2cac1e4ed3}
SHA_CONF_T704=${TG_SHA_CONF_T704:-82481c539df297b86ecf9dab8c0b5a0afdc3a9a623f43455ed0208516d8dad1e}
SHA_GUARD_T704=${TG_SHA_GUARD_T704:-fc1d27f2357b5a3390035207f4fb8c70fe3c7403dca3335e56d55f8429ab67b4}

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG" 2>/dev/null; }

# 必须是 root：read /proc/<pid>/maps、ptrace 注入、写 0600 的 worker.conf 都要 root。
# 本固件上 su 偶发只给 shell（uid=2000），那种情况下 sha256sum 会返回空、cp 会失败，
# 与其留下半回滚状态，不如立刻停在这里报清楚。
if [ "${TG_NO_ROOT:-0}" != "1" ] && [ "$(id -u)" != "0" ]; then
    echo "FAIL: must run as root (uid=$(id -u)). 用法: su -c 'sh $0 <cmd>'"
    exit 9
fi

mkdir -p "$T7" 2>/dev/null

alive() { [ -d "$PROC/$1" ]; }

# Worker 是否在跑：按 cmdline 精确匹配，避免 grep 匹配到自己/run_ai_worker.sh
worker_running() {
    for d in $PROC/[0-9]*; do
        [ -r "$d/cmdline" ] || continue
        cmd=$(tr '\0' ' ' 2>/dev/null < "$d/cmdline")
        case "$cmd" in
            */t5_bridge/bin/ai_worker*) return 0 ;;
            */bin/ai_worker*) return 0 ;;
        esac
    done
    return 1
}

sha_of() {
    # 只输出 64 位小写 sha，取不到就是空
    $SHACMD "$1" 2>/dev/null | cut -d' ' -f1
}

perm_of() {
    $STATCMD -c %a "$1" 2>/dev/null | cut -d' ' -f1
}

core_pids() {
    cand=$($PSBIN -A -o PID,ARGS 2>/dev/null | grep -F "$NAME" | grep -v 'run_t7_05' \
           | sed 's/^ *//' | cut -d' ' -f1)
    for pid in $cand; do
        cmd=$( (tr '\0' ' ' < "$PROC/$pid/cmdline") 2>/dev/null | sed 's/ *$//')
        [ "$cmd" = "$NAME" ] && echo "$pid"
    done
}

# 所有"注入守卫生"的 supervisor（按 cmdline 识别，不依赖 pidfile）
guard_sup_pids() {
    for d in $PROC/[0-9]*; do
        pid=${d##*/}
        [ -r "$d/cmdline" ] || continue
        cmd=$(tr '\0' ' ' 2>/dev/null < "$d/cmdline")
        case "$cmd" in
            *tg_supervisor*libtg_ttsguard*) echo "$pid" ;;
        esac
    done
}

# 只用于报告/告警：T6-01 的 ASR hook supervisor（本脚本绝不杀它）
asr_sup_pids() {
    for d in $PROC/[0-9]*; do
        pid=${d##*/}
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
        $KILLX "$p" 2>/dev/null
        log "stop $name pid=$p"
        $SLEEPX 1
    fi
    rm -f "$f"
    return 0
}

# 清掉全部守卫 supervisor（先 TERM，再 KILL），并确认已经不存在
kill_guard_sups() {
    round=0
    while [ "$round" -lt 3 ]; do
        cur=$(guard_sup_pids)
        [ -z "$cur" ] && break
        for p in $cur; do
            if [ "$round" -eq 0 ]; then
                $KILLX "$p" 2>/dev/null
                log "stop guard supervisor pid=$p (TERM)"
            else
                $KILLX -9 "$p" 2>/dev/null
                log "stop guard supervisor pid=$p (KILL round=$round)"
            fi
        done
        $SLEEPX 1
        round=$((round + 1))
    done
    left=$(guard_sup_pids)
    if [ -n "$left" ]; then
        echo "FAIL guard supervisor still alive: $left (try: kill -9 <pid> 手动)"
        log "FAIL kill_guard_sups left=$left"
        return 1
    fi
    rm -f "$SUPPID"
    return 0
}

# 每个 :core 的 hooked 判定；输出 hooked=0/1/?，返回 2 表示没有 :core
hooked_states() {
    pids=$(core_pids)
    [ -z "$pids" ] && return 2
    for p in $pids; do
        st=$("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)
        echo "${st:-hooked=?}"
    done
    return 0
}

# 0 = 至少一个 :core 仍 hooked=1（或判定不可用，按失败处理）
hooked_any() {
    pids=$(core_pids)
    [ -z "$pids" ] && return 1
    rc=1
    for st in $(hooked_states); do
        case "$st" in
            hooked=0) ;;
            *) rc=0 ;;
        esac
    done
    return "$rc"
}

# 卸载注入并复核；RTLD_NOLOAD/exit=17 说明 .so 已被删除但仍映射，只能重启 :core
uninstall_all() {
    rc=0
    pids=$(core_pids)
    if [ -z "$pids" ]; then
        echo "FAIL uninstall: no :core process found (cannot verify hooked=0)"
        log "FAIL uninstall: no core"
        return 1
    fi
    for p in $pids; do
        out=$("$INJ" --pid "$p" --so "$SO" --uninstall 2>&1); irc=$?
        last=$(printf '%s\n' "$out" | tail -1)
        echo "uninstall pid=$p rc=$irc $last"
        log "uninstall pid=$p rc=$irc $last"
        [ "$irc" -eq 0 ] || { echo "FAIL uninstall rc=$irc pid=$p"; rc=1; }
        case "$last" in
            *RTLD_NOLOAD*|*exit=17*)
                $KILLX -9 "$p" 2>/dev/null
                echo "pid=$p restarted (patch dropped with the process)"
                log "restart pid=$p (deleted mapped copy)"
                ;;
        esac
    done
    $SLEEPX 3
    for p in $(core_pids); do
        st=$("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)
        echo "check pid=$p ${st:-hooked=?}"
        case "$st" in
            hooked=0) ;;
            hooked=1) echo "FAIL pid=$p still hooked=1"; rc=1 ;;
            *)        echo "FAIL pid=$p check gave no verdict"; rc=1 ;;
        esac
    done
    if [ "$rc" -eq 0 ]; then
        echo "uninstall: hooked=0 on every :core"
        log "uninstall: hooked=0 on every :core"
    fi
    return "$rc"
}

guard_start() {
    asr_before=$(asr_sup_pids | tr '\n' ' ')
    kill_pidfile "$WATCHPID" watch
    kill_guard_sups || { echo "FAIL guard-start: stale guard supervisor could not be stopped"; return 3; }
    left=$(guard_sup_pids)
    [ -z "$left" ] || { echo "FAIL guard-start: refusing to start while $left is alive"; return 4; }
    setsid_cmd="$SETSIDX"
    $setsid_cmd "$SUP" --injector "$INJ" --so "$SO" --name "$NAME" \
        --pidfile "$SUPPID" --log "$SUPLOG" </dev/null >/dev/null 2>&1 &
    echo $! > "$SUPPID"
    log "guard-start supervisor pid=$(cat "$SUPPID") so=$SO"
    $SLEEPX 3
    sups=$(guard_sup_pids)
    n=$(printf '%s\n' "$sups" | grep -c .)
    if [ "$n" -ne 1 ]; then
        echo "FAIL guard-start: expected exactly 1 guard supervisor, found $n: $(printf '%s' "$sups" | tr '\n' ' ')"
        log "FAIL guard-start count=$n"
        return 5
    fi
    asr_after=$(asr_sup_pids | tr '\n' ' ')
    if [ "$asr_before" != "$asr_after" ]; then
        echo "FAIL guard-start: T6-01 asr supervisor changed: before=[$asr_before] after=[$asr_after]"
        log "FAIL guard-start asr changed"
        return 6
    fi
    echo "guard supervisor: pid=$sups"
    echo "asr supervisor unchanged: $asr_after"
    guard_status
    return 0
}

# 换过 .so 文件之后必须调用这个：libtg_ttsguard.so 一旦被 mv/替换，进程里映射的
# 还是旧 inode（dlopen 会报 "wasn't loaded and RTLD_NOLOAD prevented it"），
# 只有重启 :core 才会真正加载新文件。
guard_reload() {
    asr_before=$(asr_sup_pids | tr '\n' ' ')
    guard_stop || return $?
    for p in $(core_pids); do
        echo "restart :core pid=$p so the new .so is loaded"
        $KILLX -9 "$p" 2>/dev/null
        log "guard-reload restart core pid=$p"
    done
    $SLEEPX 6
    guard_start || return $?
    echo "asr supervisor before reload: $asr_before"
    return 0
}

guard_stop() {
    # 1) 先停掉**所有**守卫 supervisor，确保没有进程会重新注入
    kill_guard_sups || { echo "FAIL guard-stop: cannot stop guard supervisor(s)"; return 3; }
    kill_pidfile "$WATCHPID" watch
    # 2) 再卸载已经装进去的 hook，并复核 hooked=0（失败不再降级为 WARN）
    uninstall_all
    urc=$?
    if [ "$urc" -ne 0 ]; then
        echo "FAIL guard-stop: uninstall did not reach hooked=0 (rc=$urc)"
        log "FAIL guard-stop uninstall rc=$urc"
        return 5
    fi
    # 3) 最后确认没有残留守卫 supervisor（T6-01 的 ASR supervisor 不计入）
    left=$(guard_sup_pids)
    if [ -n "$left" ]; then
        echo "FAIL guard supervisor came back: $left"
        log "FAIL guard-stop supervisor came back $left"
        return 4
    fi
    # 4) 再复核一次 hooked（防止 supervisor 在 2) 与 3) 之间又注入）
    if hooked_any; then
        echo "FAIL guard-stop: a :core still reports hooked=1"
        log "FAIL guard-stop still hooked"
        return 6
    fi
    echo "guard-stop: PASS (asr supervisor untouched: $(asr_sup_pids | tr '\n' ' '))"
    log "guard-stop PASS"
    return 0
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
        if grep -q 'libtg_ttsguard' "$PROC/$p/maps" 2>/dev/null; then
            echo "pid=$p guard=mapped:yes"
        else
            echo "pid=$p guard=mapped=unknown(kernel hides $PROC/$p/maps)"
        fi
        "$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -E 'hooked|stats'
    done
    return 0
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
    echo "worker perm : $(perm_of "$T5/bin/ai_worker") (want 755)"
    echo "conf   perm : $(perm_of "$T5/ai_worker/worker.conf") (want 600)"
    echo "guard  perm : $(perm_of "$SO") (want 644)"
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

# 恢复一个产物：copy -> chmod -> 记录失败原因（不覆盖也不删除备份）
restore_one() {
    src=$1; dst=$2; mode=$3; want=$4; label=$5
    $CPCMD "$src" "$dst" || { echo "FAIL restore $label: cp failed ($src -> $dst)"; return 1; }
    $PERMCMD "$mode" "$dst" || { echo "FAIL restore $label: chmod $mode failed"; return 1; }
    got=$(sha_of "$dst")
    if [ "$got" != "$want" ]; then
        echo "FAIL restore $label: sha=$got want=$want"
        return 1
    fi
    p=$(perm_of "$dst")
    if [ "$p" != "${mode#0}" ]; then
        echo "FAIL restore $label: perm=$p want=${mode#0}"
        return 1
    fi
    echo "ok   restore $label sha=$got perm=$p"
    return 0
}

rollback() {
    # 0) 备份必须齐全（否则宁可停在这里，也不要把设备留在半回滚状态）
    selfcheck >/dev/null 2>&1 || { selfcheck; echo "ABORT rollback: backups missing or corrupted"; return 5; }
    asr_before=$(asr_sup_pids | tr '\n' ' ')

    # 1) 停守卫（含清全部 supervisor）并卸载 hook，复核 hooked=0
    guard_stop
    grc=$?
    [ "$grc" -eq 0 ] || { echo "ABORT rollback: guard-stop failed rc=$grc"; return 6; }
    if hooked_any; then
        echo "ABORT rollback: a :core still reports hooked=1"
        return 6
    fi

    # 2) 恢复 T7-04 三个产物（备份只读，绝不写/删备份目录）
    sh -c "$WORKER_STOP_CMD" >/dev/null 2>&1
    rc=0
    restore_one "$BK5/ai_worker.t7_04"     "$T5/bin/ai_worker"        755 "$SHA_WORKER_T704" worker || rc=1
    restore_one "$BK5/worker.conf.t7_04"   "$T5/ai_worker/worker.conf" 600 "$SHA_CONF_T704"  conf   || rc=1
    restore_one "$BK7/libtg_ttsguard.t7_04.so" "$SO"                   644 "$SHA_GUARD_T704" guard  || rc=1
    if [ "$rc" -ne 0 ]; then
        echo "rollback: FAIL (artifact restore failed; guard stays uninstalled)"
        log "rollback FAIL restore rc=$rc"
        return 7
    fi

    # 3) 重启 Worker，并确认它真的在跑
    sh -c "$WORKER_START_CMD" >/dev/null 2>&1
    wrc=$?
    $SLEEPX 2
    if [ "$wrc" -ne 0 ]; then
        echo "FAIL worker start rc=$wrc"
        rc=1
    fi
    if worker_running; then
        echo "ok   worker running"
    else
        echo "FAIL worker not running"
        rc=1
    fi

    # 4) 终检：守卫 supervisor 不存在、所有 :core hooked=0、ASR supervisor 未受影响
    left=$(guard_sup_pids)
    if [ -n "$left" ]; then
        echo "FAIL guard supervisor present after rollback: $left"
        rc=1
    else
        echo "ok   no guard supervisor"
    fi
    pids=$(core_pids)
    if [ -z "$pids" ]; then
        echo "FAIL no :core process (cannot verify hooked=0)"
        rc=1
    fi
    for p in $pids; do
        st=$("$INJ" --pid "$p" --so "$SO" --check 2>&1 | grep -o 'hooked=[01]' | head -1)
        case "$st" in
            hooked=0) echo "core pid=$p hooked=0 (guard not injected after rollback)" ;;
            *)        echo "FAIL core pid=$p ${st:-no verdict} after rollback"; rc=1 ;;
        esac
    done
    asr_after=$(asr_sup_pids | tr '\n' ' ')
    if [ "$asr_before" = "$asr_after" ]; then
        echo "ok   asr supervisor untouched: $asr_after"
    else
        echo "FAIL asr supervisor changed: before=[$asr_before] after=[$asr_after]"
        rc=1
    fi

    log "rollback: worker/conf/guard restored to T7-04, rc=$rc"
    if [ "$rc" -eq 0 ]; then
        echo "rollback: PASS"
    else
        echo "rollback: FAIL"
    fi
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
