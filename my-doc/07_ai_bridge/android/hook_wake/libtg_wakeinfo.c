/*
 * libtg_wakeinfo.c -- T7-06 第一步：只读采集原厂 _WakeUpInfo_ 快照（ARM32 / Android 8.1）
 *
 * 目标（任务书 T7-05-R2 第四节）：
 *   在 AliAiLabs::AGUI::SessionManager::onStartTalk(typeA, typeB, _WakeUpInfo_*, _WakeUpEventRet_*)
 *   上装**只读** inline hook，把 _WakeUpInfo_ 的 0x00..0x5c 原始字节、调用上下文和
 *   指针字段的安全读取结果写到独立日志，供"字段布局 / 字符串所有权"分析使用。
 *
 * 本库刻意只做采集：
 *   - 不写原厂内存（除了自己装 hook 的那 8 字节入口），不改参数，不改返回值，
 *     不调用任何原厂函数（连 startTalk 都不调）；
 *   - 指针字段只记录地址 + 用"写管道再读回"的方式安全读取（内核遇到不可读页时
 *     返回已读字节数，进程不会收到 SIGSEGV），不假设任何指针一定有效；
 *   - 日志写 /data/local/tmp/t7/wake/ 下，与 ASR 的 events.jsonl 完全分开。
 *
 * 为什么用符号而不是偏移：
 *   偏移（0x111364）来自反汇编，换固件就失效；dynsym 里有
 *   _ZN9AliAiLabs4AGUI14SessionManager11onStartTalkE... 这个符号，用它更稳，
 *   同时把解析到的实际偏移打进日志，和反汇编结论对照。
 *
 * 失败策略：prepare/install 任何一步失败都返回错误码并让 Injector 报出来；
 * hook 本身只做 memcpy/日志，回调里不做任何可能抛异常的事。原厂函数无论回调
 * 结果如何都按原参数执行（stub 结束就是 jmp trampoline）。
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
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/syscall.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define TG_LOG_TAG   "tg_wakeinfo"
#define TG_MODULE    "libsmartbox.so"

/* onStartTalk 的 ARM 序言（实测：f0 4f 2d e9 1c b0 8d e2 = E92D4FF0 E28DB01C）。
 * prepare 阶段会逐字比对；不一致就拒绝安装，避免打到别的函数上。 */
static const uint32_t PRO_ON_START[2] = { 0xE92D4FF0u, 0xE28DB01Cu };
#define SYM_ON_START \
    "_ZN9AliAiLabs4AGUI14SessionManager11onStartTalkENS0_19IInputDeviceManager15InputDeviceTypeES3_PNS2_12_WakeUpInfo_EPNS2_16_WakeUpEventRet_E"

#define WI_DUMP_BYTES   0x60        /* 0x00..0x5c：任务书要求的范围 */
#define WI_STUB_PAGE    4096
#define WI_PROBE_BYTES  64
#define WI_TEXT_MAX     48
#define WI_LINE_MAX     2048

#define WI_DIR          "/data/local/tmp/t7/wake"
#define WI_LOG          WI_DIR "/wakeinfo.jsonl"
#define WI_STATUS       WI_DIR "/wakeinfo.status"

enum {
    WI_OK = 0,
    WI_E_MODULE = -3,
    WI_E_SYMBOL = -4,
    WI_E_PROLOGUE = -5,
    WI_E_MMAP = -6,
    WI_E_PROT = -7
};

typedef struct {
    const char *name;
    const char *sym;
    uint32_t    func;        /* 运行时地址 */
    uint32_t    orig[2];     /* 被替换的两条指令 */
    uint32_t    pro[2];      /* 期望序言 */
    uint32_t    stub;
    uint32_t    tramp;
    int         hooked;
} wi_hook;

