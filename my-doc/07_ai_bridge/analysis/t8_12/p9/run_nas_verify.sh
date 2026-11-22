#!/bin/sh
# T8-12.12  exit-code + acceptance verification driver (self-verifying).
#
# Runs four independent invocations of run_nas3.sh and then *checks* that each
# one behaved exactly as expected. The driver has its own verdict:
#
#   VERIFY PASS -> exit 0      every expectation held, and the self-check proved
#                              it can reject a simulation that silently passed
#   VERIFY FAIL -> exit 2      at least one expectation did not hold
#
#   1. the real full run                     -> TEST PASS             exit 0
#   2. gate-failure simulation (copy)         -> INCOMPLETE            exit 2
#      the copy runs the positive control WITHOUT --race-true, so it cannot
#      produce a TSan report: gate items "races>0" and "EXIT=66" must fail.
#      Note: the model's own assertions still pass in this variant, so the new
#      "RESULT PASS" item is evaluated but satisfied -- see run 3 for the case
#      where that item really has to fire.
#   3. assertion-failure simulation (copy)    -> INCOMPLETE            exit 2
#      the copy replaces the positive control's log with
#      "RESULT: FAIL ... / EXIT=66 / TSAN_RACE_WARNINGS=1", i.e. exactly the
#      future regression "assertions failed AND TSan still reported a race".
#      The only acceptable outcome is that gate item B fails.
#   4. build-failure simulation (copy)        -> BUILD FAILED           exit 1
#      the copy compiles a deliberately broken source.
#
# plus a negative self-test: the same checks are run against a "simulation that
# silently passed" and must fail, proving the driver is not a rubber stamp.
#
# Usage:  sh run_nas_verify.sh                  # full run + self-check
#         sh run_nas_verify.sh --selfcheck-only <v> <gate> <gate2> <build> <rc1> <rc2> <rc3> <rc4>
set -u
cd /work || exit 1

log() { echo "[$(date -u +%H:%M:%S)] $*"; }

V_DIR=/work/v5
G_DIR=/work/sim_gate
G2_DIR=/work/sim_gate2
B_DIR=/work/sim_build
NEG_DIR=/work/negtest/sim_gate

# ---- self-check predicates -------------------------------------------------
status_is()     { [ "$(cat "$1" 2>/dev/null)" = "$2" ]; }
status_prefix() { case "$(cat "$1" 2>/dev/null)" in "$2"*) return 0 ;; *) return 1 ;; esac; }
grep_has()      { grep -q -- "$2" "$1"; }

SELF=""
self_fails=0
ck() {
    label=$1; shift
    if "$@" >/dev/null 2>&1; then
        SELF="$SELF
PASS  $label"
    else
        SELF="$SELF
FAIL  $label"
        self_fails=$((self_fails+1))
    fi
}

run_selfcheck() {   # uses V_DIR G_DIR G2_DIR B_DIR rc1 rc2 rc3 rc4
    SELF=""
    self_fails=0
    # 1) real run: clean success with a complete gate
    ck "run1 exit code = 0"                              test "$rc1" = 0
    ck "run1 STATUS.txt = TEST PASS"                     status_is "$V_DIR/STATUS.txt" "TEST PASS"
    ck "run1 SUMMARY.txt has 'GATE: PASS (66/66 items)'" grep_has "$V_DIR/SUMMARY.txt" "GATE: PASS (66/66 items)"
    # 2) positive control without --race-true: the race-count items must fail
    ck "run2 exit code = 2"                              test "$rc2" = 2
    ck "run2 STATUS.txt starts with INCOMPLETE:"         status_prefix "$G_DIR/STATUS.txt" "INCOMPLETE:"
    ck "run2 gate row 'FAIL  B tsan_race_true has >=1 TSan report'" \
       grep_has "$G_DIR/SUMMARY.txt" "FAIL  B tsan_race_true has >=1 TSan report"
    ck "run2 gate row 'FAIL  B tsan_race_true EXIT=66'" \
       grep_has "$G_DIR/SUMMARY.txt" "FAIL  B tsan_race_true EXIT=66"
    ck "run2 evaluates the new item 'B tsan_race_true RESULT PASS'" \
       grep_has "$G_DIR/SUMMARY.txt" "PASS  B tsan_race_true RESULT PASS"
    # 3) positive control whose assertions failed but whose race count is > 0:
    #    the NEW gate item must be the one that fires
    ck "run3 exit code = 2"                              test "$rc3" = 2
    ck "run3 STATUS.txt starts with INCOMPLETE:"         status_prefix "$G2_DIR/STATUS.txt" "INCOMPLETE:"
    ck "run3 gate row 'FAIL  B tsan_race_true RESULT PASS'" \
       grep_has "$G2_DIR/SUMMARY.txt" "FAIL  B tsan_race_true RESULT PASS"
    ck "run3 keeps 'PASS  B tsan_race_true has >=1 TSan report'" \
       grep_has "$G2_DIR/SUMMARY.txt" "PASS  B tsan_race_true has >=1 TSan report"
    # 4) build failure: stop at the compiler
    ck "run4 exit code = 1"                              test "$rc4" = 1
    ck "run4 STATUS.txt = 'BUILD FAILED: gcc model_plain'" \
       status_is "$B_DIR/STATUS.txt" "BUILD FAILED: gcc model_plain"
    ck "run4 build log contains a compiler error"        grep_has "$B_DIR/build_plain.log" "error:"
}

