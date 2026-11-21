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

#include "tg_wire.h"

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
    slog("hook uninstalled, original prologue restored");
    return TG_OK;
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
    if (fd < 0) { INC(g_conn_fail); return -1; }

    memset(&sa, 0, sizeof(sa));
    sa.sun_family = AF_UNIX;
    sa.sun_path[0] = '\0';                                   /* 抽象命名空间 */
    strncpy(sa.sun_path + 1, TG_SOCK_NAME, sizeof(sa.sun_path) - 2);
    sl = (socklen_t)(offsetof(struct sockaddr_un, sun_path) + 1 + strlen(TG_SOCK_NAME));

    if (nonblock(fd) != 0) { close(fd); INC(g_conn_fail); return -1; }

    rc = connect(fd, (struct sockaddr *)&sa, sl);
    if (rc != 0 && errno == EINPROGRESS) {
        struct pollfd pf;
        pf.fd = fd; pf.events = POLLOUT; pf.revents = 0;
        if (poll(&pf, 1, TG_CONN_TMO_MS) > 0) {
            int soerr = 0;
            socklen_t l = sizeof(soerr);
            if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &soerr, &l) == 0 && soerr == 0) rc = 0;
            else rc = -1;
        } else {
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
    return NULL;
}

/* ------------------------------------------------------------- 对外接口 */

int tg_hook_install(void)
{
    mod_info m;
    uint32_t addr = 0, value = 0;
    int err = TG_OK;
    pthread_attr_t attr;

    if (g_patched) {
        g_state = TG_OK;
        return TG_OK;
    }
    if (g_state == TG_OK) return TG_OK;

    memset(&m, 0, sizeof(m));
    if (dl_iterate_phdr(mod_cb, &m) == 0 || !m.found) {
        g_state = TG_E_MODULE;
        set_err("module %s is not loaded in this process", TG_MODULE);
        return g_state;
    }

    err = mem_find_sym(m.base, TG_SYM, &addr, &value, g_err, sizeof(g_err));
    if (err != TG_OK) {
        g_state = err;
        slog("hook install failed: %s", g_err);
        return g_state;
    }

    if (value != TG_SYM_OFF) {
        g_state = TG_E_OFFSET;
        set_err("symbol %s offset 0x%x != expected 0x%x (module base %p)",
                TG_SYM, value, TG_SYM_OFF, (void *)m.base);
        return g_state;
    }

    g_func = addr;
    {
        const uint32_t *p = (const uint32_t *)g_func;
        g_orig[0] = p[0];
        g_orig[1] = p[1];
    }
    if (g_orig[0] != TG_PRO_W0 || g_orig[1] != TG_PRO_W1) {
        g_state = TG_E_PROLOGUE;
        set_err("prologue mismatch at %p: %08x %08x (want %08x %08x)",
                (void *)g_func, g_orig[0], g_orig[1], TG_PRO_W0, TG_PRO_W1);
        return g_state;
    }

    if (build_stub_page(g_func, &err) != 0) {
        g_state = err;
        return g_state;
    }

    err = patch_entry();
    if (err != TG_OK) {
        g_state = err;
        return g_state;
    }

    g_stop = 0;
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

    g_state = TG_OK;
    g_err[0] = '\0';
    slog("hook installed: func=0x%08x symbol_offset=0x%x stub=%p tramp=%p",
         g_func, value, g_stub_page, (void *)((char *)g_stub_page + TG_TRAMP_OFF));
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
             "state=%d hooked=%d seen=%lu final=%lu queued=%lu sent=%lu acked=%lu "
             "dup=%lu rejected=%lu dropped=%lu reconn=%lu overflow=%lu "
             "drop_empty=%lu drop_utf8=%lu drop_long=%lu drop_control=%lu conn_open=%lu conn_fail=%lu ack_timeout=%lu",
             g_state, g_patched ? 1 : 0,
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
