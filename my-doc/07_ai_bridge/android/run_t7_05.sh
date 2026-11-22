#!/system/bin/sh
# run_t7_05.sh -- T7-05 生命周期：TTS 守卫（单一 Supervisor 注入）+ 状态 + 回滚
#
# 为什么要单独一个脚本（任务书 §7）：
#   T7-02 用 run_ttsguard.sh watch 每 5 s 补装，:core 重启后最多 5 s 空窗；
#   T7-03 又额外起了两个"附加 Supervisor"，结果出现三套东西抢着往同一个进程注入。
#   本轮只保留**一个**生命周期所有者：T6-02 的 Supervisor（只加 --so 参数，不改它代码）。
#
# 用法（root，一条命令一次调用）：
#   sh run_t7_05.sh guard-start      启动唯一守卫（会先清掉重复的 supervisor / watch）
#   sh run_t7_05.sh guard-stop       停止 supervisor，并卸载注入、恢复原厂序言
#   sh run_t7_05.sh guard-status     supervisor pid + 每个 :core 的 hooked/stats
#   sh run_t7_05.sh route-status     最近一次 route=native 的放行标记
#   sh run_t7_05.sh worker-status    Worker 状态里的 route/gate/session 段
#   sh run_t7_05.sh rollback         停守卫 + 还原 Worker 二进制/配置 + 重启 Worker
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

log() { echo "$(date '+%Y-%m-%d %H:%M:%S') $*" >> "$LOG"; }

core_pids() {
    cand=$(ps -A -o PID,ARGS 2>/dev/null | grep -F "$NAME" | grep -v 'run_t7_05' \
           | sed 's/^ *//' | cut -d' ' -f1)
    for pid in $cand; do
        cmd=$( (tr '\0' ' ' < "/proc/$pid/cmdline") 2>/dev/null | sed 's/ *$//')
        [ "$cmd" = "$NAME" ] && echo "$pid"
    done
}

# T7-05：SELinux 下 root 对别的域 kill -0 也会 EPERM，判活只看 /proc。
alive() { [ -d "/proc/$1" ]; }

# 只认"注入守卫"的 supervisor：另一个 tg_supervisor 属于 T6-01 ASR hook
# （pidfile /data/local/tmp/t6/tg_supervisor.pid），不能一起杀。
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

kill_guard_sups() {
    for p in $(guard_sup_pids); do
        kill "$p" 2>/dev/null
        log "stop guard supervisor pid=$p"
    done
    sleep 1
    for p in $(guard_sup_pids); do
        kill -9 "$p" 2>/dev/null
    done
}

guard_start() {
    kill_pidfile "$WATCHPID" watch
    kill_guard_sups
    rm -f "$SUPPID"
    setsid "$SUP" --injector "$INJ" --so "$SO" --name "$NAME" \
        --pidfile "$SUPPID" --log "$SUPLOG" </dev/null >/dev/null 2>&1 &
    echo $! > "$SUPPID"
    log "guard-start supervisor pid=$(cat "$SUPPID") so=$SO"
    echo "guard supervisor: pid=$(cat "$SUPPID")"
    sleep 3
    guard_status
}

guard_stop() {
    kill_pidfile "$SUPPID" supervisor
    kill_pidfile "$WATCHPID" watch
    for p in $(core_pids); do
        out=$("$INJ" --pid "$p" --so "$SO" --uninstall 2>&1 | tail -1)
        echo "pid=$p $out"
        log "guard-stop uninstall pid=$p $out"
        if echo "$out" | grep -q 'RTLD_NOLOAD\|exit=17'; then
            kill -9 "$p" 2>/dev/null
            echo "pid=$p restarted (patch dropped with the process)"
            log "guard-stop restart pid=$p (deleted mapped copy)"
        fi
    done
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

rollback() {
    kill_pidfile "$SUPPID" supervisor
    kill_pidfile "$WATCHPID" watch
    for p in $(core_pids); do
        "$INJ" --pid "$p" --so "$SO" --uninstall >/dev/null 2>&1
    done
    sh "$T5/run_ai_worker.sh" stop >/dev/null 2>&1
    cp "$T5/backup_t7_05/ai_worker.t7_04" "$T5/bin/ai_worker"
    chmod 755 "$T5/bin/ai_worker"
    cp "$T5/backup_t7_05/worker.conf.t7_04" "$T5/ai_worker/worker.conf"
    chmod 600 "$T5/ai_worker/worker.conf"
    sh "$T5/run_ai_worker.sh" start-deepseek >/dev/null 2>&1
    log "rollback: guard stopped, worker restored to T7-04 build + config"
    echo "rollback done: guard stopped, worker restored (T7-04 binary + conf), worker restarted"
    sha256sum "$T5/bin/ai_worker"
}

case "$1" in
guard-start)   guard_start ;;
guard-stop)    guard_stop ;;
guard-status)  guard_status ;;
route-status)  route_status ;;
worker-status) worker_status ;;
rollback)      rollback ;;
*) echo "usage: $0 guard-start|guard-stop|guard-status|route-status|worker-status|rollback"; exit 1 ;;
esac
