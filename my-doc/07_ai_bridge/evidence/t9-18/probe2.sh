#!/system/bin/sh
grep -F -c GenieAIRouter /data/local/tmp/t9_18_logcat.txt
grep -F pageType=TPL.RenderTemplate /data/local/tmp/t9_18_logcat.txt > /data/local/tmp/t9_18_renderdata.txt
grep -F -c TTS /data/local/tmp/t9_18_logcat.txt