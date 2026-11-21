# T6-01 Hook Agent -- 交叉编译成 ARM32 共享库 libtg_hook.so
#
#   make NDK=/path/to/android-ndk-r21e
#
# Windows 主机的等价构建脚本是 ../../build_t6.ps1（本机实际使用）。
#
# 说明：
#   - -fPIC -shared：注入进原厂进程后按共享库加载；
#   - -llog：只在发送线程/安装阶段写 logcat 诊断（tag tgl），Hook 回调里不写日志；
#   - 不链接 Frida、不链接任何第三方注入框架。
#
NDK       ?= /opt/android-ndk-r21e
HOST_TAG  ?= linux-x86_64
TOOLCHAIN := $(NDK)/toolchains/llvm/prebuilt/$(HOST_TAG)
CC        := $(TOOLCHAIN)/bin/armv7a-linux-androideabi26-clang
READELF   := $(TOOLCHAIN)/bin/arm-linux-androideabi-readelf

CFLAGS  := -O2 -Wall -Wextra -std=gnu99 -fPIC -shared
LDLIBS  := -llog
SRC     := libtg_hook.c tg_wire.c
HDR     := tg_wire.h

all: libtg_hook.so

libtg_hook.so: $(SRC) $(HDR)
	$(CC) $(CFLAGS) -o $@ $(SRC) $(LDLIBS)

check: libtg_hook.so
	@$(READELF) -h libtg_hook.so | sed -n '1,12p'
	@$(READELF) -d libtg_hook.so | grep -E 'NEEDED|SONAME' || true
	@$(READELF) -sW libtg_hook.so | grep -E 'tg_hook_(install|status|last_error|stats|hooked)' || true

clean:
	rm -f libtg_hook.so

.PHONY: all check clean
