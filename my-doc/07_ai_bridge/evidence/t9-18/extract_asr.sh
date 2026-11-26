#!/system/bin/sh
grep -E 'asr_final|onStream|Tts start|AUDIO_STATUS|spoken' /data/local/tmp/t9_18_logcat.txt | grep -E '22:0[6-9]|22:08' | head -50