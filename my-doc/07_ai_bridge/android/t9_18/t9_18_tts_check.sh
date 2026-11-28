#!/system/bin/sh
# T9-18: does the factory TTS still answer with iot/rtc/ags removed?
echo "--- before: mic/tts log markers ---"
logcat -c 2>/dev/null
sleep 1
content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi \
  --where '{"method":4,"data":{"tts":"语音测试，布丁在","pkg":"com.tgz02.voice","ignoreMute":true,"source":"t9_18"}}' \
  >/dev/null 2>&1 &
QPID=$!
sleep 6
kill $QPID 2>/dev/null
echo "--- factory tts markers after the request ---"
logcat -d -t 400 2>/dev/null | grep -E 'playTts|onTtsStart|onTtsData|onTtsEnd' | tail -12
echo
echo "--- our guard (tgt) ---"
logcat -d -t 400 2>/dev/null | grep -c ' tgt:'
echo
echo "--- any crash from the disabled packages? ---"
logcat -d -t 600 2>/dev/null | grep -iE 'FATAL|ANR in|ClassNotFound|ActivityThread.*Failed to find provider' | tail -8
