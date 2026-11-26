#!/system/bin/sh
awk '/GenieAIRouter/ && /pageType=TPL.RenderTemplate/' /data/local/tmp/t9_18_logcat.txt > /data/local/tmp/t9_18_renderdata.txt
awk '/onStartTalk|onStopTalk|onCloudEOU|Tts start|AUDIO_STATUS/' /data/local/tmp/t9_18_logcat.txt | grep -E '22:0[5-9]|22:1' > /data/local/tmp/t9_18_voice_timeline.txt
wc -c /data/local/tmp/t9_18_renderdata.txt /data/local/tmp/t9_18_voice_timeline.txt