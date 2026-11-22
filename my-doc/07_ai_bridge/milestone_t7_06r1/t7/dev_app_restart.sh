#!/system/bin/sh
# dev_app_restart.sh -- 应用级重启（不重启整机）：force-stop -> monkey 拉起 -> 重新注入
echo "=== force-stop ==="
am force-stop com.alibaba.ailabs.genie.smartapp
sleep 3
echo "=== relaunch ==="
monkey -p com.alibaba.ailabs.genie.smartapp -c android.intent.category.LAUNCHER 1 2>&1 | tail -3
sleep 12
ps -A -o PID,ARGS 2>/dev/null | grep -E 'smartapp' | grep -v grep
echo "=== asr supervisor ==="
ps -A -o PID,ARGS 2>/dev/null | grep tg_supervisor | grep -v grep
