#!/usr/bin/env bash
# t9_02r2_backup_transaction_test.sh -- T9-02R2 host regression tests:
# the rollback material is a transaction and a repeat deploy never destroys it.
#
#   bash tests/t9_02r2_backup_transaction_test.sh
#
# Runs the REAL scripts (android/boot/deploy_boot_rc.sh, rollback_boot_rc.sh) against a fake
# /system/etc/init with `mount`, `chown`, `sync`, `setprop`, `getprop` stubbed. No device is
# touched.
#
# Covered (the T9-02R2 review findings):
#   1  first deploy captures the original and publishes a complete manifest
#   2  repeat deploy (OLD_LIST empty) leaves the manifest and the backup bytes untouched
#   3  repeat deploy -> rollback restores the ORIGINAL file, hash identical to the capture
#   4  a tprinted backup stops the deploy AND the rollback, directory untouched
#   5  an empty manifest (what the pre-T9-02R2 script produced) can neither be deployed over
#      nor rolled back from
#   6  no original entry and no earlier capture: deploy succeeds and writes NO manifest
#   7  the captured original is never overwritten by a later modified live file (conflict)
#   8  TG_FORCE_REBAK=1 archives the old set and captures the new live content
#   9  TG_FORCE_REBAK=1 also repairs a damaged set, after which rollback works again
#  10  a malformed manifest line makes the rollback refuse instead of half-restoring
#  11  an abort during deploy leaves the existing rollback set byte-identical
#  12  three deploys in a row still roll back to the first capture
set -u

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/.." && pwd)
DEPLOY="$ROOT/android/boot/deploy_boot_rc.sh"
ROLLBACK="$ROOT/android/boot/rollback_boot_rc.sh"

WORK=$(mktemp -d)
STUB="$WORK/stub"
mkdir -p "$STUB"
PASS=0
FAIL=0

ck() { if [ "$1" = "$2" ]; then PASS=$((PASS + 1)); else FAIL=$((FAIL + 1)); printf 'FAIL: %s (want [%s] got [%s])\n' "$3" "$2" "$1"; fi; }
ckc() { case "$1" in *"$2"*) PASS=$((PASS + 1)) ;; *) FAIL=$((FAIL + 1)); printf 'FAIL: %s (missing [%s] in output)\n' "$3" "$2" ;; esac; }
ckn() { case "$1" in *"$2"*) FAIL=$((FAIL + 1)); printf 'FAIL: %s (must not contain [%s])\n' "$3" "$2" ;; *) PASS=$((PASS + 1)) ;; esac; }

# ---------------------------------------------------------------- stubs
cat > "$STUB/mount" <<'EOS'
#!/bin/sh
echo "mount $*" >> "$MOUNT_LOG"
state=${MOUNT_STATE_FILE:-/tmp/mount_state}
if [ "$#" -eq 0 ]; then
    s=$(cat "$state" 2>/dev/null || echo ro)
    echo "/dev/block/fake on /system type ext4 ($s,seclabel,relatime)"
    exit 0
fi
case "$*" in
    *remount,rw*) echo rw > "$state"; exit 0 ;;
    *remount,ro*) echo ro > "$state"; exit 0 ;;
