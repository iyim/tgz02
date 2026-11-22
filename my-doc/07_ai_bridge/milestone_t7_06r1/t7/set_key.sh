#!/system/bin/sh
# set_key.sh KEY -- 把 key 写进 key 文件（0600，只落盘）
set -u
K=/data/local/tmp/t5_bridge/secret/deepseek_api_key
umask 077
printf '%s' "$1" > $K
chmod 600 $K
echo "key file: $(ls -l $K | tr -s ' ' | cut -d' ' -f1,4,5)  bytes=$(wc -c < $K)  prefix=$(head -c 6 $K)…"
sh /data/local/tmp/t5_bridge/run_ai_worker.sh stop >/dev/null 2>&1
sleep 1
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -1
