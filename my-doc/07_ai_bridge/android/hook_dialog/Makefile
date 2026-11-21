# hook_dialog/Makefile -- T7-03 连续对话 / ASR 端点观测（独�?.so�?#
# �?T6-01 libtg_hook.so、T7-02 libtg_ttsguard.so 完全独立：不�?hook 点，可共存�?NDK ?= D:/tgz02/OS/_analysis/tools/android-ndk-r21e
CC  := $(NDK)/toolchains/llvm/prebuilt/windows-x86_64/bin/armv7a-linux-androideabi26-clang.cmd

CFLAGS := -O2 -Wall -Wextra -fPIC -shared
LDFLAGS := -llog -ldl

libtg_dialog.so: libtg_dialog.c
	$(CC) $(CFLAGS) -o $@ $< $(LDFLAGS)

clean:
	rm -f libtg_dialog.so

.PHONY: clean
