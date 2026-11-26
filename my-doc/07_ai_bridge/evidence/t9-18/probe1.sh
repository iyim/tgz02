#!/system/bin/sh
awk '/GenieAIRouter/' /data/local/tmp/t9_18_logcat.txt | wc -l
awk '/TPL.RenderTemplate/' /data/local/tmp/t9_18_logcat.txt | wc -l