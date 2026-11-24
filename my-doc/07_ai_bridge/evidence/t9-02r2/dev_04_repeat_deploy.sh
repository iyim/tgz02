#!/system/bin/sh
# T9-02R2 device evidence 04: THE regression case -- a repeat deploy (only tg_stack.rc left to
# replace) must succeed, keep the accepted boot config, and leave the rollback material
# byte-identical.
echo "=== date"
date
echo "=== before"
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc
ls -l /system/etc/init/tg_*
echo "=== repeat deploy"
sh /data/local/tmp/t9/deploy_boot_rc.sh
echo "exit=$?"
echo "=== after"
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo -n "manifest_bytes="; wc -c < /data/local/tmp/t9/rc_backup/sha256.before
cat /data/local/tmp/t9/rc_backup/sha256.before
cat /data/local/tmp/t9/rc_backup/deploy.stamp
ls -l /system/etc/init/tg_*
mount | grep -F " /system "
echo "=== second repeat deploy (idempotence)"
sh /data/local/tmp/t9/deploy_boot_rc.sh | tail -12
sha256sum /data/local/tmp/t9/rc_backup/sha256.before /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo "=== END"
