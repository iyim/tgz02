#!/bin/bash
# t7_05r2_fault_inject.sh -- T7-05-R2 故障注入：**直接跑 run_t7_05.sh 的真实函数**
#
# 为什么这么做：
#   T7-05-R1 的问题是"卸载失败只打 WARN，guard_stop 仍然 return 0"。如果用一份
#   复制出来的伪脚本自证，那只能证明伪脚本正确。这里把真实脚本放进一个假的设备根
#   （假 /proc、假 tg_injector、假 kill/sleep/cp/chmod/stat），所有 fail-closed 分支
#   走的都是 run_t7_05.sh 里的真代码。
#
# 主机侧依赖：bash（Git for Windows 自带）+ coreutils（cut/sed/grep/sha256sum/tr）。
#
#   bash tests/t7_05r2_fault_inject.sh              # 全部用例
#   bash tests/t7_05r2_fault_inject.sh happy        # 只跑某个用例
#
# 产物：my-doc/07_ai_bridge/evidence/t7_05r2_fault_inject.log
set -u

HERE=$(cd "$(dirname "$0")" && pwd)
SCRIPT="$HERE/../android/run_t7_05.sh"
EVDIR="$HERE/../evidence"
LOG="$EVDIR/t7_05r2_fault_inject.log"
BASH_BIN=${BASH_BIN:-bash}
REAL_CP=$(command -v cp)

mkdir -p "$EVDIR"
: > "$LOG"

PASS=0
FAIL=0
CASE=""

say() { echo "$*" | tee -a "$LOG"; }
ok()  { PASS=$((PASS + 1)); echo "PASS [$CASE] $*" >> "$LOG"; }
bad() { FAIL=$((FAIL + 1)); echo "FAIL [$CASE] $*" >> "$LOG"; echo "FAIL [$CASE] $*"; }
expect() { if [ "$1" -eq 0 ]; then ok "$2"; else bad "$2"; fi; }
truth() { if [ "$1" -eq 0 ]; then echo 0; else echo 1; fi; }
has() { case "$1" in *"$2"*) return 0 ;; *) return 1 ;; esac; }

# ---------------------------------------------------------------- 假设备根
mk_env() {
    T=$(mktemp -d "${TMPDIR:-/tmp}/t705r2.XXXXXX")
    PROC=$T/proc
    DEV=$T/dev
    BIN=$T/bin
    CTL=$T/ctl
    export FAKE_PROC="$PROC" FAKE_DEV="$DEV" FAKE_CTL="$CTL" FAKE_LOG="$T/log"
    export FAKE_PSLIST="$T/pslist.txt"

    mkdir -p "$PROC" "$DEV/t5_bridge/bin" "$DEV/t5_bridge/ai_worker" "$DEV/t7" \
             "$DEV/t5_bridge/backup_t7_05" "$DEV/t7/backup_t7_05" "$BIN" "$CTL" \
             "$T/log" "$T/tmp"

    # T7-04 回滚备份（只读；正确内容）
    printf 'WORKER-T7-04\n' > "$DEV/t5_bridge/backup_t7_05/ai_worker.t7_04"
    printf 'CONF-T7-04\n'   > "$DEV/t5_bridge/backup_t7_05/worker.conf.t7_04"
    printf 'GUARD-T7-04\n'  > "$DEV/t7/backup_t7_05/libtg_ttsguard.t7_04.so"
    # 当前运行态（T7-05 版本，内容不同）
    printf 'WORKER-T7-05\n' > "$DEV/t5_bridge/bin/ai_worker"
    printf 'CONF-T7-05\n'   > "$DEV/t5_bridge/ai_worker/worker.conf"
    printf 'GUARD-T7-05\n'  > "$DEV/t7/libtg_ttsguard.so"

    # 假 /proc：:core ×2、守卫 supervisor、T6-01 ASR supervisor、Worker
    mkproc 4242 'com.alibaba.ailabs.genie.smartapp:core'
    mkproc 4243 'com.alibaba.ailabs.genie.smartapp:core'
    mkproc 5151 "tg_supervisor --injector $DEV/t6/tg_injector --so $DEV/t7/libtg_ttsguard.so --name com.alibaba.ailabs.genie.smartapp:core"
    mkproc 6161 "tg_supervisor --injector $DEV/t6/tg_injector --so $DEV/t6/libtg_hook.so --pidfile $DEV/t6/tg_supervisor.pid"
    mkproc 7171 "$DEV/t5_bridge/bin/ai_worker --config $DEV/t5_bridge/ai_worker/worker.conf"

    cat > "$FAKE_PSLIST" <<EOS
  PID ARGS
 4242 com.alibaba.ailabs.genie.smartapp:core
 4243 com.alibaba.ailabs.genie.smartapp:core
 5151 tg_supervisor --injector $DEV/t6/tg_injector --so $DEV/t7/libtg_ttsguard.so --name com.alibaba.ailabs.genie.smartapp:core
 6161 tg_supervisor --injector $DEV/t6/tg_injector --so $DEV/t6/libtg_hook.so --pidfile $DEV/t6/tg_supervisor.pid
 7171 $DEV/t5_bridge/bin/ai_worker --config $DEV/t5_bridge/ai_worker/worker.conf
EOS

    cat > "$BIN/ps" <<'EOS'
#!/bin/bash
cat "$FAKE_PSLIST"
EOS

    # 假 tg_injector：行为由 $FAKE_CTL/injector 决定
    cat > "$BIN/tg_injector" <<'EOS'
#!/bin/bash
mode=$(cat "$FAKE_CTL/injector" 2>/dev/null || echo ok)
pid=""; act=""
while [ $# -gt 0 ]; do
    case "$1" in
        --pid) pid=$2; shift 2 ;;
        --so) shift 2 ;;
        --uninstall) act=uninstall; shift ;;
        --check) act=check; shift ;;
        *) shift ;;
    esac
