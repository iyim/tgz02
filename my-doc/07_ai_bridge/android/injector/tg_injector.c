/*
 * tg_injector.c -- T6-01 独立 Native Injector（ARM32 / Android 8.1 / 无 Frida）
 *
 * 职责边界：
 *   找到原厂目标进程 → ptrace 借一个线程 → 用目标进程自己的链接器 dlopen
 *   libtg_hook.so → dlsym("tg_hook_install") 并调用它 → 读回 Hook Agent 的状态。
 *   不解析业务数据、不写原厂内存里的业务结构、不改返回值、不发网络请求。
 *
 * 两种目标模式：
 *   --pid N            手动指定
 *   --name PROC        按 /proc/<pid>/cmdline 精确匹配（默认 com.alibaba.ailabs.genie.smartapp:core）
 *
 * 重复注入保护：先看 /proc/<pid>/maps 里是否已有 libtg_hook.so；有就只查询状态，
 * 不再 dlopen、不再安装 Hook（RTLD_NOLOAD 只取句柄）。
 *
 * 退出码（也是错误阶段，脚本可直接判定）：
 *    0 ok   10 usage   11 find_pid   12 abi   13 attach   14 prepare
 *   15 resolve_sym     16 write     17 dlopen  18 dlsym   19 install  20 status
 *   21 fault_abort     22 nlu_patch（补丁事务失败/未确认）  23 nlu_switch（开关未生效）
 */

#define _GNU_SOURCE 1

#include <dirent.h>
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <signal.h>
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "remote_call.h"

#define DEFAULT_NAME "com.alibaba.ailabs.genie.smartapp:core"
#define SO_TARGET    "libtg_hook.so"

#define RTLD_NOW_      2
#define RTLD_NOLOAD_   4

static rc_ctx g_ctx;
static volatile int g_attached;
static rc_thread_set g_paused;
static volatile int g_paused_active;

static void on_fatal_signal(int sig)
{
    /* 被信号打断时同样要把暂停的线程放回去，再 detach 执行线程 */
    if (g_paused_active) rc_resume_all(&g_paused);
    if (g_attached) rc_detach(&g_ctx);
    _exit(128 + sig);
}

static void out(const char *fmt, ...)
{
    va_list ap;

    va_start(ap, fmt);
    vfprintf(stdout, fmt, ap);
    va_end(ap);
    fputc('\n', stdout);
    fflush(stdout);
}

/* ----------------------------------------------------------- 找目标进程 */

