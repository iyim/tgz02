#!/system/bin/sh
tail -c 400000 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | grep -F 'weather' | tail -10
echo ===
tail -c 400000 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | grep -F 'native' | tail -10