esac
exit 0
EOS
cat > "$STUB/chown" <<'EOS'
#!/bin/sh
echo "chown $*" >> "$MOUNT_LOG"
exit 0
EOS
cat > "$STUB/sync" <<'EOS'
#!/bin/sh
exit 0
EOS
cat > "$STUB/setprop" <<'EOS'
#!/bin/sh
echo "setprop $*" >> "$MOUNT_LOG"
exit 0
EOS
cat > "$STUB/getprop" <<'EOS'
#!/bin/sh
if [ "${1:-}" = "init.svc.tg_supervisor" ]; then echo "${INIT_SVC:-}"; fi
exit 0
EOS
chmod +x "$STUB"/*

export PATH="$STUB:$PATH"
export MOUNT_LOG="$WORK/mount.log"
export MOUNT_STATE_FILE="$WORK/mount_state"

ORIG='service tg_supervisor /data/local/tmp/t6/tg_supervisor --pidfile x --log y'

new_case() {
    CASE="$WORK/case_$1"
    rm -rf "$CASE"
    mkdir -p "$CASE/init"
    printf '%s\n' "$ORIG" > "$CASE/init/tg_supervisor.rc"
    printf '# tg_stack.rc test content\n' > "$CASE/tg_stack.rc"
    printf '#!/system/bin/sh\necho boot\n' > "$CASE/boot_stack.sh"
    echo ro > "$MOUNT_STATE_FILE"
    : > "$MOUNT_LOG"
    export TG_INIT_DIR="$CASE/init"
    export TG_RC_SRC="$CASE/tg_stack.rc"
    export TG_BOOT_SRC="$CASE/boot_stack.sh"
    export TG_BOOT_DST="$CASE/boot_stack.installed"
    export TG_BAK="$CASE/bak"
    export TG_MOUNT_SYS=/system
    unset TG_FORCE_REBAK 2>/dev/null || true
    unset INIT_SVC 2>/dev/null || true
}
h() { sha256sum "$1" 2>/dev/null | cut -d' ' -f1; }
manifest() { echo "$CASE/bak/sha256.before"; }

# ================================================================ 1 first deploy
new_case 1
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "1 first deploy exit code"
ck "$(cat "$(manifest)")" "$ORIG_H  tg_supervisor.rc" "1 manifest holds the captured original"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$ORIG_H" "1 backup file content matches the original"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_stack.rc " "1 only the new entry is left in init dir"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "1 /system left read-only"
M1=$(h "$(manifest)"); B1=$(h "$CASE/bak/tg_supervisor.rc")

# ================================================================ 2 repeat deploy keeps the set
new_case 2
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1)
M_before=$(h "$(manifest)"); B_before=$(h "$CASE/bak/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "2 repeat deploy exit code"
ck "$(h "$(manifest)")" "$M_before" "2 repeat deploy leaves the manifest bytes identical"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$B_before" "2 repeat deploy leaves the backup bytes identical"
ck "$(cat "$(manifest)")" "$ORIG_H  tg_supervisor.rc" "2 manifest still describes the original"
ckc "$out" "nothing new to capture" "2 repeat deploy reports that nothing was captured"
ckn "$out" "staged" "2 repeat deploy must not stage a new capture"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "2 /system left read-only"

# ================================================================ 3 repeat deploy -> rollback
new_case 3
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
sh "$DEPLOY" >/dev/null 2>&1
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "3 rollback after a repeat deploy succeeds"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_supervisor.rc " "3 original entry is back and ours is gone"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG_H" "3 restored file is byte-identical to the first original"
ck "$(cat "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG" "3 restored content matches the pre-deploy text"
ckc "$out" "rollback set verified: 1 entries" "3 rollback reports the verified set"

# ================================================================ 4 tampered backup blocks both
new_case 4
sh "$DEPLOY" >/dev/null 2>&1
printf 'tampered\n' >> "$CASE/bak/tg_supervisor.rc"
M_before=$(h "$(manifest)"); B_before=$(h "$CASE/bak/tg_supervisor.rc")
snapshot=$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "4 deploy refuses a damaged rollback set"
ck "$(h "$(manifest)")" "$M_before" "4 deploy did not rewrite the manifest"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$B_before" "4 deploy did not touch the backup file"
ck "$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')" "$snapshot" "4 deploy left the init dir untouched"
ckc "$out" "does not verify" "4 deploy explains the damaged set"
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "1" "4 rollback refuses the damaged backup"
ckc "$out" "is corrupted" "4 rollback names the corruption"

# ================================================================ 5 empty manifest (old bug)
new_case 5
mkdir -p "$CASE/bak"
: > "$(manifest)"
printf '# old\n' > "$CASE/bak/tg_supervisor.rc"
M_before=$(h "$(manifest)")
snapshot=$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "5 deploy refuses to work next to an empty manifest"
ck "$(h "$(manifest)")" "$M_before" "5 the empty manifest was not replaced"
ck "$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')" "$snapshot" "5 init dir untouched"
ckc "$out" "does not verify" "5 deploy explains the damaged set"
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "1" "5 rollback refuses an empty manifest"
ckc "$out" "empty" "5 rollback says the manifest is empty"

# ================================================================ 6 no old file, no capture
new_case 6
rm -f "$TG_INIT_DIR/tg_supervisor.rc"
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "6 deploy without any old entry succeeds"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_stack.rc " "6 the new entry is installed"
ck "$([ -f "$(manifest)" ] && echo yes || echo no)" "no" "6 no empty manifest is created"
ckc "$out" "no original boot entry was ever captured" "6 deploy says there is nothing to roll back to"
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "1" "6 rollback refuses when there is no capture"
ckc "$out" "nothing to roll back to" "6 rollback explains the missing capture"

# ================================================================ 7 conflict with the original
new_case 7
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
printf 'service tg_supervisor /data/local/tmp/t6/edited --pidfile x --log y\n' > "$TG_INIT_DIR/tg_supervisor.rc"
EDITED_H=$(h "$TG_INIT_DIR/tg_supervisor.rc")
M_before=$(h "$(manifest)"); B_before=$(h "$CASE/bak/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "7 deploy refuses a live file that differs from the capture"
ck "$(h "$(manifest)")" "$M_before" "7 the captured manifest is not rewritten"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$B_before" "7 the captured original is not overwritten"
ck "$(cat "$(manifest)")" "$ORIG_H  tg_supervisor.rc" "7 manifest still holds the first capture"
ckc "$out" "differs from the captured original" "7 deploy explains the conflict"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$EDITED_H" "7 the live file was left alone"

# ================================================================ 8 forced re-capture
new_case 8
sh "$DEPLOY" >/dev/null 2>&1
printf 'service tg_supervisor /data/local/tmp/t6/edited --pidfile x --log y\n' > "$TG_INIT_DIR/tg_supervisor.rc"
EDITED_H=$(h "$TG_INIT_DIR/tg_supervisor.rc")
export TG_FORCE_REBAK=1
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "8 forced re-capture succeeds"
ck "$(cat "$(manifest)")" "$EDITED_H  tg_supervisor.rc" "8 manifest now holds the new capture"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$EDITED_H" "8 backup file holds the new capture"
unset TG_FORCE_REBAK
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "8 rollback works on the new set"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$EDITED_H" "8 rollback restored the newly captured content"

# ================================================================ 9 forced repair of a damaged set
new_case 9
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
printf 'tampered\n' >> "$CASE/bak/tg_supervisor.rc"
printf 'service tg_supervisor /data/local/tmp/t6/second --pidfile x --log y\n' > "$TG_INIT_DIR/tg_supervisor.rc"
SECOND_H=$(h "$TG_INIT_DIR/tg_supervisor.rc")
export TG_FORCE_REBAK=1
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "9 forced repair succeeds"
ck "$(ls "$CASE/bak" | grep -c 'sha256.before.broken' | tr -d ' ')" "1" "9 the damaged manifest was archived"
ck "$(cat "$(manifest)")" "$SECOND_H  tg_supervisor.rc" "9 a fresh capture replaced the damaged one"
unset TG_FORCE_REBAK
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "9 rollback works again after the repair"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$SECOND_H" "9 rollback restored the second capture"
ckn "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG_H" "9 rollback must not restore the archived original"

# ================================================================ 10 malformed manifest
new_case 10
sh "$DEPLOY" >/dev/null 2>&1
printf 'deadbeef  tg_supervisor.rc\n' >> "$(manifest)"
M_before=$(h "$(manifest)")
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "1" "10 rollback refuses a malformed line"
ckc "$out" "malformed" "10 rollback names the malformed entry"
ck "$(h "$(manifest)")" "$M_before" "10 the manifest was not modified"

# ================================================================ 11 abort leaves the set intact
new_case 11
sh "$DEPLOY" >/dev/null 2>&1
M_before=$(h "$(manifest)"); B_before=$(h "$CASE/bak/tg_supervisor.rc")
printf '# foreign\n' > "$TG_INIT_DIR/tg_other.rc"
cp "$CASE/bak/tg_supervisor.rc" "$TG_INIT_DIR/tg_supervisor.rc"
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "11 deploy aborts on an unexpected boot entry"
ckc "$out" "unknown tg_* boot entry" "11 abort names the unexpected entry"
ck "$(h "$(manifest)")" "$M_before" "11 the manifest survived the abort"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$B_before" "11 the backup survived the abort"
ck "$(ls "$CASE/bak" | grep -c 'staging' | tr -d ' ')" "0" "11 no staging directory is left behind"

# ================================================================ 12 three deploys, one rollback
new_case 12
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
M1=$(h "$(manifest)")
sh "$DEPLOY" >/dev/null 2>&1
sh "$DEPLOY" >/dev/null 2>&1
ck "$(h "$(manifest)")" "$M1" "12 three deploys keep one manifest"
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "12 rollback after three deploys succeeds"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG_H" "12 the very first capture is what comes back"
ck "$(cat "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG" "12 restored content matches the first original"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "12 /system left read-only"

# ================================================================ 13 repair a lost manifest
new_case 13
REPAIR="$ROOT/android/boot/repair_rc_manifest.sh"
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
: > "$(manifest)"                                  # reproduce the pre-T9-02R2 truncation
printf '# junk\n' >> "$CASE/bak/other.rc" 2>/dev/null || true
M_before=$(h "$(manifest)")
out=$(sh "$REPAIR" "$ORIG_H" 2>&1); rc=$?
ck "$rc" "0" "13 repair with the expected hash succeeds"
ck "$(cat "$(manifest)")" "$ORIG_H  tg_supervisor.rc" "13 the manifest is rebuilt from the verified backup"
ck "$(ls "$CASE/bak" | grep -c 'damaged' | tr -d ' ')" "1" "13 the truncated manifest was archived"
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "13 rollback works again after the repair"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$ORIG_H" "13 the original entry came back byte-identical"

# ================================================================ 14 repair refuses a wrong hash
new_case 14
REPAIR="$ROOT/android/boot/repair_rc_manifest.sh"
ORIG_H=$(h "$CASE/init/tg_supervisor.rc")
sh "$DEPLOY" >/dev/null 2>&1
: > "$(manifest)"
out=$(sh "$REPAIR" "0000000000000000000000000000000000000000000000000000000000000000" 2>&1); rc=$?
ck "$rc" "1" "14 repair refuses a hash that matches nothing"
ck "$([ -s "$(manifest)" ] && echo nonempty || echo empty)" "empty" "14 no manifest was written"
ckc "$out" "no backup file matched" "14 repair explains the refusal"
out=$(sh "$REPAIR" 2>&1); rc=$?
ck "$rc" "1" "14 repair refuses to run without an expected hash"
ckc "$out" "usage:" "14 repair prints the usage"
ck "$(h "$CASE/bak/tg_supervisor.rc")" "$ORIG_H" "14 the backup file is untouched"

# ================================================================ 15 repair leaves a good set alone
new_case 15
REPAIR="$ROOT/android/boot/repair_rc_manifest.sh"
sh "$DEPLOY" >/dev/null 2>&1
M_before=$(h "$(manifest)")
out=$(sh "$REPAIR" "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff" 2>&1); rc=$?
ck "$rc" "0" "15 repair exits 0 on an already valid set"
ckc "$out" "existing manifest verifies" "15 repair says there is nothing to do"
ck "$(h "$(manifest)")" "$M_before" "15 the valid manifest was not rewritten"

# ---------------------------------------------------------------- summary
printf '\nT9-02R2 backup transaction tests: %d passed, %d failed\n' "$PASS" "$FAIL"
rm -rf "$WORK"
[ "$FAIL" -eq 0 ] && exit 0 || exit 1
