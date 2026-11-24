#!/system/bin/sh
# deploy_boot_rc.sh -- T9-02R: replace the obsolete T6 boot entry with tg_stack.rc
#
#   su -c "sh /data/local/tmp/t9/deploy_boot_rc.sh"
#
# Safety rules (T9-02R review findings):
#   1. A failed backup aborts BEFORE anything is deleted (T8-15.6 could continue and delete).
#   2. Every backup is verified: backup hash must equal the live file's hash.
#   3. Nothing is deleted unless it is on the explicit allowlist below. Any other tg_* entry
#      in the init directory aborts the run instead of being swept away.
#   4. The install is verified by hash; on mismatch the previous entries are restored.
#   5. /system is put back to read-only on every exit path, including failures and signals.
#   6. Re-running the script is idempotent (an already installed tg_stack.rc is replaced).
#
# This device's init parses every regular file in /system/etc/init regardless of suffix, so
# the old entry has to be removed rather than renamed.
set -u

DIR=${TG_INIT_DIR:-/system/etc/init}
SRC=${TG_RC_SRC:-/data/local/tmp/t9/tg_stack.rc}
BOOT_SRC=${TG_BOOT_SRC:-/data/local/tmp/t9/boot_stack.sh}
BOOT_DST=${TG_BOOT_DST:-/data/local/tmp/t5_bridge/boot_stack.sh}
BAK=${TG_BAK:-/data/local/tmp/t9/rc_backup}
MOUNT=${TG_MOUNT_SYS:-/system}
NEW_RC=tg_stack.rc
# Explicit allowlist: the only boot entries this script is allowed to replace/remove.
ALLOW_REPLACE="tg_supervisor.rc"

HASH=sha256sum
STAMP=$(date '+%Y%m%d_%H%M%S')

hashof() { $HASH "$1" 2>/dev/null | cut -d' ' -f1; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }
say() { echo "$*"; }

say "== T9-02R deploy start $STAMP =="
say "   init dir : $DIR"
say "   new rc   : $SRC"
say "   backup   : $BAK"

# ---------------------------------------------------------------- preflight
[ -f "$SRC" ] || fail "missing $SRC"
[ -f "$BOOT_SRC" ] || fail "missing $BOOT_SRC"
SRC_HASH=$(hashof "$SRC")
[ -n "$SRC_HASH" ] || fail "cannot hash $SRC"
say "   new rc sha256: $SRC_HASH"

OLD_LIST=""
for f in "$DIR"/tg_*; do
    [ -e "$f" ] || continue
    b=$(basename "$f")
    [ "$b" = "$NEW_RC" ] && continue
    allowed=0
    for a in $ALLOW_REPLACE; do
        [ "$b" = "$a" ] && allowed=1
    done
    if [ "$allowed" -ne 1 ]; then
        say "UNEXPECTED entry: $f"
        fail "unknown tg_* boot entry '$b' in $DIR - refusing to modify this directory"
    fi
    OLD_LIST="$OLD_LIST $b"
done
say "   entries to replace:${OLD_LIST:- (none)}"

# ---------------------------------------------------------------- backup (must succeed)
mkdir -p "$BAK" || fail "cannot create backup dir $BAK - nothing was removed"
: > "$BAK/sha256.before" || fail "cannot write $BAK/sha256.before - nothing was removed"
for b in $OLD_LIST; do
    cp -f "$DIR/$b" "$BAK/$b" || fail "backup copy failed: $b - nothing was removed"
    h_live=$(hashof "$DIR/$b")
    h_bak=$(hashof "$BAK/$b")
    [ -n "$h_live" ] || fail "cannot hash live $DIR/$b - nothing was removed"
    [ "$h_live" = "$h_bak" ] || fail "backup verify failed for $b ($h_live != $h_bak) - nothing was removed"
    printf '%s  %s\n' "$h_live" "$b" >> "$BAK/sha256.before" || fail "cannot record hash for $b"
    say "   backed up $b ($h_live)"
done
printf 'deployed_at=%s\nnew_rc_sha256=%s\nreplaced=%s\n' "$STAMP" "$SRC_HASH" "${OLD_LIST:- none}" \
    > "$BAK/deploy.stamp" || fail "cannot write $BAK/deploy.stamp"

