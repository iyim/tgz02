/*
 * remote_call.h -- T6-01 ARM32 远程调用内核（ptrace + 目标进程内 dlopen/dlsym）
 *
 * 只做「在别的进程里安全地执行几个 libc 函数并读回结果」，不含任何业务逻辑。
 * 为什么不用 Frida/Cydia/库存注入框架：T6-01 要求不引入第三方注入框架、不依赖
 * Frida 运行；这里只用到内核 ptrace 接口 + 目标进程自己的动态链接器。
 *
 * 关键约束（Android 8.1 / ARM32 / armeabi-v7a）：
 *   - 一律使用目标进程 /proc/<pid>/maps 里的模块基址 + 磁盘 ELF 的 dynsym 计算
 *     符号地址；绝不把本进程 dlopen/dlsym 得到的地址当成目标进程的地址。
 *   - ARM32 的 Thumb/ARM 状态由 CPSR.T 决定：函数地址 bit0=1 表示 Thumb，
 *     调用前要 pc=addr&~1 并置 T 位。
 *   - AAPCS：前 4 个参数走 r0-r3，第 5 个起走栈，sp 必须 8 字节对齐。
 *   - 返回点用一条 UDF 指令（0xE7F000F0）做"沙袋"：远程函数 bx lr 落上去触发
 *     SIGILL，此时 r0 就是返回值；不用 lr=0，避免和真实的空指针崩溃混淆。
 */
#ifndef TG_REMOTE_CALL_H
#define TG_REMOTE_CALL_H

#include <stddef.h>
#include <stdint.h>
#include <sys/types.h>

#define RC_OK           0
#define RC_E_THREAD   (-1)
#define RC_E_ATTACH   (-2)
#define RC_E_REGS     (-3)
#define RC_E_MMAP     (-4)
#define RC_E_READ     (-5)
#define RC_E_WRITE    (-6)
#define RC_E_CALL     (-7)
#define RC_E_SYM      (-8)
#define RC_E_ELF      (-9)
#define RC_E_MAP      (-10)

typedef struct {
    pid_t    pid;              /* 目标进程 */
    pid_t    tid;              /* 实际受控线程 */
    int      attached;
    uint32_t scratch;          /* 目标进程里的一块 RW 页（字符串/栈/沙袋） */
    uint32_t stack_top;        /* 远程调用用的 sp */
    uint32_t trap;             /* UDF 沙袋地址 */
    uint32_t gadget;           /* libc 里的 "pop {pc}" 返程垫片（用于 dlopen/dlsym 的命名空间判定） */
    char     thread_map[160];  /* 选中的线程当时所在的映射（排障用） */
    int      attach_score;
} rc_ctx;

/* 附加到目标进程的一个"安全"线程（不在动态链接器/被 Hook 模块里） */
int rc_attach(rc_ctx *c, pid_t pid, char *err, size_t errlen);
void rc_detach(rc_ctx *c);

/* 在目标进程里分配 scratch 页、建立远程栈与沙袋 */
int rc_prepare(rc_ctx *c, char *err, size_t errlen);

/* 目标进程内存读写（ptrace PEEK/POKE，字对齐处理） */
int rc_read(rc_ctx *c, uint32_t addr, void *buf, size_t len, char *err, size_t errlen);
int rc_read_str(rc_ctx *c, uint32_t addr, char *out, size_t cap, char *err, size_t errlen);
int rc_write(rc_ctx *c, uint32_t addr, const void *buf, size_t len, char *err, size_t errlen);

/* 在目标进程里调用 fn(args...)，返回 r0（返程回到沙袋） */
int rc_call(rc_ctx *c, uint32_t fn, const uint32_t *args, int nargs, uint32_t *ret,
            char *err, size_t errlen);

/*
 * 同上，但"返回地址"落在 libc 的 pop{pc} 垫片上，再由它跳到沙袋。
 * 用途：bionic 的 dlopen/dlsym 会用 __builtin_return_address(0) 判断调用者命名空间，
 * 返回地址是匿名映射时会得到 "(anonymous)" 命名空间并拒绝 /data/local/tmp 下的绝对路径。
 * 让返回地址落在 libc（默认命名空间，非 isolated）里，判定即可放行。
 */
int rc_call_ns(rc_ctx *c, uint32_t fn, const uint32_t *args, int nargs, uint32_t *ret,
               char *err, size_t errlen);

/* 目标进程 mmap（返回 0 成功，*addr 为远端地址） */
int rc_remote_mmap(rc_ctx *c, uint32_t len, int prot, uint32_t *addr,
                   char *err, size_t errlen);

/* 用 /proc/<pid>/maps 的基址 + 磁盘 ELF dynsym 解析符号 */
int rc_maps_base(rc_ctx *c, const char *soname, uint32_t *base,
                 char *path, size_t pathlen, char *err, size_t errlen);
int rc_sym(rc_ctx *c, const char *soname, const char *sym, uint32_t *addr,
           char *err, size_t errlen);

/* maps 里是否已经有某路径片段（用于"是否已注入"判断） */
int rc_maps_has(rc_ctx *c, const char *needle, char *hit, size_t hitcap);

#endif /* TG_REMOTE_CALL_H */
