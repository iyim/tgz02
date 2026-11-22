#!/system/bin/sh
# rollback_0906daa4.sh -- 回退到 0906daa4 的产物（worker 3ff34009 / guard 6d989d8d），conf 保留
set -u
T5=/data/local/tmp/t5_bridge
T7=/data/local/tmp/t7

echo "=== 1) 停 Worker，换回 0906daa4 那一版二进制 ==="
sh $T5/run_ai_worker.sh stop >/dev/null 2>&1
sleep 1
ls -l $T5/bin/ai_worker.bak_t7_05r2 2>/dev/null || echo "MISSING backup"
cp $T5/bin/ai_worker.bak_t7_05r2 $T5/bin/ai_worker
chmod 755 $T5/bin/ai_worker
sha256sum $T5/bin/ai_worker
echo "期望 3ff340096131350cff0d72032b4b0e8636b86ae54dcabc113e9dff62dc1df339"

echo "=== 2) 守卫/注入器/守护进程产物 ==="
sha256sum $T7/libtg_ttsguard.so /data/local/tmp/t6/tg_injector /data/local/tmp/t6/tg_supervisor /data/local/tmp/t6/libtg_hook.so

echo "=== 3) conf 保持不动（qwen） ==="
grep -E '^(provider|base_url|model|thinking|api_key_file)=' $T5/ai_worker/worker.conf

echo "=== 4) 起 Worker + 桥 + TTS ==="
sh $T5/run_bridge.sh start 2>&1 | tail -1
sh $T5/run_ai_worker.sh start-deepseek 2>&1 | tail -1
sh $T5/run_tts_exec.sh start 2>&1 | tail -1

echo "=== 5) 起守卫（屏蔽原厂语音那套） ==="
sh $T7/run_t7_05.sh guard-start 2>&1 | tail -7
