#!/system/bin/sh
# inventory.sh -- 设备上我们放的东西清单（只读）
echo "=== /data/local/tmp/t6 (注入器/hook) ==="
ls -l /data/local/tmp/t6 2>/dev/null
echo "=== /data/local/tmp/t7 (守卫/观测/脚本) ==="
ls -l /data/local/tmp/t7 2>/dev/null
echo "=== /data/local/tmp/t7/backup* ==="
ls -l /data/local/tmp/t7/backup_t7_05 2>/dev/null
ls -l /data/local/tmp/t7/backup_t7_05r2 2>/dev/null
echo "=== /data/local/tmp/t5_bridge ==="
ls -l /data/local/tmp/t5_bridge 2>/dev/null
echo "=== t5_bridge/bin ==="
ls -l /data/local/tmp/t5_bridge/bin 2>/dev/null
echo "=== t5_bridge/ai_worker ==="
ls -l /data/local/tmp/t5_bridge/ai_worker 2>/dev/null
echo "=== t5_bridge/secret ==="
ls -l /data/local/tmp/t5_bridge/secret 2>/dev/null
echo "=== 运行中的进程 ==="
ps -A -o PID,ARGS 2>/dev/null | grep -E 'tg_supervisor|tg_injector|tgb_bridge|ai_worker|app_process' | grep -v grep
echo "=== 注入映射 ==="
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE"
for m in libtg_hook libtg_ttsguard libtg_wakeinfo libtg_dialog; do
  echo "$m: $(grep -c $m /proc/$CORE/maps 2>/dev/null)"
done
