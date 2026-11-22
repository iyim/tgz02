#!/bin/sh
# T8-12.10  Concurrency verification on the NAS (Linux) with ThreadSanitizer.
#
# Hardened build/run driver:
#   * every previous artefact in the output directory is removed first
#   * each gcc invocation is checked and aborts the whole run on failure
#   * a binary may only be executed if it exists AND is newer than the build
#     marker, so a stale binary from an earlier attempt can never be run
#   * the final status is an explicit BUILD PASS / TEST PASS / INCOMPLETE line
#
# Layout: sources in /work, all output in /work/v5.
set -u
SRC=/work
D=/work/v5

log() { echo "[$(date -u +%H:%M:%S)] $*"; }
finish() {                       # finish <status-line>
    printf '%s\n' "$1" > "$D/STATUS.txt"
    printf '%s\n' "$1" > "$D/DONE.txt"
    chmod -R a+rX "$D" 2>/dev/null
    log "$1"
    exit 0
}
build_fail() {                   # build_fail <reason>
    printf 'BUILD FAILED: %s\n' "$1" > "$D/STATUS.txt"
    printf 'BUILD FAILED: %s\n' "$1" > "$D/DONE.txt"
    chmod -R a+rX "$D" 2>/dev/null
    log "BUILD FAILED: $1"
    exit 1
}
need_fresh() {                   # need_fresh <binary>
    [ -x "$1" ] || build_fail "$1 missing"
    [ "$1" -nt "$D/.build_start" ] || build_fail "$1 is older than this build (stale binary)"
}

# ---- clean slate -----------------------------------------------------------
rm -rf "$D"
mkdir -p "$D" || exit 1
cd "$D" || exit 1
: > "$D/.build_start"            # build marker; binaries must be newer than this
rm -f ./*.txt ./*.log ./*.exe 2>/dev/null

{
  echo "=== uname"; uname -a
  echo "=== arch"; uname -m
  echo "=== cpus"; nproc
  echo "=== os"; head -2 /etc/os-release
  echo "=== date"; date -u
  echo "=== gcc"; gcc --version 2>/dev/null | head -1
  echo "=== tsan"; ls -l /usr/lib/*/libtsan* 2>/dev/null
} > host.txt 2>&1

for f in "$SRC/t8_12_9_lifecycle_model.c" "$SRC/t8_12_9_install_fsm.c" "$SRC/run_nas3.sh"; do
  sha256sum "$f" >> host.txt 2>/dev/null || echo "MISSING $f" >> host.txt
done

# ---- toolchain -------------------------------------------------------------
for f in /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list; do
  [ -f "$f" ] || continue
  sed -i 's|deb.debian.org|mirrors.aliyun.com|g; s|security.debian.org|mirrors.aliyun.com|g' "$f"
done
export DEBIAN_FRONTEND=noninteractive
apt-get -o Acquire::Retries=3 update > apt_update.log 2>&1
echo "APT_UPDATE_EXIT=$?" >> apt_update.log
apt-get -o Acquire::Retries=3 install -y --no-install-recommends gcc libc6-dev libtsan0 > apt_install.log 2>&1
aptrc=$?
echo "APT_INSTALL_EXIT=$aptrc" >> apt_install.log
if [ $aptrc -ne 0 ]; then build_fail "apt-get install failed (exit $aptrc)"; fi
if ! command -v gcc >/dev/null 2>&1; then build_fail "gcc not present after install"; fi

# ---- builds (fail fast) ----------------------------------------------------
log "building plain binaries"
if ! gcc -O1 -Wall -Wextra -std=c99 -pthread -o model_plain "$SRC/t8_12_9_lifecycle_model.c" > build_plain.log 2>&1; then
  build_fail "gcc model_plain"
fi
echo "BUILD_PLAIN_EXIT=0" >> build_plain.log
if ! gcc -O1 -Wall -Wextra -std=c99 -o fsm_plain "$SRC/t8_12_9_install_fsm.c" > build_fsm.log 2>&1; then
  build_fail "gcc fsm_plain"
fi
echo "BUILD_FSM_EXIT=0" >> build_fsm.log

log "building TSan binaries"
if ! gcc -fsanitize=thread -g -O1 -std=c99 -pthread -o model_tsan "$SRC/t8_12_9_lifecycle_model.c" > build_tsan.log 2>&1; then
  build_fail "gcc -fsanitize=thread model_tsan (no libtsan?)"
fi
echo "BUILD_TSAN_EXIT=0" >> build_tsan.log
if ! gcc -fsanitize=thread -g -O1 -std=c99 -o fsm_tsan "$SRC/t8_12_9_install_fsm.c" > build_fsm_tsan.log 2>&1; then
  build_fail "gcc -fsanitize=thread fsm_tsan"
