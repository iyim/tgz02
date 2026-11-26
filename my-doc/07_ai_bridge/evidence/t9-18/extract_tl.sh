#!/system/bin/sh
grep -F onStartTalk /data/local/tmp/t9_18_logcat.txt > /data/local/tmp/t9_18_tl1.txt
grep -F onCloudEOU /data/local/tmp/t9_18_logcat.txt >> /data/local/tmp/t9_18_tl1.txt
grep -F AUDIO_STATUS /data/local/tmp/t9_18_logcat.txt >> /data/local/tmp/t9_18_tl1.txt
grep -F 'Tts start' /data/local/tmp/t9_18_logcat.txt >> /data/local/tmp/t9_18_tl1.txt
wc -c /data/local/tmp/t9_18_tl1.txt