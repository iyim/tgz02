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

static void on_fatal_signal(int sig)
{
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

int main(int argc, char **argv)
{
    pid_t pid = -1;
    const char *name = DEFAULT_NAME;
    const char *so = NULL;
    int check_only = 0;
    int uninstall = 0;
    int verbose = 0;
    int i;
    int rc;
    int exit_code = 0;
    char err[256];
    struct stat st;
    uint32_t dlopen_fn = 0, dlsym_fn = 0, dlerror_fn = 0;
    uint32_t handle = 0;
    uint32_t install_fn = 0, status_fn = 0, last_error_fn = 0, stats_fn = 0, hooked_fn = 0;
    uint32_t uninstall_fn = 0;
    uint32_t ret = 0;
    char already = 0;
    char hit[256];

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
        } else if (strcmp(argv[i], "--verbose") == 0) {
            verbose = 1;
        } else {
            out("usage: %s [--pid N | --name PROC] --so /path/libtg_hook.so [--check|--uninstall] [--verbose]",
                argv[0]);
            return 10;
        }
    }
    if (so == NULL) {
        out("usage: %s [--pid N | --name PROC] --so /path/libtg_hook.so [--check|--uninstall] [--verbose]",
            argv[0]);
        return 10;
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

    /* 3) 已注入？ */
    memset(&g_ctx, 0, sizeof(g_ctx));
    g_ctx.pid = pid;
    if (rc_maps_has(&g_ctx, SO_TARGET, hit, sizeof(hit))) {
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
    out("[inject] scratch=0x%08x stack=0x%08x trap=0x%08x",
        g_ctx.scratch, g_ctx.stack_top, g_ctx.trap);

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
            rc = rc_call(&g_ctx, dlopen_fn, args, 2, &handle, err, sizeof(err));
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
            rc = rc_call(&g_ctx, dlsym_fn, args, 2, syms[k].slot, err, sizeof(err));
            if (rc != RC_OK || *syms[k].slot == 0) {
                out("[inject] ERROR stage=dlsym symbol=%s rc=%d err=%s", syms[k].name, rc,
                    rc == RC_OK ? "symbol not found" : err);
                exit_code = 18;
                goto detach;
            }
        }
        out("[inject] dlsym ok install=0x%08x status=0x%08x stats=0x%08x",
            install_fn, status_fn, stats_fn);
    }

    /* 8b) --uninstall：把原厂两条指令写回去，Hook 立即失效（用于验收后恢复原厂纯态） */
    if (uninstall) {
        if (!already) {
            out("[inject] ERROR stage=uninstall %s is not mapped in pid %d", SO_TARGET, (int)pid);
            exit_code = 19;
            goto detach;
        }
        rc = rc_call(&g_ctx, uninstall_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=uninstall_call rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        out("[inject] tg_hook_uninstall() = %d", (int)ret);
        rc = rc_call(&g_ctx, hooked_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc == RC_OK) out("[inject] hooked=%d after uninstall", (int)ret);
        out("[inject] RESULT uninstalled pid=%d", (int)pid);
        exit_code = 0;
        goto detach;
    }
    /* 9) 安装 Hook（--check 时跳过；已映射时也跳过，避免重复安装） */
    if (!check_only && !already) {
        rc = rc_call(&g_ctx, install_fn, NULL, 0, &ret, err, sizeof(err));
        if (rc != RC_OK) {
            out("[inject] ERROR stage=install_call rc=%d err=%s", rc, err);
            exit_code = 19;
            goto detach;
        }
        out("[inject] tg_hook_install() = %d", (int)ret);
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
    rc_detach(&g_ctx);
    g_attached = 0;
    if (exit_code == 0) out("[inject] detached (target thread resumed)");
    else out("[inject] detached after error (target thread resumed) exit=%d", exit_code);
    return exit_code;
}
