#!/bin/sh
# build.sh -- 用 Android NDK（r21e）交叉编译 T4 接收端到 armeabi-v7a / API 26
#
# POSIX / Linux 上的 NDK：
#   CC=armv7a-linux-androideabi26-clang sh build.sh
#
# 本机（Windows, NDK r21e）请用 build.ps1，或直接跑：
#   & "D:\tgz02\OS\_analysis\tools\android-ndk-r21e\toolchains\llvm\prebuilt\windows-x86_64\bin\armv7a-linux-androideabi26-clang.cmd" `
#       -O2 -Wall -Wextra -static -o out/t4_receiver t4_receiver.c rx_core.c vad_energy.c -lm
set -eu

CC=${CC:-armv7a-linux-androideabi26-clang}
OUT=${OUT:-out}
SRC="t4_receiver.c rx_core.c vad_energy.c"

mkdir -p "$OUT"
set -x
# shellcheck disable=SC2086
"$CC" -O2 -Wall -Wextra -static -o "$OUT/t4_receiver" $SRC -lm
set +x

echo "built: $OUT/t4_receiver"
