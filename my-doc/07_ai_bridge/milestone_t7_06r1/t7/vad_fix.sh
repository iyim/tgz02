#!/system/bin/sh
# vad_fix.sh -- 把原厂判停从 150ms 抬到 700ms（只改 localASRPauseTime，先备份，可回退）
#   回退：cp /data/local/tmp/t7/backup_runtime_before_vad.xml <runtime.xml> 后重启
set -u
F=/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml
BK=/data/local/tmp/t7/backup_runtime_before_vad.xml

echo "=== before ==="
ls -l $F
grep -oE 'localASRPauseTime" value="[0-9]+"' $F

[ -f "$BK" ] || cp $F $BK
echo "backup: $(ls -l $BK)"
echo "backup sha: $(sha256sum $BK | cut -d' ' -f1)"

OWN=$(stat -c %u $F); GRP=$(stat -c %g $F); MOD=$(stat -c %a $F)
sed -i 's/name="devicesettingInfo::localASRPauseTime" value="150"/name="devicesettingInfo::localASRPauseTime" value="700"/' $F
chown $OWN:$GRP $F
chmod $MOD $F

echo "=== after ==="
ls -l $F
grep -oE 'localASRPauseTime" value="[0-9]+"' $F
grep -oE 'devicesettingInfo::pauseTime" value="[0-9]+"' $F
