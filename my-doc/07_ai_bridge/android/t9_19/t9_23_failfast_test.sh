#!/system/bin/sh
# T9-23: prove that a missing models.json fails loudly instead of falling back to mock
L=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
MJ=/data/data/com.tgz02.voice/files/models.json
R=/system/tgz02/scripts/run_ai_worker.sh

echo "=== stop worker, hide models.json ==="
sh $R stop >/dev/null 2>&1
sleep 1
mv -f $MJ ${MJ}.off
ls -l ${MJ}.off 2>&1

echo
echo "=== start worker without any model config ==="
sh $R start >/dev/null 2>&1
sleep 4
echo "--- log ---"
tail -6 $L | grep -aE 'no usable model|provider|start pid|no_model' 
echo
echo "worker running? $(ps -A | grep ai_worker | grep -v grep | wc -l) proc"

echo
echo "=== restore models.json and restart ==="
mv -f ${MJ}.off $MJ
chown u0_a71:u0_a71 $MJ
chmod 600 $MJ
sh $R stop >/dev/null 2>&1
sleep 1
sh $R start >/dev/null 2>&1
sleep 4
echo "--- log after restore ---"
tail -8 $L | grep -aE 'provider ready|model config|start pid'
echo "worker running? $(ps -A | grep ai_worker | grep -v grep | wc -l) proc"
