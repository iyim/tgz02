#!/system/bin/sh
# dev_ab.sh -- A/B：卸载只读 hook 后是否恢复 ASR final
echo "=== uninstall wakeinfo ==="
sh /data/local/tmp/t7/dev_inject_wake.sh uninstall
sleep 1
echo "=== events before ==="
ls -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== wake count before ==="
wc -l /data/local/tmp/t7/wake/wakeinfo.jsonl
