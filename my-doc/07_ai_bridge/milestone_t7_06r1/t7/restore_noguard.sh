#!/system/bin/sh
# restore_noguard.sh -- 重启后恢复到"语音可用"的状态：桥 + Worker + ASR hook，不启动 TTS 守卫
set -u
echo "=== 1) ASR 事件桥 ==="
sh /data/local/tmp/t5_bridge/run_bridge.sh start 2>&1 | tail -2
echo "=== 2) Worker（本地语音/大模型分别路由） ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -1
echo "=== 3) 确认守卫没有在跑 ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-stop 2>&1 | tail -3
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE guard_mapped=$(grep -c libtg_ttsguard /proc/$CORE/maps 2>/dev/null) asr_mapped=$(grep -c libtg_hook /proc/$CORE/maps 2>/dev/null)"
echo "=== 4) 路由配置 ==="
grep 'route: enabled' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -1
echo "events=$(wc -l < /data/local/tmp/t5_bridge/work/events.jsonl)"