static int cmdline_matches(pid_t pid, const char *name)
{
    char path[64];
    char buf[512];
    int fd;
    ssize_t n;

    snprintf(path, sizeof(path), "/proc/%d/cmdline", (int)pid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return 0;
    n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return 0;
    buf[n] = '\0';
    return strcmp(buf, name) == 0;
}

static pid_t find_pid_by_name(const char *name)
{
    DIR *d;
    struct dirent *de;
    pid_t found = -1;

    d = opendir("/proc");
    if (d == NULL) return -1;
    while ((de = readdir(d)) != NULL) {
        long pid;
        char *endp = NULL;

        if (de->d_name[0] < '0' || de->d_name[0] > '9') continue;
        pid = strtol(de->d_name, &endp, 10);
        if (endp == NULL || *endp != '\0') continue;
        if (cmdline_matches((pid_t)pid, name)) {
            found = (pid_t)pid;
            break;
        }
    }
    closedir(d);
    return found;
}

/* 目标 ABI：/proc/<pid>/exe 的 ELF 头（ELF32 + EM_ARM = armeabi-v7a） */
static int check_abi(pid_t pid)
{
    char path[64];
    Elf32_Ehdr eh;
    int fd;
    ssize_t n;

    snprintf(path, sizeof(path), "/proc/%d/exe", (int)pid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) {
        out("[inject] abi=unknown (open %s failed errno=%d)", path, errno);
        return 12;
    }
    n = read(fd, &eh, sizeof(eh));
    close(fd);
    if (n != (ssize_t)sizeof(eh) ||
        eh.e_ident[EI_MAG0] != ELFMAG0 || eh.e_ident[EI_MAG1] != ELFMAG1 ||
        eh.e_ident[EI_MAG2] != ELFMAG2 || eh.e_ident[EI_MAG3] != ELFMAG3) {
        out("[inject] abi=unknown (cannot read ELF header of %s)", path);
        return 12;
    }
    out("[inject] abi=ELF%d/%s  class=%d machine=%d",
        eh.e_ident[EI_CLASS] == ELFCLASS32 ? 32 : 64,
        eh.e_machine == EM_ARM ? "ARM" : (eh.e_machine == EM_AARCH64 ? "AARCH64" : "other"),
        (int)eh.e_ident[EI_CLASS], (int)eh.e_machine);
    if (eh.e_ident[EI_CLASS] != ELFCLASS32 || eh.e_machine != EM_ARM) {
        out("[inject] ERROR target ABI is not armeabi-v7a; refusing to inject");
        return 12;
    }
    return 0;
}

/* ------------------------------------------------------------- 远程小工具 */

static int remote_symbol(rc_ctx *c, const char *lib, const char *sym, uint32_t *addr)
{
    char err[256];

    if (rc_sym(c, lib, sym, addr, err, sizeof(err)) == RC_OK) return 0;
    return -1;
}

static int resolve_in_any(rc_ctx *c, const char *sym, uint32_t *addr, const char **lib_out,
                          char *err, size_t errlen)
{
    static const char *libs[] = { "libdl.so", "libc.so" };
    char e[200];
    int i;

    for (i = 0; i < 2; i++) {
        if (remote_symbol(c, libs[i], sym, addr) == 0) {
            *lib_out = libs[i];
            return 0;
        }
        snprintf(e, sizeof(e), "%.180s", "last probe failed");
    }
    snprintf(err, errlen, "cannot resolve %s in libdl.so or libc.so (%s)", sym, e);
    return -1;
}

static int remote_symbol_string(rc_ctx *c, uint32_t fn, char *buf, size_t cap,
                                char *err, size_t errlen)
{
    uint32_t p = 0;
    int rc;

    rc = rc_call(c, fn, NULL, 0, &p, err, errlen);
    if (rc != RC_OK) return rc;
    if (p == 0) {
        buf[0] = '\0';
        return RC_OK;
    }
    return rc_read_str(c, p, buf, cap, err, errlen);
}

/* ---------------------------------------------------- 线程保护（补丁窗口） */

/*
 * 暂停执行线程以外的全部线程，并确认没有任何线程的 PC 落在补丁区间 [lo,hi) 里。
 * 有线程正好停在区间内时：先把大家放回去，等 20 ms 再重来（最多 12 次）。
 * 这么做是因为目标函数入口只有 8 字节：如果某个线程已经取指到 func+4，
 * 我们把 func+0 改成跳转、或把 func+4 改成字面量，都会让它执行到半条指令。
 * 返回 0 = 所有线程已暂停且区间干净（调用方负责 rc_resume_all）。
 */
static int pause_and_check(uint32_t lo, uint32_t hi, char *err, size_t errlen)
{
    const int max_attempts = 12;
    int attempt;

    for (attempt = 1; attempt <= max_attempts; attempt++) {
        pid_t offender = 0;
        int rc = rc_pause_all(&g_ctx, &g_paused, err, errlen);

        if (rc != RC_OK) {
            out("[inject] ERROR stage=pause rc=%d err=%s", rc, err);
            return rc;
        }
        g_paused_active = 1;

        rc = rc_pc_in_range(&g_ctx, &g_paused, lo, hi, &offender, err, errlen);
        if (rc < 0) {
            out("[inject] ERROR stage=pc_check rc=%d err=%s", rc, err);
            rc_resume_all(&g_paused);
            g_paused_active = 0;
            return rc;
        }
        if (rc == 0) {
            out("[inject] paused %d other threads (exec tid=%d); [0x%08x,0x%08x) is clear",
                g_paused.n, (int)g_ctx.tid, lo, hi);
            return RC_OK;
        }

        out("[inject] attempt %d: tid=%d sits inside [0x%08x,0x%08x); resuming all, retrying",
            attempt, (int)offender, lo, hi);
        rc_resume_all(&g_paused);
        g_paused_active = 0;
        usleep(20000);
    }

    out("[inject] ERROR stage=pc_check: no safe window after %d attempts", max_attempts);
    return RC_E_UNSAFE;
}
/* -------------------------------------------------- T8-05：NLU 控制通道 */
/*
 * 控制通道就是注入器本来就在用的那一条：ptrace 附身目标进程的一个线程 →
 * 用目标进程自己的 dlsym 取 libtg_hook.so 的导出函数 → rc_call 在目标里执行。
 * 没有任何新的 IPC、没有 socket、没有文件、不改进程环境变量 —— 因为这正是
 * T8-04 审查指出的问题：supervisor 的 getenv 与 :core 里的库毫无关系。
 *
 * 三个动作的权限条件完全一致：root（或与目标相同的 uid）+ ptrace 允许
 * （Android 8.1 上 root 直接 attach 即可；SELinux Permissive 已在设备上确认）。
 *
 * 写入口补丁的两条命令（--nlu-install / --nlu-uninstall）在调用前一定先做
 * "暂停全部线程 + 核对 PC 区间"，然后把 world_frozen=1 传给库里的事务；
 * 库里对 world_frozen=0 一律拒绝写 —— 安全前提不会因为调用方疏忽而消失。
 */
#define NLU_NONE       0
#define NLU_INSTALL    1
#define NLU_UNINSTALL  2
#define NLU_ON         3
#define NLU_OFF        4
#define NLU_STATUS     5
#define NLU_OBSERVE    6        /* T8-12.15：只读导出被动观测环快照 */

typedef struct {
    uint32_t prepare, lo, hi, install, uninstall;
    uint32_t takeover_set, takeover_get, installed, entry_code, stats, last_error, state_ready;
    uint32_t observe;           /* T8-12.15 tg_nlu_observe */
} nlu_syms;

static nlu_syms g_nlu;

#define NLU_TEXT_OFF 0x400u     /* 与 path(0x100)/symbol(0x180) 不重叠（scratch 64 KB） */
#define NLU_TEXT_CAP 512u

static int nlu_text(uint32_t fn, char *buf, size_t cap, char *err, size_t errlen)
{
    uint32_t args[2];
    uint32_t ret = 0;
    int rc;

    if (buf == NULL || cap == 0) return RC_E_SYM;
    buf[0] = '\0';
    if (fn == 0) return RC_E_SYM;
    rc = rc_write(&g_ctx, g_ctx.scratch + NLU_TEXT_OFF, "", 1, err, errlen);
    if (rc != RC_OK) return rc;
    args[0] = g_ctx.scratch + NLU_TEXT_OFF;
    args[1] = (uint32_t)cap;
    rc = rc_call(&g_ctx, fn, args, 2, &ret, err, errlen);
    if (rc != RC_OK) return rc;
    return rc_read_str(&g_ctx, g_ctx.scratch + NLU_TEXT_OFF, buf, cap, err, errlen);
}

/*
 * T8-12.15：三参数版本（观测快照要带 from）。缓冲同样放在 scratch 里，
 * 但比 512 字节的状态行大：scratch 是 64 KB，数据区 0x0..0x8000 给远端栈，
 * 所以 0x400 起用 8 KB 不会碰到栈和沙袋（沙袋在 0xF000）。
 */
#define OBS_TEXT_OFF 0x400u
#define OBS_TEXT_CAP 8192u

static int nlu_text3(uint32_t fn, char *buf, size_t cap, uint32_t a2, uint32_t *ret,
                     char *err, size_t errlen)
{
    uint32_t args[3];
    int rc;

    if (buf == NULL || cap == 0) return RC_E_SYM;
    buf[0] = '\0';
    if (fn == 0) return RC_E_SYM;
    rc = rc_write(&g_ctx, g_ctx.scratch + OBS_TEXT_OFF, "", 1, err, errlen);
    if (rc != RC_OK) return rc;
    args[0] = g_ctx.scratch + OBS_TEXT_OFF;   /* r0 = buf   */
    args[1] = (uint32_t)cap;                  /* r1 = cap   */
    args[2] = a2;                             /* r2 = from  */
    rc = rc_call(&g_ctx, fn, args, 3, ret, err, errlen);
    if (rc != RC_OK) return rc;
    return rc_read_str(&g_ctx, g_ctx.scratch + OBS_TEXT_OFF, buf, cap, err, errlen);
}

/* 打印库里的 last_error（NLU 段有独立错误缓冲，不会和 T6 的混） */
static void nlu_show_error(void)
{
    char txt[256];
    char err[200];

    if (g_nlu.last_error == 0) return;
    if (nlu_text(g_nlu.last_error, txt, sizeof(txt), err, sizeof(err)) == RC_OK && txt[0] != '\0') {
        out("[inject] nlu_last_error=%s", txt);
    }
}

static int nlu_do(int cmd)
{
    char err[256];
    char txt[512];
    uint32_t ret = 0, lo = 0, hi = 0, installed = 0, takeover = 0, ready = 0;
    uint32_t args[2];
    int rc;

    if (g_nlu.prepare == 0) {
        out("[inject] ERROR stage=nlu_symbols libtg_hook.so has no tg_nlu_* exports "
            "(rebuild the library for T8-05)");
        return 18;
    }

    /* 只读解析：定位 onNlpResult 入口 + 校验序言（不改任何字节） */
    rc = rc_call(&g_ctx, g_nlu.prepare, NULL, 0, &ret, err, sizeof(err));
    if (rc != RC_OK) {
        out("[inject] ERROR stage=nlu_prepare_call rc=%d err=%s", rc, err);
        return 19;
    }
    if ((int)ret != 0) {
        nlu_show_error();
        out("[inject] ERROR stage=nlu_prepare rc=%d", (int)ret);
        return 19;
    }
    if (g_nlu.lo != 0) (void)rc_call(&g_ctx, g_nlu.lo, NULL, 0, &lo, err, sizeof(err));
    if (g_nlu.hi != 0) (void)rc_call(&g_ctx, g_nlu.hi, NULL, 0, &hi, err, sizeof(err));
    if (lo == 0 || hi <= lo) {
        out("[inject] ERROR stage=nlu_range lo=0x%08x hi=0x%08x", lo, hi);
        return 19;
    }
    out("[inject] nlu entry=0x%08x patch=[0x%08x,0x%08x)", lo, lo, hi);

    /* 6) T8-12.15：只读导出被动观测环。
     *    - 不改补丁、不改开关、不暂停线程；
     *    - 输出用 "obs|" 前缀，和上面的 nlu stats 行在文本层面就不可能混；
     *    - 分块取：tg_nlu_observe(buf,cap,from) 返回下一次的 from，0 = 取完。 */
    if (cmd == NLU_OBSERVE) {
        char obuf[OBS_TEXT_CAP];
        uint32_t from = 0;
        int chunks = 0, lines = 0, stop = 0;

        if (g_nlu.observe == 0) {
            out("[inject] ERROR stage=nlu_observe libtg_hook.so has no tg_nlu_observe export "
                "(rebuild the library for T8-12.15)");
            return 18;
        }
        (void)rc_call(&g_ctx, g_nlu.installed, NULL, 0, &installed, err, sizeof(err));
        (void)rc_call(&g_ctx, g_nlu.takeover_get, NULL, 0, &takeover, err, sizeof(err));
        out("[inject] observe_begin installed=%d takeover=%d (obs-note: these are the T8-12.15 "
            "observation records, not the nlu stats line)", (int)installed, (int)takeover);

        while (!stop && chunks < 64) {
            uint32_t next = 0;
            int n;

            rc = nlu_text3(g_nlu.observe, obuf, sizeof(obuf), from, &next, err, sizeof(err));
            if (rc != RC_OK) {
                out("[inject] ERROR stage=nlu_observe_call from=%u rc=%d err=%s",
                    (unsigned)from, rc, err);
                return 24;
            }
            chunks++;
            n = (int)next;

            {   /* 逐行打印，空行不输出 */
                char *p = obuf;

                while (p != NULL && *p != '\0') {
                    char *nl = strchr(p, '\n');

                    if (nl != NULL) *nl = '\0';
                    if (*p != '\0') { out("[inject] obs| %s", p); lines++; }
                    if (nl == NULL) break;
                    p = nl + 1;
                }
            }

            if (n < 0) {
                out("[inject] ERROR stage=nlu_observe_ret ret=%d", n);
                return 24;
            }
            if (n == 0) stop = 1;
            else from = (uint32_t)n;
        }
        out("[inject] observe_end chunks=%d lines=%d", chunks, lines);
        out("[inject] RESULT nlu-observe ok installed=%d takeover=%d records=%d",
            (int)installed, (int)takeover, lines);
        return 0;
    }

    if (cmd == NLU_STATUS) {
        char entry[400];
        char stats[600];

        (void)rc_call(&g_ctx, g_nlu.installed, NULL, 0, &installed, err, sizeof(err));
        (void)rc_call(&g_ctx, g_nlu.takeover_get, NULL, 0, &takeover, err, sizeof(err));
        if (g_nlu.state_ready != 0) (void)rc_call(&g_ctx, g_nlu.state_ready, NULL, 0, &ready, err, sizeof(err));
        entry[0] = '\0';
        stats[0] = '\0';
        if (g_nlu.entry_code != 0) (void)nlu_text(g_nlu.entry_code, entry, sizeof(entry), err, sizeof(err));
        if (g_nlu.stats != 0) (void)nlu_text(g_nlu.stats, stats, sizeof(stats), err, sizeof(err));
        out("[inject] nlu hook_installed=%d takeover=%d state_ready=%d",
            (int)installed, (int)takeover, (int)ready);
        if (entry[0] != '\0') out("[inject] nlu entry_code=%s", entry);
        if (stats[0] != '\0') out("[inject] nlu stats=%s", stats);
        out("[inject] RESULT nlu-status ok installed=%d takeover=%d", (int)installed, (int)takeover);
        return 0;
    }

    if (cmd == NLU_INSTALL || cmd == NLU_UNINSTALL) {
        const char *what = (cmd == NLU_INSTALL) ? "install" : "uninstall";
        uint32_t fn = (cmd == NLU_INSTALL) ? g_nlu.install : g_nlu.uninstall;

        (void)rc_call(&g_ctx, g_nlu.installed, NULL, 0, &installed, err, sizeof(err));
        out("[inject] nlu installed_before=%d", (int)installed);
        if (cmd == NLU_INSTALL && installed == 1) {
            (void)rc_call(&g_ctx, g_nlu.takeover_get, NULL, 0, &takeover, err, sizeof(err));
            out("[inject] nlu patch already installed; takeover unchanged=%d", (int)takeover);
            out("[inject] RESULT nlu-install already_installed=1 takeover=%d", (int)takeover);
            return 0;
        }
        if (cmd == NLU_UNINSTALL && installed == 0) {
            out("[inject] nlu entry is already the original prologue; nothing to restore");
            out("[inject] RESULT nlu-uninstall already_original=1");
            return 0;
        }

        /* 关键一步：全部线程停住 + 确认没有线程的 PC 在补丁区间里 */
        rc = pause_and_check(lo, hi, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=nlu_pause cmd=%s rc=%d err=%s (no byte written)",
                what, rc, err);
            return 19;
        }
        out("[inject] nlu world frozen (%d threads), calling tg_nlu_%s(1)", g_paused.n, what);

        args[0] = 1;    /* world_frozen：上面的 pause_and_check 就是它的依据 */
        args[1] = 0;
        rc = rc_call(&g_ctx, fn, args, 1, &ret, err, sizeof(err));
        rc_resume_all(&g_paused);
        g_paused_active = 0;
        if (rc != RC_OK) {
            out("[inject] ERROR stage=nlu_%s_call rc=%d err=%s", what, rc, err);
            return 22;
        }
        out("[inject] tg_nlu_%s(1) = %d (threads resumed)", what, (int)ret);

        /* 读回：安装状态、开关状态、四组机器码（失败也会打印，便于判读回滚结果） */
        (void)rc_call(&g_ctx, g_nlu.installed, NULL, 0, &installed, err, sizeof(err));
        (void)rc_call(&g_ctx, g_nlu.takeover_get, NULL, 0, &takeover, err, sizeof(err));
        txt[0] = '\0';
        if (g_nlu.entry_code != 0) (void)nlu_text(g_nlu.entry_code, txt, sizeof(txt), err, sizeof(err));
        out("[inject] nlu installed_after=%d takeover=%d entry_code=%s",
            (int)installed, (int)takeover, txt);

        if ((int)ret != 0) {
            nlu_show_error();
            out("[inject] ERROR stage=nlu_%s rc=%d (patch NOT confirmed)", what, (int)ret);
            return 22;
        }
        if (cmd == NLU_INSTALL && installed != 1) {
            out("[inject] ERROR stage=nlu_verify installed=%d (expected 1)", (int)installed);
            return 22;
        }
        if (cmd == NLU_UNINSTALL && installed != 0) {
            out("[inject] ERROR stage=nlu_verify installed=%d (expected 0)", (int)installed);
            return 22;
        }
        out("[inject] RESULT nlu-%s ok installed=%d takeover=%d", what, (int)installed, (int)takeover);
        return 0;
    }

    /* NLU_ON / NLU_OFF：运行时开关，就地改目标进程里的状态 */
    {
        uint32_t want = (cmd == NLU_ON) ? 1u : 0u;
        const char *what = (cmd == NLU_ON) ? "on" : "off";

        args[0] = want;
        args[1] = 0;
        rc = rc_call(&g_ctx, g_nlu.takeover_set, args, 1, &ret, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=nlu_takeover_call rc=%d err=%s", rc, err);
            return 23;
        }
        (void)rc_call(&g_ctx, g_nlu.takeover_get, NULL, 0, &takeover, err, sizeof(err));
        (void)rc_call(&g_ctx, g_nlu.installed, NULL, 0, &installed, err, sizeof(err));
        if (g_nlu.state_ready != 0) (void)rc_call(&g_ctx, g_nlu.state_ready, NULL, 0, &ready, err, sizeof(err));
        out("[inject] tg_nlu_takeover_set(%u) = %d; readback=%u installed=%u state_ready=%u",
            (unsigned)want, (int)ret, (unsigned)takeover, (unsigned)installed, (unsigned)ready);

        if ((int)ret != 0) {
            nlu_show_error();
            out("[inject] ERROR stage=nlu_takeover rc=%d (switch unchanged=%u)", (int)ret, (unsigned)takeover);
            return 23;
        }
        if (takeover != want) {
            out("[inject] ERROR stage=nlu_takeover_verify want=%u readback=%u",
                (unsigned)want, (unsigned)takeover);
            return 23;
        }
        if (want == 1 && ready == 0) {
            /* 开关确实开了，但会话表不可用 -> 生效方式是 fail-closed，必须让操作者看见 */
            out("[inject] WARN nlu takeover=1 but state_ready=0: callbacks are fail-closed (drop)");
        }
        out("[inject] RESULT nlu-%s ok takeover=%u installed=%u state_ready=%u",
            what, (unsigned)takeover, (unsigned)installed, (unsigned)ready);
        return 0;
    }
}

