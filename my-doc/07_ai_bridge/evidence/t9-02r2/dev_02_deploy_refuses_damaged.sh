#!/system/bin/sh
# T9-02R2 device evidence 02: the new deploy on the damaged set must refuse and change nothing.
echo "=== date"
date
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo "=== deploy run"
sh /data/local/tmp/t9/deploy_boot_rc.sh
echo "exit=$?"
echo "=== after"
ls -l /data/local/tmp/t9/rc_backup/
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo -n "manifest_bytes="; wc -c < /data/local/tmp/t9/rc_backup/sha256.before
ls -l /system/etc/init/tg_*
mount | grep -F " /system "
echo "=== END"
