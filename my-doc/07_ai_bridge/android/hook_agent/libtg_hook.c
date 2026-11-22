/*
 * libtg_hook.c -- T6-01 Hook Agent（原生 ARM32，无 Frida 依赖）
 *
 * 职责（只做这两件事）：
 *   1. 在 libsmartbox.so 的
 *        AliAiLabs::AGUI::SessionManager::onStream(int sid, char const* text,
 *                                                   u_char isFinished, u_char isOffline, u_char needNlp)
 *      入口装一个只读 inline hook，取 isFinished==1 的最终识别文本；
 *   2. 通过现有 UDS 协议（AF_UNIX 抽象名 tgz2_asr_bridge，TGB1 帧）把文本送到
 *      已经验证过的 T5-05A 桥接端。
 *
 * 明确不做：ASR、模型 HTTP、JSON 业务解析、TTS、技能调度；也不改动原厂返回值、
 * 不阻断原厂回调、不做阻塞网络 I/O（发送全部在独立线程）。
 *
 * Hook 目标与 T5-04 Hook 完全一致（同一模块、同一符号、同一偏移）：
 *   模块 libsmartbox.so（sha256 f6e3c354…，本机 /system/app/smartapp/lib/arm/）
 *   符号 _ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh
 *   偏移 0x11353c（ARM 模式，非 Thumb；实测 ELF st_value 偶数）
 *
 * 原厂函数前两条指令（实测，见 t6_01_native_injector_report.md §2）：
 *   0x11353c  E92D4FF0  push {r4-r11, lr}
 *   0x113540  E28DB01C  add  r11, sp, #28
 * 两条都与 PC 无关，所以可以直接搬到 trampoline 里重放，不需要重定位。
 *
 * 注入补丁（8 字节，ARM）：
 *   func+0 : E51FF004   ldr pc, [pc, #-4]       ; pc = func+8 → 读 func+4
 *   func+4 : <stub 地址>                         ; 跳到我们分配的 stub 页
 * stub: 保存 r0-r3/lr → 调 C 回调 → 原样恢复 r0-r3/lr → 跳 trampoline
 * tramp: 重放原厂两条指令 → 跳回 func+8
 * 因此原厂函数的行为（含栈帧、返回值、后续执行）完全不变。
 *
 * 失败策略：模块/符号/偏移/序言任何一项不匹配就拒绝 Hook，绝不"尽力而为"地
 * 猜测地址；所有失败都通过 tg_hook_status()/tg_hook_last_error() 返回给 Injector。
 */

#define _GNU_SOURCE 1

#include <android/log.h>
#include <dlfcn.h>
#include <elf.h>
#include <errno.h>
#include <fcntl.h>
#include <link.h>
#include <pthread.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/socket.h>
#include <sys/time.h>
#include <sys/un.h>
#include <poll.h>
#include <stdlib.h>

#include "tg_wire.h"
#include "nlu_takeover.h"
#include "nlu_switch.h"     /* T8-05：安装状态与接管开关（正交、原子） */
#include "nlu_patch.h"      /* T8-05：入口补丁事务（校验/回滚/机器码记录） */

/* ------------------------------------------------------------------ 常量 */

#define TG_MODULE       "libsmartbox.so"
#define TG_SYM          "_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh"
#define TG_SYM_OFF      0x11353cu
#define TG_PRO_W0       0xE92D4FF0u     /* push {r4-r11, lr} */
#define TG_PRO_W1       0xE28DB01Cu     /* add  r11, sp, #28 */
#define TG_PATCH_JUMP   0xE51FF004u     /* ldr  pc, [pc, #-4] */

#define TG_SOCK_NAME    "tgz2_asr_bridge"
#define TG_QUEUE_CAP    32              /* 有界队列（与 T5-05B 发送端一致） */
#define TG_TEXT_MAX     512             /* 511 字节文本 + NUL */
#define TG_STUB_PAGE    4096
#define TG_TRAMP_OFF    128             /* trampoline 在 stub 页里的偏移 */
#define TG_ACK_TMO_MS   2000
#define TG_CONN_TMO_MS  1500
#define TG_SEND_TMO_MS  2000
#define TG_MAX_TRY      5

/* 返回值约定（Injector 原样打印，不许改语义） */
#define TG_OK            0
#define TG_E_NOT_INSTALLED (-1)
#define TG_E_MODULE      (-2)
#define TG_E_SYMBOL      (-3)
#define TG_E_OFFSET      (-4)
#define TG_E_PROLOGUE    (-5)
#define TG_E_MMAP        (-6)
#define TG_E_PROT        (-7)
#define TG_E_THREAD      (-8)
#define TG_E_ALREADY     (-9)

#define TG_LOG_TAG "tgl"

/* ------------------------------------------------------------------ 状态 */

static volatile int  g_state = TG_E_NOT_INSTALLED;
static volatile int  g_patched;
static volatile int  g_stop;
static char          g_err[320];

static uint32_t      g_func;            /* 原厂函数运行期地址 */
static uint32_t      g_orig[2];         /* 被替换的两条原厂指令 */
static void         *g_stub_page;
static pthread_t     g_thread;
static volatile int  g_thread_started;

/* 计数（只用原子加，Injector 可随时读） */
static volatile unsigned long g_seen, g_final, g_queued, g_sent, g_acked;
static volatile unsigned long g_dup, g_rejected, g_dropped, g_reconn, g_overflow;
static volatile unsigned long g_drop_bad_utf8, g_drop_too_long, g_drop_empty, g_drop_control;
static volatile unsigned long g_conn_open, g_conn_fail, g_ack_timeout;
/* 发送线程被创建过几次：用来证明"卸载 → 重装"复用了同一个线程，没有重复创建 */
static volatile unsigned long g_sender_spawns;

#define INC(v) __atomic_fetch_add(&(v), 1UL, __ATOMIC_RELAXED)
#define GET(v) __atomic_load_n(&(v), __ATOMIC_RELAXED)

static long long wall_ms(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_REALTIME, &ts);
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
}

static long long mono_ms(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
}

static void set_err(const char *fmt, ...) __attribute__((format(printf, 1, 2)));

static void set_err(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(g_err, sizeof(g_err), fmt, ap);
    va_end(ap);
    g_err[sizeof(g_err) - 1] = '\0';
    __android_log_print(ANDROID_LOG_ERROR, TG_LOG_TAG, "hook: %s", g_err);
}

static void slog(const char *fmt, ...) __attribute__((format(printf, 1, 2)));

static void slog(const char *fmt, ...)
{
    char buf[256];
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    buf[sizeof(buf) - 1] = '\0';
    __android_log_write(ANDROID_LOG_INFO, TG_LOG_TAG, buf);
}

/* ------------------------------------------------------- 模块与符号定位 */

typedef struct {
    uintptr_t base;      /* dlpi_addr = 加载偏移（link-time vaddr → 运行期地址：base + vaddr） */
    int       found;
} mod_info;

static int mod_cb(struct dl_phdr_info *info, size_t size, void *data)
{
    mod_info *m = (mod_info *)data;
    const char *name = info->dlpi_name;
    const char *bn;

    (void)size;
    if (name == NULL || name[0] == '\0') return 0;
    bn = strrchr(name, '/');
    bn = (bn != NULL) ? bn + 1 : name;
    if (strcmp(bn, TG_MODULE) != 0) return 0;

    m->base = info->dlpi_addr;
    m->found = 1;
    return 1;
}

/* 在已加载模块的内存镜像里解析符号（不依赖本地 dlopen 地址，不依赖 dlsym 可见性） */
static int mem_find_sym(uintptr_t base, const char *want, uint32_t *out_addr,
                        uint32_t *out_value, char *err, size_t errlen)
{
    const Elf32_Ehdr *eh = (const Elf32_Ehdr *)base;
    const Elf32_Phdr *ph;
    const Elf32_Dyn *dyn = NULL;
    uint32_t i;
    uint32_t symtab = 0, strtab = 0, hash = 0, gnuhash = 0, strsz = 0;
    uint32_t nsyms = 0;

    if (eh->e_ident[EI_MAG0] != ELFMAG0 || eh->e_ident[EI_MAG1] != ELFMAG1 ||
        eh->e_ident[EI_MAG2] != ELFMAG2 || eh->e_ident[EI_MAG3] != ELFMAG3) {
        snprintf(err, errlen, "module base %p is not an ELF image", (void *)base);
        return TG_E_MODULE;
    }
    if (eh->e_ident[EI_CLASS] != ELFCLASS32 || eh->e_machine != EM_ARM) {
        snprintf(err, errlen, "unexpected ELF class=%d machine=%d (want ELF32/ARM)",
                 (int)eh->e_ident[EI_CLASS], (int)eh->e_machine);
        return TG_E_MODULE;
    }

    ph = (const Elf32_Phdr *)(base + eh->e_phoff);
    for (i = 0; i < eh->e_phnum; i++) {
        if (ph[i].p_type == PT_DYNAMIC) dyn = (const Elf32_Dyn *)(base + ph[i].p_vaddr);
    }
    if (dyn == NULL) {
        snprintf(err, errlen, "no PT_DYNAMIC in %s", TG_MODULE);
        return TG_E_SYMBOL;
    }

    for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
        switch (dyn[i].d_tag) {
        case DT_SYMTAB:   symtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRTAB:   strtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRSZ:    strsz = (uint32_t)dyn[i].d_un.d_val;  break;
        case DT_HASH:     hash = (uint32_t)dyn[i].d_un.d_ptr;   break;
        case DT_GNU_HASH: gnuhash = (uint32_t)dyn[i].d_un.d_ptr; break;
        default: break;
        }
    }
    if (symtab == 0 || strtab == 0) {
        snprintf(err, errlen, "DT_SYMTAB/DT_STRTAB missing in %s", TG_MODULE);
        return TG_E_SYMBOL;
    }
    if (strsz == 0) {
        snprintf(err, errlen, "DT_STRSZ missing in %s", TG_MODULE);
        return TG_E_SYMBOL;
    }

    if (hash != 0) {
        nsyms = ((const uint32_t *)(base + hash))[1];      /* nchain */
    } else if (gnuhash != 0) {
        const uint32_t *h = (const uint32_t *)(base + gnuhash);
        uint32_t nbuckets = h[0], symoffset = h[1], bloom_size = h[2];
        const uint32_t *buckets = h + 4 + bloom_size;           /* Elf32_Addr = 4 B */
        const uint32_t *chain = buckets + nbuckets;
        uint32_t maxb = 0, k;
        for (k = 0; k < nbuckets; k++) if (buckets[k] > maxb) maxb = buckets[k];
        if (maxb < symoffset) {
            nsyms = symoffset;
        } else {
            while ((chain[maxb - symoffset] & 1u) == 0) maxb++;
            nsyms = maxb + 1;
        }
    } else {
        snprintf(err, errlen, "no DT_HASH/DT_GNU_HASH in %s", TG_MODULE);
        return TG_E_SYMBOL;
    }
    if (nsyms == 0 || nsyms > 200000u) {
        snprintf(err, errlen, "implausible dynsym count %u in %s", nsyms, TG_MODULE);
        return TG_E_SYMBOL;
    }

    {
        const Elf32_Sym *syms = (const Elf32_Sym *)(base + symtab);
        const char *strs = (const char *)(base + strtab);
        for (i = 0; i < nsyms; i++) {
            const char *nm;
            if (syms[i].st_name >= strsz) continue;
            nm = strs + syms[i].st_name;
            if (strcmp(nm, want) != 0) continue;
            if (syms[i].st_shndx == SHN_UNDEF) continue;
            *out_value = syms[i].st_value;
            *out_addr = (uint32_t)(base + syms[i].st_value);
            return TG_OK;
        }
    }

    snprintf(err, errlen, "symbol %s not found in %s dynsym (%u syms)", want, TG_MODULE, nsyms);
    return TG_E_SYMBOL;
}

