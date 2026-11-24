#!/system/bin/sh
# rollback_boot_rc.sh -- T9-02R2: restore the boot entries saved by deploy_boot_rc.sh
#
#   su -c "sh /data/local/tmp/t9/rollback_boot_rc.sh"
#
# Safety rules:
#   1. The manifest must exist, be well-formed and contain at least one entry, and every
#      backup file must be present AND match its recorded SHA256; otherwise the script
#      refuses and leaves /system/etc/init untouched (no blind overwrite, no empty bypass).
#   2. Only tg_stack.rc (our own file) is removed; only the verified backups are restored,
#      and each restored file is re-hashed after the copy.
#   3. /system is returned to read-only on every exit path.
#   4. T9-02R2: manifest entries are matched by exact name (never by regex), and any line
#      that is not "<64 hex>  <safe name>" makes the whole set invalid.
set -u

DIR=${TG_INIT_DIR:-/system/etc/init}
BAK=${TG_BAK:-/data/local/tmp/t9/rc_backup}
MOUNT=${TG_MOUNT_SYS:-/system}
NEW_RC=tg_stack.rc
MANIFEST="$BAK/sha256.before"

HASH=sha256sum
hashof() { $HASH "$1" 2>/dev/null | cut -d' ' -f1; }
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-02R2 rollback =="
[ -f "$MANIFEST" ] || fail "no $MANIFEST - nothing to roll back to"
[ -s "$MANIFEST" ] || fail "$MANIFEST is empty - refusing to touch $DIR"

# ---------------------------------------------------------------- verify every backup first
VERIFIED=""
COUNT=0
while read -r want name; do
    if [ -z "${name:-}" ]; then
        [ -z "${want:-}" ] && continue
        fail "malformed line in $MANIFEST ('$want') - refusing to touch $DIR"
    fi
    case "$name" in
        */*|.|..) fail "unsafe entry name '$name' in $MANIFEST - refusing to touch $DIR" ;;
    esac
    case "$want" in
        *[!0-9a-f]*) fail "malformed hash for $name in $MANIFEST - refusing to touch $DIR" ;;
    esac
    if [ ${#want} -ne 64 ]; then
        fail "malformed hash for $name in $MANIFEST - refusing to touch $DIR"
    fi
    if [ ! -f "$BAK/$name" ]; then
        fail "backup file $BAK/$name is missing - refusing to touch $DIR"
    fi
    got=$(hashof "$BAK/$name")
    if [ -z "$got" ] || [ "$got" != "$want" ]; then
        fail "backup $name is corrupted ($got != $want) - refusing to touch $DIR"
    fi
    VERIFIED="$VERIFIED $name"
    COUNT=$((COUNT + 1))
    say "   verified $name ($got)"
done < "$MANIFEST"
[ "$COUNT" -gt 0 ] || fail "no verified entries in $MANIFEST - refusing to touch $DIR"
say "   rollback set verified: $COUNT entries"

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
    want=""
    while read -r w n; do
        [ -n "${n:-}" ] || continue
        if [ "$n" = "$name" ]; then want="$w"; break; fi
    done < "$MANIFEST"
    [ "$got" = "$want" ] || { restore_ro; fail "restored $name hash mismatch ($got != $want)"; }
    say "   restored $DIR/$name ($got)"
done

restore_ro
trap - INT TERM

if [ -d "$BAK" ]; then
    printf '%s rollback restored=%s\n' "$(date '+%Y%m%d_%H%M%S')" "${VERIFIED:- none}" \
        >> "$BAK/rollback.log" 2>/dev/null || true
fi

say "== read back =="
ls -l "$DIR"/tg_* 2>/dev/null || say "   (no tg_* entries)"
mount 2>/dev/null | grep -F " $MOUNT " || true
say "rollback done - reboot to take effect"
say "EXIT=0"
exit 0
