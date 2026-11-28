#!/system/bin/sh
# T9-18: timestamped TTS probe (logcat -c is not reliable on this ROM, filter by time)
J='{"method":4,"data":{"sessionId":0,"tts":"语音链路测试一二三","isOpenMic":false,"ignoreMute":true,"feedback":false,"secretKey":"","pkg":"com.tgz02.voice","wakeupType":1}}'
T0=$(date '+%m-%d %H:%M:%S')
echo "T0=$T0"
content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi --where "$J" >/dev/null 2>&1
echo "query done at $(date '+%H:%M:%S')"
sleep 8
echo "--- lines after $T0 mentioning our text / tts pipeline ---"
logcat -d -t 900 2>/dev/null | grep -E 'GenieTable: play|onTtsStart|onTtsData|onTtsEnd|playTTS' | tail -20
echo
echo "--- did our exact text appear? ---"
logcat -d -t 900 2>/dev/null | grep -c '语音链路测试一二三'
