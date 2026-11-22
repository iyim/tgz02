#!/system/bin/sh
# check_route.sh -- 唤醒后：事件/路由/守卫统计
T5=/data/local/tmp/t5_bridge
echo "events: $(wc -l < $T5/work/events.jsonl)"
tail -n 1 $T5/work/events.jsonl
echo "--- worker routes (last 3) ---"
grep -E 'route=native|route=ai' $T5/ai_worker/ai_worker.log | tail -3
echo "--- guard stats ---"
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
/data/local/tmp/t6/tg_injector --pid $CORE --so /data/local/tmp/t7/libtg_ttsguard.so --check 2>&1 | grep 'stats=' | head -1
