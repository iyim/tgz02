#!/system/bin/sh
P=/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs
echo "=== runtime.xml (our change survived?) ==="
grep -E 'localASR|EasyWakeup|EnergyThreshold' $P/runtime.xml
echo
echo "=== AMSKLG_CFG.xml (wake engine tunables?) ==="
cat $P/AMSKLG_CFG.xml
echo
echo "=== every pref file mentioning wake/threshold ==="
grep -ilE 'wake|threshold|asr' $P/*.xml 2>/dev/null
echo
echo "=== current screen state ==="
dumpsys power | grep -E 'mWakefulness=|mLastWakeTime'
