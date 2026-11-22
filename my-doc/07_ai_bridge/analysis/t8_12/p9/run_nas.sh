#!/bin/sh
# T8-12.9 concurrency verification on the NAS (Linux) with ThreadSanitizer.
# Everything is written next to the sources so the results can be read back
# over the share. No network is used except apt for the toolchain.
set -u
D=/work
cd "$D" || exit 1

{
  echo "=== uname"; uname -a
  echo "=== arch"; uname -m
  echo "=== cpus"; nproc
  echo "=== os"; head -2 /etc/os-release
  echo "=== date"; date -u
} > host.txt 2>&1

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq > apt_update.log 2>&1; echo "APT_UPDATE_EXIT=$?" >> apt_update.log
apt-get install -y -qq --no-install-recommends gcc libc6-dev libtsan0 > apt_install.log 2>&1
echo "APT_INSTALL_EXIT=$?" >> apt_install.log
gcc --version > gcc_version.txt 2>&1
ls -l /usr/lib/*/libtsan* >> gcc_version.txt 2>&1

gcc -O1 -Wall -Wextra -std=c99 -pthread -o model_plain t8_12_9_lifecycle_model.c > build_plain.log 2>&1
echo "BUILD_PLAIN_EXIT=$?" >> build_plain.log
gcc -O1 -Wall -Wextra -std=c99 -o fsm_plain t8_12_9_install_fsm.c > build_fsm.log 2>&1
echo "BUILD_FSM_EXIT=$?" >> build_fsm.log

run_plain() {
  name=$1; shift
  ./model_plain "$@" > "$name.txt" 2>&1
  echo "EXIT=$?" >> "$name.txt"
}
run_plain plain_normal
run_plain plain_race_control --race-control
run_plain plain_create_fail --create-fail 2
run_plain plain_join_fail --join-fail 1
run_plain plain_join_abandon --join-abandon 1
./fsm_plain > fsm_normal.txt 2>&1; echo "EXIT=$?" >> fsm_normal.txt

gcc -fsanitize=thread -g -O1 -std=c99 -pthread -o model_tsan t8_12_9_lifecycle_model.c > build_tsan.log 2>&1
echo "BUILD_TSAN_EXIT=$?" >> build_tsan.log
gcc -fsanitize=thread -g -O1 -std=c99 -o fsm_tsan t8_12_9_install_fsm.c > build_fsm_tsan.log 2>&1
echo "BUILD_FSM_TSAN_EXIT=$?" >> build_fsm_tsan.log

TSAN_OPTIONS="halt_on_error=0 exitcode=66 history_size=4"
export TSAN_OPTIONS

run_tsan() {
  name=$1; shift
  ./model_tsan "$@" > "$name.txt" 2>&1
  rc=$?
  echo "EXIT=$rc" >> "$name.txt"
  n=$(grep -c "WARNING: ThreadSanitizer" "$name.txt")
  echo "TSAN_RACE_WARNINGS=$n" >> "$name.txt"
}
run_tsan tsan_normal
run_tsan tsan_race_control --race-control
run_tsan tsan_create_fail --create-fail 2
run_tsan tsan_join_fail --join-fail 1
run_tsan tsan_join_abandon --join-abandon 1

./fsm_tsan > fsm_tsan_run.txt 2>&1
echo "EXIT=$?" >> fsm_tsan_run.txt
n=$(grep -c "WARNING: ThreadSanitizer" fsm_tsan_run.txt)
echo "TSAN_RACE_WARNINGS=$n" >> fsm_tsan_run.txt

# If the kernel ASLR entropy breaks TSan ("unexpected memory mapping"), retry
# with ASLR disabled and keep both logs.
if grep -q "unexpected memory mapping" tsan_normal.txt 2>/dev/null; then
  setarch "$(uname -m)" -R ./model_tsan > tsan_normal_setarch.txt 2>&1
  echo "SETARCH_EXIT=$?" >> tsan_normal_setarch.txt
fi

echo DONE > DONE.txt