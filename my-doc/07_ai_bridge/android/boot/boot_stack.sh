#!/system/bin/sh
# boot_stack.sh -- T8-15.6: one-shot bring-up of our own stack after a reboot.
#
# Started by init through /system/etc/init/tg_stack.rc (service tg_stack, oneshot, root,
# seclabel u:r:init:s0). The two injection supervisors are started by the same rc file
# (tg_hook_sup / tg_guard_sup) because init keeps non-oneshot services alive for us.
#
# Nothing here touches the official app: no pm/am calls, no file writes outside
# /data/local/tmp. Everything it does is what we used to type by hand after each reboot.
LOG=/data/local/tmp/t5_bridge/boot_stack.log
BB=/system/xbin/busybox

say() { echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "$LOG"; }

say "=== boot_stack start pid=$$ ==="

# 1) wait for the official :core process (the app starts itself at boot)
i=0
CORE=""
while [ $i -lt 90 ]; do
    CORE=$(ps -A -o PID,ARGS | $BB awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1; exit}')
    [ -n "$CORE" ] && break
    i=$((i + 1))
    sleep 2
done
say "core=$CORE after $((i * 2))s"

# 2) wait until at least one of our .so is really mapped in it (init started the supervisors)
n=0
i=0
if [ -n "$CORE" ]; then
    while [ $i -lt 60 ]; do
        n=$(grep -c "libtg_" /proc/$CORE/maps 2>/dev/null)
        [ "${n:-0}" -ge 1 ] && break
        i=$((i + 1))
        sleep 1
    done
fi
say "our .so mapping lines in :core = ${n:-0}"

# 3) the runtime stack (idempotent: each script reports "already running" and exits)
say "bridge: $(sh /data/local/tmp/t5_bridge/run_bridge.sh start 2>&1 | tr '\n' ' ')"
say "tts:    $(sh /data/local/tmp/t5_bridge/run_tts_exec.sh start 2>&1 | tr '\n' ' ')"
say "worker: $(sh /data/local/tmp/t5_bridge/run_ai_worker.sh start 2>&1 | tr '\n' ' ')"
say "tap:    $(sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-tap 2>&1 | tr '\n' ' ')"

sleep 2
say "processes: $(ps -A -o PID,NAME | grep -E 'tg_supervisor|tgb_bridge|ai_worker|app_process|logcat' | tr '\n' '|')"
say "=== boot_stack done ==="
exit 0
