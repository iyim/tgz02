#!/system/bin/sh
L=/data/local/tmp/t5_bridge/ai_worker/ai_worker.log
echo "=== model config / provider lines ==="
grep -a "model config" $L | tail -4
grep -a "provider ready" $L | tail -2
echo
echo "=== models.json now ==="
cp -f /data/data/com.tgz02.voice/files/models.json /sdcard/models.json
chmod 666 /sdcard/models.json
cat /sdcard/models.json
echo
echo
echo "=== worker alive? ==="
ps -A | grep ai_worker | grep -v grep
