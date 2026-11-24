#!/system/bin/sh
# T9-02R2 device evidence 03: rebuild the lost manifest from the verified backup only.
# cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34 is the T6
# /system/etc/init/tg_supervisor.rc sha256 recorded in the T8-15.6 and T9-01 reports, and it is
# what the existing /data/local/tmp/t9/rc_backup/tg_supervisor.rc still hashes to.
EXPECT=cdd947509c15b3b5facc0794529294ff94ab069ec1f0c20164fd27cfe414ec34
echo "=== date"
date
echo "=== repair with the recorded hash"
sh /data/local/tmp/t9/repair_rc_manifest.sh "$EXPECT"
echo "exit=$?"
echo "=== after"
ls -l /data/local/tmp/t9/rc_backup/
cat /data/local/tmp/t9/rc_backup/sha256.before
sha256sum /data/local/tmp/t9/rc_backup/tg_supervisor.rc
echo "=== END"
