#!/system/bin/sh
echo "=== guard (tgt) continuity lines"
grep -E 'continuity' /data/local/tmp/t9/t9_06/06r1_g3.log | tail -12
echo "=== factory sessions"
grep -E 'onStartTalk' /data/local/tmp/t9/t9_06/06r1_g3.log | tail -4
echo "=== worker"
grep -E 'route=native|continuity|CONFIRMED' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -4
pkill -f 'logcat.*SessionManager' 2>/dev/null
echo "=== END"
