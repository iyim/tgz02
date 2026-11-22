#!/system/bin/sh
# vad_revert.sh -- 回退 runtime.xml 到本次改动之前（判停 700 -> 原厂 150）
set -u
F=/data/data/com.alibaba.ailabs.genie.smartapp/shared_prefs/runtime.xml
BK=/data/local/tmp/t7/backup_runtime_before_vad.xml
if [ ! -f "$BK" ]; then echo "no backup, abort"; exit 1; fi
OWN=$(stat -c %u $F); GRP=$(stat -c %g $F); MOD=$(stat -c %a $F)
cp $BK $F
chown $OWN:$GRP $F
chmod $MOD $F
echo "restored: $(sha256sum $F | cut -d' ' -f1)"
grep -oE 'localASRPauseTime" value="[0-9]+"' $F
