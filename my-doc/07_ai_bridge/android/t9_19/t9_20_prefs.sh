#!/system/bin/sh
P=/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs
echo "=== pref.xml ==="
cat $P/pref.xml
echo
echo "=== runtime.xml (grep wake/listen) ==="
grep -iE 'wake|listen|asr|voice|disturb' $P/runtime.xml | head -20
echo
echo "=== disturb_status.xml ==="
cat $P/disturb_status.xml
echo
echo "=== dialog / asr related files ==="
ls -l $P | grep -iE 'dialog|asr|wake|voice|talk' 
echo
echo "=== latest factory wake events today ==="
grep -aE 'factory wake|factory stop talk' /data/local/tmp/t5_bridge/ai_worker/ai_worker.log | tail -12
