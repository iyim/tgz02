#!/system/bin/sh
# deploy_boot_rc.sh -- T8-15.6: replace the T6 boot entry with tg_stack.rc (+ boot_stack.sh)
#
#   su -c "sh /data/local/tmp/t9/deploy_boot_rc.sh"
#
# What it does, and why:
#   * backs up the current /system/etc/init/tg_supervisor.rc to /data/local/tmp/t9/rc_backup/
#   * REMOVES every tg_* entry from /system/etc/init - this device's init parses every
#     regular file in that directory regardless of suffix, so renaming is not enough;
#   * installs tg_stack.rc (two supervisors + one oneshot bring-up script) and
#     /data/local/tmp/t5_bridge/boot_stack.sh
#   * remounts /system read-only again and verifies by reading back
set -u
DIR=/system/etc/init
SRC=/data/local/tmp/t9/tg_stack.rc
BOOT=/data/local/tmp/t9/boot_stack.sh
BAK=/data/local/tmp/t9/rc_backup

mkdir -p "$BAK"
echo "== backup current boot entry =="
for f in "$DIR"/tg_*; do
    [ -e "$f" ] || continue
    cp -f "$f" "$BAK/$(basename "$f")" 2>/dev/null && echo "backed up $f -> $BAK/$(basename "$f")"
    sha256sum "$f" >> "$BAK/sha256.before"
done
echo "== install boot_stack.sh =="
cp -f "$BOOT" /data/local/tmp/t5_bridge/boot_stack.sh || { echo "ERROR: copy boot_stack failed"; exit 4; }
chmod 0755 /data/local/tmp/t5_bridge/boot_stack.sh
ls -l /data/local/tmp/t5_bridge/boot_stack.sh
sh -n /data/local/tmp/t5_bridge/boot_stack.sh && echo "boot_stack.sh syntax OK"

echo "== remount /system rw =="
mount -o remount,rw /system || { echo "ERROR: remount rw failed"; exit 5; }

echo "== remove old tg_* entries from $DIR =="
for f in "$DIR"/tg_*; do
    [ -e "$f" ] || continue
    rm -f "$f" && echo "removed $f"
done

echo "== install tg_stack.rc =="
cp -f "$SRC" "$DIR/tg_stack.rc" || { mount -o remount,ro /system; echo "ERROR: copy failed"; exit 6; }
chown 0:0 "$DIR/tg_stack.rc"; chmod 0644 "$DIR/tg_stack.rc"
sync
mount -o remount,ro /system || echo "WARNING: remount ro failed"

echo "== read back =="
ls -l "$DIR"/tg_* 2>/dev/null
sha256sum "$DIR/tg_stack.rc" 2>/dev/null
mount | grep -F " /system "
echo "== stop the old init-managed service for this boot =="
if [ -n "$(getprop init.svc.tg_supervisor)" ]; then
    setprop ctl.stop tg_supervisor
    echo "init.svc.tg_supervisor=$(getprop init.svc.tg_supervisor)"
fi
echo "EXIT=0"
