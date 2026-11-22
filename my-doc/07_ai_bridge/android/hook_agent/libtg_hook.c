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
static char          g_err[192];

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

/* 从 /proc/self/maps 取某页当前的保护位（1=r 2=w 4=x）；查不到返回 7 */
static int page_prot(uintptr_t page)
{
    FILE *f = fopen("/proc/self/maps", "r");
    char line[512];

    if (f == NULL) return 7;
    while (fgets(line, sizeof(line), f) != NULL) {
        unsigned long s = 0, e = 0;
        char perms[8] = {0};
        if (sscanf(line, "%lx-%lx %7s", &s, &e, perms) != 3) continue;
        if (page < s || page >= e) continue;
        fclose(f);
        return (perms[0] == 'r' ? 1 : 0) | (perms[1] == 'w' ? 2 : 0) | (perms[2] == 'x' ? 4 : 0);
    }
    fclose(f);
    return 7;
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
    uint32_t *p = (uint32_t *)g_func;
    uintptr_t page = g_func & ~(uintptr_t)0xFFF;
    int old = page_prot(page);

    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("mprotect(func=%p, RWX) failed errno=%d", (void *)g_func, errno);
        return TG_E_PROT;
    }

    /* 先写字面量、再写跳转指令：两者之间若线程正好在 func+4 上执行，
     * 最坏结果是该次调用异常（概率 ~ns 级窗口）；顺序反过来则必然跳到垃圾地址。 */
    p[1] = (uint32_t)(uintptr_t)g_stub_page;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    p[0] = TG_PATCH_JUMP;
    __builtin___clear_cache((char *)p, (char *)p + 8);

    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));
    g_patched = 1;
    return TG_OK;
}

int tg_hook_uninstall(void)
{
    uint32_t *p;
    uintptr_t page;
    int old;

    if (!g_patched) return TG_OK;
    p = (uint32_t *)g_func;
    page = g_func & ~(uintptr_t)0xFFF;
    old = page_prot(page);
    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("mprotect(func, RWX) failed on uninstall errno=%d", errno);
        return TG_E_PROT;
    }
    p[0] = g_orig[0];
    p[1] = g_orig[1];
    __builtin___clear_cache((char *)p, (char *)p + 8);
    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));
    g_patched = 0;
    /*
     * 安装状态只由 g_patched 表达；g_state 是"上一次操作的结果"。
     * 卸载成功之后没有任何错误可言，所以这里回到 TG_OK —— 否则 Injector 的
     * --check 会把一次成功的卸载当成错误（exit=20），重装路径也会到处看到"状态错误"。
     * 发送线程保持运行（不设 g_stop）：重装时复用它，不再起第二个。
     */
    g_state = TG_OK;
    g_err[0] = '\0';
    slog("hook uninstalled, original prologue restored (func=0x%08x sender=%d)",
         g_func, g_thread_started);
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
 * 开关：环境变量 TG_NLU_TAKEOVER=1。默认关闭时本段代码不拦任何原厂调用
 * （回调直接返回 0，等价于没装），设备行为与今天完全一致。
 */
#define TG_NLU_SYM      "_ZN9AliAiLabs4AGUI15SessionDispatch11onNlpResultEiiPNS0_9NlpResultE"
#define TG_NLU_OFF      0x118ebcu
#define TG_NLU_PRO_W0   0xE92D4FF0u     /* push {r4-r11, lr} */
#define TG_NLU_PRO_W1   0xE28DB01Cu     /* add  r11, sp, #28 */
#define TG_E_DISABLED   (-10)

static volatile int g_nlu_state = TG_E_NOT_INSTALLED;
static volatile int g_nlu_patched;
static volatile int g_nlu_enabled;      /* 环境变量开关（nlu_boot 里只写一次） */
static volatile int g_nlu_booted;
static int          g_nlu_mask = 0x7F;  /* T7B_ROUTE_ALL */
static uint32_t     g_nlu_func;
static uint32_t     g_nlu_orig[2];
static void        *g_nlu_page;
static t8_to_state  g_to;

/* Hook 级计数（只用原子加；不含任何文本内容） */
static volatile unsigned long g_nlu_final_seen, g_nlu_final_pass, g_nlu_final_failclosed;
static volatile unsigned long g_nlu_nlp_calls, g_nlu_nlp_skip, g_nlu_nlp_pass;

