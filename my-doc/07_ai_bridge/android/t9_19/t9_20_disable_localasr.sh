#!/system/bin/sh
# T9-20: the factory keeps the mic open and wakes the screen on its own local VAD.
#   runtime.xml: devicesettingInfo::localASR=true, localASREnergyThreshold=60,
#   nightmodeInfo::dsbEasyWakeup=true, asrOnGW=true
# Turn the always-on local listening off and see whether the spontaneous wake stops.
P=/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml
B=/data/local/tmp/t9_20_bak
mkdir -p $B
cp -f $P $B/runtime.xml.orig
echo "=== before ==="
grep -E 'localASR"|localASREnergyThreshold|dsbEasyWakeup|asrOnGW' $P

# localASR: 常驻本地识别 -> 关；同时把能量阈值抬高，降低误触发
sed -i 's|<boolean name="devicesettingInfo::localASR" value="true" />|<boolean name="devicesettingInfo::localASR" value="false" />|' $P
sed -i 's|<int name="devicesettingInfo::localASREnergyThreshold" value="60" />|  <int name="devicesettingInfo::localASREnergyThreshold" value="85" />|' $P

echo
echo "=== after ==="
grep -E 'localASR"|localASREnergyThreshold|dsbEasyWakeup|asrOnGW' $P
echo
ls -l $P
