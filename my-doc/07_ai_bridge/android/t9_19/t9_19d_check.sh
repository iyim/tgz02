#!/system/bin/sh
echo "=== hook boot line ==="
grep -a 'nlu boot' /data/local/tmp/t8/supervisor.log | tail -2
echo
echo "=== hook stats (live) ==="
grep -a 'stats=' /data/local/tmp/t8/supervisor.log | tail -1 | head -c 300
echo
echo
echo "=== worker log tail ==="
tail -14 /data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo
echo "=== inbox dir now ==="
ls -la /data/local/tmp/t9_ui/inbox | tail -3
echo
echo "=== rejected newest ==="
ls -t /data/local/tmp/t9_ui/rejected 2>/dev/null | head -2
