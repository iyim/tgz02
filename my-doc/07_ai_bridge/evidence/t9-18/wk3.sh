#!/system/bin/sh
tail -c 100000 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | grep -F route= | tail -20
echo ---
tail -c 100000 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | grep -F asr_final | tail -8