# ---------------------------------------------------------------- boot_stack.sh (outside /system)
cp -f "$BOOT_SRC" "$BOOT_DST" || fail "copy $BOOT_DST failed"
chmod 0755 "$BOOT_DST" || fail "chmod $BOOT_DST failed"
sh -n "$BOOT_DST" || fail "syntax error in $BOOT_DST"
say "   installed $BOOT_DST ($(hashof "$BOOT_DST"))"

# ---------------------------------------------------------------- remount rw
mount -o remount,rw "$MOUNT" || fail "remount rw $MOUNT failed"
RW_ACTIVE=1

restore_previous() {
    # put the allow-listed entries back and drop our own rc; never touch anything else
    for b in $OLD_LIST; do
        cp -f "$BAK/$b" "$DIR/$b" 2>/dev/null && say "   restored $DIR/$b"
    done
    rm -f "$DIR/$NEW_RC" 2>/dev/null
    sync 2>/dev/null
    mount -o remount,ro "$MOUNT" 2>/dev/null || say "WARNING: remount ro $MOUNT failed during restore"
    RW_ACTIVE=0
}
on_fail() {
    say "ERROR: $*"
    say "   restoring the previous boot entries"
    restore_previous
    say "EXIT=1"
    exit 1
}
trap 'say "interrupted - restoring"; restore_previous; say "EXIT=130"; exit 130' INT TERM

# ---------------------------------------------------------------- swap the entries
for b in $OLD_LIST; do
    rm -f "$DIR/$b" || on_fail "cannot remove $DIR/$b"
    say "   removed $DIR/$b"
done

cp -f "$SRC" "$DIR/$NEW_RC" || on_fail "copy $NEW_RC failed"
chown 0:0 "$DIR/$NEW_RC" 2>/dev/null || say "   note: chown 0:0 skipped"
chmod 0644 "$DIR/$NEW_RC" || on_fail "chmod $NEW_RC failed"
INSTALLED_HASH=$(hashof "$DIR/$NEW_RC")
[ "$INSTALLED_HASH" = "$SRC_HASH" ] || \
    on_fail "installed $NEW_RC hash mismatch ($INSTALLED_HASH != $SRC_HASH)"
say "   installed $DIR/$NEW_RC ($INSTALLED_HASH)"

# ---------------------------------------------------------------- back to read-only
sync
mount -o remount,ro "$MOUNT" || say "WARNING: remount ro $MOUNT returned non-zero"
if mount 2>/dev/null | grep -F " $MOUNT " | grep -q "(ro,"; then
    say "   $MOUNT is read-only"
else
    say "WARNING: $MOUNT does not look read-only - retrying once"
    mount -o remount,ro "$MOUNT" 2>/dev/null || true
    if mount 2>/dev/null | grep -F " $MOUNT " | grep -q "(ro,"; then
        say "   $MOUNT is read-only after retry"
    else
        say "ERROR: $MOUNT is still writable - inspect manually before rebooting"
        say "EXIT=2"
        exit 2
    fi
fi
RW_ACTIVE=0
trap - INT TERM

# ---------------------------------------------------------------- read back
say "== read back =="
ls -l "$DIR"/tg_* 2>/dev/null || say "   (no tg_* entries - unexpected)"
hashof "$DIR/$NEW_RC" 2>/dev/null | while read -r h; do say "   $NEW_RC sha256=$h"; done
mount 2>/dev/null | grep -F " $MOUNT " || true

# ---------------------------------------------------------------- stop the old init service
if [ -n "$OLD_LIST" ] && command -v getprop >/dev/null 2>&1; then
    old_state=$(getprop init.svc.tg_supervisor 2>/dev/null || true)
    if [ -n "$old_state" ]; then
        setprop ctl.stop tg_supervisor 2>/dev/null || true
        say "   init.svc.tg_supervisor=$(getprop init.svc.tg_supervisor 2>/dev/null || echo unknown)"
    fi
fi

say "== deploy done =="
say "EXIT=0"
exit 0
