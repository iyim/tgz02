#!/usr/bin/env bash
# t9_02r_boot_scripts_test.sh -- T9-02R host tests for the two boot scripts
#
#   bash tests/t9_02r_boot_scripts_test.sh
#
# Runs the REAL scripts (android/boot/deploy_boot_rc.sh, rollback_boot_rc.sh,
# boot_stack.sh) against a fake /system/etc/init and a fake /proc, with `mount`,
# `chown`, `sync`, `setprop`, `getprop` replaced by stubs that record their calls.
# No device is touched.
#
# Covered:
#   1  deploy happy path (old entry replaced, hash verified, /system back to ro)
#   2  backup failure aborts BEFORE anything is deleted
#   3  an unexpected tg_* entry aborts instead of being swept away
#   4  install failure restores the previous entry automatically
#   5  rollback restores the verified backup
#   6  rollback refuses a corrupted backup and leaves the directory untouched
#   7  boot_stack proceeds only when BOTH exact libraries are mapped
#   8  boot_stack aborts when only the hook is mapped
#   9  boot_stack aborts when the guard is the OLD path (t8155r) - the "count only" bug
#  10  boot_stack aborts when :core never appears
set -u

HERE=$(cd "$(dirname "$0")" && pwd)
ROOT=$(cd "$HERE/.." && pwd)
DEPLOY="$ROOT/android/boot/deploy_boot_rc.sh"
ROLLBACK="$ROOT/android/boot/rollback_boot_rc.sh"
BOOTSTACK="$ROOT/android/boot/boot_stack.sh"

WORK=$(mktemp -d)
STUB="$WORK/stub"
mkdir -p "$STUB"
PASS=0
FAIL=0