# ---- self-check only (used by the negative self-test) ----------------------
if [ "${1:-}" = "--selfcheck-only" ]; then
    V_DIR=${2:-/work/v5}
    G_DIR=${3:-/work/sim_gate}
    G2_DIR=${4:-/work/sim_gate2}
    B_DIR=${5:-/work/sim_build}
    rc1=${6:-0}; rc2=${7:-0}; rc3=${8:-0}; rc4=${9:-0}
    run_selfcheck
    printf '%s\n' "$SELF" | sed '/^$/d'
    if [ "$self_fails" -eq 0 ]; then exit 0; else exit 2; fi
fi

# ---- 1. the real run -------------------------------------------------------
log "run 1: full run"
sh /work/run_nas3.sh > /work/main_stdout.txt 2>&1
rc1=$?
printf 'run1_full_run MAIN_RC=%s\n' "$rc1" > /work/rc_run1.txt
log "run 1 exit=$rc1"

# ---- 2. gate failure: positive control without --race-true -----------------
log "run 2: gate failure simulation (no --race-true)"
rm -rf "$G_DIR"
mkdir -p "$G_DIR"
sed -e "s|^D=/work/v5\$|D=$G_DIR|" /work/run_nas3.sh > /work/sim_gate_driver.sh
sed -i 's|^run_tsan tsan_race_true --race-true$|run_tsan tsan_race_true|' /work/sim_gate_driver.sh
sh /work/sim_gate_driver.sh > /work/sim_gate_stdout.txt 2>&1
rc2=$?
printf 'run2_gate_failure GATE_SIM_RC=%s\n' "$rc2" > /work/rc_run2.txt
log "run 2 exit=$rc2"

# ---- 3. assertion failure while TSan still reports a race ------------------
log "run 3: assertion-failure simulation (RESULT FAIL + races>0)"
rm -rf "$G2_DIR"
mkdir -p "$G2_DIR"
sed -e "s|^D=/work/v5\$|D=$G2_DIR|" /work/run_nas3.sh > /work/sim_gate2_driver.sh
# Replace the positive control's log with exactly the regression of interest:
# the model assertions failed, yet TSan still reported one race.
sed -i '/^run_tsan tsan_race_true --race-true$/a echo "RESULT: FAIL (checks=71 fails=1)" > tsan_race_true.txt; echo "EXIT=66" >> tsan_race_true.txt; echo "TSAN_RACE_WARNINGS=1" >> tsan_race_true.txt' /work/sim_gate2_driver.sh
sh /work/sim_gate2_driver.sh > /work/sim_gate2_stdout.txt 2>&1
rc3=$?
printf 'run3_assertion_failure GATE_SIM2_RC=%s\n' "$rc3" > /work/rc_run3.txt
log "run 3 exit=$rc3"

# ---- 4. build failure ------------------------------------------------------
log "run 4: build failure simulation"
rm -rf "$B_DIR" /work/sim_build_src
mkdir -p "$B_DIR" /work/sim_build_src
cp /work/t8_12_9_lifecycle_model.c /work/sim_build_src/t8_12_9_lifecycle_model.c
cp /work/t8_12_9_install_fsm.c     /work/sim_build_src/t8_12_9_install_fsm.c
printf '\nthis is deliberately not valid C;\n' >> /work/sim_build_src/t8_12_9_lifecycle_model.c
sed -e "s|^D=/work/v5\$|D=$B_DIR|" \
    -e 's|^SRC=/work$|SRC=/work/sim_build_src|' /work/run_nas3.sh > /work/sim_build_driver.sh
