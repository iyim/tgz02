#!/system/bin/sh
# boot_stack.sh -- T9-02R: one-shot bring-up of our own stack after a reboot.
#
# Started by init through /system/etc/init/tg_stack.rc (service tg_stack, oneshot, root,
# seclabel u:r:init:s0). The two injection supervisors are started by the same rc file
# (tg_hook_sup / tg_guard_sup) because init keeps non-oneshot services alive for us.
#
# T9-02R review finding: the old version continued as soon as it saw ONE "libtg_" line in
# /proc/<core>/maps. That does not prove both intended libraries are there - a wrong or
# stale guard path would still pass. It now requires the two exact absolute paths:
#     /data/local/tmp/t8/libtg_hook.so
#     /data/local/tmp/t7/libtg_ttsguard_t8156.so
# and on timeout it logs a specific error, starts nothing, kills nothing and never restarts
# :core (the supervisors keep retrying on their own; see their logs).
#
# Nothing here touches the official app: no pm/am calls, no writes outside /data/local/tmp.
set -u

LOG=${TG_BOOT_LOG:-/data/local/tmp/t5_bridge/boot_stack.log}
BB=${TG_BUSYBOX:-/system/xbin/busybox}
PROC=${TG_PROC_ROOT:-/proc}
CORE_NAME=com.alibaba.ailabs.genie.smartapp:core
LIB_HOOK=${TG_LIB_HOOK:-/data/local/tmp/t8/libtg_hook.so}
LIB_GUARD=${TG_LIB_GUARD:-/data/local/tmp/t7/libtg_ttsguard_t8156.so}
BRIDGE=${TG_BRIDGE_SCRIPT:-/data/local/tmp/t5_bridge/run_bridge.sh}
TTS=${TG_TTS_SCRIPT:-/data/local/tmp/t5_bridge/run_tts_exec.sh}
WORKER=${TG_WORKER_SCRIPT:-/data/local/tmp/t5_bridge/run_ai_worker.sh}
CORE_WAIT_S=${TG_CORE_WAIT_S:-120}
LIB_WAIT_S=${TG_LIB_WAIT_S:-90}
DRY=${TG_DRY_RUN:-0}

say() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }
count_lib() {
    # $1 = full library path, $2 = pid ; prints the number of mapping lines (0 when absent)
    n=$(grep -F -c "$1" "$PROC/$2/maps" 2>/dev/null)
    echo "${n:-0}"
}
core_pid() {
    if [ -n "${TG_CORE_PID:-}" ]; then
        echo "$TG_CORE_PID"
        return 0
    fi
    ps -A -o PID,ARGS 2>/dev/null | $BB awk -v n="$CORE_NAME" '$NF==n{print $1; exit}'
}

say "=== boot_stack start pid=$$ (T9-02R) ==="
say "need in :core: $LIB_HOOK AND $LIB_GUARD"

# ---------------------------------------------------------------- 1) wait for :core
i=0
CORE=""
while [ "$i" -lt "$CORE_WAIT_S" ]; do
    c=$(core_pid)
    if [ -n "$c" ] && [ -d "$PROC/$c" ]; then
        CORE="$c"
        break
    fi
    i=$((i + 1))
    sleep 1
done
if [ -z "$CORE" ]; then
    say "ERROR: $CORE_NAME not found within ${CORE_WAIT_S}s - bridge/tts/worker NOT started"
    say "ERROR: inspect 'ps -A', 'logcat -d -s SessionManager' and /data/tmp logs; not restarting :core"
    echo "EXIT=1"
    exit 1
fi
say "core=$CORE after ${i}s"

# ---------------------------------------------------------------- 2) wait for BOTH exact libraries
i=0
h=0
g=0
while [ "$i" -lt "$LIB_WAIT_S" ]; do
    h=$(count_lib "$LIB_HOOK" "$CORE")
    g=$(count_lib "$LIB_GUARD" "$CORE")
    if [ "$h" -ge 1 ] && [ "$g" -ge 1 ]; then
        break
    fi
    i=$((i + 1))
    sleep 1
done
if [ "$h" -lt 1 ] || [ "$g" -lt 1 ]; then
    say "ERROR: injection incomplete after ${LIB_WAIT_S}s in pid=$CORE (hook=$h guard=$g)"
    say "ERROR:   need $LIB_HOOK (got $h mapping lines)"
    say "ERROR:   need $LIB_GUARD (got $g mapping lines)"
    say "ERROR: bridge/tts/worker/tap NOT started; supervisors keep retrying, see:"
    say "ERROR:   /data/local/tmp/t8/supervisor.log  /data/local/tmp/t7/ttsguard.sup.log"
    say "ERROR:   logcat -d -s tgt  |  pidof tg_supervisor"
    say "=== boot_stack abort (nothing started, :core untouched) ==="
    echo "EXIT=1"
    exit 1
fi
say "injection ok: hook=$h guard=$g mapping lines in pid=$CORE"

# ---------------------------------------------------------------- 3) the runtime stack
if [ "$DRY" = "1" ]; then
    say "DRY RUN: would start bridge/tts/worker/tap"
else
    # each script is idempotent: it prints "already running" and exits when up
    say "bridge: $(sh "$BRIDGE" start 2>&1 | tr '\n' ' ')"
    say "tts:    $(sh "$TTS" start 2>&1 | tr '\n' ' ')"
    say "worker: $(sh "$WORKER" start 2>&1 | tr '\n' ' ')"
    say "tap:    $(sh "$WORKER" start-tap 2>&1 | tr '\n' ' ')"
    sleep 2
    say "processes: $(ps -A -o PID,NAME 2>/dev/null | grep -E 'tg_supervisor|tgb_bridge|ai_worker|app_process|logcat' | tr '\n' '|')"
fi

say "=== boot_stack done ==="
echo "EXIT=0"
exit 0
