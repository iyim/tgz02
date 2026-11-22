#!/system/bin/sh
# dev_redeploy_r2.sh -- 回滚验证之后把 R2 运行态干净地装回去
set -u
T5=/data/local/tmp/t5_bridge
T7=/data/local/tmp/t7
BK7=$T7/backup_t7_05r2

echo "=== 1) stop worker and wait ==="
sh $T5/run_ai_worker.sh stop
n=0
while [ $n -lt 10 ]; do
  sleep 1
  if ! ps -A -o ARGS 2>/dev/null | grep -q 'bin/ai_worker'; then break; fi
  n=$((n+1))
done
ps -A -o PID,ARGS 2>/dev/null | grep 'bin/ai_worker' | grep -v grep || echo "no ai_worker running"

echo "=== 2) install R2 worker + T7-05 guard .so ==="
cp /data/local/tmp/t7/ai_worker.r2 $T5/bin/ai_worker && chmod 755 $T5/bin/ai_worker
cp $BK7/libtg_ttsguard.t7_05r1.so $T7/libtg_ttsguard.so && chmod 644 $T7/libtg_ttsguard.so
sha256sum $T5/bin/ai_worker $T7/libtg_ttsguard.so

echo "=== 3) guard-reload (stop -> restart :core -> start) ==="
sh $T7/run_t7_05.sh guard-reload
echo "reload_rc=$?"

echo "=== 4) start worker ==="
sh $T5/run_ai_worker.sh start-deepseek
sleep 3
echo "=== 5) final state ==="
sh $T7/run_t7_05.sh verify
sh $T7/run_t7_05.sh selfcheck
