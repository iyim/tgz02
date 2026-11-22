#!/system/bin/sh
# qwen_state.sh -- 换模型之后的状态确认
C=/data/local/tmp/t5_bridge/ai_worker/worker.conf
echo "=== conf ==="
grep -E '^(provider|base_url|model|thinking|api_key_file|temperature|max_tokens)=' $C
echo "=== key file ==="
ls -l /data/local/tmp/t5_bridge/secret/deepseek_api_key
echo "=== worker 最近一次真实请求 ==="
grep -E 'provider ready|deepseek ok|deepseek failed' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -3
echo "=== tts ==="
sh /data/local/tmp/t5_bridge/run_tts_exec.sh status 2>&1 | tail -4
echo "worker pid=$(pidof ai_worker)"
