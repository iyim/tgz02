#!/system/bin/sh
# dev_rollback_test2.sh -- 修好终检分类后重跑真实回滚，并把 R2 运行态装回
set -u
T5=/data/local/tmp/t5_bridge
T7=/data/local/tmp/t7
BK7=$T7/backup_t7_05r2

echo "########## 0) 回滚前现场 ##########"
sha256sum $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so
sh $T7/run_t7_05.sh guard-status

echo
echo "########## 1) fail-closed：错误的 T7-04 SHA ##########"
TG_SHA_WORKER_T704=0000000000000000000000000000000000000000000000000000000000000000 \
  sh $T7/run_t7_05.sh rollback
echo "abort_rc=$?"
echo "--- 现场必须没变 ---"
sha256sum $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so

echo
echo "########## 2) 真实回滚 ##########"
sh $T7/run_t7_05.sh rollback
echo "rollback_rc=$?"

echo
echo "########## 3) 回滚后现场 ##########"
sha256sum $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so
ls -l $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so
ps -A -o PID,ARGS 2>/dev/null | grep -E 'bin/ai_worker' | grep -v grep

echo
echo "########## 4) 装回 R2 运行态（先停 Worker，否则 Text file busy） ##########"
sh $T5/run_ai_worker.sh stop >/dev/null 2>&1
sleep 2
cp /data/local/tmp/t7/ai_worker.r2 $T5/bin/ai_worker
chmod 755 $T5/bin/ai_worker
cp $BK7/libtg_ttsguard.t7_05r1.so $T7/libtg_ttsguard.so
chmod 644 $T7/libtg_ttsguard.so
sh $T5/run_ai_worker.sh start-deepseek >/dev/null 2>&1
sleep 2
sh $T7/run_t7_05.sh guard-start
echo "--- 恢复后现场 ---"
sha256sum $T5/bin/ai_worker $T5/ai_worker/worker.conf $T7/libtg_ttsguard.so
sh $T7/run_t7_05.sh selfcheck
sh $T7/run_t7_05.sh verify