static wi_hook   g_hook = { "SessionManager::onStartTalk", SYM_ON_START, 0, {0,0}, {0,0}, 0, 0, 0 };
static uintptr_t g_base;
static void     *g_stub_page;
static int       g_state = WI_OK;
static int       g_patched;
static char      g_err[192];

static volatile unsigned long g_c_calls;
static volatile unsigned long g_c_unreadable;
static volatile unsigned long g_c_null;
static volatile unsigned long g_c_badtype;
static volatile unsigned long g_c_probe_ok;

#define GET(x) __atomic_load_n(&(x), __ATOMIC_RELAXED)
#define INC(x) __atomic_add_fetch(&(x), 1ul, __ATOMIC_RELAXED)

static void slog(const char *fmt, ...)
{
    char buf[400];
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    buf[sizeof(buf) - 1] = '\0';
    __android_log_write(ANDROID_LOG_INFO, TG_LOG_TAG, buf);
}

static void set_err(const char *fmt, ...)
{
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(g_err, sizeof(g_err), fmt, ap);
    va_end(ap);
    g_err[sizeof(g_err) - 1] = '\0';
}

/* ---------------- 安全读取（写管道再读回，绝不解引用未知指针） ----------------
 * 内核在 copy_from_user 阶段遇到不可读页时会把"已经拷好的那部分"交给管道，
 * write() 返回实际字节数，本进程不会收到 SIGSEGV。所以这是"安全读取结果"的来源。 */
static int safe_read(void *dst, const void *src, size_t n)
{
    int fds[2];
    ssize_t w;
    size_t off = 0;

    if (src == NULL || dst == NULL || n == 0) return -1;
    if (pipe(fds) != 0) return -1;
    w = write(fds[1], src, n);
    if (w <= 0) {
        close(fds[1]);
        close(fds[0]);
        return (w == 0) ? 0 : -1;
    }
    while (off < (size_t)w) {
        ssize_t r = read(fds[0], (char *)dst + off, (size_t)w - off);
        if (r <= 0) break;
        off += (size_t)r;
    }
    close(fds[1]);
    close(fds[0]);
    return (int)off;
}

/* JSON 字符串转义。
 * 注意（T7-06 第一版踩过）：JSON 没有 \xNN 这个转义，而且任意内存里的 0x80+ 字节
 * 不一定是合法 UTF-8。所以控制字符和 0x80+ 一律写成 \u00NN（按 latin-1 码点保真），
 * 这样每一行都是合法 JSON，字节值也没有丢。 */
static size_t jesc(char *dst, size_t cap, const char *src, size_t n)
{
    size_t o = 0;
    size_t i;

    if (cap == 0) return 0;
    for (i = 0; i < n && o + 8 < cap; i++) {
        unsigned char c = (unsigned char)src[i];
        if (c == '"' || c == '\\') { dst[o++] = '\\'; dst[o++] = (char)c; }
        else if (c >= 0x20 && c < 0x7f) dst[o++] = (char)c;
        else {
            dst[o++] = '\\';
            dst[o++] = 'u';
            dst[o++] = '0';
            dst[o++] = '0';
            dst[o++] = "0123456789abcdef"[c >> 4];
            dst[o++] = "0123456789abcdef"[c & 0xf];
        }
    }
    dst[o] = '\0';
    return o;
}

static int printable_ratio(const unsigned char *p, int n)
{
    int i, ok = 0;

    for (i = 0; i < n; i++) {
        unsigned char c = p[i];
        if (c == 0) continue;
        if ((c >= 0x20 && c < 0x7f) || c >= 0x80) ok++;
    }
    return (n > 0) ? (ok * 100 / n) : 0;
}