done
case "$act" in
uninstall)
    case "$mode" in
        uninstall_fail) echo "ptrace attach failed (fake)"; exit 3 ;;
        uninstall_rtld)
            # 第一次：.so 文件已被替换，进程里是旧 inode -> Injector 连库都定位不到
            n=$(cat "$FAKE_CTL/inj_n" 2>/dev/null || echo 0)
            echo $((n + 1)) > "$FAKE_CTL/inj_n"
            if [ "$n" -eq 0 ]; then
                echo "[inject] already_mapped=1 (/x/libtg_ttsguard.so (deleted))"
                echo "[inject] ERROR stage=dlopen dlerror=dlopen failed: library \"/x/libtg_ttsguard.so\" wasn't loaded and RTLD_NOLOAD prevented it"
                exit 19
            fi
            echo "uninstalled pid=$pid"; exit 0 ;;
        *) echo "uninstalled pid=$pid"; exit 0 ;;
    esac ;;
check)
    case "$mode" in
        check_hooked) echo "hooked=1 pid=$pid"; exit 0 ;;
        check_unknown) echo "(no verdict)"; exit 0 ;;
        check_unqueryable)
            echo "[inject] already_mapped=1 (/x/libtg_ttsguard.so (deleted))"
            echo "[inject] ERROR stage=dlopen dlerror=dlopen failed: library \"/x/libtg_ttsguard.so\" wasn't loaded and RTLD_NOLOAD prevented it"
            exit 17 ;;
        *) echo "hooked=0 pid=$pid"; exit 0 ;;
    esac ;;
*) echo "no action"; exit 2 ;;
esac
EOS

    # 假 tg_supervisor：启动时登记一个假 /proc 条目（模拟真的守卫 supervisor）
    cat > "$BIN/tg_supervisor" <<'EOS'
#!/bin/bash
echo "$*" >> "$FAKE_LOG/sup_start.log"
mkdir -p "$FAKE_PROC/5551"
printf '%s\0' "tg_supervisor --injector /x --so /y/libtg_ttsguard.so --name zz" > "$FAKE_PROC/5551/cmdline"
EOS
    cat > "$BIN/setsid" <<'EOS'
#!/bin/bash
"$@"
EOS
    # 假 kill：ok=让进程消失（删假 /proc 条目）；stuck=杀不掉
    cat > "$BIN/kill" <<'EOS'
