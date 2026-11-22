#!/system/bin/sh
# apply_qwen_conf.sh -- 换成 qwen4-max（8400 代理），思考档位 fast
#   1. key 写进既有 key 文件（0600，只存 key，不写进 conf/日志）
#   2. worker.conf 改 base_url / model / thinking，并 0600
#   3. 重启 Worker
set -u
T5=/data/local/tmp/t5_bridge
C=$T5/ai_worker/worker.conf
K=$T5/secret/deepseek_api_key

echo "=== 备份 ==="
cp $C $T5/ai_worker/worker.conf.bak_before_qwen
echo "conf backup: $(ls -l $T5/ai_worker/worker.conf.bak_before_qwen | tr -s ' ' | cut -d' ' -f1,5)"

echo "=== 写 key（0600） ==="
umask 077
printf '%s' 'sk-qwen-b1127c1ea0d62eb32be8229b0f82446a' > $K
chmod 600 $K
echo "key file: $(ls -l $K | tr -s ' ' | cut -d' ' -f1,4,5)  sha=$(sha256sum $K | cut -c1-12)"

echo "=== 改 conf ==="
sed -i 's|^base_url=.*|base_url=http://192.168.1.13:8400/v1|' $C
sed -i 's|^model=.*|model=qwen4-max|' $C
grep -q '^thinking=' $C && sed -i 's|^thinking=.*|thinking=fast|' $C || echo 'thinking=fast' >> $C
chmod 600 $C
grep -E '^(provider|base_url|model|thinking|api_key_file|temperature|max_tokens)=' $C

echo "=== 重启 Worker ==="
sh $T5/run_ai_worker.sh stop 2>&1 | tail -1
sh $T5/run_ai_worker.sh start-deepseek 2>&1 | tail -2
sleep 2
echo "worker pid=$(pidof ai_worker)"
grep -E 'provider ready|worker.conf' $T5/ai_worker/ai_worker.log | tail -2