sh /work/sim_build_driver.sh > /work/sim_build_stdout.txt 2>&1
rc4=$?
printf 'run4_build_failure BUILD_SIM_RC=%s\n' "$rc4" > /work/rc_run4.txt
log "run 4 exit=$rc4"

# ---- 5. self-check ---------------------------------------------------------
run_selfcheck
main_self="$SELF"
main_self_fails=$self_fails

# ---- 6. negative self-test: a simulation that silently passed --------------
log "run 5: negative self-test (simulation that did not fail)"
rm -rf /work/negtest
mkdir -p "$NEG_DIR"
cp "$V_DIR/STATUS.txt"  "$NEG_DIR/STATUS.txt"       # looks like a clean pass
cp "$V_DIR/SUMMARY.txt" "$NEG_DIR/SUMMARY.txt"
sh /work/run_nas_verify.sh --selfcheck-only \
   "$V_DIR" "$NEG_DIR" "$G2_DIR" "$B_DIR" 0 0 2 1 > /work/negtest_stdout.txt 2>&1
neg_rc=$?
printf 'run5_negative_selftest NEG_SELFTEST_RC=%s\n' "$neg_rc" > /work/rc_run5.txt
log "run 5 exit=$neg_rc"

# ---- 7. verdict ------------------------------------------------------------
fails_total=$main_self_fails
extra=""
if [ "$neg_rc" -eq 2 ]; then
    extra="PASS  the self-check rejects a simulation that silently passed (exit 2)"
else
    extra="FAIL  the self-check accepted a broken simulation (exit $neg_rc, expected 2)"
    fails_total=$((fails_total+1))
fi

{
  echo "=== exit codes"
  cat /work/rc_run1.txt /work/rc_run2.txt /work/rc_run3.txt /work/rc_run4.txt /work/rc_run5.txt
  echo
  echo "=== status files"
  printf 'run1 STATUS: '; cat "$V_DIR/STATUS.txt" 2>/dev/null || echo MISSING
  printf 'run2 STATUS: '; cat "$G_DIR/STATUS.txt" 2>/dev/null || echo MISSING
  printf 'run3 STATUS: '; cat "$G2_DIR/STATUS.txt" 2>/dev/null || echo MISSING
  printf 'run4 STATUS: '; cat "$B_DIR/STATUS.txt" 2>/dev/null || echo MISSING
  echo
  echo "=== run1 gate line"
  grep -h 'GATE:' "$V_DIR/SUMMARY.txt" 2>/dev/null || echo MISSING
  echo
  echo "=== run2 failing gate items (positive control without --race-true)"
  sed -n '/--- D: gate items/,$p' "$G_DIR/SUMMARY.txt" 2>/dev/null | grep '^FAIL' || echo "no FAIL items found"
  echo
  echo "=== run3 failing gate items (assertions failed AND races>0)"
  sed -n '/--- D: gate items/,$p' "$G2_DIR/SUMMARY.txt" 2>/dev/null | grep '^FAIL' || echo "no FAIL items found"
  echo
  echo "=== run4 build log tail"
  tail -3 "$B_DIR/build_plain.log" 2>/dev/null
  echo
  echo "=== self-check"
  printf '%s\n' "$main_self" | sed '/^$/d'
  printf '%s\n' "$extra"
  echo
  echo "=== negative self-test raw result (must FAIL: exit 2)"
  cat /work/negtest_stdout.txt 2>/dev/null
  echo
  if [ "$fails_total" -eq 0 ]; then
      echo "VERIFY PASS"
  else
      echo "VERIFY FAIL ($fails_total item(s))"
  fi
} > /work/VERIFY_SUMMARY.txt 2>&1

if [ "$fails_total" -eq 0 ]; then
    printf 'VERIFY PASS\n' > /work/VERIFY_STATUS.txt
    log "VERIFY PASS"
    exit 0
else
    printf 'VERIFY FAIL (%s item(s))\n' "$fails_total" > /work/VERIFY_STATUS.txt
    log "VERIFY FAIL"
    exit 2
fi