#!/bin/bash
echo "kill $*" >> "$FAKE_LOG/kill.log"
mode=$(cat "$FAKE_CTL/kill" 2>/dev/null || echo ok)
[ "$mode" = stuck ] && exit 0
for a in "$@"; do
    case "$a" in -9|-TERM|-[0-9]*) continue ;; esac
    [ -d "$FAKE_PROC/$a" ] && rm -rf "$FAKE_PROC/$a"
done
exit 0
EOS
    cat > "$BIN/sleep" <<'EOS'
#!/bin/bash
exit 0
EOS
    # 假 cp：可注入"复制失败"与"复制出坏内容"
    cat > "$BIN/cp" <<'EOS'
#!/bin/bash
mode=$(cat "$FAKE_CTL/cp" 2>/dev/null || echo ok)
src=""; dst=""
for a in "$@"; do
    case "$a" in -*) ;; *) if [ -z "$src" ]; then src=$a; else dst=$a; fi ;; esac
done
case "$mode" in
fail_worker) case "$src" in *ai_worker.t7_04) echo "cp: write error (fake)"; exit 1 ;; esac ;;
fail_conf)   case "$src" in *worker.conf.t7_04) echo "cp: write error (fake)"; exit 1 ;; esac ;;
fail_guard)  case "$src" in *libtg_ttsguard.t7_04.so) echo "cp: write error (fake)"; exit 1 ;; esac ;;
corrupt_worker) case "$src" in *ai_worker.t7_04) printf 'CORRUPT\n' > "$dst"; exit 0 ;; esac ;;
esac
"$(dirname "$0")/cp_real" "$src" "$dst" || exit 1
# replace_guard：模拟"恢复完 .so 之后进程里还是旧 inode"，Injector 从此查不到 hooked
if [ "$mode" = replace_guard ]; then
    case "$src" in *libtg_ttsguard.t7_04.so) echo check_unqueryable > "$FAKE_CTL/injector" ;; esac
fi
exit 0
EOS
    cat > "$BIN/cp_real" <<EOS
#!/bin/bash
exec "$REAL_CP" "\$@"
EOS
    # 假 chmod / stat：MSYS 上 chmod 不生效，用 sidecar 记录权限位
    cat > "$BIN/chmod" <<'EOS'
#!/bin/bash
mode=$1; shift
for f in "$@"; do echo "$mode" > "$f.perm"; done
exit 0
EOS
    cat > "$BIN/stat" <<'EOS'
#!/bin/bash
cat "$3.perm" 2>/dev/null || echo "644"
exit 0
EOS
    # 假 worker 启停
    cat > "$BIN/worker_ctl" <<'EOS'
#!/bin/bash
act=$1
mode=$(cat "$FAKE_CTL/worker" 2>/dev/null || echo ok)
case "$act" in
start)
    if [ "$mode" = start_fail ]; then echo "worker start failed (fake)"; exit 4; fi
    mkdir -p "$FAKE_PROC/7171"
    printf '%s\0' "$FAKE_DEV/t5_bridge/bin/ai_worker" > "$FAKE_PROC/7171/cmdline"
    exit 0 ;;
stop)
    rm -rf "$FAKE_PROC/7171"; exit 0 ;;
