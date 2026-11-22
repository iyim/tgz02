#!/system/bin/sh
# ab_hook.sh -- A/B：卸掉 wakeinfo 之后识别是否恢复（只看 hook 计数，不猜）
echo "=== uninstall wakeinfo ==="
sh /data/local/tmp/t7/dev_inject_wake.sh uninstall 2>&1 | tail -2
sleep 1
echo "=== wakeinfo status (should stop growing) ==="
cat /data/data/com.alibaba.ailabs.genie.smartapp/files/wake/wakeinfo.status
echo
echo "=== asr hook stats before speech ==="
sh /data/local/tmp/t7/asr_check.sh 2>/dev/null | head -3
