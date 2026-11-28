#!/system/bin/sh
# T9-23: 让 models.json 成为模型配置的唯一来源。
#   1) 把密钥从 worker.conf 的 api_key_file 搬进 models.json 的 api_key（明文，App 私有目录）
#   2) worker.conf 删掉 provider=/base_url=/model=/api_key_file=
#   3) 加 models_required=1（models.json 不可用就明确失败，不静默 mock）
C=/data/local/tmp/t5_bridge/ai_worker/worker.conf
MJ=/data/data/com.tgz02.voice/files/models.json
KF=/data/local/tmp/t5_bridge/secret/deepseek_api_key
BAK=/data/local/tmp/t9_23_bak
mkdir -p $BAK

echo "=== 0. backups ==="
cp -f $C $BAK/worker.conf.orig
cp -f $MJ $BAK/models.json.orig
ls -l $BAK

echo
echo "=== 1. move the key into models.json (content not printed) ==="
KEY=$(cat $KF | tr -d '\r\n')
if [ -z "$KEY" ]; then echo "KEYFILE EMPTY - aborting"; exit 1; fi
echo "key length: ${#KEY}"
sed -i "s|\"api_key\":\"\"|\"api_key\":\"$KEY\"|" $MJ
echo "api_key field length in models.json now: $(grep -o '"api_key":"[^"]*"' $MJ | wc -c)"
chown u0_a71:u0_a71 $MJ
chmod 600 $MJ

echo
echo "=== 2. strip the model section from worker.conf ==="
cp -f $C $BAK/worker.conf.before_strip
grep -vE '^(provider|base_url|model|api_key_file)=' $C > /data/local/tmp/wc.new
grep -q '^models_required=' /data/local/tmp/wc.new || \
  printf '\n# T9-23：模型只认 App 的 models.json；这里不再有 provider/base_url/model/api_key_file\nmodels_required=1\n' >> /data/local/tmp/wc.new
cp -f /data/local/tmp/wc.new $C
chmod 600 $C

echo
echo "=== 3. worker.conf now (model-related lines only) ==="
grep -nE '^(provider|base_url|model|api_key_file|models_required|models_enabled)' $C || echo "(none)"
echo
echo "=== 4. models.json shape (key masked) ==="
sed 's/"api_key":"[^"]*"/"api_key":"<SET>"/' $MJ