int main(int argc, char **argv)
{
    pid_t pid = -1;
    const char *name = DEFAULT_NAME;
    const char *so = NULL;
    int check_only = 0;
    int uninstall = 0;
    const char *fault = "";
    int pause_fail_after = 0;
    int pc_busy_claims = 0;
    int pc_readfail = 0;
    int pc_readfail_errno = 0;
    int pc_readfail_exec = 0;
    int verbose = 0;
    int nlu_cmd = NLU_NONE;
    int i;
    int rc;
    int exit_code = 0;
    char err[256];
    struct stat st;
    uint32_t dlopen_fn = 0, dlsym_fn = 0, dlerror_fn = 0;
    uint32_t handle = 0;
    uint32_t install_fn = 0, status_fn = 0, last_error_fn = 0, stats_fn = 0, hooked_fn = 0;
    uint32_t prepare_fn = 0, lo_fn = 0, hi_fn = 0, patch_lo = 0, patch_hi = 0;
    uint32_t uninstall_fn = 0;
    uint32_t ret = 0;
    char already = 0;
    char hit[256];
    const char *so_base = SO_TARGET;

    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--pid") == 0 && i + 1 < argc) {
            pid = (pid_t)atoi(argv[++i]);
        } else if (strcmp(argv[i], "--name") == 0 && i + 1 < argc) {
            name = argv[++i];
        } else if (strcmp(argv[i], "--so") == 0 && i + 1 < argc) {
            so = argv[++i];
        } else if (strcmp(argv[i], "--check") == 0) {
            check_only = 1;
        } else if (strcmp(argv[i], "--uninstall") == 0) {
            uninstall = 1;
        } else if (strcmp(argv[i], "--nlu-install") == 0) {
            nlu_cmd = NLU_INSTALL;
        } else if (strcmp(argv[i], "--nlu-uninstall") == 0) {
            nlu_cmd = NLU_UNINSTALL;
        } else if (strcmp(argv[i], "--nlu-on") == 0) {
            nlu_cmd = NLU_ON;
        } else if (strcmp(argv[i], "--nlu-off") == 0) {
            nlu_cmd = NLU_OFF;
        } else if (strcmp(argv[i], "--nlu-status") == 0) {
            nlu_cmd = NLU_STATUS;
        } else if (strcmp(argv[i], "--nlu-observe") == 0) {
            nlu_cmd = NLU_OBSERVE;
        } else if (strcmp(argv[i], "--fault") == 0 && i + 1 < argc) {
            fault = argv[++i];
        } else if (strcmp(argv[i], "--verbose") == 0) {
            verbose = 1;
        } else {
            out("usage: %s [--pid N | --name PROC] --so /path/libtg_hook.so "
                "[--check|--uninstall] [--nlu-status|--nlu-observe|--nlu-install|--nlu-uninstall|--nlu-on|--nlu-off] "
                "[--fault NAME] [--verbose]", argv[0]);
            return 10;
        }
    }
    if (so == NULL) {
        out("usage: %s [--pid N | --name PROC] --so /path/libtg_hook.so "
            "[--check|--uninstall] [--nlu-status|--nlu-observe|--nlu-install|--nlu-uninstall|--nlu-on|--nlu-off] "
            "[--fault NAME] [--verbose]", argv[0]);
        return 10;
    }

    /* 写类 --nlu-* 不能和 --check/--uninstall 混用：语义会互相掩盖，报成功也没人信 */
    if (nlu_cmd != NLU_NONE && (check_only || uninstall)) {
        out("[inject] ERROR stage=usage --nlu-* cannot be combined with --check/--uninstall");
        return 10;
    }

    if (strncmp(fault, "pause-fail:", 11) == 0) {
        pause_fail_after = atoi(fault + 11);
        out("[inject] fault=pause_fail_after=%d", pause_fail_after);
    } else if (strcmp(fault, "abort-after-pause") == 0) {
        out("[inject] fault=abort_after_pause");
    } else if (strncmp(fault, "pc-busy:", 8) == 0) {
        pc_busy_claims = atoi(fault + 8);
        out("[inject] fault=pc_busy_claims=%d", pc_busy_claims);
    } else if (strncmp(fault, "pc-readfail-exec", 16) == 0) {
        /* 让"执行线程"那一次读取失败：验证执行线程这条路径同样 fail-closed */
        pc_readfail_exec = 1;
        out("[inject] fault=pc_readfail_exec");
    } else if (strncmp(fault, "pc-readfail", 11) == 0) {
        /* pc-readfail / pc-readfail:ERRNO —— 让 PC 读取假装失败一次（errno 默认 EPERM=1）。
         * 一次就够：读失败必须立刻中止本次安装，不重试、不放过。 */
        pc_readfail = 1;
        pc_readfail_errno = (fault[11] == ':') ? atoi(fault + 12) : 0;
        out("[inject] fault=pc_readfail errno=%d", pc_readfail_errno ? pc_readfail_errno : EPERM);
    }

    out("[inject] tg_injector t6-01 begin");
    out("[inject] so=%s check_only=%d", so, check_only);

    /* 0) .so 必须存在，并提示目标进程（uid 不一定是 root）能否读到 */
    if (stat(so, &st) != 0) {
        out("[inject] ERROR stage=so_stat file=%s errno=%d", so, errno);
        return 11;
    }
    out("[inject] so_size=%ld mode=%04o (target needs o+r on the file and o+x on every parent dir)",
        (long)st.st_size, (unsigned)(st.st_mode & 07777));

    /* 1) PID */
    if (pid <= 0) {
        pid = find_pid_by_name(name);
        if (pid <= 0) {
            out("[inject] ERROR stage=find_pid name=%s not running", name);
            return 11;
        }
        out("[inject] pid=%d (matched cmdline=%s)", (int)pid, name);
    } else {
        out("[inject] pid=%d (manual)", (int)pid);
    }

    /* 2) ABI */
    rc = check_abi(pid);
    if (rc != 0) return rc;

    /* 3) 已注入？按"本次要加载的那个文件名"判断（而不是写死 libtg_hook.so），
     *    这样同名/改名并存时行为一致，也不会因为别的库已映射就跳过加载。 */
    memset(&g_ctx, 0, sizeof(g_ctx));
    g_ctx.pid = pid;
    g_ctx.pause_fail_after = pause_fail_after;   /* memset 之后再放，避免被清零 */
    g_ctx.pc_busy_claims = pc_busy_claims;
    g_ctx.pc_readfail = pc_readfail;
    g_ctx.pc_readfail_errno = pc_readfail_errno;
    g_ctx.pc_readfail_exec = pc_readfail_exec;
    {
        const char *b = strrchr(so, '/');
        so_base = (b != NULL) ? b + 1 : so;
    }
    if (rc_maps_has(&g_ctx, so_base, hit, sizeof(hit))) {
        already = 1;
        out("[inject] already_mapped=1 (%s)", hit);
        hit[0] = '\0';
    } else {
        out("[inject] already_mapped=0");
    }

    if (check_only && !already) {
        out("[inject] check_only with no library mapped: nothing to query");
        return 0;
    }

    /* 4) 附加 */
    signal(SIGINT, on_fatal_signal);
    signal(SIGTERM, on_fatal_signal);
    signal(SIGHUP, on_fatal_signal);

    rc = rc_attach(&g_ctx, pid, err, sizeof(err));
    if (rc != RC_OK) {
        out("[inject] ERROR stage=attach rc=%d err=%s", rc, err);
        return 13;
    }
    g_attached = 1;
    out("[inject] attached tid=%d (thread was in %s, score=%d)",
        (int)g_ctx.tid, g_ctx.thread_map, g_ctx.attach_score);

    rc = rc_prepare(&g_ctx, err, sizeof(err));
    if (rc != RC_OK) {
        out("[inject] ERROR stage=prepare rc=%d err=%s", rc, err);
        exit_code = 14;
        goto detach;
    }
    out("[inject] scratch=0x%08x stack=0x%08x trap=0x%08x gadget=0x%08x",
        g_ctx.scratch, g_ctx.stack_top, g_ctx.trap, g_ctx.gadget);

    /* 5) 目标进程里的 dlopen/dlsym/dlerror */
    {
        const char *lib = NULL;

        if (resolve_in_any(&g_ctx, "dlopen", &dlopen_fn, &lib, err, sizeof(err)) != 0) {
            out("[inject] ERROR stage=resolve_sym %s", err);
            exit_code = 15;
            goto detach;
        }
        out("[inject] dlopen=0x%08x (%s)", dlopen_fn, lib);

        if (resolve_in_any(&g_ctx, "dlsym", &dlsym_fn, &lib, err, sizeof(err)) != 0) {
            out("[inject] ERROR stage=resolve_sym %s", err);
            exit_code = 15;
            goto detach;
        }
        out("[inject] dlsym=0x%08x (%s)", dlsym_fn, lib);

        if (resolve_in_any(&g_ctx, "dlerror", &dlerror_fn, &lib, err, sizeof(err)) != 0) {
            dlerror_fn = 0;
            out("[inject] dlerror=unavailable (continuing without error text)");
        } else {
            out("[inject] dlerror=0x%08x (%s)", dlerror_fn, lib);
        }
    }

    /* 6) 把 .so 路径写进目标进程 */
    {
        size_t n = strlen(so) + 1;
        uint32_t at = g_ctx.scratch + 0x100;

        if (n > 240) {
            out("[inject] ERROR stage=write path too long (%u bytes)", (unsigned)n);
            exit_code = 16;
            goto detach;
        }
        rc = rc_write(&g_ctx, at, so, n, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=write rc=%d err=%s", rc, err);
            exit_code = 16;
            goto detach;
        }
        {
            char back[256];
            rc = rc_read_str(&g_ctx, at, back, sizeof(back), err, sizeof(err));
            if (rc != RC_OK || strcmp(back, so) != 0) {
                out("[inject] ERROR stage=write_verify wrote=%s read=%s", so, back);
                exit_code = 16;
                goto detach;
            }
        }
        out("[inject] path_written=0x%08x len=%u", at, (unsigned)n);

        /* 7) dlopen */
        {
            uint32_t args[2];
            uint32_t flags = (uint32_t)(RTLD_NOW_ | (already ? RTLD_NOLOAD_ : 0));

            args[0] = at;
            args[1] = flags;
            rc = rc_call_ns(&g_ctx, dlopen_fn, args, 2, &handle, err, sizeof(err));
            if (rc != RC_OK) {
                out("[inject] ERROR stage=dlopen_call rc=%d err=%s", rc, err);
                exit_code = 17;
                goto detach;
            }
            if (handle == 0) {
                char txt[200] = "";
                if (dlerror_fn != 0) (void)remote_symbol_string(&g_ctx, dlerror_fn, txt, sizeof(txt), err, sizeof(err));
                out("[inject] ERROR stage=dlopen handle=0 flags=0x%x dlerror=%s", flags, txt);
                exit_code = 17;
                goto detach;
            }
            out("[inject] dlopen ok handle=0x%08x flags=0x%x", handle, flags);
        }
    }

    /* 8) dlsym 取 Hook Agent 导出函数 */
    {
        struct { const char *name; uint32_t *slot; } syms[] = {
            { "tg_hook_install",    &install_fn },
            { "tg_hook_prepare",    &prepare_fn },
            { "tg_hook_patch_lo",   &lo_fn },
            { "tg_hook_patch_hi",   &hi_fn },
            { "tg_hook_status",     &status_fn },
            { "tg_hook_last_error", &last_error_fn },
            { "tg_hook_stats",      &stats_fn },
            { "tg_hook_hooked",     &hooked_fn },
            { "tg_hook_uninstall",  &uninstall_fn },
        };
        size_t k;

        for (k = 0; k < sizeof(syms) / sizeof(syms[0]); k++) {
            uint32_t name_at = g_ctx.scratch + 0x180;
            uint32_t args[2];
            size_t n = strlen(syms[k].name) + 1;

            if (n > 64) { exit_code = 18; goto detach; }
            rc = rc_write(&g_ctx, name_at, syms[k].name, n, err, sizeof(err));
            if (rc != RC_OK) {
                out("[inject] ERROR stage=write_symbol name=%s err=%s", syms[k].name, err);
                exit_code = 16;
                goto detach;
            }
            args[0] = handle;
            args[1] = name_at;
            rc = rc_call_ns(&g_ctx, dlsym_fn, args, 2, syms[k].slot, err, sizeof(err));
            if (rc != RC_OK || *syms[k].slot == 0) {
                out("[inject] ERROR stage=dlsym symbol=%s rc=%d err=%s", syms[k].name, rc,
                    rc == RC_OK ? "symbol not found" : err);
                exit_code = 18;
                goto detach;
            }
        }
        out("[inject] dlsym ok install=0x%08x prepare=0x%08x status=0x%08x",
            install_fn, prepare_fn, status_fn);
    }

    /* 8b) 解析目标并取补丁范围（tg_hook_prepare 只读：定位模块/符号/校验序言） */
    {
        rc = rc_call(&g_ctx, prepare_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=prepare_call rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        out("[inject] tg_hook_prepare() = %d", (int)ret);
        if ((int)ret != 0) {
            char txt[200] = "";
            (void)remote_symbol_string(&g_ctx, last_error_fn, txt, sizeof(txt), err, sizeof(err));
            out("[inject] ERROR stage=prepare rc=%d last_error=%s", (int)ret, txt);
            exit_code = 19;
            goto detach;
        }
        rc = rc_call(&g_ctx, lo_fn, NULL, 0, &patch_lo, err, sizeof(err));
        if (rc == RC_OK) rc = rc_call(&g_ctx, hi_fn, NULL, 0, &patch_hi, err, sizeof(err));
        if (rc != RC_OK || patch_lo == 0 || patch_hi <= patch_lo) {
            out("[inject] ERROR stage=patch_range rc=%d lo=0x%08x hi=0x%08x err=%s",
                rc, patch_lo, patch_hi, err);
            exit_code = 19;
            goto detach;
        }
        out("[inject] patch_range=[0x%08x,0x%08x)", patch_lo, patch_hi);
    }

    /* 8b2) T8-05：NLU 控制通道（可选符号 + 子命令）
     *
     * 这些符号是 T8-05 新加的；老库没有就报 18（明确"库太旧"），不猜、不降级。
     * 顺序很关键：先解析（只读）→ 再暂停全世界 → 再落/卸补丁 → 恢复 → 读回核实。
     */
    if (nlu_cmd != NLU_NONE) {
        struct { const char *name; uint32_t *slot; } nsyms[] = {
            { "tg_nlu_prepare",        &g_nlu.prepare },
            { "tg_nlu_patch_lo",       &g_nlu.lo },
            { "tg_nlu_patch_hi",       &g_nlu.hi },
            { "tg_nlu_install",        &g_nlu.install },
            { "tg_nlu_uninstall",      &g_nlu.uninstall },
            { "tg_nlu_takeover_set",   &g_nlu.takeover_set },
            { "tg_nlu_takeover_get",   &g_nlu.takeover_get },
            { "tg_nlu_hook_installed", &g_nlu.installed },
            { "tg_nlu_entry_code",     &g_nlu.entry_code },
            { "tg_nlu_stats",          &g_nlu.stats },
            { "tg_nlu_last_error",     &g_nlu.last_error },
            { "tg_nlu_state_ready",    &g_nlu.state_ready },
            { "tg_nlu_observe",        &g_nlu.observe },
        };
        size_t k;

        memset(&g_nlu, 0, sizeof(g_nlu));
        for (k = 0; k < sizeof(nsyms) / sizeof(nsyms[0]); k++) {
            uint32_t name_at = g_ctx.scratch + 0x180;
            uint32_t args[2];
            size_t n = strlen(nsyms[k].name) + 1;

            if (n > 64) { exit_code = 18; goto detach; }
            rc = rc_write(&g_ctx, name_at, nsyms[k].name, n, err, sizeof(err));
            if (rc != RC_OK) {
                out("[inject] ERROR stage=write_symbol name=%s err=%s", nsyms[k].name, err);
                exit_code = 16;
                goto detach;
            }
            args[0] = handle;
            args[1] = name_at;
            rc = rc_call_ns(&g_ctx, dlsym_fn, args, 2, nsyms[k].slot, err, sizeof(err));
            if (rc != RC_OK || *nsyms[k].slot == 0) {
                *nsyms[k].slot = 0;
                out("[inject] nlu symbol missing: %s (old library?)", nsyms[k].name);
            }
        }
        out("[inject] nlu dlsym: prepare=0x%08x install=0x%08x takeover_set=0x%08x",
            g_nlu.prepare, g_nlu.install, g_nlu.takeover_set);

        exit_code = nlu_do(nlu_cmd);
        goto detach;
    }

    /* 8c) --uninstall：与安装相同的线程保护，再写回原厂两条指令 */
    if (uninstall) {
        if (!already) {
            out("[inject] ERROR stage=uninstall %s is not mapped in pid %d", SO_TARGET, (int)pid);
            exit_code = 19;
            goto detach;
        }
        rc = pause_and_check(patch_lo, patch_hi, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=uninstall_pause rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        rc = rc_call(&g_ctx, uninstall_fn, NULL, 0, &ret, err, sizeof(err));
        rc_resume_all(&g_paused);
        g_paused_active = 0;
        if (rc != RC_OK) {
            out("[inject] ERROR stage=uninstall_call rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        out("[inject] tg_hook_uninstall() = %d (threads resumed)", (int)ret);
        rc = rc_call(&g_ctx, hooked_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc == RC_OK) out("[inject] hooked=%d after uninstall", (int)ret);
        out("[inject] RESULT uninstalled pid=%d", (int)pid);
        exit_code = 0;
        goto detach;
    }

    /* 8d) 故障注入：只走"暂停 → 检查 → 恢复"这一段，用来验证清理路径
     *     （abort-after-pause：暂停成功后故意不打补丁；pause-fail:N：暂停中途失败）
     *     这一段排在安装分支之前，且不带任何"hooked=1 就跳过"的条件，
     *     所以这两种故障注入不可能被正常安装逻辑绕过。
     *     注：pc-readfail 故意不进这一段 —— 它要走的正是真实的安装分支，
     *     用来证明"PC 读不到 → 安装中止且不写补丁"。 */
    if (!check_only && (strcmp(fault, "abort-after-pause") == 0 ||
                        strncmp(fault, "pause-fail:", 11) == 0)) {
        rc = pause_and_check(patch_lo, patch_hi, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=install_pause rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        rc_resume_all(&g_paused);
        g_paused_active = 0;
        out("[inject] ERROR stage=install_aborted (fault injection): threads resumed, no patch written");
        exit_code = 21;
        goto detach;
    }

    /* 9) 安装 Hook：先暂停全部其它线程并确认补丁窗口干净，再落补丁。
     *    already_mapped 只表示"库已加载"，不代表"补丁在"——--uninstall 之后同一个实例
     *    需要能重新安装，所以这里以 hooked 状态为准（hooked=1 才是幂等跳过）。 */
    if (!check_only) {
        uint32_t hooked_now = 0;

        rc = rc_call(&g_ctx, hooked_fn, NULL, 0, &hooked_now, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=hooked_query rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        if (hooked_now != 0) {
            out("[inject] patch already installed (hooked=1); nothing to do");
        } else {
            rc = pause_and_check(patch_lo, patch_hi, err, sizeof(err));
            if (rc != RC_OK) {
                out("[inject] ERROR stage=install_pause rc=%d err=%s", rc, err);
                exit_code = 19;
                goto detach;
            }

            rc = rc_call(&g_ctx, install_fn, NULL, 0, &ret, err, sizeof(err));
            rc_resume_all(&g_paused);
            g_paused_active = 0;
            if (rc != RC_OK) {
                out("[inject] ERROR stage=install_call rc=%d err=%s", rc, err);
                exit_code = 19;
                goto detach;
            }
            out("[inject] tg_hook_install() = %d (threads resumed)", (int)ret);
            if ((int)ret != 0) {
                char txt[200] = "";
                if (last_error_fn != 0) {
                    (void)remote_symbol_string(&g_ctx, last_error_fn, txt, sizeof(txt), err, sizeof(err));
                }
                out("[inject] ERROR stage=install rc=%d last_error=%s", (int)ret, txt);
                exit_code = 19;
                goto detach;
            }
        }
    }

    /* 10) 读回状态 */
    {
        int status = 0;
        int hooked = 0;
        char stats[320] = "";
        char last_err[200] = "";

        if (verbose) out("[inject] querying status/stats");
        rc = rc_call(&g_ctx, status_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=status_call rc=%d err=%s", rc, err);
            exit_code = 20;
            goto detach;
        }
        status = (int)ret;
        if (hooked_fn != 0) {
            rc = rc_call(&g_ctx, hooked_fn, NULL, 0, &ret, err, sizeof(err));
            if (rc == RC_OK) hooked = (int)ret;
        }
        if (stats_fn != 0) (void)remote_symbol_string(&g_ctx, stats_fn, stats, sizeof(stats), err, sizeof(err));
        if (last_error_fn != 0) (void)remote_symbol_string(&g_ctx, last_error_fn, last_err, sizeof(last_err), err, sizeof(err));

        out("[inject] hook_status=%d hooked=%d", status, hooked);
        if (last_err[0] != '\0') out("[inject] last_error=%s", last_err);
        if (stats[0] != '\0') out("[inject] stats=%s", stats);

        if (status != 0) {
            out("[inject] ERROR stage=status status=%d", status);
            exit_code = 20;
            goto detach;
        }
        if (check_only) {
            /* --check 只是"报告当前状态"：hooked=0（未安装/已卸载）也是合法结果，
             * 不能算错误——否则一次成功的卸载会被读成 exit=20 状态错误。 */
            out("[inject] RESULT check pid=%d hooked=%d", (int)pid, hooked);
            exit_code = 0;
            goto detach;
        }
        if (hooked != 1) {
            out("[inject] ERROR stage=verify hooked=%d (patch not installed)", hooked);
            exit_code = 20;
            goto detach;
        }
    }

    out("[inject] RESULT ok pid=%d already_mapped=%d check_only=%d",
        (int)pid, (int)already, check_only);
    exit_code = 0;

detach:
    if (g_paused_active) {
        rc_resume_all(&g_paused);
        g_paused_active = 0;
    }
    rc_detach(&g_ctx);
    g_attached = 0;
    if (exit_code == 0) out("[inject] detached (target thread resumed)");
    else out("[inject] detached after error (target thread resumed) exit=%d", exit_code);
    return exit_code;
}
