#!/system/bin/sh
# T9: final restore - clean the boot-relative state files, start both supervisors, restart :core.
BB=/system/xbin/busybox
echo "### date"; date '+%Y-%m-%d %H:%M:%S'
echo "### stale state files"
ls -l /data/local/tmp/t7/continuity.req /data/local/tmp/t5_bridge/ai_worker/listen_hold 2>&1
: > /data/local/tmp/t7/continuity.req
rm -f /data/local/tmp/t5_bridge/ai_worker/listen_hold
echo "### supervisors starting"
setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t8/libtg_hook.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t8/tg_supervisor.pid --log /data/local/tmp/t8/supervisor.log >/dev/null 2>&1 &
sleep 2
setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t7/libtg_ttsguard_t8155r.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t7/ttsguard.sup.pid --log /data/local/tmp/t7/ttsguard.sup.log >/dev/null 2>&1 &
sleep 2
CORE=$(ps -A -o PID,ARGS | $BB awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1; exit}')
echo "core before=$CORE"; [ -n "$CORE" ] && kill -9 "$CORE"
sleep 12
CORE2=$(ps -A -o PID,ARGS | $BB awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1; exit}')
echo "core after=$CORE2"
[ -n "$CORE2" ] && grep -o "/data/local/tmp/[a-z0-9_/]*libtg_[a-z0-9_]*\.so" /proc/$CORE2/maps | $BB sort -u
echo "### processes"
ps -A -o PID,PPID,NAME | grep -E "tg_supervisor|tgb_bridge|ai_worker|app_process|logcat|smartapp"
echo "### init.svc.tg_supervisor=$(getprop init.svc.tg_supervisor)"
echo "### worker status"; sh /data/local/tmp/t5_bridge/run_ai_worker.sh status 2>&1 | head -3
echo "### guard tail"; tail -2 /data/local/tmp/t7/ttsguard.sup.log
echo "### hook tail"; tail -2 /data/local/tmp/t8/supervisor.log
