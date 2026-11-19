/*
 * compat/win32/sys/select.h -- 仅给本机（MinGW）编译 ready_json_harness.c 用
 *
 * Windows / MinGW 没有 <sys/select.h>：select() 与 fd_set 由 <winsock2.h> 提供。
 * dgram_server.c 里 #include <sys/select.h> 是给 POSIX/Android 用的，
 * 所以这里用一个空壳头骗过编译器（编译命令加 -I tests_c/compat/win32）。
 * 不改动 dgram_server.c 的任何行为。
 */
#ifndef TGZ2_COMPAT_SYS_SELECT_H
#define TGZ2_COMPAT_SYS_SELECT_H
#include <winsock2.h>
#endif
