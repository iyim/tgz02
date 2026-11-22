#!/system/bin/sh
# dev_diag4.sh -- ASR hook 自身是否在产出（区分"没识别"还是"识别了但事件没落盘"）
echo "=== tg_hook logcat ==="
logcat -d | grep -iE 'tg_hook|tg_wire|tg_agent' | tail -15
echo "=== bridge status ==="
cat /data/local/tmp/t5_bridge/work/bridge_status.json 2>/dev/null
echo
echo "=== events mtime/size ==="
ls -l /data/local/tmp/t5_bridge/work/events.jsonl
echo "=== supervisor log tail ==="
tail -n 12 /data/local/tmp/t6/supervisor.log