static void nlu_boot(void)
{
    const char *v;
    int rc;

    if (__atomic_load_n(&g_nlu_booted, __ATOMIC_ACQUIRE)) return;

    v = getenv("TG_NLU_ROUTE_MASK");
    if (v != NULL && v[0] != '\0') {
        long m = strtol(v, NULL, 0);
        if (m > 0 && m <= 0x7F) g_nlu_mask = (int)m;
    }
    v = getenv("TG_NLU_TAKEOVER");
    if (v != NULL && (v[0] == '1' || v[0] == 'y' || v[0] == 'Y')) {
        rc = t8_to_init(&g_to);
        (void)t8_to_enabled_set(&g_to, 1);
        g_nlu_enabled = 1;
        slog("nlu takeover: ENABLED (t8_to_init=%d ready=%d init_error=%d mask=0x%02x)",
             rc, g_to.mutex_ready, g_to.init_error, g_nlu_mask);
    } else {
        g_nlu_enabled = 0;
        slog("nlu takeover: disabled (default; factory behaviour unchanged)");
    }
    __atomic_store_n(&g_nlu_booted, 1, __ATOMIC_RELEASE);
}

static int nlu_want_enabled(void)
{
    nlu_boot();
    return g_nlu_enabled;
}

/* onStream(isFinished=1) 时登记会话归属；开关关闭时什么都不做 */
static void nlu_note_final(int sid, const char *text)
{
    char key[24];
    t8_to_why why = T8_TO_WHY_NONE;
    t8_to_decision d;

    if (!nlu_want_enabled()) return;
    INC(g_nlu_final_seen);
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

    (void)self;
    (void)type;
    (void)res;

    if (!nlu_want_enabled()) return 0;
    INC(g_nlu_nlp_calls);
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
    int old;

    if (g_nlu_page != NULL) return 0;

    g_nlu_page = mmap(NULL, TG_STUB_PAGE, PROT_READ | PROT_WRITE,
                      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_nlu_page == MAP_FAILED) {
        g_nlu_page = NULL;
        *err_out = TG_E_MMAP;
        set_err("mmap(nlu stub) failed errno=%d", errno);
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

    __builtin___clear_cache((char *)g_nlu_page, (char *)g_nlu_page + TG_STUB_PAGE);

    old = page_prot((uintptr_t)g_nlu_page);
    if (old != 7) {
        mprotect(g_nlu_page, TG_STUB_PAGE, PROT_READ | PROT_EXEC);
        if (mprotect(g_nlu_page, TG_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            set_err("mprotect(nlu stub, RWX) failed errno=%d", errno);
            *err_out = TG_E_PROT;
            return -1;
        }
    }
    if (mprotect(g_nlu_page, TG_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        set_err("mprotect(nlu stub, RX) failed errno=%d", errno);
        *err_out = TG_E_PROT;
        return -1;
    }
    return 0;
}

static int nlu_resolve(void)
{
    mod_info m;
    uint32_t addr = 0, value = 0;
    int err;

    memset(&m, 0, sizeof(m));
    if (dl_iterate_phdr(mod_cb, &m) == 0 || !m.found) {
        set_err("nlu: module %s is not loaded in this process", TG_MODULE);
        return TG_E_MODULE;
    }
    err = mem_find_sym(m.base, TG_NLU_SYM, &addr, &value, g_err, sizeof(g_err));
    if (err != TG_OK) {
        slog("nlu prepare failed: %s", g_err);
        return err;
    }
    if (value != TG_NLU_OFF) {
        set_err("nlu symbol %s offset 0x%x != expected 0x%x", TG_NLU_SYM, value, TG_NLU_OFF);
        return TG_E_OFFSET;
    }
    g_nlu_func = addr;
    {
        const uint32_t *p = (const uint32_t *)g_nlu_func;
        g_nlu_orig[0] = p[0];
        g_nlu_orig[1] = p[1];
    }
    if (g_nlu_orig[0] != TG_NLU_PRO_W0 || g_nlu_orig[1] != TG_NLU_PRO_W1) {
        set_err("nlu prologue mismatch at %p: %08x %08x (want %08x %08x)",
                (void *)g_nlu_func, g_nlu_orig[0], g_nlu_orig[1], TG_NLU_PRO_W0, TG_NLU_PRO_W1);
        g_nlu_func = 0;
        return TG_E_PROLOGUE;
    }
    return TG_OK;
}

int tg_nlu_prepare(void)
{
    int rc;

    if (!nlu_want_enabled()) return TG_E_DISABLED;
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

int tg_nlu_install(void)
{
    uint32_t *p;
    uintptr_t page;
    int old;
    int err;

    if (!nlu_want_enabled()) return TG_E_DISABLED;
    if (g_nlu_patched) { g_nlu_state = TG_OK; return TG_OK; }
    err = tg_nlu_prepare();
    if (err != TG_OK) return err;

    /* 入口一致性：必须还是原厂那两条指令（卸载→重装这条路上必然成立） */
    p = (uint32_t *)g_nlu_func;
    if (p[0] != g_nlu_orig[0] || p[1] != g_nlu_orig[1]) {
        set_err("nlu entry not original at %p: %08x %08x", (void *)g_nlu_func, p[0], p[1]);
        g_nlu_state = TG_E_PROLOGUE;
        return TG_E_PROLOGUE;
    }
    if (build_nlu_stub_page(g_nlu_func, &err) != 0) {
        g_nlu_state = err;
        return err;
    }

    page = g_nlu_func & ~(uintptr_t)0xFFF;
    old = page_prot(page);
    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("nlu mprotect(func,RWX) failed errno=%d", errno);
        g_nlu_state = TG_E_PROT;
        return TG_E_PROT;
    }
    /* 与 onStream 同序：先写字面量、再写跳转 */
    p[1] = (uint32_t)(uintptr_t)g_nlu_page;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    p[0] = TG_PATCH_JUMP;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));

    g_nlu_patched = 1;
    g_nlu_state = TG_OK;
    slog("nlu hook installed: func=0x%08x stub=0x%08x", g_nlu_func, (unsigned)(uintptr_t)g_nlu_page);
    return TG_OK;
}

int tg_nlu_uninstall(void)
{
    uint32_t *p;
    uintptr_t page;
    int old;

    if (!g_nlu_patched) return TG_OK;
    p = (uint32_t *)g_nlu_func;
    page = g_nlu_func & ~(uintptr_t)0xFFF;
    old = page_prot(page);
    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("nlu mprotect(func,RWX) failed on uninstall errno=%d", errno);
        return TG_E_PROT;
    }
    p[0] = g_nlu_orig[0];
    p[1] = g_nlu_orig[1];
    __builtin___clear_cache((char *)p, (char *)p + 8);
    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));
    g_nlu_patched = 0;
    g_nlu_state = TG_OK;
    slog("nlu hook uninstalled, original prologue restored (func=0x%08x)", g_nlu_func);
    return TG_OK;
}

