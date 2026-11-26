#!/system/bin/sh
grep -F '1967687' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo ===
grep -F 'seq=17' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | head -3
echo ===
grep -F '1969107' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | head -3