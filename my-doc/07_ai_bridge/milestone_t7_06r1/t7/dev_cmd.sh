#!/system/bin/sh
# dev_cmd.sh -- 设备侧临时验证命令（T7-05-R2 / T7-06 采集阶段用；不属于交付物）
echo "=== worker ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek
sleep 3
ls -l /data/local/tmp/t5_bridge/ai_worker/ai_worker_status.json
echo "=== route/gate/dedupe fields ==="
tr ',' '\n' < /data/local/tmp/t5_bridge/ai_worker/ai_worker_status.json | grep -E 'dup_same|same_text_new|"native"|"ai"|dup_dropped'
echo "=== script selfcheck ==="
sh /data/local/tmp/t7/run_t7_05.sh selfcheck
echo "=== script verify ==="
sh /data/local/tmp/t7/run_t7_05.sh verify