/* ------------------------------------------------------------- 代码页权限 */

/* 从 /proc/self/maps 取某页当前的保护位（PROT_READ/PROT_WRITE/PROT_EXEC 组合）；
 * 打不开文件或查不到该页返回 -1（"未知"必须是显式错误，不能伪装成某种权限） */
static int page_prot(uintptr_t page)
{
    FILE *f;
    char line[512];

    f = fopen("/proc/self/maps", "r");
    if (f == NULL) return -1;

    while (fgets(line, sizeof(line), f) != NULL) {
        unsigned long s = 0;
        unsigned long e = 0;
        char perms[8] = {0};
        int prot;

        if (sscanf(line, "%lx-%lx %7s", &s, &e, perms) != 3)
            continue;

        if (page < s || page >= e)
            continue;

        prot = (perms[0] == 'r' ? PROT_READ : 0) |
               (perms[1] == 'w' ? PROT_WRITE : 0) |
               (perms[2] == 'x' ? PROT_EXEC : 0);

        fclose(f);
        return prot;
    }

    fclose(f);
    return -1;
}

/* ------------------------------------------- T6 入口页权限（T8-06.2 修复）
 *
 * 入口页的原始权限只**确认一次**，然后长期保留：
 *   - 查询失败（page_prot() 返回 -1，或返回值里出现 R/W/X 之外的位）时，
 *     既不改保护、也不写入口 —— 绝不用"猜的权限"去 mprotect；
 *   - 恢复失败时基线仍然有效（g_entry_prot_valid 保持 1），下一轮卸载/安装
 *     可以**只重试恢复**，不需要重新查询；
 *   - 恢复失败后绝不回头复查权限：那时的"当前权限"是 RWX，是**我们自己造成的**，
 *     把它当成新的原始权限，等于永久放弃 W^X。
 *
 * 这一组状态跨"安装失败 / 卸载失败 / 重试"全程保留，卸载成功也不清零。
 */
static uintptr_t    g_entry_page;              /* 入口所在页（页对齐） */
static int          g_entry_orig_prot = -1;    /* 首次确认的原始权限；-1 = 未知 */
static volatile int g_entry_prot_valid;        /* 1 = 基线已确认，可以安全恢复 */
static volatile int g_prot_dirty;              /* 1 = 恢复欠账（页面可能仍是 RWX） */
static volatile unsigned long g_entry_prot_queries;  /* 真正读 /proc/self/maps 的次数 */
static volatile unsigned long g_entry_prot_fails;    /* 查询/改保护/恢复失败次数 */
static volatile unsigned long g_entry_patch_marks;   /* 入口写成补丁的次数 */
static volatile unsigned long g_entry_unpatch_marks; /* 入口写回原厂序言的次数 */

/*
 * 改入口页权限前的两件事：确认原始基线（只查一次）、把页面打开成 RWX。
 * 任一步失败都返回非零，调用方必须原样返回，不许继续写入口。
 */
static int entry_begin_write(const char *what)
{
    uintptr_t page;
    int q;

    if (g_func == 0) {
        set_err("%s: func is not resolved", what);
        return TG_E_SYMBOL;
    }
    page = (uintptr_t)g_func & ~(uintptr_t)0xFFF;
    g_entry_page = page;

    if (!g_entry_prot_valid) {
        INC(g_entry_prot_queries);
        q = page_prot(page);
        if (q < 0 || (q & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0) {
            INC(g_entry_prot_fails);
            set_err("cannot determine original page protection of %s (page=0x%08x, query=%d); "
                    "refusing to change protection and refusing to touch the entry",
                    what, (unsigned)page, q);
            return TG_E_PROT;
        }
        g_entry_orig_prot = q;
        g_entry_prot_valid = 1;
    }

    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        INC(g_entry_prot_fails);
        set_err("mprotect(%s, page=0x%08x, RWX) failed errno=%d",
                what, (unsigned)page, errno);
        return TG_E_PROT;
    }
    return TG_OK;
}

/*
 * 把入口页恢复成基线权限。失败时 g_prot_dirty 置 1 并保留基线，
 * 调用方（或下一次 tg_hook_uninstall()）可以只重试这一步。
 */
static int entry_restore_prot(const char *what)
{
    if (!g_entry_prot_valid || g_entry_orig_prot < 0) {
        INC(g_entry_prot_fails);
        set_err("%s: original page protection is unknown; refusing to guess a value",
                what);
        return TG_E_PROT;
    }
    if (mprotect((void *)g_entry_page, 4096, g_entry_orig_prot) != 0) {
        INC(g_entry_prot_fails);
        g_prot_dirty = 1;
        set_err("mprotect(%s, page=0x%08x, prot=%d) failed errno=%d "
                "(page may still be writable; baseline kept for retry)",
                what, (unsigned)g_entry_page, g_entry_orig_prot, errno);
        return TG_E_PROT;
    }
    g_prot_dirty = 0;
    return TG_OK;
}

/* --------------------------------------------------------------- Hook 本体 */

/*
 * stub 页布局（全部是 ARM 指令，页尾再放 trampoline）：
 *   +0x00  E92D401F  push {r0,r1,r2,r3,r4,lr}          ; 保存参数与被调用者保存寄存器
 *   +0x04  E59F4008  ldr  r4, [pc, #8]                 ; r4 = [+0x14] = 回调地址
 *   +0x08  E12FFF34  blx  r4                           ; 调 C 回调（r0-r3 就是原厂参数）
 *   +0x0C  E8BD401F  pop  {r0,r1,r2,r3,r4,lr}          ; 原样恢复
 *   +0x10  E59FF000  ldr  pc, [pc, #0]                 ; 跳 [+0x18] = trampoline
 *   +0x14  <tg_onstream_cb>
 *   +0x18  <trampoline>
 * trampoline（+0x80）：
 *   +0x00  原厂指令 0（push {r4-r11, lr}）
 *   +0x04  原厂指令 1（add r11, sp, #28）
 *   +0x08  E51FF004  ldr  pc, [pc, #-4]                ; 跳 [+0x0C] = func+8
 *   +0x0C  <func+8>
 */
static void tg_onstream_cb(void *self, int sid, const char *text, unsigned int fin)
    __attribute__((used, noinline));

