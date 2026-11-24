#!/system/bin/sh
echo "=== worker: native route + continuity"
grep -E 'route=native|continuity|CONFIRMED' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -8
echo "=== factory sessions in the capture"
grep -E 'onStartTalk|onCloudEOUEvent|setStreamVolume' /data/local/tmp/t9/t9_06/06r1_voice.log | tail -8
echo "=== tap log tail"
tail -4 /data/local/tmp/t5_bridge/ai_worker/factory_talk.log
echo "=== END"
