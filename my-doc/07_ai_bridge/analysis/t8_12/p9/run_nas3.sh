#!/bin/sh
# T8-12.11  Concurrency verification on the NAS (Linux) with ThreadSanitizer.
#
# Hardened build/run driver with an explicit acceptance gate:
#   * every previous artefact in the output directory is removed first
#   * each gcc invocation is checked and aborts the whole run on failure
#   * a binary may only be executed if it exists AND is newer than the build
#     marker, so a stale binary from an earlier attempt can never be run
#   * every required result, exit code and TSan race count is checked one by
#     one; a single unmet condition turns the whole run into INCOMPLETE
#   * the shell exit code always matches the status line:
#       0 = TEST PASS      2 = INCOMPLETE      1 = BUILD FAILED
#
# Layout: sources in /work, all output in /work/v5.
set -u
SRC=/work
D=/work/v5

log() { echo "[$(date -u +%H:%M:%S)] $*"; }

# finish <status-line> <exit-code>
finish() {
    status=$1
    rc=$2
    printf '%s\n' "$status" > "$D/STATUS.txt"
    printf '%s\n' "$status" > "$D/DONE.txt"
    chmod -R a+rX "$D" 2>/dev/null
    log "$status"
    exit "$rc"
}

build_fail() {                   # build_fail <reason>   -> exit 1
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

# ---- acceptance gate -------------------------------------------------------
total=0
fails=0
GATE=""

ok()  { total=$((total+1)); GATE="$GATE
PASS  $1"; }
bad() { total=$((total+1)); fails=$((fails+1)); GATE="$GATE
FAIL  $1"; }

# must <label> <predicate...>
must() { label=$1; shift; if "$@" >/dev/null 2>&1; then ok "$label"; else bad "$label"; fi }

require_file()   { [ -s "$1" ]; }
require_result() { grep -q "^$2" "$1"; }                 # $2 is a RESULT prefix
require_exit()   { grep -q "^EXIT=$2\$" "$1"; }
require_races()  { grep -q "^TSAN_RACE_WARNINGS=$2\$" "$1"; }
require_no_pass(){ ! grep -q '^RESULT: PASS' "$1"; }
require_races_gt0() {
    n=$(grep -h '^TSAN_RACE_WARNINGS=' "$1" 2>/dev/null | cut -d= -f2)
    [ -n "${n:-}" ] && [ "${n}" -gt 0 ]
}

RES_LIFE_PASS='RESULT: PASS (checks=71 fails=0)'
RES_FSM_PASS='RESULT: PASS (checks=1157 fails=0)'
RES_LIFE_FAIL='RESULT: FAIL (checks=71 fails=1)'
RES_INCOMPLETE='RESULT: INCOMPLETE'

ALL_LOGS="plain_normal plain_race_control plain_race_true
plain_create_fail plain_create_fail_join_fail plain_create_fail_join_abandon
plain_join_fail plain_join_abandon fsm_normal
tsan_normal tsan_race_true tsan_race_control
tsan_create_fail tsan_create_fail_join_fail tsan_create_fail_join_abandon
tsan_join_fail tsan_join_abandon fsm_tsan_run"

# D. every required log must exist
for f in $ALL_LOGS; do
    must "D file present: $f.txt" require_file "$f.txt"
done

# A. the four normal runs
must "A plain_normal RESULT PASS"        require_result plain_normal.txt  "$RES_LIFE_PASS"
must "A plain_normal EXIT=0"             require_exit   plain_normal.txt  0
must "A tsan_normal RESULT PASS"         require_result tsan_normal.txt   "$RES_LIFE_PASS"
must "A tsan_normal EXIT=0"              require_exit   tsan_normal.txt   0
must "A tsan_normal races=0"             require_races  tsan_normal.txt   0
must "A fsm_normal RESULT PASS"          require_result fsm_normal.txt    "$RES_FSM_PASS"
must "A fsm_normal EXIT=0"               require_exit   fsm_normal.txt    0
must "A fsm_tsan_run RESULT PASS"        require_result fsm_tsan_run.txt  "$RES_FSM_PASS"
must "A fsm_tsan_run EXIT=0"             require_exit   fsm_tsan_run.txt  0
must "A fsm_tsan_run races=0"            require_races  fsm_tsan_run.txt  0

# B. negative controls must really behave like controls
must "B plain_race_control RESULT FAIL"  require_result plain_race_control.txt "$RES_LIFE_FAIL"
must "B plain_race_control EXIT=1"       require_exit   plain_race_control.txt 1
must "B tsan_race_control RESULT FAIL"   require_result tsan_race_control.txt  "$RES_LIFE_FAIL"
must "B tsan_race_control EXIT=1"        require_exit   tsan_race_control.txt  1
must "B tsan_race_control races=0"       require_races  tsan_race_control.txt  0
must "B tsan_race_true RESULT PASS"      require_result tsan_race_true.txt "$RES_LIFE_PASS"
must "B tsan_race_true has >=1 TSan report" require_races_gt0 tsan_race_true.txt
must "B tsan_race_true EXIT=66"          require_exit   tsan_race_true.txt  66

# C. the five INCOMPLETE modes, in both builds
for m in create_fail create_fail_join_fail create_fail_join_abandon join_fail join_abandon; do
    must "C plain_$m RESULT INCOMPLETE"  require_result "plain_$m.txt" "$RES_INCOMPLETE"
    must "C plain_$m EXIT=2"             require_exit   "plain_$m.txt" 2
    must "C plain_$m has no RESULT PASS" require_no_pass "plain_$m.txt"
    must "C tsan_$m RESULT INCOMPLETE"   require_result "tsan_$m.txt"  "$RES_INCOMPLETE"
    must "C tsan_$m EXIT=2"              require_exit   "tsan_$m.txt"  2
    must "C tsan_$m has no RESULT PASS"  require_no_pass "tsan_$m.txt"
done

# ---- SUMMARY ---------------------------------------------------------------
show() {                          # show <name> <file>
    res=$(grep -h '^RESULT:' "$2" 2>/dev/null | head -1)
    ex=$(grep -h '^EXIT=' "$2" 2>/dev/null | head -1 | cut -d= -f2)
    ra=$(grep -h '^TSAN_RACE_WARNINGS=' "$2" 2>/dev/null | head -1 | cut -d= -f2)
    printf '%-34s %-44s EXIT=%-3s RACES=%s\n' "$1" "${res:-MISSING}" "${ex:-?}" "${ra:--}"
}

{
  echo "BUILD PASS"
  echo
  echo "--- A: normal runs"
  show plain_normal       plain_normal.txt
  show tsan_normal        tsan_normal.txt
  show fsm_normal         fsm_normal.txt
  show fsm_tsan_run       fsm_tsan_run.txt
  echo
  echo "--- B: negative controls"
  show plain_race_control plain_race_control.txt
  show tsan_race_control  tsan_race_control.txt
  show tsan_race_true     tsan_race_true.txt
  echo
  echo "--- C: INCOMPLETE modes (plain / TSan)"
  for m in create_fail create_fail_join_fail create_fail_join_abandon join_fail join_abandon; do
      show "plain_$m" "plain_$m.txt"
      show "tsan_$m"  "tsan_$m.txt"
  done
  echo
  echo "--- D: gate items ($total total, $fails failed)"
  echo "$GATE" | sed '/^$/d'
  echo
  if [ "$fails" -eq 0 ]; then
      echo "GATE: PASS ($total/$total items)"
  else
      echo "GATE: FAIL ($fails of $total items)"
  fi
} > SUMMARY.txt 2>&1

if [ "$fails" -eq 0 ]; then
    finish "TEST PASS" 0
else
    finish "INCOMPLETE: see SUMMARY.txt (a required PASS or control condition did not hold)" 2
fi
