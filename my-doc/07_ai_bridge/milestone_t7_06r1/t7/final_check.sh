#!/system/bin/sh
# final_check.sh -- 恢复后的现状（事件数 / 最后两条 / 原生路由次数 / 桥与网关进程）
E=/data/local/tmp/t5_bridge/work/events.jsonl
echo "events: $(wc -l < $E)"
tail -n 2 $E
echo "--- native routes in worker log ---"
grep -c 'route=native' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo "--- last worker lines ---"
tail -n 4 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo "--- processes ---"
pidof tgb_bridge; pidof ai_worker
