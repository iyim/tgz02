#!/bin/sh
# T8-12.11  exit-code verification driver.
#
# Runs three independent invocations of run_nas3.sh and records the shell exit
# code of each, so that "status file" and "process exit code" can be compared:
#
#   1. the real, full run                -> expect 0  (TEST PASS)
#   2. acceptance-gate failure (copy)    -> expect 2  (INCOMPLETE)
#      the copy runs the positive control WITHOUT --race-true, so it can no
#      longer produce a TSan report and gate item B must fail
#   3. build failure (copy)              -> expect 1  (BUILD FAILED)
#      the copy compiles a deliberately broken source
#
# The two simulations use their own D/SRC directories; the deliverable source
# files, /work/v5 evidence and the official logs are never touched by them.
set -u
cd /work || exit 1

log() { echo "[$(date -u +%H:%M:%S)] $*"; }

# ---- 1. the real run -------------------------------------------------------
log "run 1: full run"
sh /work/run_nas3.sh > /work/main_stdout.txt 2>&1
rc=$?
printf 'run1_full_run MAIN_RC=%s\n' "$rc" > /work/rc_run1.txt
log "run 1 exit=$rc"

# ---- 2. acceptance gate failure -------------------------------------------
log "run 2: gate failure simulation"
rm -rf /work/sim_gate
mkdir -p /work/sim_gate
sed -e 's|^D=/work/v5$|D=/work/sim_gate|' /work/run_nas3.sh > /work/sim_gate_driver.sh
# remove the flag that makes the positive control report a race
sed -i 's|^run_tsan tsan_race_true --race-true$|run_tsan tsan_race_true|' /work/sim_gate_driver.sh
sh /work/sim_gate_driver.sh > /work/sim_gate_stdout.txt 2>&1
rc=$?
printf 'run2_gate_failure GATE_SIM_RC=%s\n' "$rc" > /work/rc_run2.txt
log "run 2 exit=$rc"

# ---- 3. build failure ------------------------------------------------------
log "run 3: build failure simulation"
rm -rf /work/sim_build /work/sim_build_src
mkdir -p /work/sim_build /work/sim_build_src
cp /work/t8_12_9_lifecycle_model.c /work/sim_build_src/t8_12_9_lifecycle_model.c
cp /work/t8_12_9_install_fsm.c     /work/sim_build_src/t8_12_9_install_fsm.c
printf '\nthis is deliberately not valid C;\n' >> /work/sim_build_src/t8_12_9_lifecycle_model.c
sed -e 's|^D=/work/v5$|D=/work/sim_build|' \
    -e 's|^SRC=/work$|SRC=/work/sim_build_src|' /work/run_nas3.sh > /work/sim_build_driver.sh
sh /work/sim_build_driver.sh > /work/sim_build_stdout.txt 2>&1
rc=$?
printf 'run3_build_failure BUILD_SIM_RC=%s\n' "$rc" > /work/rc_run3.txt
log "run 3 exit=$rc"

{
  echo "=== exit codes"
  cat /work/rc_run1.txt /work/rc_run2.txt /work/rc_run3.txt
  echo
  echo "=== status files"
  printf 'run1 STATUS: '; cat /work/v5/STATUS.txt 2>/dev/null || echo MISSING
  printf 'run2 STATUS: '; cat /work/sim_gate/STATUS.txt 2>/dev/null || echo MISSING
  printf 'run3 STATUS: '; cat /work/sim_build/STATUS.txt 2>/dev/null || echo MISSING
  echo
  echo "=== run2 failing gate items (proof the gate really fired)"
  sed -n '/--- D: gate items/,$p' /work/sim_gate/SUMMARY.txt 2>/dev/null | grep '^FAIL' || echo "no FAIL items found"
  echo
  echo "=== run3 build log tail"
  tail -3 /work/sim_build/build_plain.log 2>/dev/null
} > /work/VERIFY_SUMMARY.txt 2>&1

log "verification done"
echo DONE > /work/verify_done.txt
