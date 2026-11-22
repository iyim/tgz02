#!/system/bin/sh
# switch_base.sh URL -- 切换 Worker 的 base_url 并重启（验证请求体用）
set -u
C=/data/local/tmp/t5_bridge/ai_worker/worker.conf
URL=$1
sed -i "s|^base_url=.*|base_url=$URL|" $C
grep '^base_url=' $C
sh /data/local/tmp/t5_bridge/run_ai_worker.sh stop >/dev/null 2>&1
sleep 1
sh /data/local/tmp/t5_bridge/run_ai_worker.sh start-deepseek 2>&1 | tail -1
