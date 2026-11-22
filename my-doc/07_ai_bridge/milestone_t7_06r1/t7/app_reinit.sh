#!/system/bin/sh
# app_reinit.sh -- 应用级重初始化后重新注入观测库（每次 :core 换了 pid 都要重来）
set -u
T7=/data/local/tmp/t7
echo "=== force-stop + relaunch ==="
am force-stop com.alibaba.ailabs.genie.smartapp
sleep 2
monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1 2>&1 | tail -2
sleep 15
ps -A -o PID,ARGS 2>/dev/null | grep -E 'smartapp:core' | grep -v tg_supervisor
echo "=== ensure bridge ==="
sh /data/local/tmp/t5_bridge/run_bridge.sh status 2>&1 | tail -1
echo "=== guard ==="
sh $T7/run_t7_05.sh guard-status 2>&1 | head -4
echo "=== wakeinfo inject ==="
sh $T7/dev_inject_wake.sh install 2>&1 | tail -3
