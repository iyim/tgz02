#!/system/bin/sh
# T9: restore our own stack after the reboot (installed from the verified backup/known paths).
# Order: hook supervisor -> guard supervisor -> bridge -> tts -> worker -> tap
echo "### restore start"; date '+%Y-%m-%d %H:%M:%S'
echo "### pids before"
ps -A -o PID,NAME | grep -E "tg_supervisor|tgb_bridge|ai_worker|app_process|logcat"

setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t8/libtg_hook.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t8/tg_supervisor.pid --log /data/local/tmp/t8/supervisor.log >/dev/null 2>&1 &
sleep 3
echo "### hook supervisor"
ps -A -o PID,NAME | grep tg_supervisor
tail -3 /data/local/tmp/t8/supervisor.log

setsid /data/local/tmp/t6/tg_supervisor --injector /data/local/tmp/t8/tg_injector \
  --so /data/local/tmp/t7/libtg_ttsguard_t8155r.so --name com.alibaba.ailabs.genie.smartapp:core \
  --pidfile /data/local/tmp/t7/ttsguard.sup.pid --log /data/local/tmp/t7/ttsguard.sup.log >/dev/null 2>&1 &
sleep 3
echo "### guard supervisor"
ps -A -o PID,NAME | grep tg_supervisor
tail -5 /data/local/tmp/t7/ttsguard.sup.log

echo "### bridge"; sh /data/local/tmp/t5_bridge/run_bridge.sh start; sleep 2
echo "### tts";    sh /data/local/tmp/t5_bridge/run_tts_exec.sh start; sleep 2
echo "### worker"; sh /data/local/tmp/t5_bridge/run_ai_worker.sh start; sleep 3
echo "### tap";    sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-tap; sleep 3
echo "### state after"
ps -A -o PID,PPID,NAME | grep -E "tg_supervisor|tgb_bridge|ai_worker|app_process|logcat"
echo "### :core injected libs"
for pid in $(ps -A -o PID,ARGS | /system/xbin/busybox awk '$NF=="com.alibaba.ailabs.genie.smartapp:core"{print $1}'); do
  echo "core pid=$pid"
  cat /proc/$pid/maps | grep -E "libtg_" | /system/xbin/busybox awk '{print $6}' | /system/xbin/busybox sort -u
done
echo "### worker status"; sh /data/local/tmp/t5_bridge/run_ai_worker.sh status
