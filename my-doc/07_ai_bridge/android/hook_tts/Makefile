# hook_tts/Makefile -- T7-02 TTS 来源守卫（独立 .so），与 T6-01 libtg_hook.so 互不影响
#
# 只做一件事：把 libtg_ttsguard.c 交叉编译成 ELF32/ARM 共享库。
# 实际构建走 ../../build_t7.ps1（统一日志 + readelf 校验），这里留给习惯 make 的人。
NDK ?= D:/tgz02/OS/_analysis/tools/android-ndk-r21e
CC  := $(NDK)/toolchains/llvm/prebuilt/windows-x86_64/bin/armv7a-linux-androideabi26-clang.cmd

CFLAGS := -O2 -Wall -Wextra -fPIC -shared -fvisibility=hidden -fvisibility-inlines-hidden
LDFLAGS := -llog -ldl

libtg_ttsguard.so: libtg_ttsguard.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f libtg_ttsguard.so

.PHONY: clean
