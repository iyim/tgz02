#!/system/bin/sh
# repair_rc_manifest.sh -- T9-02R2: rebuild a lost $BAK/sha256.before from an existing,
# independently identified backup file.
#
#   su -c "sh /data/local/tmp/t9/repair_rc_manifest.sh <expected_sha256> [expected_sha256...]"
#
# Why this exists: the pre-T9-02R2 deploy script truncated sha256.before on every repeat
# deploy, so a device can end up with the original tg_supervisor.rc still backed up but its
# manifest empty -- rollback then refuses (correctly) and the only way back was a manual edit.
#
# Safety rules:
#   1. At least one expected SHA256 must be supplied. The script never trusts whatever file
#      happens to be in the backup directory.
#   2. A backup file is only recorded when its hash EQUALS one of the expected hashes.
#   3. An existing valid manifest is never rewritten; only an absent/empty/damaged one is
#      replaced, and the damaged file is archived first.
#   4. The rebuilt manifest is verified before the script reports success.
set -u

BAK=${TG_BAK:-/data/local/tmp/t9/rc_backup}
MANIFEST="$BAK/sha256.before"
HASH=sha256sum
STAMP=$(date '+%Y%m%d_%H%M%S')

hashof() { $HASH "$1" 2>/dev/null | cut -d' ' -f1; }
say() { echo "$*"; }
fail() { echo "ERROR: $*"; echo "EXIT=1"; exit 1; }

say "== T9-02R2 repair rollback manifest $STAMP =="
[ "$#" -ge 1 ] || fail "usage: repair_rc_manifest.sh <expected_sha256> [expected_sha256...]"
[ -d "$BAK" ] || fail "no backup dir $BAK"

# is the current set usable? (same rule as the deploy/rollback scripts)
set_is_valid() {
    [ -f "$MANIFEST" ] || return 1
    n=0
    while read -r want name; do
        [ -n "${name:-}" ] || continue
        case "$want" in *[!0-9a-f]*) return 2 ;; esac
        [ ${#want} -eq 64 ] || return 2
        [ -f "$BAK/$name" ] || return 2
        [ "$(hashof "$BAK/$name")" = "$want" ] || return 2
        n=$((n + 1))
    done < "$MANIFEST"
    [ "$n" -gt 0 ] || return 2
    return 0
}

set_is_valid
case "$?" in
    0) say "   existing manifest verifies - nothing to repair"; say "EXIT=0"; exit 0 ;;
    1) say "   manifest is absent" ;;
    *) say "   manifest is damaged - it will be archived, not edited" ;;
esac

# rebuild from the backup files whose hash the caller vouches for
TMP="$BAK/sha256.before.repair"
: > "$TMP" || fail "cannot write $TMP"
COUNT=0
for f in "$BAK"/tg_*.rc; do
    [ -f "$f" ] || continue
    b=$(basename "$f")
    got=$(hashof "$f")
    ok=0
    for want in "$@"; do
        [ "$got" = "$want" ] && ok=1
    done
    if [ "$ok" -ne 1 ]; then
        say "   skip $b ($got): not one of the expected hashes"
        continue
    fi
    printf '%s  %s\n' "$got" "$b" >> "$TMP" || fail "cannot record $b"
    COUNT=$((COUNT + 1))
    say "   accept $b ($got)"
done
[ "$COUNT" -gt 0 ] || { rm -f "$TMP"; fail "no backup file matched the expected hashes - refusing to write a manifest"; }

if [ -f "$MANIFEST" ]; then
    mv -f "$MANIFEST" "$MANIFEST.damaged.$STAMP" || { rm -f "$TMP"; fail "cannot archive $MANIFEST"; }
    say "   archived the damaged manifest to $MANIFEST.damaged.$STAMP"
fi
sync 2>/dev/null
mv -f "$TMP" "$MANIFEST" || fail "cannot publish $MANIFEST"
sync 2>/dev/null
if ! set_is_valid; then fail "rebuilt manifest does not verify"; fi
say "   rebuilt $MANIFEST: $COUNT entries"
cat "$MANIFEST"
say "EXIT=0"
exit 0
