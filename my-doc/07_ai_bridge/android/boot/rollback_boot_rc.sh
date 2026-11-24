#!/system/bin/sh
# rollback_boot_rc.sh -- T9-02R: restore the boot entries saved by deploy_boot_rc.sh
#
#   su -c "sh /data/local/tmp/t9/rollback_boot_rc.sh"
#
# Safety rules:
#   1. The backup must exist AND its SHA256 must match $BAK/sha256.before; otherwise the
#      script refuses and leaves /system/etc/init untouched (no blind overwrite).
#   2. Only tg_stack.rc (our own file) is removed; only the backed-up allow-listed entries
#      are restored.
#   3. /system is returned to read-only on every exit path.
set -u

DIR=${TG_INIT_DIR:-/system/etc/init}
BAK=${TG_BAK:-/data/local/tmp/t9/rc_backup}
MOUNT=${TG_MOUNT_SYS:-/system}
NEW_RC=tg_stack.rc

HASH=sha256sum
hashof() { $HASH "$1" 2>/dev/null | cut -d' ' -f1; }
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-02R rollback =="
[ -f "$BAK/sha256.before" ] || fail "no $BAK/sha256.before - nothing to roll back to"

# ---------------------------------------------------------------- verify every backup first
VERIFIED=""
while read -r want name; do
    [ -n "${name:-}" ] || continue
    if [ ! -f "$BAK/$name" ]; then
        fail "backup file $BAK/$name is missing - refusing to touch $DIR"
    fi
    got=$(hashof "$BAK/$name")
    if [ -z "$got" ] || [ "$got" != "$want" ]; then
        fail "backup $name is corrupted ($got != $want) - refusing to touch $DIR"
    fi
    VERIFIED="$VERIFIED $name"
    say "   verified $name ($got)"
done < "$BAK/sha256.before"
[ -n "$VERIFIED" ] || fail "no verified entries in $BAK/sha256.before - refusing to touch $DIR"

# ---------------------------------------------------------------- roll back
mount -o remount,rw "$MOUNT" || fail "remount rw $MOUNT failed"
restore_ro() { sync 2>/dev/null; mount -o remount,ro "$MOUNT" 2>/dev/null || say "WARNING: remount ro failed"; }
trap 'say "interrupted"; restore_ro; say "EXIT=130"; exit 130' INT TERM

rm -f "$DIR/$NEW_RC" || { restore_ro; fail "cannot remove $DIR/$NEW_RC"; }
say "   removed $DIR/$NEW_RC"

for name in $VERIFIED; do
    cp -f "$BAK/$name" "$DIR/$name" || { restore_ro; fail "cannot restore $DIR/$name"; }
    chown 0:0 "$DIR/$name" 2>/dev/null || true
    chmod 0644 "$DIR/$name" || { restore_ro; fail "cannot chmod $DIR/$name"; }
    got=$(hashof "$DIR/$name")
    want=$(grep "  $name\$" "$BAK/sha256.before" | head -n 1 | cut -d' ' -f1)
    [ "$got" = "$want" ] || { restore_ro; fail "restored $name hash mismatch ($got != $want)"; }
    say "   restored $DIR/$name ($got)"
done

restore_ro
trap - INT TERM

say "== read back =="
ls -l "$DIR"/tg_* 2>/dev/null || say "   (no tg_* entries)"
mount 2>/dev/null | grep -F " $MOUNT " || true
say "rollback done - reboot to take effect"
say "EXIT=0"
exit 0