esac
exit 0
EOS
    chmod +x "$BIN"/* 2>/dev/null

    echo ok > "$CTL/injector"
    echo ok > "$CTL/kill"
    echo ok > "$CTL/cp"
    echo ok > "$CTL/worker"
}

mkproc() { # mkproc <pid> <cmdline-string>
    mkdir -p "$PROC/$1"
    printf '%s\0' "$2" > "$PROC/$1/cmdline"
}

# 跑真实脚本（一个命令一次调用），返回脚本退出码
run_script() {
    TG_PROC=$PROC TG_PS=$BIN/ps TG_INJ=$BIN/tg_injector TG_SUP=$BIN/tg_supervisor \
    TG_T5=$DEV/t5_bridge TG_T7=$DEV/t7 TG_KILL=$BIN/kill TG_SLEEP=$BIN/sleep \
    TG_CP=$BIN/cp TG_PERM=$BIN/chmod TG_STAT=$BIN/stat TG_SETSID=$BIN/setsid \
    TG_NO_ROOT=1 \
    TG_WORKER_START="sh $BIN/worker_ctl start" TG_WORKER_STOP="sh $BIN/worker_ctl stop" \
    TG_SHA_WORKER_T704=${W_SHA:-$(sha256sum "$DEV/t5_bridge/backup_t7_05/ai_worker.t7_04" | cut -d' ' -f1)} \
    TG_SHA_CONF_T704=${C_SHA:-$(sha256sum "$DEV/t5_bridge/backup_t7_05/worker.conf.t7_04" | cut -d' ' -f1)} \
    TG_SHA_GUARD_T704=${G_SHA:-$(sha256sum "$DEV/t7/backup_t7_05/libtg_ttsguard.t7_04.so" | cut -d' ' -f1)} \
    "$BASH_BIN" "$SCRIPT" "$@"
}

# ---------------------------------------------------------------- 用例
case_happy() {
    CASE=happy_stop
    mk_env
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -eq 0 ] && echo 0 || echo 1)) "guard-stop rc=0 (got $rc)"
    expect $(truth $(has "$out" "guard-stop: PASS" && echo 0 || echo 1)) "guard-stop prints PASS"
    expect $(truth $(has "$out" "uninstall: hooked=0 on every :core" && echo 0 || echo 1)) "verified hooked=0"
    [ -d "$PROC/6161" ] && ok "asr supervisor still alive" || bad "asr supervisor gone"
    if grep -q '^kill.* 6161' "$T/log/kill.log" 2>/dev/null; then bad "asr supervisor was killed"; else ok "asr supervisor never killed"; fi

    CASE=happy_rollback
    out=$(run_script rollback); rc=$?
    expect $(truth $([ "$rc" -eq 0 ] && echo 0 || echo 1)) "rollback rc=0 (got $rc)"
    expect $(truth $(has "$out" "rollback: PASS" && echo 0 || echo 1)) "rollback prints PASS"
    expect $(truth $(has "$(cat "$DEV/t5_bridge/bin/ai_worker")" "WORKER-T7-04" && echo 0 || echo 1)) "worker restored"
    expect $(truth $(has "$(cat "$DEV/t5_bridge/ai_worker/worker.conf")" "CONF-T7-04" && echo 0 || echo 1)) "conf restored"
    expect $(truth $(has "$(cat "$DEV/t7/libtg_ttsguard.so")" "GUARD-T7-04" && echo 0 || echo 1)) "guard .so restored"
    expect $(truth $([ "$(cat "$DEV/t5_bridge/bin/ai_worker.perm")" = "755" ] && echo 0 || echo 1)) "worker perm 755"
    expect $(truth $([ "$(cat "$DEV/t5_bridge/ai_worker/worker.conf.perm")" = "600" ] && echo 0 || echo 1)) "conf perm 600"
    expect $(truth $([ "$(cat "$DEV/t7/libtg_ttsguard.so.perm")" = "644" ] && echo 0 || echo 1)) "guard perm 644"
    expect $(truth $(has "$out" "ok   asr supervisor untouched" && echo 0 || echo 1)) "rollback reports asr untouched"

    CASE=happy_start
    mkproc 5151 "tg_supervisor --injector $DEV/t6/tg_injector --so $DEV/t7/libtg_ttsguard.so"  # 遗留实例
    out=$(run_script guard-start); rc=$?
    expect $(truth $([ "$rc" -eq 0 ] && echo 0 || echo 1)) "guard-start rc=0 after cleaning stale sup (got $rc)"
    expect $(truth $([ -s "$T/log/sup_start.log" ] && echo 0 || echo 1)) "guard-start actually launched a supervisor"
    expect $(truth $(has "$out" "asr supervisor unchanged: 6161" && echo 0 || echo 1)) "guard-start reports asr unchanged"
}

case_uninstall_fail() {
    CASE=injector_uninstall_fail
    mk_env
    echo uninstall_fail > "$CTL/injector"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "guard-stop non-zero (got $rc)"
    expect $(truth $(has "$out" "guard-stop: PASS" && echo 1 || echo 0)) "no PASS with uninstall failure"
    expect $(truth $(has "$out" "uninstall did not reach hooked=0" && echo 0 || echo 1)) "failure reason printed"

    CASE=rollback_after_uninstall_fail
    out=$(run_script rollback); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "rollback non-zero when uninstall fails (got $rc)"
    expect $(truth $(has "$out" "ABORT rollback" && echo 0 || echo 1)) "rollback aborts"
    expect $(truth $(has "$out" "rollback: PASS" && echo 1 || echo 0)) "no PASS rollback"
    expect $(truth $(has "$(cat "$DEV/t5_bridge/bin/ai_worker")" "WORKER-T7-05" && echo 0 || echo 1)) "artifacts untouched on abort"
}

case_still_hooked() {
    CASE=still_hooked
    mk_env
    echo check_hooked > "$CTL/injector"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "guard-stop non-zero when hooked=1 remains (got $rc)"
    expect $(truth $(has "$out" "still hooked=1" && echo 0 || echo 1)) "prints which pid still hooked"
    expect $(truth $(has "$out" "guard-stop: PASS" && echo 1 || echo 0)) "no PASS"

    CASE=no_verdict
    echo check_unknown > "$CTL/injector"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "no verdict from --check is a failure (got $rc)"
}

case_sup_stuck() {
    CASE=sup_cannot_stop
    mk_env
    echo stuck > "$CTL/kill"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "guard-stop non-zero when supervisor survives (got $rc)"
    expect $(truth $(has "$out" "guard supervisor still alive" && echo 0 || echo 1)) "prints surviving supervisor"
    expect $(truth $(has "$out" "guard-stop: PASS" && echo 1 || echo 0)) "no PASS"

    CASE=start_after_failed_cleanup
    out=$(run_script guard-start); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "guard-start refuses while stale sup alive (got $rc)"
    expect $(truth $([ ! -s "$T/log/sup_start.log" ] && echo 0 || echo 1)) "no second supervisor started"
    expect $(truth $(has "$out" "stale guard supervisor could not be stopped" && echo 0 || echo 1)) "prints refusal"
    [ -d "$PROC/6161" ] && ok "asr supervisor untouched" || bad "asr supervisor lost"
}

case_restore_fail() {
    for which in fail_worker fail_conf fail_guard; do
        CASE="restore_$which"
        mk_env
        echo "$which" > "$CTL/cp"
        out=$(run_script rollback); rc=$?
        expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "rollback non-zero for $which (got $rc)"
        expect $(truth $(has "$out" "FAIL restore" && echo 0 || echo 1)) "prints FAIL restore for $which"
        expect $(truth $(has "$out" "rollback: FAIL" && echo 0 || echo 1)) "prints rollback: FAIL"
        expect $(truth $(has "$out" "rollback: PASS" && echo 1 || echo 0)) "no PASS for $which"
        expect $(truth $(has "$(cat "$DEV/t5_bridge/backup_t7_05/ai_worker.t7_04")" "WORKER-T7-04" && echo 0 || echo 1)) "backup not consumed/overwritten"
    done
}

case_sha_corrupt() {
    CASE=sha_mismatch_after_copy
    mk_env
    echo corrupt_worker > "$CTL/cp"
    out=$(run_script rollback); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "rollback non-zero on sha mismatch (got $rc)"
    expect $(truth $(has "$out" "FAIL restore worker: sha=" && echo 0 || echo 1)) "prints sha mismatch detail"
    expect $(truth $(has "$out" "rollback: PASS" && echo 1 || echo 0)) "no PASS on sha mismatch"

    CASE=selfcheck_bad_backup
    mk_env
    W_SHA=0000000000000000000000000000000000000000000000000000000000000000
    export W_SHA
    out=$(run_script rollback); rc=$?
    unset W_SHA
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "rollback aborts on backup sha drift (got $rc)"
    expect $(truth $(has "$out" "ABORT rollback: backups missing or corrupted" && echo 0 || echo 1)) "abort reason printed"
    expect $(truth $(has "$out" "rollback: PASS" && echo 1 || echo 0)) "no PASS with bad backup"
}

case_worker_fail() {
    CASE=worker_start_fail
    mk_env
    echo start_fail > "$CTL/worker"
    out=$(run_script rollback); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "rollback non-zero when worker start fails (got $rc)"
    expect $(truth $(has "$out" "FAIL worker start rc=" && echo 0 || echo 1)) "prints worker start rc"
    expect $(truth $(has "$out" "FAIL worker not running" && echo 0 || echo 1)) "prints worker not running"
    expect $(truth $(has "$out" "rollback: FAIL" && echo 0 || echo 1)) "prints rollback: FAIL"
    expect $(truth $(has "$out" "rollback: PASS" && echo 1 || echo 0)) "no PASS"
}

case_no_core() {
    CASE=no_core_process
    mk_env
    rm -rf "$PROC/4242" "$PROC/4243"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -ne 0 ] && echo 0 || echo 1)) "guard-stop fails when :core is absent (got $rc)"
    expect $(truth $(has "$out" "no :core" && echo 0 || echo 1)) "prints no :core"
}

case_replace_then_unqueryable() {    # 真机 T7-05-R2 现场发现：恢复完 T7-04 的 .so 之后，进程里还是旧 inode，
    # Injector --check 会返回 RTLD_NOLOAD 而给不出 hooked 判定。这不是失败
    # （guard-stop 在恢复产物之前已经验过 hooked=0），但必须明写出来，不能冒充 PASS。
    CASE=rollback_check_unqueryable_after_replace
    mk_env
    echo replace_guard > "$CTL/cp"
    out=$(run_script rollback); rc=$?
    expect $(truth $([ "$rc" -eq 0 ] && echo 0 || echo 1)) "rollback still PASS (got $rc)"
    expect $(truth $(has "$out" "rollback: PASS" && echo 0 || echo 1)) "prints PASS"
    expect $(truth $(has "$out" "state not queryable after .so replacement" && echo 0 || echo 1)) "explains the unqueryable state"
    expect $(truth $(has "$out" "guard-stop verified hooked=0 before restore" && echo 0 || echo 1)) "points at the earlier verification"
    expect $(truth $(has "$out" "FAIL core" && echo 1 || echo 0)) "does not misreport as FAIL"
}

case_uninstall_rtld() {
    # 真机现场：.so 换过之后 --uninstall 连库都定位不到（exit=19 + RTLD_NOLOAD）。
    # 唯一可行路径是让 :core 重启（补丁随进程消失），然后在新进程上复核 hooked=0。
    CASE=uninstall_requires_core_restart
    mk_env
    echo uninstall_rtld > "$CTL/injector"
    out=$(run_script guard-stop); rc=$?
    expect $(truth $([ "$rc" -eq 0 ] && echo 0 || echo 1)) "guard-stop PASS after restarting :core (got $rc)"
    expect $(truth $(has "$out" "restarting :core" && echo 0 || echo 1)) "explains the restart"
    expect $(truth $(has "$out" "uninstall: hooked=0 on every :core" && echo 0 || echo 1)) "verifies hooked=0 on the surviving core"
    expect $(truth $(has "$out" "guard-stop: PASS" && echo 0 || echo 1)) "prints guard-stop PASS"
    [ -d "$PROC/6161" ] && ok "asr supervisor untouched" || bad "asr supervisor lost"
}

ALL="happy uninstall_fail still_hooked sup_stuck restore_fail sha_corrupt worker_fail no_core replace_then_unqueryable uninstall_rtld"
ONLY=${1:-all}

say "# T7-05-R2 fault injection (real run_t7_05.sh against a fake device root)"
say "# host: $(uname -s) $(date '+%Y-%m-%d %H:%M:%S')"
say "# script: $SCRIPT"
say ""

for c in $ALL; do
    if [ "$ONLY" != "all" ] && [ "$ONLY" != "$c" ]; then continue; fi
    "case_$c"
    say ""
done

say "# total: pass=$PASS fail=$FAIL"
if [ "$FAIL" -ne 0 ]; then say "# result: FAIL"; exit 1; fi
say "# result: OK"
exit 0