fi
echo "BUILD_FSM_TSAN_EXIT=0" >> build_fsm_tsan.log

for b in model_plain fsm_plain model_tsan fsm_tsan; do
  need_fresh "./$b" || exit 1
done
sha256sum model_plain fsm_plain model_tsan fsm_tsan >> host.txt 2>/dev/null
echo "BUILD_PASS" > BUILD.txt

# ---- runs ------------------------------------------------------------------
run_plain() {
  name=$1; shift
  ./model_plain "$@" > "$name.txt" 2>&1
  echo "EXIT=$?" >> "$name.txt"
}
TSAN_OPTIONS="halt_on_error=0 exitcode=66 history_size=4"
export TSAN_OPTIONS
run_tsan() {
  name=$1; shift
  ./model_tsan "$@" > "$name.txt" 2>&1
  rc=$?
  echo "EXIT=$rc" >> "$name.txt"
  n=$(grep -c "WARNING: ThreadSanitizer" "$name.txt" 2>/dev/null)
  echo "TSAN_RACE_WARNINGS=${n:-0}" >> "$name.txt"
}

need_fresh ./model_plain
log "plain runs"
run_plain plain_normal
run_plain plain_race_control --race-control
run_plain plain_race_true --race-true
run_plain plain_create_fail --create-fail 2
run_plain plain_create_fail_join_fail --create-fail 2 --join-fail 1
run_plain plain_create_fail_join_abandon --create-fail 2 --join-abandon 1
run_plain plain_join_fail --join-fail 1
run_plain plain_join_abandon --join-abandon 1
need_fresh ./fsm_plain
./fsm_plain > fsm_normal.txt 2>&1; echo "EXIT=$?" >> fsm_normal.txt

need_fresh ./model_tsan
log "TSan runs"
run_tsan tsan_normal
run_tsan tsan_race_true --race-true
run_tsan tsan_race_control --race-control
run_tsan tsan_create_fail --create-fail 2
run_tsan tsan_create_fail_join_fail --create-fail 2 --join-fail 1
run_tsan tsan_create_fail_join_abandon --create-fail 2 --join-abandon 1
run_tsan tsan_join_fail --join-fail 1
run_tsan tsan_join_abandon --join-abandon 1
need_fresh ./fsm_tsan
./fsm_tsan > fsm_tsan_run.txt 2>&1; echo "EXIT=$?" >> fsm_tsan_run.txt
n=$(grep -c "WARNING: ThreadSanitizer" fsm_tsan_run.txt 2>/dev/null)
echo "TSAN_RACE_WARNINGS=${n:-0}" >> fsm_tsan_run.txt

if grep -q "unexpected memory mapping" tsan_normal.txt 2>/dev/null; then
  setarch "$(uname -m)" -R ./model_tsan > tsan_normal_setarch.txt 2>&1
  echo "SETARCH_EXIT=$?" >> tsan_normal_setarch.txt
fi

# ---- verdict ---------------------------------------------------------------
{
  echo "BUILD PASS"
  for x in plain_normal tsan_normal; do
    printf '%-12s ' "$x"
    grep -h '^RESULT:' "$x.txt" 2>/dev/null || echo "RESULT: MISSING"
  done
  printf 'fsm_normal   '; grep -h '^RESULT:' fsm_normal.txt 2>/dev/null || echo "RESULT: MISSING"
  printf 'fsm_tsan     '; grep -h '^RESULT:' fsm_tsan_run.txt 2>/dev/null || echo "RESULT: MISSING"
  printf 'tsan_normal races='
  grep -h '^TSAN_RACE_WARNINGS=' tsan_normal.txt 2>/dev/null | cut -d= -f2
  printf 'tsan_race_true races='
  grep -h '^TSAN_RACE_WARNINGS=' tsan_race_true.txt 2>/dev/null | cut -d= -f2
} > SUMMARY.txt 2>&1

if grep -q '^RESULT: PASS (checks=71 fails=0)' plain_normal.txt \
   && grep -q '^RESULT: PASS (checks=1157 fails=0)' fsm_normal.txt \
   && grep -q '^RESULT: PASS (checks=71 fails=0)' tsan_normal.txt \
   && grep -q '^RESULT: PASS (checks=1157 fails=0)' fsm_tsan_run.txt \
   && grep -q '^TSAN_RACE_WARNINGS=0$' tsan_normal.txt \
   && grep -qv '^TSAN_RACE_WARNINGS=0$' tsan_race_true.txt; then
  finish "TEST PASS"
else
  finish "INCOMPLETE: see SUMMARY.txt (a required PASS or control condition did not hold)"
fi
