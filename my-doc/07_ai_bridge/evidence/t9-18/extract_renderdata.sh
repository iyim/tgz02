#!/system/bin/sh
grep 'GenieAIRouter' /data/local/tmp/t9_18_logcat.txt | grep 'pageType=TPL.RenderTemplate' | head -12 > /data/local/tmp/t9_18_renderdata.txt
grep -E 'onStartTalk|onStopTalk|onCloudEOU|Tts start|AUDIO_STATUS_PLAY|AUDIO_STATUS_COMPLETE' /data/local/tmp/t9_18_logcat.txt | grep -E '22:0[5-9]|22:1[0-9]' > /data/local/tmp/t9_18_voice_timeline.txt
wc -c /data/local/tmp/t9_18_renderdata.txt /data/local/tmp/t9_18_voice_timeline.txt