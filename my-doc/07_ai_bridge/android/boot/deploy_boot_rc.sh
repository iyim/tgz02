#!/system/bin/sh
# deploy_boot_rc.sh -- T9-02R2: replace the obsolete T6 boot entry with tg_stack.rc
#
#   su -c "sh /data/local/tmp/t9/deploy_boot_rc.sh"
#
# Safety rules (T9-02R findings, kept):
#   1. A failed backup aborts BEFORE anything is deleted (T8-15.6 could continue and delete).
#   2. Every backup is verified: backup hash must equal the live file's hash.
#   3. Nothing is deleted unless it is on the explicit allowlist below. Any other tg_* entry
#      in the init directory aborts the run instead of being swept away.
#   4. The install is verified by hash; on mismatch the previous entries are restored.
#   5. /system is put back to read-only on every exit path, including failures and signals.
#   6. Re-running the script is idempotent (an already installed tg_stack.rc is replaced).
#
# T9-02R2 fix -- the rollback material is a transaction that is never truncated:
#   7. The backup manifest ($BAK/sha256.before) is built in a staging directory and only
#      published by rename once every entry in it has been captured AND verified.
#   8. An empty OLD_LIST (the normal repeat deploy: only tg_stack.rc is left to replace)
#      NEVER writes the manifest. The previously captured original is kept as is.
#   9. Existing rollback material is verified (manifest well-formed, every file present and
#      matching its hash) before it is reused. If it is damaged the run aborts and leaves it
#      untouched -- an empty or broken set can never silently replace a good one.
#  10. A live file that no longer matches the captured original (someone edited the T6 rc
#      after the first deploy) is a conflict: the run aborts instead of overwriting the
#      original record. TG_FORCE_REBAK=1 archives the old set and captures a new one.
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
MANIFEST="$BAK/sha256.before"
FORCE_REBAK=${TG_FORCE_REBAK:-0}

HASH=sha256sum
STAMP=$(date '+%Y%m%d_%H%M%S')

hashof() { $HASH "$1" 2>/dev/null | cut -d' ' -f1; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }
say() { echo "$*"; }
sizof() { wc -c < "$1" 2>/dev/null | tr -d ' '; }

# hash recorded for <name> in the current manifest ('' when absent); exact name match
manifest_hash() {
    [ -f "$MANIFEST" ] || return 0
    while read -r want name; do
        [ -n "${name:-}" ] || continue
        if [ "$name" = "$1" ]; then echo "$want"; return 0; fi
    done < "$MANIFEST"
}

