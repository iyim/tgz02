#!/system/bin/sh
# rollback_boot_rc.sh -- T8-15.6 rollback: remove tg_stack.rc and restore the T6 entry
#
#   su -c "sh /data/local/tmp/t9/rollback_boot_rc.sh"
#
# Use when the new boot setup has to be withdrawn. The device boots fine without any of
# these files (our stack simply does not start by itself), so this is a low-risk rollback.
set -u
DIR=/system/etc/init
BAK=/data/local/tmp/t9/rc_backup

mount -o remount,rw /system || { echo "ERROR: remount rw failed"; exit 5; }

for f in "$DIR"/tg_*; do
    [ -e "$f" ] || continue
    rm -f "$f" && echo "removed $f"
done

if [ -f "$BAK/tg_supervisor.rc" ]; then
    cp -f "$BAK/tg_supervisor.rc" "$DIR/tg_supervisor.rc" && echo "restored $DIR/tg_supervisor.rc"
    chown 0:0 "$DIR/tg_supervisor.rc"; chmod 0644 "$DIR/tg_supervisor.rc"
else
    echo "no backup found at $BAK/tg_supervisor.rc - leaving the directory empty"
fi

sync
mount -o remount,ro /system || echo "WARNING: remount ro failed"
ls -l "$DIR"/tg_* 2>/dev/null
echo "rollback done (reboot to take effect)"
echo "EXIT=0"