/* ---------------- 快照 ---------------- */
static void comm_of(pid_t tid, char *dst, size_t cap)
{
    char path[64];
    int fd;

    dst[0] = '\0';
    snprintf(path, sizeof(path), "/proc/self/task/%d/comm", (int)tid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return;
    {
        ssize_t n = read(fd, dst, cap - 1);
        if (n > 0) {
            while (n > 0 && (dst[n - 1] == '\n' || dst[n - 1] == '\r')) n--;
            dst[n] = '\0';
        }
    }
    close(fd);
}

static void write_all(int fd, const char *buf, size_t n)
{
    size_t off = 0;

    while (off < n) {
        ssize_t w = write(fd, buf + off, n - off);
        if (w <= 0) return;
        off += (size_t)w;
    }
}

static void write_status(unsigned long seq)
{
    char buf[256];
    int fd;
    int n;

    n = snprintf(buf, sizeof(buf),
                 "calls=%lu unreadable=%lu null_api=%lu bad_wake_type=%lu probe_ok=%lu "
                 "seq=%lu hooked=%d\n",
                 GET(g_c_calls), GET(g_c_unreadable), GET(g_c_null), GET(g_c_badtype),
                 GET(g_c_probe_ok), seq, g_patched ? 1 : 0);
    fd = open(WI_STATUS, O_WRONLY | O_CREAT | O_TRUNC | O_CLOEXEC, 0644);
    if (fd < 0) return;
    write_all(fd, buf, (size_t)n);
    close(fd);
}

/* 回调：r[0..3] = 压栈的 r0..r3，即 (this, typeA, typeB, info) */
static void cb_on_start(uint32_t *r)
{
    uint32_t this_p = r[0], typeA = r[1], typeB = r[2];
    const void *info = (const void *)(uintptr_t)r[3];
    unsigned char raw[WI_DUMP_BYTES];
    char line[WI_LINE_MAX];
    char comm[32];
    char probes[900];
    char rawtxt[WI_DUMP_BYTES * 3 + 8];
    struct timespec ts;
    pid_t tid = (pid_t)syscall(SYS_gettid);
    unsigned long seq;
    int n = -1;
    int wake_type = -1;
    int i, po = 0;

    seq = INC(g_c_calls);
    clock_gettime(CLOCK_REALTIME, &ts);
    comm_of(tid, comm, sizeof(comm));

    if (info == NULL) {
        INC(g_c_null);
    } else {
        n = safe_read(raw, info, sizeof(raw));
        if (n <= 0) INC(g_c_unreadable);
        else if (n >= 4) memcpy(&wake_type, raw, 4);
    }

    /* raw 十六进制（不可读的尾部用 .. 表示） */
    po = 0;
    for (i = 0; i < WI_DUMP_BYTES; i++) {
        if (i < n) {
            po += snprintf(rawtxt + po, sizeof(rawtxt) - (size_t)po, "%02x", raw[i]);
        } else {
            po += snprintf(rawtxt + po, sizeof(rawtxt) - (size_t)po, "..");
        }
    }
    rawtxt[po] = '\0';

    /* 指针候选：只对看起来像用户空间地址、4 字节对齐的字做安全读取 */
    probes[0] = '\0';
    if (n >= 4) {
        int written = 0;
        for (i = 0; i + 4 <= (n < WI_DUMP_BYTES ? n : WI_DUMP_BYTES); i += 4) {
            uint32_t v;
            unsigned char pb[WI_PROBE_BYTES];
            char text[WI_TEXT_MAX * 4 + 8];
            int pn;

            memcpy(&v, raw + i, 4);
            if (v < 0x10000u || v >= 0xc0000000u || (v & 3u) != 0) continue;
            pn = safe_read(pb, (const void *)(uintptr_t)v, sizeof(pb));
            if (pn <= 0) continue;
            if (printable_ratio(pb, pn < 24 ? pn : 24) < 60) continue;
            jesc(text, sizeof(text), (const char *)pb, (size_t)(pn < WI_TEXT_MAX ? pn : WI_TEXT_MAX));
            written += snprintf(probes + written, sizeof(probes) - (size_t)written,
                                "%s\"0x%02x:0x%08x:%d:%s\"", written > 0 ? "," : "",
                                i, v, pn, text);
            INC(g_c_probe_ok);
            if (written > (int)sizeof(probes) - 200) break;
        }
    }
    if (probes[0] == '\0') snprintf(probes, sizeof(probes), "");

    if (wake_type < 0 || wake_type > 0x11) INC(g_c_badtype);

    snprintf(line, sizeof(line),
             "{\"seq\":%lu,\"t_ms\":%lld,\"pid\":%d,\"tid\":%d,\"comm\":\"%s\","
             "\"this\":\"0x%08x\",\"typeA\":%d,\"typeB\":%d,\"info\":\"0x%08x\","
             "\"info_null\":%d,\"bytes\":%d,\"wake_type\":%d,\"raw\":\"%s\","
             "\"probes\":[%s]}",
             seq, (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000,
             (int)getpid(), (int)tid, comm, this_p, (int)typeA, (int)typeB,
             (uint32_t)(uintptr_t)info, info == NULL ? 1 : 0, n, wake_type, rawtxt, probes);

    {
        int fd = open(WI_LOG, O_WRONLY | O_CREAT | O_APPEND | O_CLOEXEC, 0644);
        if (fd >= 0) {
            write_all(fd, line, strlen(line));
            write_all(fd, "\n", 1);
            close(fd);
        }
    }
    write_status(seq);
    slog("onStartTalk#%lu tid=%d comm=%s typeA=%d typeB=%d info=%p wake_type=%d bytes=%d",
         seq, (int)tid, comm, (int)typeA, (int)typeB, info, wake_type, n);
}

/* ---------------- ELF 解析（与 T6-01/T7-02 同一套做法） ---------------- */
typedef struct {
    uintptr_t base;
    int       found;
} wi_mod;

static int mod_cb(struct dl_phdr_info *info, size_t size, void *data)
{
    wi_mod *m = (wi_mod *)data;
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

static uint32_t mem_sym(uintptr_t base, const char *want)
{
    const Elf32_Ehdr *eh = (const Elf32_Ehdr *)base;
    const Elf32_Phdr *ph;
    const uint32_t *dyn = NULL;
    uint32_t i, symtab = 0, strtab = 0, gnuhash = 0, strsz = 0, nsyms = 0;

    if (eh->e_ident[EI_MAG0] != ELFMAG0 || eh->e_ident[EI_CLASS] != ELFCLASS32 ||
        eh->e_machine != EM_ARM) {
        return 0;
    }
    ph = (const Elf32_Phdr *)(base + eh->e_phoff);
    for (i = 0; i < eh->e_phnum; i++) {
        if (ph[i].p_type == PT_DYNAMIC) {
            dyn = (const uint32_t *)(base + ph[i].p_vaddr);
            break;
        }
    }
    if (dyn == NULL) return 0;
    for (i = 0; dyn[i * 2] != DT_NULL; i++) {
        uint32_t tag = dyn[i * 2], val = dyn[i * 2 + 1];
        if (tag == DT_SYMTAB) symtab = val;
        else if (tag == DT_STRTAB) strtab = val;
        else if (tag == DT_STRSZ) strsz = val;
        else if (tag == DT_GNU_HASH) gnuhash = val;
    }
    if (symtab == 0 || strtab == 0 || strsz == 0 || gnuhash == 0) return 0;

    {
        const uint32_t *h = (const uint32_t *)(base + gnuhash);
        uint32_t nbuckets = h[0], symoffset = h[1], bloom = h[2];
        const uint32_t *buckets = h + 4 + bloom;
        const uint32_t *chain = buckets + nbuckets;
        uint32_t maxb = 0, k;

        for (k = 0; k < nbuckets; k++) if (buckets[k] > maxb) maxb = buckets[k];
        if (maxb < symoffset) {
            nsyms = symoffset;
        } else {
            while ((chain[maxb - symoffset] & 1u) == 0) maxb++;
            nsyms = maxb + 1;
        }
    }
    if (nsyms == 0 || nsyms > 300000u) return 0;

    {
        const Elf32_Sym *syms = (const Elf32_Sym *)(base + symtab);
        const char *strs = (const char *)(base + strtab);

        for (i = 0; i < nsyms; i++) {
            const char *nm;
            if (syms[i].st_name == 0 || syms[i].st_name >= strsz) continue;
            nm = strs + syms[i].st_name;
            if (strcmp(nm, want) != 0) continue;
            if (syms[i].st_shndx == SHN_UNDEF) continue;
            return (uint32_t)(base + syms[i].st_value);
        }
    }
    return 0;
}

/* ---------------- stub 页与补丁 ---------------- */
static int page_rwx(uintptr_t addr)
{
    long ps = sysconf(_SC_PAGESIZE);
    uintptr_t page = addr & ~(uintptr_t)(ps - 1);

    if (mprotect((void *)page, (size_t)ps, PROT_READ | PROT_WRITE | PROT_EXEC) == 0) return 0;
    return -1;
}

static int build_stub_page(void)
{
    uint32_t *s;

    if (g_stub_page != NULL) return 0;
    g_stub_page = mmap(NULL, WI_STUB_PAGE, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_stub_page == MAP_FAILED) {
        g_stub_page = NULL;
        set_err("mmap(stub page) failed errno=%d", errno);
        return WI_E_MMAP;
    }
    memset(g_stub_page, 0, WI_STUB_PAGE);

    g_hook.stub  = (uint32_t)(uintptr_t)g_stub_page;
    g_hook.tramp = (uint32_t)(uintptr_t)g_stub_page + 0x400;
    s = (uint32_t *)(uintptr_t)g_hook.stub;

    /* push {r0,r1,r2,r3,r4,lr} / mov r0, sp / ldr r1,[pc,#0x10] / blx r1 /
     * pop {r0,r1,r2,r3,r4,lr} / ldr pc,[pc,#-4] -> trampoline */
    s[0] = 0xE92D401Fu;
    s[1] = 0xE1A0000Du;
    s[2] = 0xE59F1010u;
    s[3] = 0xE12FFF31u;
    s[4] = 0xE8BD401Fu;
    s[5] = 0xE59FF004u;
    s[6] = g_hook.tramp;
    s[7] = 0;
    s[8] = (uint32_t)(uintptr_t)cb_on_start;

    {
        uint32_t *t = (uint32_t *)(uintptr_t)g_hook.tramp;
        t[0] = g_hook.orig[0];
        t[1] = g_hook.orig[1];
        t[2] = 0xE59FF000u;                  /* ldr pc, [pc] */
        t[3] = g_hook.func + 8;
    }
    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + WI_STUB_PAGE);

    if (mprotect(g_stub_page, WI_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        if (mprotect(g_stub_page, WI_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            set_err("mprotect(stub page RX/RWX) failed errno=%d", errno);
            return WI_E_PROT;
        }
    }
    return 0;
}

static int install_one(wi_hook *h)
{
    uint32_t *p;

    if (h->func == 0) return WI_E_SYMBOL;
    if (h->orig[0] != h->pro[0] || h->orig[1] != h->pro[1]) {
        set_err("%s: prologue %08x %08x != expected %08x %08x", h->name,
                h->orig[0], h->orig[1], h->pro[0], h->pro[1]);
        return WI_E_PROLOGUE;
    }
    if (page_rwx(h->func) != 0) {
        set_err("%s: mprotect(%08x) failed errno=%d", h->name, h->func, errno);
        return WI_E_PROT;
    }
    p = (uint32_t *)(uintptr_t)h->func;
    p[0] = 0xE51FF004u;                 /* ldr pc, [pc, #-4] */
    p[1] = h->stub;
    __builtin___clear_cache((char *)h->func, (char *)(h->func + 8));
    h->hooked = 1;
    return 0;
}

static void restore_one(wi_hook *h)
{
    uint32_t *p;

    if (!h->hooked) return;
    if (page_rwx(h->func) != 0) return;
    p = (uint32_t *)(uintptr_t)h->func;
    p[0] = h->orig[0];
    p[1] = h->orig[1];
    __builtin___clear_cache((char *)h->func, (char *)(h->func + 8));
    h->hooked = 0;
}

/* ---------------- 导出 ABI（与 Injector 约定一致） ---------------- */
int tg_hook_prepare(void)
{
    wi_mod m;
    uint32_t v;

    mkdir("/data/local/tmp/t7", 0755);
    mkdir(WI_DIR, 0755);

    if (g_state != WI_OK) return g_state;
    memset(&m, 0, sizeof(m));
    dl_iterate_phdr(mod_cb, &m);
    if (!m.found) {
        set_err("%s is not loaded in this process", TG_MODULE);
        g_state = WI_E_MODULE;
        return g_state;
    }
    g_base = m.base;
    v = mem_sym(m.base, g_hook.sym);
    if (v == 0) {
        set_err("%s: symbol not found", g_hook.name);
        g_state = WI_E_SYMBOL;
        return g_state;
    }
    g_hook.func = v;
    g_hook.orig[0] = *(const uint32_t *)(uintptr_t)(v + 0);
    g_hook.orig[1] = *(const uint32_t *)(uintptr_t)(v + 4);
    g_hook.pro[0] = PRO_ON_START[0];
    g_hook.pro[1] = PRO_ON_START[1];
    slog("resolved %s @ %08x (offset 0x%x) prologue %08x %08x", g_hook.name, v,
         (unsigned)(v - (uint32_t)m.base), g_hook.orig[0], g_hook.orig[1]);
    return WI_OK;
}

/* Injector 用 lo/hi 组成"被改写的字节区间" [lo, hi)，并在停线程期间对该区间做校验。
 * 本库只有一个 hook、只改入口 8 字节，所以 hi = func + 8（Injector 要求 hi > lo）。 */
int tg_hook_patch_lo(void) { return (int)g_hook.func; }
int tg_hook_patch_hi(void) { return (int)(g_hook.func + 8); }

int tg_hook_install(void)
{
    int rc;

    if (g_state != WI_OK) return g_state;
    if (g_patched) return WI_OK;
    rc = build_stub_page();
    if (rc != 0) { g_state = rc; return rc; }
    rc = install_one(&g_hook);
    if (rc != 0) { g_state = rc; return rc; }
    g_patched = 1;
    slog("hooked %s @ %08x stub=%08x tramp=%08x (read-only snapshot)",
         g_hook.name, g_hook.func, g_hook.stub, g_hook.tramp);
    write_status(0);
    return WI_OK;
}

int tg_hook_uninstall(void)
{
    restore_one(&g_hook);
    g_patched = 0;
    return WI_OK;
}

int tg_hook_status(void) { return g_state; }
const char *tg_hook_last_error(void) { return g_err; }
int tg_hook_is_initialized(void) { return (g_state == WI_OK) ? 1 : 0; }
int tg_hook_hooked(void) { return g_patched ? 1 : 0; }

const char *tg_hook_stats(void)
{
    static char buf[320];

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d calls=%lu unreadable=%lu null_api=%lu bad_wake_type=%lu "
             "probe_ok=%lu func=%08x",
             g_state, g_patched ? 1 : 0, GET(g_c_calls), GET(g_c_unreadable),
             GET(g_c_null), GET(g_c_badtype), GET(g_c_probe_ok), g_hook.func);
    return buf;
}

__attribute__((constructor)) static void wi_ctor(void)
{
    slog("libtg_wakeinfo.so loaded (pid=%d); waiting for tg_hook_install()", (int)getpid());
}
