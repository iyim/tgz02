#!/system/bin/sh
# T9-02R2 device evidence 01: static check + the exact damaged state found on the device.
echo "=== date"
date
echo "=== sh -n (syntax)"
for f in /data/local/tmp/t9/deploy_boot_rc.sh /data/local/tmp/t9/rollback_boot_rc.sh \
         /data/local/tmp/t9/repair_rc_manifest.sh /data/local/tmp/t9/boot_stack.sh; do
    if sh -n "$f"; then echo "OK   $f"; else echo "FAIL $f"; fi
done
echo "=== rollback material BEFORE any action"
ls -l /data/local/tmp/t9/rc_backup/
echo -n "manifest_bytes="; wc -c < /data/local/tmp/t9/rc_backup/sha256.before
sha256sum /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo -n "deploy.stamp: "; tr '\n' ' ' < /data/local/tmp/t9/rc_backup/deploy.stamp; echo
echo "=== init dir BEFORE"
ls -l /system/etc/init/tg_*
echo "=== what the pre-T9-02R2 rollback says about this state (dry read only)"
sh /data/local/tmp/t9/rollback_boot_rc.sh 2>&1 | head -5
echo "=== END"
