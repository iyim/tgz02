#!/system/bin/sh
# T9-19e: ship the relaxed guard as a Magisk module override instead of remounting
#   /system (this ROM refuses `mount -o rw,remount /system` in both su variants:
#   "not user mountable in fstab"). Magisk magic-mounts the file on top at boot.
set -x
M=/data/adb/modules/t9_19e_guard
mkdir -p $M/system/tgz02/lib
cp -f /data/local/tmp/t9_19e_libtg_ttsguard.so $M/system/tgz02/lib/libtg_ttsguard_t8156.so
chmod 644 $M/system/tgz02/lib/libtg_ttsguard_t8156.so
cat > $M/module.prop <<'EOF'
id=t9_19e_guard
name=TGZ02 relaxed TTS guard
version=t919e
versionCode=1
author=tgz02
description=Allows factory alarm/time answers through (alarm & time intents match by window, asr_session key supported).
EOF
ls -lR $M
echo "--- mount check after reboot will confirm ---"
