#!/bin/sh
# T8-12.9 concurrency verification on the NAS (Linux) with ThreadSanitizer.
# Attempt 2: switch Debian sources to a CN mirror before installing, and write
# everything into v2/ so the first attempt's logs stay untouched.
set -u
D=/work/v2
mkdir -p "$D" || exit 1
cd "$D" || exit 1
SRC=/work

{
  echo "=== uname"; uname -a
  echo "=== arch"; uname -m
  echo "=== cpus"; nproc
  echo "=== os"; head -2 /etc/os-release
  echo "=== date"; date -u
  echo "=== mirror"; grep -h -E '^(deb|URIs)' /etc/apt/sources.list /etc/apt/sources.list.d/*.sources 2>/dev/null | head -5
} > host.txt 2>&1

for f in /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list; do
  [ -f "$f" ] || continue
  sed -i 's|deb.debian.org|mirrors.aliyun.com|g; s|security.debian.org|mirrors.aliyun.com|g' "$f"
done

export DEBIAN_FRONTEND=noninteractive
apt-get update -qq > apt_update.log 2>&1; echo "APT_UPDATE_EXIT=$?" >> apt_update.log
apt-get install -y -qq --no-install-recommends gcc libc6-dev libtsan0 > apt_install.log 2>&1
rc=$?
echo "APT_INSTALL_EXIT=$rc" >> apt_install.log
gcc --version > gcc_version.txt 2>&1
ls -l /usr/lib/*/libtsan* >> gcc_version.txt 2>&1

if [ $rc -ne 0 ]; then
  echo "TOOLCHAIN_FAILED" > DONE.txt
  chmod -R a+rX "$D"
  exit 1
fi

gcc -O1 -Wall -Wextra -std=c99 -pthread -o model_plain "$SRC/t8_12_9_lifecycle_model.c" > build_plain.log 2>&1
echo "BUILD_PLAIN_EXIT=$?" >> build_plain.log
gcc -O1 -Wall -Wextra -std=c99 -o fsm_plain "$SRC/t8_12_9_install_fsm.c" > build_fsm.log 2>&1
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

gcc -fsanitize=thread -g -O1 -std=c99 -pthread -o model_tsan "$SRC/t8_12_9_lifecycle_model.c" > build_tsan.log 2>&1
echo "BUILD_TSAN_EXIT=$?" >> build_tsan.log
gcc -fsanitize=thread -g -O1 -std=c99 -o fsm_tsan "$SRC/t8_12_9_install_fsm.c" > build_fsm_tsan.log 2>&1
echo "BUILD_FSM_TSAN_EXIT=$?" >> build_fsm_tsan.log

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
run_tsan tsan_normal
run_tsan tsan_race_control --race-control
run_tsan tsan_create_fail --create-fail 2
run_tsan tsan_join_fail --join-fail 1
run_tsan tsan_join_abandon --join-abandon 1

./fsm_tsan > fsm_tsan_run.txt 2>&1
echo "EXIT=$?" >> fsm_tsan_run.txt
n=$(grep -c "WARNING: ThreadSanitizer" fsm_tsan_run.txt 2>/dev/null)
echo "TSAN_RACE_WARNINGS=${n:-0}" >> fsm_tsan_run.txt

if grep -q "unexpected memory mapping" tsan_normal.txt 2>/dev/null; then
  setarch "$(uname -m)" -R ./model_tsan > tsan_normal_setarch.txt 2>&1
  echo "SETARCH_EXIT=$?" >> tsan_normal_setarch.txt
fi

chmod -R a+rX "$D"
echo DONE > DONE.txt