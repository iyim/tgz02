#!/system/bin/sh
grep -F 'route=' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | grep -E '22:0[6-9]|22:1[0-2]' | tail -20