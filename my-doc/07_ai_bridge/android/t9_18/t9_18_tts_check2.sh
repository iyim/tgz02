#!/system/bin/sh
# T9-18: full payload (same fields FactoryTts.java sends)
J='{"method":4,"data":{"sessionId":0,"tts":"语音链路测试，布丁正在说话","isOpenMic":false,"ignoreMute":true,"feedback":false,"secretKey":"","pkg":"com.tgz02.voice","wakeupType":1}}'
logcat -c 2>/dev/null
content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi --where "$J" >/dev/null 2>&1
echo "query returned, waiting 8s"
sleep 8
echo "--- tts markers ---"
logcat -d 2>/dev/null | grep -iE 'playTts|onTtsStart|onTtsData|onTtsEnd|TtsManager|GenieTable.*play' | tail -12
echo
echo "--- audio activity ---"
logcat -d 2>/dev/null | grep -icE 'AudioTrack|AudioFlinger'
echo
echo "--- our guard ---"
logcat -d 2>/dev/null | grep -E ' tgt:' | tail -6