ck() { # ck actual expected name
    if [ "$1" = "$2" ]; then PASS=$((PASS + 1)); else FAIL=$((FAIL + 1)); printf 'FAIL: %s (want [%s] got [%s])\n' "$3" "$2" "$1"; fi
}
ckc() { # ckc haystack needle name
    case "$1" in *"$2"*) PASS=$((PASS + 1)) ;; *) FAIL=$((FAIL + 1)); printf 'FAIL: %s (missing [%s])\n' "$3" "$2" ;; esac
}

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
    *remount,rw*) [ "${FAIL_RW:-0}" = "1" ] && { echo "mount: rw failed" >&2; exit 1; }; echo rw > "$state"; exit 0 ;;
    *remount,ro*) [ "${FAIL_RO:-0}" = "1" ] && { echo "mount: ro failed" >&2; exit 1; }; echo ro > "$state"; exit 0 ;;
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
# emulate "no such property" for init.svc.tg_supervisor first time, then "stopped"
if [ "${1:-}" = "init.svc.tg_supervisor" ]; then echo "${INIT_SVC:-}"; fi
exit 0
EOS
chmod +x "$STUB"/*

export PATH="$STUB:$PATH"
export MOUNT_LOG="$WORK/mount.log"
export MOUNT_STATE_FILE="$WORK/mount_state"

# ---------------------------------------------------------------- fixtures
new_case() { # new_case <name> ; sets CASE dir and env
    CASE="$WORK/case_$1"
    rm -rf "$CASE"
    mkdir -p "$CASE/init" "$CASE/bak"
    printf 'service tg_supervisor /data/local/tmp/t6/tg_supervisor --pidfile x --log y\n' > "$CASE/init/tg_supervisor.rc"
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
    unset FAIL_RW FAIL_RO INIT_SVC 2>/dev/null || true
}
h() { sha256sum "$1" 2>/dev/null | cut -d' ' -f1; }

# ================================================================ 1 happy deploy
new_case 1
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "0" "1 deploy exit code"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_stack.rc " "1 only the new entry is left"
ck "$(h "$TG_INIT_DIR/tg_stack.rc")" "$(h "$TG_RC_SRC")" "1 installed rc hash matches source"
ck "$([ -f "$TG_BAK/tg_supervisor.rc" ] && echo yes)" "yes" "1 backup file exists"
ck "$(h "$TG_BAK/tg_supervisor.rc")" "$(grep '  tg_supervisor.rc' "$TG_BAK/sha256.before" | cut -d' ' -f1)" "1 backup hash recorded"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "1 /system left read-only"
ck "$([ -x "$TG_BOOT_DST" ] && echo yes)" "yes" "1 boot_stack.sh installed and executable"
ckc "$out" "EXIT=0" "1 reports EXIT=0"

# ================================================================ 2 backup failure
new_case 2
: > "$CASE/blocker"                       # a regular file where the backup dir's parent should be
export TG_BAK="$CASE/blocker/bak"
before=$(h "$TG_INIT_DIR/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "2 deploy must fail"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_supervisor.rc " "2 old entry untouched"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$before" "2 old entry content unchanged"
ck "$([ -e "$TG_INIT_DIR/tg_stack.rc" ] && echo yes || echo no)" "no" "2 nothing installed"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "2 /system never became writable"
ckc "$out" "nothing was removed" "2 error explains nothing was removed"

# ================================================================ 3 unexpected entry
new_case 3
printf '# someone else\n' > "$TG_INIT_DIR/tg_weird.rc"
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "3 deploy must fail"
ck "$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')" "tg_supervisor.rc tg_weird.rc " "3 directory untouched"
ckc "$out" "unknown tg_* boot entry" "3 error names the unexpected entry"

# ================================================================ 4 install failure -> restore
new_case 4
mkdir -p "$TG_INIT_DIR/tg_stack.rc"       # cp onto a directory fails -> install failure path
before=$(h "$TG_INIT_DIR/tg_supervisor.rc")
out=$(sh "$DEPLOY" 2>&1); rc=$?
ck "$rc" "1" "4 deploy must fail"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$before" "4 previous entry restored with same content"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "4 /system returned to read-only"
ckc "$out" "restoring the previous boot entries" "4 logs the automatic restore"

# ================================================================ 5 rollback happy
new_case 5
sh "$DEPLOY" >/dev/null 2>&1
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "0" "5 rollback exit code"
ck "$(ls "$TG_INIT_DIR" | tr '\n' ' ')" "tg_supervisor.rc " "5 old entry restored, ours removed"
ck "$(h "$TG_INIT_DIR/tg_supervisor.rc")" "$(grep '  tg_supervisor.rc' "$TG_BAK/sha256.before" | cut -d' ' -f1)" "5 restored hash matches backup"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "5 /system left read-only"

# ================================================================ 6 rollback corrupted backup
new_case 6
sh "$DEPLOY" >/dev/null 2>&1
printf 'tampered\n' >> "$TG_BAK/tg_supervisor.rc"
snapshot=$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')
out=$(sh "$ROLLBACK" 2>&1); rc=$?
ck "$rc" "1" "6 rollback must refuse"
ck "$(ls "$TG_INIT_DIR" | sort | tr '\n' ' ')" "$snapshot" "6 directory untouched"
ck "$(cat "$MOUNT_STATE_FILE")" "ro" "6 /system never became writable"
ckc "$out" "is corrupted" "6 error names the corruption"

# ================================================================ boot_stack harness
fake_proc() { # fake_proc <core_pid> <lib1|null> <lib2|null>
    PROC="$CASE/proc"
    mkdir -p "$PROC/$1"
    : > "$PROC/$1/maps"
    [ "$2" != "null" ] && echo "b6f00000-b6f01000 r-xp 00000000 fd:00 123 /data/local/tmp/$2" >> "$PROC/$1/maps"
    [ "$3" != "null" ] && echo "b6f01000-b6f02000 r-xp 00000000 fd:00 124 /data/local/tmp/$3" >> "$PROC/$1/maps"
    echo "7f000000-7f001000 r-xp 00000000 fd:00 125 /system/app/smartapp/lib/arm/libagspeech.so" >> "$PROC/$1/maps"
}
run_bootstack() {
    export TG_PROC_ROOT="$CASE/proc"
    export TG_BOOT_LOG="$CASE/boot.log"
    export TG_CORE_WAIT_S=2
    export TG_LIB_WAIT_S=2
    export TG_DRY_RUN=1
    : > "$TG_BOOT_LOG"
    out=$(sh "$BOOTSTACK" 2>&1); rc=$?
}

# 7 both exact libraries present
new_case 7
fake_proc 4242 "t8/libtg_hook.so" "t7/libtg_ttsguard_t8156.so"
export TG_CORE_PID=4242
run_bootstack
ck "$rc" "0" "7 exit code"
ckc "$(cat "$TG_BOOT_LOG")" "injection ok: hook=1 guard=1" "7 reports both libraries"
ckc "$(cat "$TG_BOOT_LOG")" "DRY RUN: would start" "7 proceeds to the runtime stack"

# 8 only the hook is mapped
new_case 8
fake_proc 4242 "t8/libtg_hook.so" "null"
export TG_CORE_PID=4242
run_bootstack
ck "$rc" "1" "8 exit code"
ckc "$(cat "$TG_BOOT_LOG")" "injection incomplete" "8 reports the failure"
ckc "$(cat "$TG_BOOT_LOG")" "need /data/local/tmp/t7/libtg_ttsguard_t8156.so" "8 names the missing library"
if grep -q "DRY RUN: would start" "$TG_BOOT_LOG"; then
    FAIL=$((FAIL + 1)); echo "FAIL: 8 must not start the runtime stack"
else
    PASS=$((PASS + 1))
fi

# 9 the OLD guard path is mapped (count-only check would have passed here)
new_case 9
fake_proc 4242 "t8/libtg_hook.so" "t7/libtg_ttsguard_t8155r.so"
export TG_CORE_PID=4242
run_bootstack
ck "$rc" "1" "9 exit code"
ckc "$(cat "$TG_BOOT_LOG")" "injection incomplete" "9 aborts on the old guard path"

# 10 :core never appears
new_case 10
mkdir -p "$CASE/proc"
export TG_CORE_PID=9999
run_bootstack
ck "$rc" "1" "10 exit code"
ckc "$(cat "$TG_BOOT_LOG")" "not found within" "10 reports the missing core"
if grep -q "DRY RUN: would start" "$TG_BOOT_LOG"; then
    FAIL=$((FAIL + 1)); echo "FAIL: 10 must not start the runtime stack"
else
    PASS=$((PASS + 1))
fi

# ---------------------------------------------------------------- summary
unset TG_CORE_PID 2>/dev/null || true
printf '\nT9-02R boot script tests: %d passed, %d failed\n' "$PASS" "$FAIL"
rm -rf "$WORK"
[ "$FAIL" -eq 0 ] && exit 0 || exit 1
