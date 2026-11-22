#!/system/bin/sh
# restore_full.sh -- 重启后恢复完整可用状态（桥 + Worker + TTS 执行器 + 守卫）
#   守卫在跑 = 大模型回答时屏蔽原厂语音；本地指令仍由原厂回答（靠 native 标记放行）
set -u
echo "=== 1) ASR 事件桥 ==="
sh /data/local/tmp/t5_bridge/run_bridge.sh start 2>&1 | tail -1
echo "=== 2) Worker（本地/大模型分别路由） ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -1
echo "=== 3) TTS 执行器（大模型回答由它念） ==="
sh /data/local/tmp/t5_bridge/run_tts_exec.sh start 2>&1 | tail -1
echo "=== 4) TTS 守卫（屏蔽原厂语音） ==="
sh /data/local/tmp/t7/run_t7_05.sh guard-start 2>&1 | tail -5
echo "=== 5) 状态 ==="
CORE=$(pidof com.alibaba.ailabs.genie.smartapp:core | cut -d' ' -f1)
echo "core=$CORE asr_hook=$(grep -c libtg_hook /proc/$CORE/maps 2>/dev/null) guard=$(grep -c libtg_ttsguard /proc/$CORE/maps 2>/dev/null)"
grep -E '^(provider|base_url|model|thinking)=' /data/local/tmp/t5_bridge/ai_worker/worker.conf
sh /data/local/tmp/t7/guard_stats.sh 2>/dev/null | tail -1
