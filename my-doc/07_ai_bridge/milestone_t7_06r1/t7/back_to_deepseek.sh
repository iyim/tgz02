#!/system/bin/sh
# back_to_deepseek.sh -- 大模型配置回退到原来的 deepseek 代理（8790 / deepseek-flash）
#   key 文件保持不动（下面会打印现状）；thinking 行去掉，避免老模型不认这个字段
set -u
C=/data/local/tmp/t5_bridge/ai_worker/worker.conf
sed -i 's|^base_url=.*|base_url=http://192.168.1.13:8790/v1|' $C
sed -i 's|^model=.*|model=deepseek-flash|' $C
sed -i '/^thinking=/d' $C
chmod 600 $C
echo "=== conf ==="
grep -E '^(provider|base_url|model|api_key_file|temperature|max_tokens)=' $C
echo "=== key file ==="
ls -l /data/local/tmp/t5_bridge/secret/deepseek_api_key
echo "prefix: $(head -c 10 /data/local/tmp/t5_bridge/secret/deepseek_api_key)..."
echo "=== restart worker ==="
sh /data/local/tmp/t5_bridge/run_ai_worker.sh stop >/dev/null 2>&1
sleep 1
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -2
sleep 2
echo "=== worker tail ==="
tail -n 3 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
