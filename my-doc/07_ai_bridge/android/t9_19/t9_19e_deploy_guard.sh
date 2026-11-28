#!/system/bin/sh
# T9-19e: deploy the relaxed TTS guard (alarm/time answers must be audible)
set -x
mount -o rw,remount /system || exit 1
cp -f /data/local/tmp/t9_19e_libtg_ttsguard.so /system/tgz02/lib/libtg_ttsguard_t8156.so
chmod 644 /system/tgz02/lib/libtg_ttsguard_t8156.so
restorecon /system/tgz02/lib/libtg_ttsguard_t8156.so 2>/dev/null
sync
mount -o ro,remount /system
sha256sum /system/tgz02/lib/libtg_ttsguard_t8156.so