# 0 = the whole existing rollback set is present and verifies
# 1 = no manifest at all
# 2 = manifest exists but is unusable (malformed, missing file, hash mismatch, empty)
verify_existing_set() {
    [ -f "$MANIFEST" ] || return 1
    __n=0
    while read -r want name; do
        [ -n "${name:-}" ] || continue
        case "$name" in
            */*|.|..) return 2 ;;
        esac
        case "$want" in
            *[!0-9a-f]*) return 2 ;;
        esac
        if [ ${#want} -ne 64 ]; then return 2; fi
        [ -f "$BAK/$name" ] || return 2
        __got=$(hashof "$BAK/$name")
        [ "$__got" = "$want" ] || return 2
        __n=$((__n + 1))
    done < "$MANIFEST"
    [ "$__n" -gt 0 ] || return 2
    return 0
}

say "== T9-02R2 deploy start $STAMP =="
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

# ------------------------------------------------------ existing rollback state
verify_existing_set
EXIST_RC=$?
case "$EXIST_RC" in
    0)
        EXIST_ENTRIES=$(grep -c . "$MANIFEST" 2>/dev/null | tr -d ' ')
        say "   existing rollback set verified: ${EXIST_ENTRIES:-0} entries in $MANIFEST"
        ;;
    1)
        say "   no rollback set yet ($MANIFEST absent)"
        ;;
    *)
        say "   DAMAGED rollback set in $BAK (manifest/backup/ hash mismatch)"
        if [ "$FORCE_REBAK" != "1" ]; then
            fail "existing rollback material does not verify - refusing to touch it or $DIR. Inspect $BAK (TG_FORCE_REBAK=1 archives it and captures a new set)"
        fi
        mv -f "$MANIFEST" "$MANIFEST.broken.$STAMP" || fail "cannot archive $MANIFEST - nothing was changed"
        say "   archived the damaged manifest to $MANIFEST.broken.$STAMP"
        ;;
esac

# ---------------------------------------------------------------- backup (must succeed)
mkdir -p "$BAK" || fail "cannot create backup dir $BAK - nothing was removed"

# The transaction only ever runs when a live entry actually has to be captured.
# Nothing is written into $BAK until every capture in the staging dir has verified.
NEED=""
REUSE=""
for b in $OLD_LIST; do
    live_h=$(hashof "$DIR/$b")
    [ -n "$live_h" ] || fail "cannot hash live $DIR/$b - nothing was removed"
    old_h=$(manifest_hash "$b")
    if [ -n "$old_h" ] && [ -f "$BAK/$b" ] && [ "$(hashof "$BAK/$b")" = "$old_h" ]; then
        if [ "$old_h" = "$live_h" ]; then
            REUSE="$REUSE $b"
            continue
        fi
        if [ "$FORCE_REBAK" != "1" ]; then
            fail "live $DIR/$b ($live_h) differs from the captured original ($old_h) - keeping the original record, nothing was changed (TG_FORCE_REBAK=1 captures a new one)"
        fi
    fi
    NEED="$NEED $b"
done
say "   reuse:${REUSE:- (none)}  capture:${NEED:- (none)}"

if [ -n "$NEED" ]; then
    STAGE="$BAK/.staging_$STAMP"
    mkdir -p "$STAGE" || fail "cannot create staging dir $STAGE - nothing was removed"
    STAGE_MANIFEST="$STAGE/sha256.before"
    : > "$STAGE_MANIFEST" || { rm -rf "$STAGE"; fail "cannot write staging manifest - nothing was removed"; }

    # carry over the still-valid previous entries that are not being recaptured
    if [ "$EXIST_RC" = "0" ]; then
        while read -r want name; do
            [ -n "${name:-}" ] || continue
            keep=1
            for b in $OLD_LIST; do [ "$b" = "$name" ] && keep=0; done
            if [ "$keep" -eq 1 ]; then
                printf '%s  %s\n' "$want" "$name" >> "$STAGE_MANIFEST" || { rm -rf "$STAGE"; fail "cannot carry over $name - nothing was removed"; }
            fi
        done < "$MANIFEST"
    fi

    for b in $NEED; do
        cp -f "$DIR/$b" "$STAGE/$b" || { rm -rf "$STAGE"; fail "backup copy failed: $b - nothing was removed"; }
        h_live=$(hashof "$DIR/$b")
        h_bak=$(hashof "$STAGE/$b")
        [ -n "$h_live" ] || { rm -rf "$STAGE"; fail "cannot hash live $DIR/$b - nothing was removed"; }
        [ "$h_live" = "$h_bak" ] || { rm -rf "$STAGE"; fail "backup verify failed for $b ($h_live != $h_bak) - nothing was removed"; }
        printf '%s  %s\n' "$h_live" "$b" >> "$STAGE_MANIFEST" || { rm -rf "$STAGE"; fail "cannot record hash for $b - nothing was removed"; }
        say "   staged $b ($h_live, $(sizof "$STAGE/$b") B)"
    done
    # reused entries keep their already verified manifest line
    for b in $REUSE; do
        printf '%s  %s\n' "$(manifest_hash "$b")" "$b" >> "$STAGE_MANIFEST" || { rm -rf "$STAGE"; fail "cannot record $b - nothing was removed"; }
    done

    # publish: files first, manifest last, each step a rename inside the same directory
    for b in $NEED; do
        mv -f "$STAGE/$b" "$BAK/$b" || { rm -rf "$STAGE"; fail "cannot publish backup $b - nothing was removed"; }
    done
    sync 2>/dev/null
    mv -f "$STAGE_MANIFEST" "$MANIFEST" || { rm -rf "$STAGE"; fail "cannot publish $MANIFEST - nothing was removed"; }
    sync 2>/dev/null
    rm -rf "$STAGE"
    say "   rollback set published: $(grep -c . "$MANIFEST") entries"
    if ! verify_existing_set; then
        fail "published rollback set does not verify - inspect $BAK before rebooting"
    fi
    say "   rollback set re-verified after publish"
else
    say "   nothing new to capture - the existing rollback set is left untouched"
    if [ "$EXIST_RC" = "1" ]; then
        say "   note: no original boot entry was ever captured (nothing to roll back to)"
    fi
fi

printf 'deployed_at=%s\nnew_rc_sha256=%s\nreplaced=%s\ncaptured=%s\nreused=%s\n' \
    "$STAMP" "$SRC_HASH" "${OLD_LIST:- none}" "${NEED:- none}" "${REUSE:- none}" \
    > "$BAK/deploy.stamp" || fail "cannot write $BAK/deploy.stamp"
printf '%s deploy rc=%s replaced=%s captured=%s reused=%s\n' \
    "$STAMP" "$SRC_HASH" "${OLD_LIST:-none}" "${NEED:-none}" "${REUSE:-none}" \
    >> "$BAK/deploy.log" 2>/dev/null || true

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
        [ -f "$BAK/$b" ] || continue
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
if [ -f "$MANIFEST" ]; then
    say "   rollback manifest $MANIFEST ($(grep -c . "$MANIFEST") entries):"
    while read -r want name; do
        [ -n "${name:-}" ] || continue
        say "     $name $want"
    done < "$MANIFEST"
else
    say "   rollback manifest: absent (no original boot entry to restore)"
fi
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
