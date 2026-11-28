#!/system/bin/sh
L=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo "=== last http / provider / error lines ==="
grep -aE 'http|HTTP|401|403|key|provider:' $L | tail -15
echo
echo "=== last turn results ==="
grep -aE 'ai ok|ai fail|provider reply|chat/completions|status=' $L | tail -10
