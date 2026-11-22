#!/system/bin/sh
# ab_guard.sh -- 把守卫也停掉（只留 T6-01 ASR hook + 事件桥），看识别是否恢复
T7=/data/local/tmp/t7
echo "=== guard-stop ==="
sh $T7/run_t7_05.sh guard-stop 2>&1 | tail -5
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE  guard_mapped=$(grep -c libtg_ttsguard /proc/$CORE/maps 2>/dev/null)  asr_mapped=$(grep -c libtg_hook /proc/$CORE/maps 2>/dev/null)"
echo "events=$(wc -l < /data/local/tmp/t5_bridge/work/events.jsonl)"