static int build_stub_page(uint32_t func, int *err_out)
{
    uint32_t *c;
    uint32_t *t;

    if (g_stub_page != NULL) return 0;      /* prepare/install 可能被多次调用，只分配一次 */

    g_stub_page = mmap(NULL, TG_STUB_PAGE, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_stub_page == MAP_FAILED) {
        g_stub_page = NULL;
        *err_out = TG_E_MMAP;
        set_err("mmap(stub) failed errno=%d", errno);
        return -1;
    }

    c = (uint32_t *)g_stub_page;
    c[0] = 0xE92D401Fu;
    c[1] = 0xE59F4008u;
    c[2] = 0xE12FFF34u;
    c[3] = 0xE8BD401Fu;
    c[4] = 0xE59FF000u;
    c[5] = (uint32_t)(uintptr_t)&tg_onstream_cb;
    c[6] = (uint32_t)(uintptr_t)((char *)g_stub_page + TG_TRAMP_OFF);

    t = (uint32_t *)((char *)g_stub_page + TG_TRAMP_OFF);
    t[0] = TG_PRO_W0;
    t[1] = TG_PRO_W1;
    t[2] = TG_PATCH_JUMP;
    t[3] = func + 8;

    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + TG_STUB_PAGE);

    if (mprotect(g_stub_page, TG_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        /* 退一步：RWX（Android 8.1 + permissive SELinux 实测允许），失败才算错 */
        if (mprotect(g_stub_page, TG_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            *err_out = TG_E_PROT;
            set_err("mprotect(stub, RX) failed errno=%d", errno);
            return -1;
        }
    }
    return 0;
}

static int patch_entry(void)
{
    uint32_t *p;
    char why[320];
    int rc;

    if (g_func == 0) {
        set_err("patch_entry: func is not resolved");
        return TG_E_SYMBOL;
    }
    p = (uint32_t *)g_func;

    /* 1) 先确认页面原始权限：查不到就拒绝，入口一个字节都不动 */
    rc = entry_begin_write("func entry");
    if (rc != TG_OK) return rc;

    /* 2) 先写字面量、再写跳转指令：两者之间若线程正好在 func+4 上执行，
     * 最坏结果是该次调用异常（概率 ~ns 级窗口）；顺序反过来则必然跳到垃圾地址。 */
    p[1] = (uint32_t)(uintptr_t)g_stub_page;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    p[0] = TG_PATCH_JUMP;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    INC(g_entry_patch_marks);

    /* 3) 入口已经是补丁机器码了 —— g_patched 立刻如实反映入口状态。
     *    后面即使页面保护恢复失败，也不能回头说"没装上"：入口就是补丁。 */
    g_patched = 1;

    /* 4) 恢复页面保护：返回值必须检查。失败 = 安装失败（但入口是补丁）。 */
    rc = entry_restore_prot("func entry");
    if (rc != TG_OK) {
        snprintf(why, sizeof(why), "%s", g_err);
        set_err("entry IS patched at 0x%08x (%08x %08x) but page protection restore FAILED: %s "
                "(page=0x%08x original prot=%d; sender thread NOT started; install NOT successful)",
                (unsigned)g_func, p[0], p[1], why,
                (unsigned)g_entry_page, g_entry_orig_prot);
        return rc;
    }
    return TG_OK;
}

int tg_hook_uninstall(void)
{
    uint32_t *p;
    int rc;

    /* 入口补丁不在、也没有页面保护欠账：真的没有事情可做 */
    if (!g_patched && !g_prot_dirty) return TG_OK;

    /*
     * 入口机器码上一轮已经写回，只剩页面保护欠账：这里必须真的再试一次恢复，
     * 不能因为 g_patched==0 就直接返回成功（那会把 RWX 页面永久留在进程里）。
     */
    if (!g_patched) {
        rc = entry_restore_prot("func entry (retry)");
        if (rc != TG_OK) {
            g_state = rc;
            return rc;
        }
        g_state = TG_OK;
        g_err[0] = '\0';
        slog("hook already uninstalled; page protection restored on retry "
             "(func=0x%08x prot=%d)", g_func, g_entry_orig_prot);
        return TG_OK;
    }

    p = (uint32_t *)g_func;
    rc = entry_begin_write("func entry");
    if (rc != TG_OK) {
        g_state = rc;
        return rc;
    }

    p[0] = g_orig[0];
    p[1] = g_orig[1];
    __builtin___clear_cache((char *)p, (char *)p + 8);
    INC(g_entry_unpatch_marks);

    /* 入口机器码已经恢复 —— g_patched 如实反映入口状态（=0），
     * 绝不为了"报错好看"伪造仍然 patched。 */
    g_patched = 0;

    /* 页面保护恢复是独立的一件事：入口恢复成功 ≠ 保护恢复成功 */
    rc = entry_restore_prot("func entry");
    if (rc != TG_OK) {
        char why[320];
        snprintf(why, sizeof(why), "%s", g_err);
        set_err("original prologue restored at 0x%08x (%08x %08x) but page protection "
                "restore FAILED: %s (page=0x%08x original prot=%d; page may still be "
                "writable; call tg_hook_uninstall() again to retry the restore)",
                (unsigned)g_func, p[0], p[1], why,
                (unsigned)g_entry_page, g_entry_orig_prot);
        g_state = rc;
        return rc;
    }

    /*
     * 安装状态只由 g_patched 表达；g_state 是"上一次操作的结果"。
     * 卸载成功之后没有任何错误可言，所以这里回到 TG_OK —— 否则 Injector 的
     * --check 会把一次成功的卸载当成错误（exit=20），重装路径也会到处看到"状态错误"。
     * 发送线程保持运行（不设 g_stop）：重装时复用它，不再起第二个。
     * 页面权限基线也保留（不清 g_entry_prot_valid）：下一次安装不必重新查询，
     * 也不会因为"重查时正好是 RWX"而把基线永久污染成 RWX。
     */
    g_state = TG_OK;
    g_err[0] = '\0';
    slog("hook uninstalled, original prologue restored (func=0x%08x sender=%d prot=%d)",
         g_func, g_thread_started, g_entry_orig_prot);
    return TG_OK;
}

/* ==================== T8-03：NLU/CDM 接管 hook（独立第二个点，默认关闭） ====================
 *
 * 目标：AliAiLabs::AGUI::SessionDispatch::onNlpResult(int sessionId, int type, NlpResult*)
 *       libsmartbox.so 偏移 0x118ebc（ARM 模式；序言 push {r4-r11,lr} / add r11,sp,#28）
 *
 * 与上面 onStream 那个 hook 的唯一结构差别：这里必须能**跳过原函数**。
 * 所以 stub 多一个条件分支（判定来自 C 回调的返回值）：
 *     回调返回 0 -> 跳 trampoline（重放两条原厂指令 → 跳到 func+8，原函数完整执行）
 *     回调返回非 0 -> 恢复寄存器后 mov r0,#0; bx lr（直接返回调用者，原函数不执行）
 *
 * T8-05：这里有两个**互不推导**的状态，别再合并成一个变量：
 *   1) 入口补丁在不在      —— nlu_patch 事务（np_install/np_uninstall）的结果
 *      · 由 Injector 的 --nlu-install / --nlu-uninstall 显式驱动；
 *      · 与接管开关无关：接管关着也能装（真机阶段 A 就是这么验证原厂行为不变的）。
 *   2) 接管开关在不在      —— nls_state（nlu_switch.c）
 *      · 由 Injector 的 --nlu-on / --nlu-off 在目标进程内就地改写，读写都是原子操作；
 *      · 关闭立刻生效：回调下一次进来就读到 0，直接放行原厂函数。
 * 环境变量 TG_NLU_TAKEOVER 只保留"诊断记录"，**不再能开启接管**：
 *   - :core 的进程环境由原厂决定，注入的库拿到的 getenv 与 supervisor 无关；
 *   - "装 Hook 顺手开接管"这种隐式副作用必须断开。
 *
 * 补丁的写入不再是两句赋值：事务（校验序言 → 声明式冻结 → 写两个字 → 读回 →
 * 失败回滚并读回确认）全部在 nlu_patch.c 里，本文件只提供宿主侧钩子
 * （mprotect / 指令缓存刷新）与"世界已冻结"的声明。
 */
#define TG_NLU_SYM      "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE"
#define TG_NLU_OFF      0x118ebcu
#define TG_NLU_PRO_W0   0xE92D4FF0u     /* push {r4-r11, lr} */
#define TG_NLU_PRO_W1   0xE28DB01Cu     /* add  r11, sp, #28 */

/* T8-05 新增返回码（与 T6/T8-03 的码段不重叠） */
#define TG_E_UNSAFE     (-11)   /* 没有"目标线程已冻结"就要求落补丁 -> 拒绝 */
#define TG_E_PATCH      (-12)   /* 补丁事务失败（含回滚未确认） */
#define TG_E_BUSY       (-13)   /* 补丁事务重入 */
#define TG_E_NOT_READY  (-14)   /* T8-06：接管开启但会话表不可用（fail-closed 生效，非正常开启） */

static volatile int g_nlu_state = TG_E_NOT_INSTALLED;
static volatile int g_nlu_patched;      /* 镜像：1 = 入口当前是补丁机器码 */
static volatile int g_nlu_boot_done;    /* 1 = 一次性初始化已经结束（仅用于诊断） */
static volatile int g_nlu_init_failed;  /* 1 = 初始化失败（此时接管必须 fail-closed） */
static volatile int g_nlu_env_ignored;  /* 1 = 环境变量要求开接管但被拒绝（诊断） */
static int          g_nlu_mask = 0x7F;  /* T7B_ROUTE_ALL */
static uint32_t     g_nlu_func;
static uint32_t     g_nlu_orig[2];
static void        *g_nlu_page;
/* T8-06.2：stub 页最终拿到的权限，以及"是否降级成 RWX"（0 = 纯 RX，1 = RWX 降级）。
 * 降级不是失败，但必须留痕：诊断时能读出"这一轮的 stub 页不是 W^X"。 */
static int          g_nlu_page_prot;
static volatile int g_nlu_page_degraded;
static t8_to_state  g_to;
static nls_state    g_nlu_sw;           /* T8-05：安装状态 + 接管开关（原子） */
static np_patch     g_nlu_pp;           /* T8-05：入口补丁事务（含机器码记录） */
static int          g_nlu_pp_ready;
static int          g_nlu_orig_prot;    /* 入口页原始保护位（第一次改保护时缓存） */
static int          g_nlu_prot_valid;

/*
 * ==================== T8-06：NLU 控制互斥锁 ====================
 *
 * 目的：tg_nlu_takeover_set() 要同时改两个状态（nls 的 TAKEOVER 位、会话表的 enabled），
 * 而 tg_nlu_uninstall() 要按"先关接管 -> 再恢复入口 -> 成功后才标记未安装"的顺序改它们。
 * 两个控制命令在 :core 里并发交错时，中间态会被对方看见（例如 on 刚改完 nls、
 * 还没来得及改会话表，uninstall 就把两者清掉，最后 nls=开/表=关），所以控制操作必须串行。
 *
 * 为什么用静态初始化（PTHREAD_MUTEX_INITIALIZER）而不是 pthread_mutex_init：
 *   - 静态初始化在加载期就是"已初始化"的合法状态，没有失败分支；
 *   - 不会与 T8-04 的 pthread_once 闸门互相干扰，也就不存在
 *     "重复初始化毁掉一个已持有的锁"这类风险；
 *   - bionic 对静态初始化的 mutex 有完整支持（_LOCK_INITIALIZER）。
 *
 * 为什么不在回调热路径上取锁：
 *   tg_nlp_cb / nlu_note_final 只做一次 nls_mode() 原子读，不取这把锁；
 *   锁只保护 on/off/install/uninstall 四个控制操作（每次几十微秒、人工触发）。
 *
 * 为什么用 trylock + 有限重试而不是死等：
 *   install/uninstall 是在"目标进程全部线程已冻结"的前提下执行的。如果此刻另一个
 *   控制操作正持锁并已被冻结方停住，死等就会永久阻塞。有限重试之后明确报
 *   TG_E_BUSY（"另一个控制操作正在进行"），绝不假装成功，也不需要重启 :core。
 */
static pthread_mutex_t g_nlu_ctl_lock = PTHREAD_MUTEX_INITIALIZER;
static volatile int    g_nlu_ctl_held;          /* 当前持锁者数量（正常 0 或 1，诊断用） */
static volatile unsigned long g_nlu_ctl_locks;  /* 成功取锁次数 */
static volatile unsigned long g_nlu_ctl_busy;   /* 重试耗尽次数 */
static volatile unsigned long g_nlu_ctl_fail;   /* pthread_mutex_trylock 硬失败次数 */

/*
 * retries: 0 = 只试一次（install/uninstall 用：世界已冻结，绝不死等）
 *          否则最多重试 retries 次，每次 2 ms（on/off 用：给对端一点时间收尾）
 */
static int nlu_ctl_lock(int retries)
{
    int i;
    int n = (retries > 0) ? (retries + 1) : 1;

    for (i = 0; i < n; i++) {
        int rc = pthread_mutex_trylock(&g_nlu_ctl_lock);

        if (rc == 0) {
            (void)__atomic_add_fetch(&g_nlu_ctl_held, 1, __ATOMIC_RELAXED);
            INC(g_nlu_ctl_locks);
            return 0;
        }
        if (rc != EBUSY) {                  /* EINVAL/EDEADLK 等：硬失败，明确报错 */
            INC(g_nlu_ctl_fail);
            return -1;
        }
        if (i + 1 < n) usleep(2000);
    }
    INC(g_nlu_ctl_busy);
    return -1;
}

static void nlu_ctl_unlock(void)
{
    (void)__atomic_sub_fetch(&g_nlu_ctl_held, 1, __ATOMIC_RELAXED);
    (void)pthread_mutex_unlock(&g_nlu_ctl_lock);
}

/*
 * NLU 段独立的错误缓冲：tg_hook_* 与 tg_nlu_* 是两条独立的操作线，
 * 共用一个 g_err 会让"上一次 T6 操作的错误"覆盖掉本次 NLU 失败原因。
 */
static char g_nlu_err[192];

static void nlu_err_set(const char *fmt, ...)
#if defined(__GNUC__)
    __attribute__((format(printf, 1, 2)))
#endif
    ;

static void nlu_err_set(const char *fmt, ...)
{
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(g_nlu_err, sizeof(g_nlu_err), fmt, ap);
    va_end(ap);
}

static const char *nlu_err(void) { return g_nlu_err; }

/*
 * T8-04：一次性初始化闸门。
 *   - 用 pthread_once（bionic 自带、ARM32 上就是一次原子 load + 分支）：**严格只执行一次**，
 *     后到的线程在 winner 完成前阻塞在 pthread_once 里，不会看到"初始化到一半"的 g_to；
 *   - 因此不会重复 pthread_mutex_init（那会毁掉已持有的锁）；
 *   - 初始化失败**不重试**：g_nlu_init_failed=1、g_to.mutex_ready=0，
 *     t8_to_enabled_set(&g_to,1) 返回 -1，之后 on_final 走 T8_TO_TAKE_FAILCLOSED、
 *     should_drop 恒返回 1 —— fail-closed，绝不会静默放行；
 *   - 初始化体只做 getenv/strtol/一次 mutex_init/一次 slog，微秒级，
 *     回调里等到的只有这一个短临界，没有嵌套锁、没有 I/O 等待。
 */
static pthread_once_t g_nlu_once = PTHREAD_ONCE_INIT;

/* Hook 级计数（只用原子加；不含任何文本内容） */
static volatile unsigned long g_nlu_final_seen, g_nlu_final_pass, g_nlu_final_failclosed;
static volatile unsigned long g_nlu_nlp_calls, g_nlu_nlp_skip, g_nlu_nlp_pass;
static volatile unsigned long g_nlu_nlp_failclosed;     /* 接管开但会话表不可用 -> 不放行 */

static void nlu_boot_once(void)
{
    const char *v;
    int rc;
    int env_on = 0;

    nls_init(&g_nlu_sw);

    v = getenv("TG_NLU_ROUTE_MASK");
    if (v != NULL && v[0] != '\0') {
        long m = strtol(v, NULL, 0);
        if (m > 0 && m <= 0x7F) g_nlu_mask = (int)m;
    }

    /* T8-05：会话表**无条件**初始化（t8_to_init 只做一次 memset + mutex_init）。
     * T8-04 只在 TG_NLU_TAKEOVER=1 时才 init，于是运行时开关根本没有可用的表。 */
    rc = t8_to_init(&g_to);
    if (rc != 0) g_nlu_init_failed = 1;
    nls_note_init_failure(&g_nlu_sw, g_nlu_init_failed);

    /* T8-05：环境变量不再能开接管。它只在"入口补丁此刻已经在位"时才被接受，
     * 而真实启动路径（supervisor → injector → dlopen → 装补丁）永远不满足这个条件，
     * 所以"装 Hook 顺手开接管"这条隐式路径被断开，接管只能由 Injector 显式打开。 */
    v = getenv("TG_NLU_TAKEOVER");
    if (v != NULL && (v[0] == '1' || v[0] == 'y' || v[0] == 'Y')) env_on = 1;
    if (env_on && nls_installed(&g_nlu_sw)) {
        (void)t8_to_enabled_set(&g_to, 1);      /* 仅"补丁已在"时接受环境变量初值 */
        (void)nls_set_takeover(&g_nlu_sw, 1);
    } else if (env_on) {
        g_nlu_env_ignored = 1;
        (void)nls_set_takeover(&g_nlu_sw, 0);
    }

    slog("nlu boot: t8_to_init=%d ready=%d init_failed=%d mask=0x%02x env_on=%d env_ignored=%d "
         "installed=%d takeover=%d (runtime switch only)",
         rc, g_to.mutex_ready, g_nlu_init_failed, g_nlu_mask, env_on, g_nlu_env_ignored,
         nls_installed(&g_nlu_sw), nls_takeover(&g_nlu_sw));

    /* 放行顺序：先确保状态可见，再宣布 boot 完成（诊断用） */
    __atomic_store_n(&g_nlu_boot_done, 1, __ATOMIC_RELEASE);
}

/* 一次性闸门：调度 + 原子 load。装/卸补丁、读开关、回调都从这里过一遍，
 * 保证 t8_to_init 只跑一次（不会重复 pthread_mutex_init 毁掉已持有的锁）。 */
static void nlu_boot_ensure(void)
{
    (void)pthread_once(&g_nlu_once, nlu_boot_once);
}

/* 接管开关：运行时状态，每次调用都实地读（关闭能立刻生效） */
static int nlu_want_enabled(void)
{
    nlu_boot_ensure();
    return nls_takeover(&g_nlu_sw);
}

/* pass / decide / failclosed 三态判定 */
static int nlu_mode_now(void)
{
    nlu_boot_ensure();
    return nls_mode(&g_nlu_sw, g_to.mutex_ready);
}

/* onStream(isFinished=1) 时登记会话归属；接管关闭时什么都不做 */
static void nlu_note_final(int sid, const char *text)
{
    char key[24];
    t8_to_why why = T8_TO_WHY_NONE;
    t8_to_decision d;
    int mode = nlu_mode_now();

    if (mode == NLS_PASS) return;
    INC(g_nlu_final_seen);
    if (mode == NLS_FAILCLOSED) {
        /* 接管开着但会话表不可用：登记不了，也绝不静默放行 */
        INC(g_nlu_final_failclosed);
        return;
    }
    if (sid > 0) snprintf(key, sizeof(key), "%d", sid);
    else key[0] = '\0';
    d = t8_to_on_final(&g_to, key, text, wall_ms(), g_nlu_mask, &why);
    if (d == T8_TO_PASS) INC(g_nlu_final_pass);
    else if (d == T8_TO_TAKE_FAILCLOSED) INC(g_nlu_final_failclosed);
    /* TAKE / TAKE_UNREGISTERED 的计数在模块内部（marked / overflow），这里不重复计 */
}

/*
 * NLU 结果回调：返回 0 = 放行原函数（原厂 CDM 照常执行），1 = 跳过原函数。
 * 只做一次查表 + 计数：无 I/O、无日志、无等待。
 */
static int tg_nlp_cb(void *self, int sid, int type, void *res)
{
    char key[24];
    int drop;
    int mode;

    (void)self;
    (void)type;
    (void)res;

    mode = nlu_mode_now();
    if (mode == NLS_PASS) return 0;         /* 补丁在但接管关：始终放行原厂 */
    INC(g_nlu_nlp_calls);
    if (mode == NLS_FAILCLOSED) {           /* 状态不可用：不放行，也不碰会话表 */
        INC(g_nlu_nlp_failclosed);
        return 1;
    }
    if (sid > 0) snprintf(key, sizeof(key), "%d", sid);
    else key[0] = '\0';
    drop = t8_to_should_drop(&g_to, key, wall_ms());
    if (drop) INC(g_nlu_nlp_skip); else INC(g_nlu_nlp_pass);
    return drop ? 1 : 0;
}

/*
 * stub 页布局（全部 ARM 指令；桩内不使用堆栈以外的资源）：
 *   +0x00  E92D401F  push {r0,r1,r2,r3,r4,lr}   ; r4 是 callee-saved，必须保存
 *   +0x04  E59F4014  ldr  r4, [pc, #20]         ; r4 = [+0x20] = 回调
 *   +0x08  E12FFF34  blx  r4
 *   +0x0C  E1A0C000  mov  r12, r0               ; r12 = caller-saved 草稿
 *   +0x10  E8BD401F  pop  {r0,r1,r2,r3,r4,lr}   ; 原样恢复（含 lr = 调用者返回地址）
 *   +0x14  E35C0000  cmp  r12, #0
 *   +0x18  1A000002  bne  +0x28                 ; 跳过原函数
 *   +0x1C  E59FF00C  ldr  pc, [pc, #12]         ; -> +0x30 trampoline
 *   +0x20  <回调地址>
 *   +0x24  <padding>
 *   +0x28  E3A00000  mov  r0, #0                ; 跳过：返回 0（两个调用者都不读 r0）
 *   +0x2C  E12FFF1E  bx   lr                    ; 直接返回调用者
 *   +0x30  <trampoline 地址>
 */
static int build_nlu_stub_page(uint32_t func, int *err_out)
{
    uint32_t *c;
    uint32_t *t;
    int rx_errno;

    if (g_nlu_page != NULL) return 0;

    /* 第 1 步：mmap 出来就是 RW —— 填充 stub/trampoline 就在这个权限下完成。
     * 不做"先 RX、再 RWX、最后 RX"那种来回切换：每一步都只改一次，且都看返回值。 */
    g_nlu_page = mmap(NULL, TG_STUB_PAGE, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_nlu_page == MAP_FAILED) {
        g_nlu_page = NULL;
        *err_out = TG_E_MMAP;
        nlu_err_set("mmap(nlu stub) failed errno=%d", errno);
        return -1;
    }

    c = (uint32_t *)g_nlu_page;
    c[0]  = 0xE92D401Fu;                                        /* push {r0-r3,r4,lr} */
    c[1]  = 0xE59F4014u;                                        /* ldr  r4,[pc,#20]   -> +0x20 */
    c[2]  = 0xE12FFF34u;                                        /* blx  r4 */
    c[3]  = 0xE1A0C000u;                                        /* mov  r12,r0 */
    c[4]  = 0xE8BD401Fu;                                        /* pop  {r0-r3,r4,lr} */
    c[5]  = 0xE35C0000u;                                        /* cmp  r12,#0 */
    c[6]  = 0x1A000002u;                                        /* bne  +0x28 */
    c[7]  = 0xE59FF00Cu;                                        /* ldr  pc,[pc,#12]   -> +0x30 */
    c[8]  = (uint32_t)(uintptr_t)&tg_nlp_cb;                    /* +0x20 回调地址 */
    c[9]  = 0u;                                                 /* +0x24 padding */
    c[10] = 0xE3A00000u;                                        /* +0x28 mov r0,#0 */
    c[11] = 0xE12FFF1Eu;                                        /* +0x2C bx  lr */
    c[12] = (uint32_t)(uintptr_t)((char *)g_nlu_page + TG_TRAMP_OFF);   /* +0x30 */

    t = (uint32_t *)((char *)g_nlu_page + TG_TRAMP_OFF);
    t[0] = g_nlu_orig[0];
    t[1] = g_nlu_orig[1];
    t[2] = TG_PATCH_JUMP;
    t[3] = func + 8u;

    /* 第 2 步：填充完毕 → 刷指令缓存（必须在转成可执行之前把数据写成指令流） */
    __builtin___clear_cache((char *)g_nlu_page, (char *)g_nlu_page + TG_STUB_PAGE);

    /* 第 3 步：首选 RX。只有 mprotect 返回 0 才算成功。 */
    if (mprotect(g_nlu_page, TG_STUB_PAGE, PROT_READ | PROT_EXEC) == 0) {
        g_nlu_page_prot = PROT_READ | PROT_EXEC;
        g_nlu_page_degraded = 0;
        return 0;
    }
    rx_errno = errno;

    /* 第 4 步：RX 明确失败，才按既有兼容策略降级到 RWX（Android 8.1 + permissive
     * SELinux 实测允许）。成功即记录"降级"这一事实，失败才算错。 */
    if (mprotect(g_nlu_page, TG_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) == 0) {
        g_nlu_page_prot = PROT_READ | PROT_WRITE | PROT_EXEC;
        g_nlu_page_degraded = 1;
        nlu_err_set("nlu stub page is RWX (RX mprotect failed errno=%d); W^X degraded, "
                    "stub stays executable (page=%p prot=%d)",
                    rx_errno, g_nlu_page, g_nlu_page_prot);
        slog("%s", g_nlu_err);
        return 0;
    }

    /* 第 5 步：两种权限都拿不到 —— 不能假装 stub 可执行。
     * 释放页面并把 g_nlu_page 清空，让下一次 prepare 重新建（不会留下半成品）。 */
    nlu_err_set("mprotect(nlu stub) failed twice: RX errno=%d, RWX errno=%d; "
                "stub page released, nothing written to the target",
                rx_errno, errno);
    slog("nlu stub page build FAILED: %s", g_nlu_err);
    (void)munmap(g_nlu_page, TG_STUB_PAGE);
    g_nlu_page = NULL;
    g_nlu_page_prot = 0;
    g_nlu_page_degraded = 0;
    *err_out = TG_E_PROT;
    return -1;
}

static int nlu_resolve(void)
{
    mod_info m;
    uint32_t addr = 0, value = 0;
    int err;

    memset(&m, 0, sizeof(m));
    if (dl_iterate_phdr(mod_cb, &m) == 0 || !m.found) {
        nlu_err_set("nlu: module %s is not loaded in this process", TG_MODULE);
        return TG_E_MODULE;
    }
    err = mem_find_sym(m.base, TG_NLU_SYM, &addr, &value, g_nlu_err, sizeof(g_nlu_err));
    if (err != TG_OK) {
        slog("nlu prepare failed: %s", g_nlu_err);
        return err;
    }
    if (value != TG_NLU_OFF) {
        nlu_err_set("nlu symbol %s offset 0x%x != expected 0x%x", TG_NLU_SYM, value, TG_NLU_OFF);
        return TG_E_OFFSET;
    }
    g_nlu_func = addr;
    {
        const uint32_t *p = (const uint32_t *)g_nlu_func;
        g_nlu_orig[0] = p[0];
        g_nlu_orig[1] = p[1];
    }
    if (g_nlu_orig[0] != TG_NLU_PRO_W0 || g_nlu_orig[1] != TG_NLU_PRO_W1) {
        nlu_err_set("nlu prologue mismatch at %p: %08x %08x (want %08x %08x)",
                    (void *)g_nlu_func, g_nlu_orig[0], g_nlu_orig[1], TG_NLU_PRO_W0, TG_NLU_PRO_W1);
        g_nlu_func = 0;
        return TG_E_PROLOGUE;
    }
    return TG_OK;
}

int tg_nlu_prepare(void)
{
    int rc;

    nlu_boot_ensure();
    if (g_nlu_func != 0) { g_nlu_state = TG_OK; return TG_OK; }
    rc = nlu_resolve();
    g_nlu_state = rc;
    if (rc == TG_OK) {
        slog("nlu hook prepared: func=0x%08x patch=[0x%08x,0x%08x)",
             g_nlu_func, g_nlu_func, g_nlu_func + 8u);
    }
    return rc;
}

unsigned int tg_nlu_patch_lo(void) { return g_nlu_func; }
unsigned int tg_nlu_patch_hi(void) { return (g_nlu_func != 0) ? (g_nlu_func + 8u) : 0u; }

/* ---- 宿主侧钩子：指令页写保护与指令缓存刷新（由 nlu_patch 的事务调用） ---- */

static int nlu_pp_unprotect(void *ud, const char *what,
                            char *err, size_t cap)
{
    uintptr_t page = (uintptr_t)g_nlu_func & ~(uintptr_t)0xFFF;
    int original_prot;

    (void)ud;

    if (!g_nlu_prot_valid) {
        original_prot = page_prot(page);

        if (original_prot < 0 ||
            (original_prot & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0) {
            if (err && cap) {
                snprintf(err, cap,
                         "cannot determine original page protection "
                         "(page=0x%08x); refusing to change protection",
                         (unsigned)page);
            }
            return -1;
        }

        g_nlu_orig_prot = original_prot;
        g_nlu_prot_valid = 1;
    }

    if (mprotect((void *)page, 4096,
                 PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        if (err && cap) {
            snprintf(err, cap,
                     "mprotect(%s, page=0x%08x, RWX) failed errno=%d",
                     what ? what : "unknown",
                     (unsigned)page, errno);
        }
        return -1;
    }

    return 0;
}

static int nlu_pp_reprotect(void *ud, char *err, size_t cap)
{
    uintptr_t page = (uintptr_t)g_nlu_func & ~(uintptr_t)0xFFF;
    int prot;

    (void)ud;

    if (!g_nlu_prot_valid) {
        if (err && cap)
            snprintf(err, cap, "original page protection is unknown");
        return -1;
    }

    prot = g_nlu_orig_prot;

    if (mprotect((void *)page, 4096, prot) != 0) {
        if (err && cap) {
            snprintf(err, cap,
                     "mprotect restore failed page=0x%08x prot=%d errno=%d",
                     (unsigned)page, prot, errno);
        }
        return -1;
    }

    return 0;
}

static void nlu_pp_flush(void *ud, uint32_t *p, int nwords)
{
    (void)ud;
    __builtin___clear_cache((char *)p, (char *)(p + nwords));
}

/*
 * 把事务对象指到真实入口，并挂上宿主钩子。
 * patch[1] 必须是 stub 页地址，所以 stub 必须先建好（build_nlu_stub_page 只分配一次）。
 * 这一步只做内存与 mmap，不写入口。
 */
static int nlu_pp_setup(void)
{
    uint32_t patch[NP_WORDS];
    int st = TG_OK;

    if (g_nlu_pp_ready) return TG_OK;
    if (build_nlu_stub_page(g_nlu_func, &st) != 0) {
        char why[192];
        memcpy(why, g_nlu_err, sizeof(why));
        why[sizeof(why) - 1] = '\0';
        nlu_err_set("stub page failed (state=%d): %s", st, why);
        return st;
    }
    patch[0] = TG_PATCH_JUMP;
    patch[1] = (uint32_t)(uintptr_t)g_nlu_page;
    np_init(&g_nlu_pp, (uint32_t *)(uintptr_t)g_nlu_func, g_nlu_orig, patch);
    g_nlu_pp.unprotect = nlu_pp_unprotect;
    g_nlu_pp.reprotect = nlu_pp_reprotect;
    g_nlu_pp.flush = nlu_pp_flush;
    g_nlu_pp_ready = 1;
    return TG_OK;
}

/*
 * 安装入口补丁。**不看接管开关**：接管关着也能装（这是真机阶段 A 的前提）。
 *
 * world_frozen=1 是调用方（Injector）的承诺：它已经用 ptrace 暂停了目标进程的
 * 全部线程，并核对过没有任何线程的 PC 落在 [patch_lo, patch_hi)。
 * world_frozen=0 时一律拒绝，一个字节都不写（TG_E_UNSAFE）。
 *
 * T8-06：整个安装过程持有控制锁；且如果"机器码装上了但页面保护没恢复"，
 * 返回 TG_E_PATCH 并把接管显式压成关闭（RWX 页面不允许进入接管状态）。
 */
int tg_nlu_install(int world_frozen)
{
    int rc;

    nlu_boot_ensure();
    if (nlu_ctl_lock(0) != 0) {
        nlu_err_set("nlu install: another control operation is in progress (busy); nothing written");
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    rc = tg_nlu_prepare();
    if (rc != TG_OK) {
        char why[192];
        g_nlu_state = rc;
        memcpy(why, g_nlu_err, sizeof(why));
        why[sizeof(why) - 1] = '\0';
        nlu_err_set("nlu install: prepare failed (%d): %s", rc, why);
        nlu_ctl_unlock();
        return rc;
    }
    rc = nlu_pp_setup();
    if (rc != TG_OK) {
        g_nlu_state = rc;
        nlu_ctl_unlock();
        return rc;
    }

    rc = np_install(&g_nlu_pp, world_frozen);
    g_nlu_patched = np_installed(&g_nlu_pp);
    (void)nls_set_installed(&g_nlu_sw, g_nlu_patched);

    if (rc != NP_OK) {
        if (rc == NP_E_REPROTECT) {
            /* 机器码可能是对的，但页面还开着写权限：接管必须保持关闭 */
            (void)nls_set_takeover(&g_nlu_sw, 0);
            (void)t8_to_enabled_set(&g_to, 0);
            g_nlu_state = TG_E_PATCH;
            nlu_err_set("nlu install: %s", g_nlu_pp.last_error);
            slog("%s", g_nlu_err);
            nlu_ctl_unlock();
            return TG_E_PATCH;
        }
        g_nlu_state = (rc == NP_E_UNFROZEN) ? TG_E_UNSAFE :
                      (rc == NP_E_ENTRY)    ? TG_E_PROLOGUE :
                      (rc == NP_E_BUSY)     ? TG_E_BUSY : TG_E_PATCH;
        nlu_err_set("nlu install: %s", g_nlu_pp.last_error);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return g_nlu_state;
    }

    /* 读回确认：状态镜像与实测必须一致，否则不报成功 */
    if (!np_installed(&g_nlu_pp) || !nls_installed(&g_nlu_sw)) {
        g_nlu_state = TG_E_PATCH;
        nlu_err_set("nlu install: post-check failed (np=%d nls=%d)",
                    np_installed(&g_nlu_pp), nls_installed(&g_nlu_sw));
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_PATCH;
    }

    g_nlu_state = TG_OK;
    nlu_err_set("nlu install: %s; takeover=%d (unchanged: installing never enables takeover)",
                g_nlu_pp.last_error, nls_takeover(&g_nlu_sw));
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return TG_OK;
}

/*
 * 卸载入口补丁。同样要求 world_frozen=1。
 *
 * T8-06 顺序（必须严格按这个顺序，不允许调换）：
 *   1) 先关闭接管（回调立刻放行原厂；即使下面恢复入口失败，也不会留下
 *      "补丁还在、接管还开着"的中间状态）；
 *   2) 再恢复入口机器码（事务内读回确认）；
 *   3) **入口恢复成功之后**才标记未安装（nls 的 INSTALLED 位清零）。
 * 卸载失败（含"读回确认失败"、"页面保护恢复失败"）返回非 0，并且 nls 的 installed
 * 保持实际状态 —— 绝不出现"报了成功但机器码没恢复"的情况。
 */
int tg_nlu_uninstall(int world_frozen)
{
    int rc;

    nlu_boot_ensure();
    if (nlu_ctl_lock(0) != 0) {
        nlu_err_set("nlu uninstall: another control operation is in progress (busy); entry untouched");
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    if (g_nlu_func == 0 || !g_nlu_pp_ready) {
        nlu_err_set("nlu uninstall: no patch was ever installed in this process");
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    /* 1) 先关接管：这一步之后回调就已经全部放行原厂了 */
    (void)nls_set_takeover(&g_nlu_sw, 0);
    (void)t8_to_enabled_set(&g_to, 0);

    /* 2) 再恢复入口 */
    rc = np_uninstall(&g_nlu_pp, world_frozen);
    g_nlu_patched = np_installed(&g_nlu_pp);

    if (rc == NP_OK) {
        /* 3) 入口确认恢复成原厂序言之后，才标记未安装 */
        (void)nls_set_installed(&g_nlu_sw, 0);
        g_nlu_state = TG_OK;
        nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_OK;
    }

    if (rc == NP_E_NOT_PATCHED) {
        (void)nls_set_installed(&g_nlu_sw, 0);
        g_nlu_state = TG_E_NOT_INSTALLED;
        nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    /* 失败：installed 保持实测值（补丁可能还在），接管已在上面的第 1 步关掉 */
    (void)nls_set_installed(&g_nlu_sw, g_nlu_patched);
    g_nlu_state = (rc == NP_E_UNFROZEN)  ? TG_E_UNSAFE :
                  (rc == NP_E_ENTRY)     ? TG_E_PROLOGUE :
                  (rc == NP_E_REPROTECT) ? TG_E_PATCH :
                  (rc == NP_E_BUSY)      ? TG_E_BUSY : TG_E_PATCH;
    nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return g_nlu_state;
}

/*
 * 运行时接管开关（T8-05 的核心）：直接改目标进程里的状态，不碰进程环境、
 * 不重新跑初始化。关闭立即生效 —— tg_nlp_cb 每次进来都实地读这个开关。
 *
 *   开：要求入口补丁已在（否则没有回调可接管，返回 TG_E_NOT_INSTALLED，开关保持关闭）；
 *   关：任何时候都允许。
 *
 * T8-06：整段（写 nls 位 + 写会话表 enabled + 一致性自检 + 读回）都在控制锁内完成，
 * 因此并发 on/off/uninstall 交错之后，两个状态不可能停在互相矛盾的状态上。
 * 锁只在这里和 install/uninstall 里用，NLU 回调热路径不取锁。
 */
int tg_nlu_takeover_set(int on)
{
    int rc;
    int sw;
    int tbl;

    nlu_boot_ensure();
    if (nlu_ctl_lock(50) != 0) {
        nlu_err_set("nlu takeover=%d: another control operation is in progress (busy); switch unchanged",
                    on ? 1 : 0);
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    rc = nls_set_takeover(&g_nlu_sw, on ? 1 : 0);
    if (rc != NLS_OK) {
        nlu_err_set("nlu takeover on refused: entry patch is not installed (installed=%d)",
                    nls_installed(&g_nlu_sw));
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    if (on) {
        if (t8_to_enabled_set(&g_to, 1) != 0) {
            /*
             * 会话表不可用：nls 位保持开（这是"要接管"的意图），但判定一定是 fail-closed
             * （tg_nlp_cb 走 NLS_FAILCLOSED，不放行），并且明确返回"未就绪"而不是成功。
             */
            g_nlu_init_failed = 1;
            nls_note_init_failure(&g_nlu_sw, 1);
            sw = nls_takeover(&g_nlu_sw);
            tbl = t8_to_enabled(&g_to);
            nlu_err_set("nlu takeover=1 NOT READY: session table unavailable (ready=%d) "
                        "-> fail-closed, callbacks drop (sw=%d table=%d)",
                        g_to.mutex_ready, sw, tbl);
            slog("%s", g_nlu_err);
            nlu_ctl_unlock();
            return TG_E_NOT_READY;
        }
    } else {
        (void)t8_to_enabled_set(&g_to, 0);
    }

    /*
     * 一致性自检：两个状态必须相等。锁内不可能被别人插入，所以这里不等就说明
     * 有更严重的状态损坏 —— 如实报失败，不假装成功。
     */
    sw = nls_takeover(&g_nlu_sw);
    tbl = t8_to_enabled(&g_to);
    if (sw != tbl || sw != (on ? 1 : 0)) {
        INC(g_nlu_ctl_fail);
        nlu_err_set("nlu takeover=%d inconsistent after update: switch=%d table=%d",
                    on ? 1 : 0, sw, tbl);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_PATCH;
    }

    nlu_err_set("nlu takeover=%d installed=%d ready=%d mode=%s",
                on ? 1 : 0, nls_installed(&g_nlu_sw), g_to.mutex_ready ? 1 : 0,
                nls_mode_name(nls_mode(&g_nlu_sw, g_to.mutex_ready)));
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return TG_OK;
}

int tg_nlu_takeover_get(void) { return nlu_want_enabled(); }

/* 兼容 T8-03/04 注入器的旧调用名：语义就是"接管开关是否开着" */
int tg_nlu_is_enabled(void) { return nlu_want_enabled(); }

/* 会话表是否可用（0 时接管开着也只会 fail-closed） */
int tg_nlu_state_ready(void)
{
    nlu_boot_ensure();
    return g_to.mutex_ready ? 1 : 0;
}

/* 入口补丁是否真的在（实地读入口机器码，不信任何缓存标志） */
int tg_nlu_hook_installed(void)
{
    int on;

    nlu_boot_ensure();
    if (g_nlu_func == 0 || !g_nlu_pp_ready) return 0;
    (void)np_sample(&g_nlu_pp);
    on = np_installed(&g_nlu_pp);
    if (on != nls_installed(&g_nlu_sw)) {
        /* 实测与镜像不一致（例如外部把我们写的字改回去了）：以实测为准 */
        (void)nls_set_installed(&g_nlu_sw, on);
    }
    return on;
}

const char *tg_nlu_last_error(void) { return nlu_err(); }

/* ==================== T8-06：代码页保护状态查询 / 重试恢复 ====================
 *
 * 为什么需要这两个导出：页面保护恢复失败时不能"再写一遍入口来掩盖"，
 * 也不能要求重启 :core。操作者需要用只读查询确认风险还在不在，
 * 再单独触发一次恢复。两个函数都不写指令、不动补丁状态。
 */
static volatile unsigned long g_nlu_prot_retries, g_nlu_prot_retry_fails;

/* 直接查 /proc/self/maps：page_prot() 用 7 同时表示"RWX"和"查不到"，这里要区分 */
static int nlu_page_prot_query(uintptr_t page, int *prot)
{
    FILE *f = fopen("/proc/self/maps", "r");
    char line[512];

    if (f == NULL) return -1;
    while (fgets(line, sizeof(line), f) != NULL) {
        unsigned long s = 0, e = 0;
        char perms[8] = {0};

        if (sscanf(line, "%lx-%lx %7s", &s, &e, perms) != 3) continue;
        if (page < s || page >= e) continue;
        fclose(f);
        if (prot != NULL) {
            *prot = (perms[0] == 'r' ? PROT_READ : 0) | (perms[1] == 'w' ? PROT_WRITE : 0) |
                    (perms[2] == 'x' ? PROT_EXEC : 0);
        }
        return 0;
    }
    fclose(f);
    return -1;
}

/*
 * 只读查询：0 = 页当前不可写（写保护已恢复）；1 = 页仍可写（RWX 风险）；
 * -1 = 无法确定（还没解析过入口 / 没有原始保护位基线 / maps 查不到）。
 */
int tg_nlu_prot_state(void)
{
    uintptr_t page;
    int now;

    if (g_nlu_func == 0 || !g_nlu_prot_valid) return -1;
    page = (uintptr_t)g_nlu_func & ~(uintptr_t)0xFFF;
    if (nlu_page_prot_query(page, &now) != 0) return -1;
    return (now & PROT_WRITE) ? 1 : 0;
}

/* 一行保护状态（orig/now/是否可写/重试次数），给 Injector 打印 */
void tg_nlu_prot_text(char *buf, size_t cap)
{
    uintptr_t page = 0;
    int now = -1;

    if (buf == NULL || cap == 0) return;
    if (g_nlu_func != 0) {
        page = (uintptr_t)g_nlu_func & ~(uintptr_t)0xFFF;
        (void)nlu_page_prot_query(page, &now);
    }
    snprintf(buf, cap,
             "prot{page=0x%08x orig=%d now=%d valid=%d risk=%d ok=%lu fails=%lu "
             "retries=%lu retry_fails=%lu}",
             (unsigned)page, g_nlu_prot_valid ? g_nlu_orig_prot : -1, now,
             g_nlu_prot_valid, tg_nlu_prot_state(),
             g_nlu_pp.reprotect_ok, g_nlu_pp.reprotect_fails,
             g_nlu_prot_retries, g_nlu_prot_retry_fails);
}

/*
 * 重试恢复页面保护（人工/Injector 触发，不需要重启 :core）：
 *   0        = 恢复成功，且实测已不可写
 *   TG_E_*   = 失败（明确非零，绝不假报）
 * 不写指令、不改补丁状态、不动接管开关。
 */
int tg_nlu_prot_restore(void)
{
    char perr[128];
    int rc;
    int state;

    nlu_boot_ensure();
    if (g_nlu_func == 0 || !g_nlu_prot_valid) {
        nlu_err_set("nlu prot restore: no protection baseline (entry never patched in this process)");
        return TG_E_NOT_INSTALLED;
    }
    if (nlu_ctl_lock(0) != 0) {
        nlu_err_set("nlu prot restore: another control operation is in progress (busy)");
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    INC(g_nlu_prot_retries);
    perr[0] = '\0';
    rc = nlu_pp_reprotect(NULL, perr, sizeof(perr));
    if (rc != 0) {
        INC(g_nlu_prot_retry_fails);
        nlu_err_set("nlu prot restore FAILED: %s", (perr[0] != '\0') ? perr : "mprotect failed");
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_PATCH;
    }

    /* mprotect 成功 != 真的生效：再查一次实际权限 */
    state = tg_nlu_prot_state();
    if (state != 0) {
        INC(g_nlu_prot_retry_fails);
        nlu_err_set("nlu prot restore: mprotect returned 0 but page is still writable (state=%d)", state);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_PATCH;
    }

    nlu_err_set("nlu prot restore ok: page is no longer writable (orig=%d)", g_nlu_orig_prot);
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return TG_OK;
}

/* 安装前/安装后/卸载后的机器码 + 全部事务计数（一行） */
void tg_nlu_entry_code(char *buf, size_t cap)
{
    if (buf == NULL || cap == 0) return;
    if (!g_nlu_pp_ready) {
        snprintf(buf, cap, "np{state=none func=0x%08x}", (unsigned)g_nlu_func);
        return;
    }
    np_snapshot(&g_nlu_pp, buf, cap);
}

/* 一行诊断（不含文本、不含 API Key）：给 injector / status 打印 */
void tg_nlu_stats(char *buf, size_t cap)
{
    t8_to_snapshot s;
    int mode;

    if (buf == NULL || cap == 0) return;
    nlu_boot_ensure();
    mode = nlu_mode_now();
    memset(&s, 0, sizeof(s));
    if (g_to.mutex_ready) {
        t8_to_snapshot_take(&g_to, wall_ms(), &s);
    }
    snprintf(buf, cap,
             "nlu installed=%d takeover=%d mode=%s ready=%d env_ignored=%d boot_done=%d "
             "init_failed=%d np_installs=%lu np_skips=%lu np_ifail=%lu np_refused=%lu "
             "np_uninstalls=%lu np_ufail=%lu np_restores=%lu np_rfail=%lu busy=%lu "
             "prot_state=%d prot_ok=%lu prot_fails=%lu prot_retries=%lu "
             "ctl_locks=%lu ctl_busy=%lu ctl_fail=%lu ctl_held=%d "
             "enabled=%d init_error=%d active=%d marked=%lu passed=%lu dropped=%lu unknown=%lu "
             "overflow=%lu degraded=%d failclosed=%d fc_events=%lu fc_passes=%lu "
             "final_seen=%lu nlp_calls=%lu nlp_skip=%lu nlp_pass=%lu nlp_failclosed=%lu",
             nls_installed(&g_nlu_sw), nls_takeover(&g_nlu_sw), nls_mode_name(mode),
             g_to.mutex_ready ? 1 : 0, GET(g_nlu_env_ignored), GET(g_nlu_boot_done),
             GET(g_nlu_init_failed),
             g_nlu_pp.installs, g_nlu_pp.install_skips, g_nlu_pp.install_fails,
             g_nlu_pp.install_refusals, g_nlu_pp.uninstalls, g_nlu_pp.uninstall_fails,
             g_nlu_pp.restores, g_nlu_pp.restore_fails, g_nlu_pp.busy_hits,
             tg_nlu_prot_state(), g_nlu_pp.reprotect_ok, g_nlu_pp.reprotect_fails,
             g_nlu_prot_retries,
             g_nlu_ctl_locks, g_nlu_ctl_busy, g_nlu_ctl_fail, g_nlu_ctl_held,
             s.enabled, s.init_error, s.active, s.marked, s.passed, s.dropped,
             s.unknown, s.overflow_events, s.degraded, s.failclosed,
             s.failclosed_events, s.failclosed_passes,
             GET(g_nlu_final_seen), GET(g_nlu_nlp_calls), GET(g_nlu_nlp_skip), GET(g_nlu_nlp_pass),
             GET(g_nlu_nlp_failclosed));
}


/* --------------------------------------------------------------- 队列 */

typedef struct {
    char      evid[TG_MAX_ID_LEN + 8];
    char      sid[16];
    long long ms;
    int       len;
    int       attempts;
    char      text[TG_TEXT_MAX];
} tg_item;

static tg_item g_q[TG_QUEUE_CAP];
static int g_head, g_len;
static pthread_mutex_t g_lock = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t  g_cond = PTHREAD_COND_INITIALIZER;
static unsigned long g_seq;

static int q_push(const tg_item *it)
{
    int rc = 0;

    pthread_mutex_lock(&g_lock);
    if (g_len == TG_QUEUE_CAP) {
        /* 有界队列满：丢最老的并记账（与 T5-05B 行为一致，绝不静默） */
        g_head = (g_head + 1) % TG_QUEUE_CAP;
        g_len--;
        INC(g_overflow);
        rc = 1;
    }
    g_q[(g_head + g_len) % TG_QUEUE_CAP] = *it;
    g_len++;
    pthread_mutex_unlock(&g_lock);
    pthread_cond_signal(&g_cond);
    return rc;
}


static int q_pop(tg_item *out, int timeout_ms)
{
    struct timespec ts;
    int rc = 0;

    pthread_mutex_lock(&g_lock);
    if (g_len == 0 && timeout_ms > 0) {
        clock_gettime(CLOCK_REALTIME, &ts);
        ts.tv_sec += timeout_ms / 1000;
        ts.tv_nsec += (long)(timeout_ms % 1000) * 1000000L;
        if (ts.tv_nsec >= 1000000000L) { ts.tv_sec++; ts.tv_nsec -= 1000000000L; }
        while (g_len == 0 && !g_stop) {
            if (pthread_cond_timedwait(&g_cond, &g_lock, &ts) != 0) break;
        }
    }
    if (g_len > 0) {
        *out = g_q[g_head];
        g_head = (g_head + 1) % TG_QUEUE_CAP;
        g_len--;
        rc = 1;
    }
    pthread_mutex_unlock(&g_lock);
    return rc;
}

/* ------------------------------------------------------------- Hook 回调 */

/*
 * 进入条件：原厂 onStream 入口，r0=this, r1=sid, r2=text(UTF-8), r3=isFinished
 * 这里只做：计数、判定 final、有界拷贝、入队、唤醒发送线程。
 * 无 socket / 无 send / 无文件 / 无等待 / 无 sleep。
 */
static void tg_onstream_cb(void *self, int sid, const char *text, unsigned int fin)
{
    size_t n = 0;
    tg_item it;

    (void)self;
    INC(g_seen);

    if ((fin & 0xFFu) != 1u) return;      /* partial 不入队，只统计 */
    INC(g_final);

    if (text == NULL) { INC(g_drop_empty); return; }

    while (n < (size_t)TG_TEXT_MAX && text[n] != '\0') n++;
    if (n == 0) { INC(g_drop_empty); return; }
    if (n >= (size_t)TG_TEXT_MAX) { INC(g_drop_too_long); return; }
    if (tg_utf8_ok(text, n) != 0) { INC(g_drop_bad_utf8); return; }
    /* 桥接端拒收控制字符（TGB_E_TEXT_CONTROL）：这里先丢掉，不为一条注定被拒的
     * 文本反复建连。ASR 正常输出是 UTF-8 可打印文本，命中说明上游异常。 */
    {
        size_t k;
        for (k = 0; k < n; k++) {
            if ((unsigned char)text[k] < 0x20) { INC(g_drop_control); return; }
        }
    }

    memset(&it, 0, sizeof(it));
    it.len = (int)n;
    it.ms = wall_ms();
    memcpy(it.text, text, n);
    it.text[n] = '\0';
    snprintf(it.sid, sizeof(it.sid), "%d", sid);
    snprintf(it.evid, sizeof(it.evid), "t6-%d-%d-g%lu",
             (int)getpid(), sid, __atomic_add_fetch(&g_seq, 1UL, __ATOMIC_RELAXED));

    INC(g_queued);
    (void)q_push(&it);

    /* T8-03：同一条 final 顺手登记会话归属（开关关闭时 nlu_note_final 直接返回）。
     * 只做一次规则判定 + 一次加锁写内存，不入队、不 I/O，不影响上面的转发路径。 */
    nlu_note_final(sid, text);
}

/* ------------------------------------------------------------- UDS 发送 */

static int nonblock(int fd)
{
    int fl = fcntl(fd, F_GETFL, 0);
    return (fl < 0) ? -1 : fcntl(fd, F_SETFL, fl | O_NONBLOCK);
}

static int sock_open(void)
{
    int fd;
    struct sockaddr_un sa;
    socklen_t sl;
    int rc;

    fd = socket(AF_UNIX, SOCK_STREAM, 0);
    if (fd < 0) { INC(g_conn_fail); slog("socket(AF_UNIX) failed errno=%d", errno); return -1; }

    memset(&sa, 0, sizeof(sa));
    sa.sun_family = AF_UNIX;
    sa.sun_path[0] = '\0';                                   /* 抽象命名空间 */
    strncpy(sa.sun_path + 1, TG_SOCK_NAME, sizeof(sa.sun_path) - 2);
    sl = (socklen_t)(offsetof(struct sockaddr_un, sun_path) + 1 + strlen(TG_SOCK_NAME));

    if (nonblock(fd) != 0) {
        slog("fcntl(O_NONBLOCK) failed errno=%d", errno);
        close(fd);
        INC(g_conn_fail);
        return -1;
    }

    rc = connect(fd, (struct sockaddr *)&sa, sl);
    if (rc != 0) slog("connect(abstract:%s, len=%d) rc=%d errno=%d",
                      TG_SOCK_NAME, (int)sl, rc, errno);
    if (rc != 0 && errno == EINPROGRESS) {
        struct pollfd pf;
        pf.fd = fd; pf.events = POLLOUT; pf.revents = 0;
        if (poll(&pf, 1, TG_CONN_TMO_MS) > 0) {
            int soerr = 0;
            socklen_t l = sizeof(soerr);
            if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &soerr, &l) == 0 && soerr == 0) rc = 0;
            else { slog("connect poll done, so_error=%d", soerr); rc = -1; }
        } else {
            slog("connect poll timed out after %d ms", TG_CONN_TMO_MS);
            rc = -1;
        }
    }
    if (rc != 0) { close(fd); INC(g_conn_fail); return -1; }

    INC(g_conn_open);
    return fd;
}

static int send_all(int fd, const uint8_t *buf, size_t len, int timeout_ms)
{
    size_t off = 0;
    long long deadline = mono_ms() + timeout_ms;

    while (off < len) {
        ssize_t w = send(fd, buf + off, len - off, MSG_NOSIGNAL);
        if (w > 0) { off += (size_t)w; continue; }
        if (w < 0 && (errno == EAGAIN || errno == EINTR)) {
            struct pollfd pf;
            long long left = deadline - mono_ms();
            if (left <= 0) return -1;
            pf.fd = fd; pf.events = POLLOUT; pf.revents = 0;
            if (poll(&pf, 1, (int)left) <= 0) return -1;
            continue;
        }
        return -1;
    }
    return 0;
}

static int recv_exact(int fd, uint8_t *buf, size_t len, int timeout_ms)
{
    size_t off = 0;
    long long deadline = mono_ms() + timeout_ms;

    while (off < len) {
        ssize_t r = recv(fd, buf + off, len - off, 0);
        if (r > 0) { off += (size_t)r; continue; }
        if (r == 0) return -1;
        if (errno == EAGAIN || errno == EINTR) {
            struct pollfd pf;
            long long left = deadline - mono_ms();
            if (left <= 0) return -1;
            pf.fd = fd; pf.events = POLLIN; pf.revents = 0;
            if (poll(&pf, 1, (int)left) <= 0) return -1;
            continue;
        }
        return -1;
    }
    return 0;
}

/* 读一条 ACK；返回 0 = 收到 ACK（*status 指向静态缓冲区里的状态串），<0 = 失败 */
static int recv_ack(int fd, const char *expect_id, const char **status, const char **code)
{
    uint8_t hdr[TG_HDR_LEN];
    uint8_t body[TG_MAX_BODY + 1];
    tg_hdr h;
    static char st[32];
    static char cd[48];
    int rc;

    *status = NULL;
    *code = NULL;

    if (recv_exact(fd, hdr, sizeof(hdr), TG_ACK_TMO_MS) != 0) { INC(g_ack_timeout); return -1; }
    rc = tg_hdr_decode(hdr, sizeof(hdr), &h);
    if (rc != 0 || h.body_len > TG_MAX_BODY) return -1;
    if (h.body_len > 0 && recv_exact(fd, body, h.body_len, TG_ACK_TMO_MS) != 0) return -1;
    body[h.body_len] = '\0';

    if (tg_json_str_field((const char *)body, h.body_len, "ack", st, sizeof(st)) == 0) {
        if (expect_id != NULL && strcmp(st, expect_id) != 0) return -1;
    }
    st[0] = '\0';
    if (tg_json_str_field((const char *)body, h.body_len, "status", st, sizeof(st)) != 0) return -1;
    if (tg_json_str_field((const char *)body, h.body_len, "code", cd, sizeof(cd)) != 0) cd[0] = '\0';
    *status = st;
    *code = cd;
    return 0;
}

static int build_frame(const tg_item *it, uint8_t *frame, size_t cap, size_t *flen,
                       char *err, size_t errlen)
{
    char esc[TG_TEXT_MAX * 6 + 8];
    char body[TG_MAX_BODY + 1];
    int n, e;

    e = tg_json_escape(esc, sizeof(esc), it->text, (size_t)it->len);
    if (e < 0) { snprintf(err, errlen, "text escape overflow"); return -1; }

    n = snprintf(body, sizeof(body),
                 "{\"version\":1,\"event_id\":\"%s\",\"event_type\":\"asr_final\","
                 "\"pid\":%d,\"session_id\":\"%s\",\"text\":\"%s\","
                 "\"is_final\":true,\"received_at_ms\":%lld}",
                 it->evid, (int)getpid(), it->sid, esc, it->ms);
    if (n < 0 || (size_t)n >= sizeof(body)) {
        snprintf(err, errlen, "body too long (%d bytes, cap %u)", n, (unsigned)sizeof(body));
        return -1;
    }
    if (tg_frame_pack(TG_TYPE_REQ, body, (uint32_t)n, frame, cap, flen) != 0) {
        snprintf(err, errlen, "frame pack failed");
        return -1;
    }
    return 0;
}

static void *sender_main(void *arg)
{
    uint8_t frame[TG_HDR_LEN + TG_MAX_BODY];
    int fd = -1;
    tg_item it;

    (void)arg;
    slog("hook agent sender thread up: sock=abstract:%s pid=%d", TG_SOCK_NAME, (int)getpid());

    while (!g_stop) {
        size_t flen = 0;
        char err[96];
        int attempt;
        int done = 0;

        if (!q_pop(&it, 500)) continue;

        if (build_frame(&it, frame, sizeof(frame), &flen, err, sizeof(err)) != 0) {
            INC(g_dropped);
            slog("drop event=%s why=%s", it.evid, err);
            continue;
        }

        for (attempt = 0; attempt < TG_MAX_TRY && !done && !g_stop; attempt++) {
            const char *status = NULL;
            const char *code = NULL;

            if (attempt > 0) {
                struct timespec d;
                d.tv_sec = 0;
                d.tv_nsec = (long)(200 * attempt) * 1000000L;
                nanosleep(&d, NULL);
            }
            if (fd < 0) {
                fd = sock_open();
                if (fd < 0) { INC(g_reconn); continue; }
            }
            if (send_all(fd, frame, flen, TG_SEND_TMO_MS) != 0) {
                close(fd); fd = -1; INC(g_reconn);
                continue;
            }
            INC(g_sent);
            if (recv_ack(fd, it.evid, &status, &code) != 0) {
                close(fd); fd = -1; INC(g_reconn);
                continue;
            }
            if (status != NULL && strcmp(status, "stored") == 0) {
                INC(g_acked);
                done = 1;
                break;
            }
            if (status != NULL && strcmp(status, "duplicate") == 0) {
                INC(g_dup);
                done = 1;
                break;
            }
            if (status != NULL && strcmp(status, "rejected") == 0) {
                /* 永久拒收：重发同样的帧只会再被拒，记一次就好 */
                INC(g_rejected);
                slog("rejected event=%s code=%s", it.evid, code != NULL ? code : "?");
                done = 1;
                break;
            }
            INC(g_ack_timeout);
            close(fd); fd = -1;
        }

        if (!done && !g_stop) {
            INC(g_dropped);
            slog("drop event=%s why=send_failed attempts=%d", it.evid, attempt);
        }
    }

    if (fd >= 0) close(fd);
    /* 线程自己退出时必须把标志清掉：否则下一轮 install 会以为"发送线程还在"，
     * 复用一个已经结束的线程，事件就再也不会发出去（不可恢复的停止状态）。 */
    g_thread_started = 0;
    slog("hook agent sender thread exit (stop=%d)", g_stop);
    return NULL;
}

/* ------------------------------------------------------------- 对外接口 */

/* 解析模块/符号/序言：只读，不写任何指令。成功后补丁范围即可查询。 */
static int tg_resolve(void)
{
    mod_info m;
    uint32_t addr = 0, value = 0;
    int err;

    memset(&m, 0, sizeof(m));
    if (dl_iterate_phdr(mod_cb, &m) == 0 || !m.found) {
        set_err("module %s is not loaded in this process", TG_MODULE);
        return TG_E_MODULE;
    }

    err = mem_find_sym(m.base, TG_SYM, &addr, &value, g_err, sizeof(g_err));
    if (err != TG_OK) {
        slog("hook prepare failed: %s", g_err);
        return err;
    }

    if (value != TG_SYM_OFF) {
        set_err("symbol %s offset 0x%x != expected 0x%x (module base %p)",
                TG_SYM, value, TG_SYM_OFF, (void *)m.base);
        return TG_E_OFFSET;
    }

    g_func = addr;
    {
        const uint32_t *p = (const uint32_t *)g_func;
        g_orig[0] = p[0];
        g_orig[1] = p[1];
    }
    if (g_orig[0] != TG_PRO_W0 || g_orig[1] != TG_PRO_W1) {
        set_err("prologue mismatch at %p: %08x %08x (want %08x %08x)",
                (void *)g_func, g_orig[0], g_orig[1], TG_PRO_W0, TG_PRO_W1);
        g_func = 0;
        return TG_E_PROLOGUE;
    }
    return TG_OK;
}

/*
 * 只解析目标（不写指令、不起线程）。
 * Injector 需要先拿到补丁范围 [lo,hi)，暂停其它线程并确认没有线程停在范围里，
 * 才允许真正写补丁——所以准备与安装必须分成两步。
 */
int tg_hook_prepare(void)
{
    int rc;

    if (g_func != 0) {
        g_state = TG_OK;
        return TG_OK;
    }
    rc = tg_resolve();
    if (rc != TG_OK) {
        g_state = rc;
        return rc;
    }
    g_state = TG_OK;
    g_err[0] = '\0';
    slog("hook prepared: func=0x%08x patch=[0x%08x,0x%08x)",
         g_func, g_func, g_func + 8u);
    return TG_OK;
}

/* 补丁覆盖区间：[lo, hi)；未准备时返回 0 */
unsigned int tg_hook_patch_lo(void)
{
    return g_func;
}

unsigned int tg_hook_patch_hi(void)
{
    return (g_func != 0) ? (g_func + 8u) : 0u;
}

/*
 * 安装前的一致性检查：目标入口必须还是原厂那两条指令。
 *
 * 卸载会把 g_orig[0..1] 原样写回去，所以"卸载 → 重装"这条路上这里必然通过。
 * 如果看到的是我们自己的跳转、而 g_patched 却是 0，或者入口被别的东西改过，
 * 说明状态机已经不一致（例如上一轮卸载只写回了一半）；这时必须拒绝安装，
 * 绝不能把跳转再写一遍——那会把原厂指令永久丢掉。
 */
static int verify_entry_state(void)
{
    const uint32_t *p = (const uint32_t *)g_func;
    uint32_t w0, w1;

    if (g_func == 0) {
        set_err("verify_entry_state: func is not resolved");
        return TG_E_SYMBOL;
    }
    w0 = p[0];
    w1 = p[1];
    if (w0 == g_orig[0] && w1 == g_orig[1]) return TG_OK;

    set_err("entry not original at %p: %08x %08x (orig %08x %08x, patched=%d, sender=%d)",
            (void *)g_func, w0, w1, g_orig[0], g_orig[1], g_patched, g_thread_started);
    return TG_E_PROLOGUE;
}

int tg_hook_install(void)
{
    int err;
    pthread_attr_t attr;

    /*
     * 幂等判定必须同时看三件事，不能只看 g_patched：
     *   入口补丁在(g_patched) + 发送线程在跑(g_thread_started) + 页面保护没有欠账(!g_prot_dirty)。
     *
     * T8-06.2 的教训：patch_entry() 可能"入口写进去了、页面保护恢复失败"，
     * 这时 g_patched=1 但 sender 根本没起、页面还是 RWX。若这里仍然凭 g_patched
     * 直接返回成功，Injector 会以为装好了，实际既没有发送线程也还在 RWX 上跑。
     * 所以这种状态必须继续往下走（补线程 + 补页面保护），而不是提前 return。
     */
    if (g_patched && g_thread_started && !g_prot_dirty) {
        g_state = TG_OK;
        return TG_OK;
    }

    if (!g_patched) {
        err = tg_hook_prepare();
        if (err != TG_OK) return err;

        /* g_func 非空时 tg_hook_prepare() 会直接返回，所以这里要单独复核入口指令：
         * 它同时覆盖"首次安装"和"卸载后重装"两件事，状态不一致一律拒绝。 */
        err = verify_entry_state();
        if (err != TG_OK) {
            g_state = err;
            return err;
        }

        if (build_stub_page(g_func, &err) != 0) {
            g_state = err;
            return err;
        }

        err = patch_entry();
        if (err != TG_OK) {
            /* 入口可能已经是补丁（页面保护恢复失败那条路）：这里不改 g_patched，
             * 下一次 install 会走下面"补丁已在 → 只补页面保护/线程"的分支。 */
            g_state = err;
            return err;
        }
    } else if (g_prot_dirty) {
        /* 入口补丁已经在，只是页面保护欠账：单独重试恢复，失败照样返回错误 */
        err = entry_restore_prot("func entry (retry)");
        if (err != TG_OK) {
            g_state = err;
            return err;
        }
    }

    /* 复用判定只看"线程是否真的还在跑"：sender_main 退出时会把自己的
     * g_thread_started 清 0，所以这里不会复用一个已经死掉的线程，
     * 也不会在每轮重装时多起一个发送线程。 */
    g_stop = 0;
    if (g_thread_started) {
        g_state = TG_OK;
        g_err[0] = '\0';
        slog("hook re-installed: func=0x%08x (sender thread reused)", g_func);
        return TG_OK;
    }
    if (pthread_attr_init(&attr) != 0) {
        g_state = TG_E_THREAD;
        set_err("pthread_attr_init failed");
        return g_state;
    }
    (void)pthread_attr_setstacksize(&attr, 128 * 1024);
    if (pthread_create(&g_thread, &attr, sender_main, NULL) != 0) {
        int urc;
        int perr = errno;

        pthread_attr_destroy(&attr);
        urc = tg_hook_uninstall();
        g_state = TG_E_THREAD;
        if (urc != TG_OK) {
            /* 回滚自己也可能失败（入口写回了、页面保护没恢复）：两件事都要报出来 */
            char why[320];
            snprintf(why, sizeof(why), "%s", g_err);
            set_err("pthread_create(sender) failed errno=%d; rollback of the entry patch "
                    "also failed (rc=%d): %s", perr, urc, why);
        } else {
            set_err("pthread_create(sender) failed errno=%d", perr);
        }
        return g_state;
    }
    pthread_attr_destroy(&attr);
    g_thread_started = 1;
    INC(g_sender_spawns);

    g_state = TG_OK;
    g_err[0] = '\0';
    slog("hook installed: func=0x%08x symbol_offset=0x%x stub=%p tramp=%p",
         g_func, TG_SYM_OFF, g_stub_page,
         (void *)((char *)g_stub_page + TG_TRAMP_OFF));
    return TG_OK;
}

int tg_hook_status(void)
{
    return g_state;
}

const char *tg_hook_last_error(void)
{
    return g_err;
}

int tg_hook_is_initialized(void)
{
    return (g_state == TG_OK) ? 1 : 0;
}

int tg_hook_hooked(void)
{
    return g_patched ? 1 : 0;
}

/* 供 Injector 一次性读取的运行状态（单线程写入，读侧可能看到中间态，可接受） */
const char *tg_hook_stats(void)
{
    static char buf[320];

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d sender=%d spawns=%lu seen=%lu final=%lu queued=%lu sent=%lu acked=%lu "
             "dup=%lu rejected=%lu dropped=%lu reconn=%lu overflow=%lu "
             "drop_empty=%lu drop_utf8=%lu drop_long=%lu drop_control=%lu conn_open=%lu conn_fail=%lu ack_timeout=%lu",
             g_state, g_patched ? 1 : 0, g_thread_started ? 1 : 0, GET(g_sender_spawns),
             GET(g_seen), GET(g_final), GET(g_queued), GET(g_sent), GET(g_acked),
             GET(g_dup), GET(g_rejected), GET(g_dropped), GET(g_reconn), GET(g_overflow),
             GET(g_drop_empty), GET(g_drop_bad_utf8), GET(g_drop_too_long), GET(g_drop_control),
             GET(g_conn_open), GET(g_conn_fail), GET(g_ack_timeout));
    return buf;
}

/* 库被 dlopen 时不做任何事：安装动作由 Injector 显式调用 tg_hook_install()，
 * 这样"注入成功"有明确的返回码，而不是靠构造函数静默执行。 */
__attribute__((constructor)) static void tg_ctor(void)
{
    slog("libtg_hook.so loaded (pid=%d); waiting for tg_hook_install()", (int)getpid());
}
