# T6-01 Native Injector -- 交叉编译（armeabi-v7a / Android 8.1 / API 26）
#
# 默认走 POSIX 主机（Linux/macOS 上的 NDK）。Windows 主机的等价构建脚本是
# ../../build_t6.ps1（本机实际使用的就是它，日志见 evidence/t6_01_ndk_build.log）。
#
#   make NDK=/path/to/android-ndk-r21e
#   make check NDK=...
#   make clean
#
NDK       ?= /opt/android-ndk-r21e
HOST_TAG  ?= linux-x86_64
TOOLCHAIN := $(NDK)/toolchains/llvm/prebuilt/$(HOST_TAG)
CC        := $(TOOLCHAIN)/bin/armv7a-linux-androideabi26-clang
READELF   := $(TOOLCHAIN)/bin/arm-linux-androideabi-readelf
OBJDUMP   := $(TOOLCHAIN)/bin/llvm-objdump

CFLAGS  := -O2 -Wall -Wextra -std=gnu99 -fPIE -pie
SRC     := tg_injector.c remote_call.c
HDR     := remote_call.h

all: tg_injector

tg_injector: $(SRC) $(HDR)
	$(CC) $(CFLAGS) -o $@ $(SRC)

check: tg_injector
	@$(READELF) -h tg_injector | sed -n '1,12p'
	@$(READELF) -d tg_injector | grep -E 'NEEDED|INTERP' || true
	@$(OBJDUMP) -d tg_injector | sed -n '1,8p'

clean:
	rm -f tg_injector

.PHONY: all check clean
