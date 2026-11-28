#!/system/bin/sh
echo "boot=$(getprop sys.boot_completed) uptime=$(cut -d' ' -f1 /proc/uptime)s"
echo
echo "=== 1. hosts ==="
grep alibabausercontent /system/etc/hosts
echo
echo "=== 2. 旭慧生活 / probe apps ==="
pm path com.anthouse.ayland 2>&1 | head -1
pm list packages | grep -E 'tgz02\.(aidltest|providerprobe)' || echo "probes gone"
echo
echo "=== 3. factory TTS regression ==="
J='{"method":4,"data":{"sessionId":0,"tts":"语音链路测试通过","isOpenMic":false,"ignoreMute":true,"feedback":false,"secretKey":"","pkg":"com.tgz02.voice","wakeupType":1}}'
content query --uri content://com.alibaba.ailabs.genie.assistant.provider/GenieApi --where "$J" >/dev/null 2>&1
sleep 6
echo "playTTS lines: $(logcat -d -t 600 2>/dev/null | grep -c 'playTTS')"
logcat -d -t 600 2>/dev/null | grep -E 'playTTS|onTtsStart|onTtsEnd' | tail -6
echo
echo "=== 4. appbox download attempts (should fail) ==="
logcat -d -t 800 2>/dev/null | grep -iE 'alibabausercontent|Download.*fail|MarketDownload' | tail -8
echo
echo "=== 5. voice stack + mem ==="
ps -A | grep -E 'smartapp|ai_worker|tgb_bridge|tg_supervisor' | grep -v grep | wc -l
free -m | head -2
cat /proc/loadavg