int tg_nlu_is_enabled(void) { return nlu_want_enabled(); }

/* 一行诊断（不含文本、不含 API Key）：给 injector / status 打印 */
void tg_nlu_stats(char *buf, size_t cap)
{
    t8_to_snapshot s;

    if (buf == NULL || cap == 0) return;
    memset(&s, 0, sizeof(s));
    if (g_to.mutex_ready) {
        t8_to_snapshot_take(&g_to, wall_ms(), &s);
    }
    snprintf(buf, cap,
             "nlu enabled=%d init_error=%d active=%d marked=%lu passed=%lu dropped=%lu "
             "unknown=%lu overflow=%lu degraded=%d failclosed=%d fc_events=%lu fc_passes=%lu "
             "final_seen=%lu nlp_calls=%lu nlp_skip=%lu nlp_pass=%lu",
             s.enabled, s.init_error, s.active, s.marked, s.passed, s.dropped,
             s.unknown, s.overflow_events, s.degraded, s.failclosed,
             s.failclosed_events, s.failclosed_passes,
             GET(g_nlu_final_seen), GET(g_nlu_nlp_calls), GET(g_nlu_nlp_skip), GET(g_nlu_nlp_pass));
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

    if (g_patched) {
        g_state = TG_OK;
        return TG_OK;
    }

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
        g_state = err;
        return err;
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
        pthread_attr_destroy(&attr);
        (void)tg_hook_uninstall();
        g_state = TG_E_THREAD;
        set_err("pthread_create(sender) failed errno=%d", errno);
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
