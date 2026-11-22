/*
 * libtg_ttsguard.c -- T7-02 原厂回答屏蔽（TTS 来源守卫），ARM32 / Android 8.1
 *
 * 目标：保留原厂唤醒、ASR、TTS 引擎，只屏蔽"原厂 NLU 对普通用户指令生成的回答"，
 *       让 AI Worker 的回答（走原厂 TTS）正常播报。
 * 为什么必须在 native 层做（真机实测调用链，见 evidence/t7_02_trace_e1.logcat）：
 *
 *   原厂回答（要屏蔽）：
 *     cloud Speak 命令 -> TtsManager::onTtsStart(sessionId=<ASR session>, isStreaming=1, tts="现在是...")
 *       -> AudioManager::playTTS(stream:<ASR session>) -> AudioManager::processTtsStart
 *       -> PlaybackService::playTts -> PCM
 *
 *   AI Worker 的回答（要保留）：
 *     TTS 队列 / app_process -> GenieTable.query(method=4)
 *       -> VoiceManager.playTts(TtsInfo{sessionId=0, pkg='com.tgz02.aibridge.tts'})
 *       -> JNI AiLabsCore.playTts -> TtsManager::playTts(TtsInfo)      <== 我方入口
 *       -> AliGenie.Speaker/TextToSpeech -> cloud Speak
 *       -> TtsManager::onTtsStart(sessionId=<playTts 返回的 id>, ...)
 *       -> 同一条播放链
 *
 * 两条路最终汇合在 TtsManager::onTtsStart。区分依据只有"来源"，不能一刀切：
 *   - 我们发起时，TtsManager::playTts 返回了本次播报的 sessionId（真机实测 5244437，
 *     与随后 onTtsStart 的 sessionId 完全一致），调用线程是 Binder 线程
 *     （ContentProvider 的 Binder:<pid>_<n>），而原厂自己驱动的回答来自
 *     Protocol/Playback/AudioState 等工作线程。
 *   - 原厂自己回答时，playTts 的调用方不是 Binder 线程，也无法套用上面的 id 允许集
 *     （日志里 onTtsStart 的 sessionId 等于 ASR session id，例如 1967633）。
 * 因此本库装两个只读 inline hook：
 *   1) TtsManager::playTts         -- 后置：读返回值；若调用方是 Binder 线程，把
 *                                    (id, text) 记入"我方允许集"；
 *   2) TtsManager::onTtsStart      -- 前置：id 或 text 命中允许集 -> 原样放行，
 *                                    否则不调用原函数（音频链根本不会建立）并记账。
 * 明确不碰的东西：
 *   - 唤醒提示音走 prompt 播放链（AudioManager::playPrompt / player:prompt），
 *     不经过 onTtsStart，因此原厂这次改动后仍然正常。
 *   - 不关 TTS 服务、不改音量/静音、不动 AudioFlinger/PCM；
 *   - 不写原厂 APK、不改 system/boot/vendor；
 *   - 与 T6-01 libtg_hook.so 完全独立：不同的 .so、不同的补丁点，可分别装卸。
 * ABI：与 libtg_hook.so 同名同签名（tg_hook_prepare/install/uninstall/status/
 *      last_error/stats/hooked/patch_lo/patch_hi），**不修改 Injector**：
 *      用 tg_injector --so libtg_ttsguard.so 即可装上。
 * 失败策略：模块/符号/偏移/序言任何一项不匹配就拒绝安装（绝不"尽力而为"猜地址）。
 */
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

#include "native_marker.h"

#define TG_MODULE      "libsmartbox.so"
#define TG_LOG_TAG     "tgt"

/* 我方入口：TtsManager::playTts(ITtsClient::_TtsInfo_ const*) */
#define TG_SYM_PLAY    "_ZN9AliAiLabs4AGUI10TtsManager7playTtsEPKNS0_10ITtsClient9_TtsInfo_E"
#define TG_OFF_PLAY    0x11fafcu
#define TG_PRO_PLAY0   0xE92D4BF0u   /* push {r4,r5,r6,r7,r8,r9,fp,lr} */
#define TG_PRO_PLAY1   0xE28DB018u   /* add  fp, sp, #24 */

/* 姹囧悎鐐癸細TtsManager::onTtsStart(int, ITtsClient::TtsResponseInfo const*) */
#define TG_SYM_START   "_ZN9AliAiLabs4AGUI10TtsManager10onTtsStartEiPKNS0_10ITtsClient15TtsResponseInfoE"
#define TG_OFF_START   0x11f110u
#define TG_PRO_START0  0xE92D4FF0u   /* push {r4-r11,lr} */
#define TG_PRO_START1  0xE28DB01Cu   /* add  fp, sp, #28 */

/* 结构体字段偏移（由 libsmartbox.so 反汇编确认，见报告 1.3 节）：
 *   _TtsInfo_.text            = *(char **)(info + 0x04)
 *   TtsResponseInfo.text      = *(char **)(info + 0x28)
 *   TtsResponseInfo.streaming = *(uint8_t *)(info + 0x08) */
#define TG_OFF_TTSINFO_TEXT   0x04
#define TG_OFF_TTSRESP_TEXT   0x28
#define TG_OFF_TTSRESP_STREAM 0x08

#define TG_PATCH_JUMP  0xE51FF004u   /* ldr pc, [pc, #-4] */
#define TG_STUB_PAGE   4096

#define TG_OK             0
#define TG_E_NOT_INSTALLED (-1)
#define TG_E_MODULE       (-2)
#define TG_E_SYMBOL       (-3)
#define TG_E_OFFSET       (-4)
#define TG_E_PROLOGUE     (-5)
#define TG_E_MMAP         (-6)
#define TG_E_PROT         (-7)
#define TG_E_STATE        (-8)

/* ????????? playTts ?????sessionId + ?????? */
#define TG_ALLOW_MAX    4
#define TG_ALLOW_TEXT   256

static int        g_state = TG_OK;
static char       g_err[320];
static int        g_patched;
static int        g_hooked_play, g_hooked_start;
static uint32_t   g_func_play, g_func_start;
static uint32_t   g_orig_play[2], g_orig_start[2];
static void      *g_stub_page = NULL;
static uint32_t   g_stub_play, g_stub_start;
static uint32_t   g_tramp_play, g_tramp_start;

/* ---------------- 调用计数（原子递增，onTtsStart 热路径只读一次） ---------------- */
static volatile unsigned long g_seen_play;      /* playTts 被调用次数 */
static volatile unsigned long g_ours;           /* 判定为我方（Binder 线程 + id>0） */
static volatile unsigned long g_not_ours;       /* playTts 但调用方不是 Binder 线程 */
static volatile unsigned long g_seen_start;     /* onTtsStart 被调用次数 */
static volatile unsigned long g_allowed;        /* onTtsStart 放行 */
static volatile unsigned long g_dropped;        /* onTtsStart 拦截（原厂主动回答） */
static volatile unsigned long g_hit_id;         /* 按 sessionId 命中 */
static volatile unsigned long g_hit_text;       /* 按文本命中 */
static volatile unsigned long g_empty;          /* 空文本/空指针（不拦截，放行） */
/* T7-04：原厂基础指令放行（实现见本文件"原厂基础指令放行"一节） */
#define TG_NATIVE_FILE_DEFAULT "/data/local/tmp/t5_bridge/work/native_route.public.json"
#define TG_NATIVE_CACHE_MS     200
#define TG_NATIVE_FILE_MAX     512

typedef struct {
    nm_marker          mk;              /* 解析出来的标记（native_marker.c） */
    long long          read_at_ms;      /* 上次读取的单调时刻 */
    /* 文件身份：mtime/size/ino 任一变就立刻重读。
     * 连续两条 route=native 指令间隔可能只有几百毫秒，只按时间缓存会把上一条
     * 标记当成这一条的（T7-04 的问题之一）。 */
    long long          file_mtime_ms;
    long long          file_size;
    unsigned long long file_ino;
} native_allow_t;

static char          g_native_path[256];
static int           g_native_enabled = 1;
static native_allow_t g_native;
static nm_stats      g_native_stats;
static volatile unsigned long g_native_allowed;
static volatile unsigned long g_native_reads;
static volatile unsigned long g_native_errors;
static volatile unsigned long g_native_expired;
static volatile unsigned long g_native_window_hits;
static volatile unsigned long g_native_miss;

#define GET(x) __atomic_load_n(&(x), __ATOMIC_RELAXED)
#define INC(x) __atomic_add_fetch(&(x), 1ul, __ATOMIC_RELAXED)

static void slog(const char *fmt, ...)
{
    char buf[512];
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
    __android_log_write(ANDROID_LOG_ERROR, TG_LOG_TAG, g_err);
}

/* --------------------------------------------------------------- ?????*/

typedef struct {
    int      id;
    uint32_t used;
    char     text[TG_ALLOW_TEXT];
} allow_ent;

static allow_ent g_allow[TG_ALLOW_MAX];
static volatile int g_allow_lock;
static volatile int g_allow_next;

static void allow_lock(void)
{
    while (__sync_lock_test_and_set(&g_allow_lock, 1)) {
        /* 极短自旋；持有者只做几十字节拷贝 */
    }
}

static void allow_unlock(void)
{
    __sync_lock_release(&g_allow_lock);
}

static void copy_text(char *dst, size_t cap, const char *src)
{
    size_t n;

    dst[0] = '\0';
    if (src == NULL) return;
    n = strlen(src);
    if (n >= cap) {
        n = cap - 1;
        /* 不要截断在多字节序列中间 */
        while (n > 0 && ((unsigned char)src[n] & 0xC0) == 0x80) n--;
    }
    memcpy(dst, src, n);
    dst[n] = '\0';
}

static void allow_add(int id, const char *text)
{
    int i;

    allow_lock();
    i = g_allow_next % TG_ALLOW_MAX;
    g_allow_next = (g_allow_next + 1) % TG_ALLOW_MAX;
    g_allow[i].id = id;
    g_allow[i].used = 1;
    copy_text(g_allow[i].text, sizeof(g_allow[i].text), text);
    allow_unlock();
}

/* ?????? 1??by_id ????????? */
static int allow_has(int id, const char *text, int *by_id)
{
    int i, hit = 0;

    *by_id = 0;
    allow_lock();
    for (i = 0; i < TG_ALLOW_MAX; i++) {
        if (!g_allow[i].used) continue;
        if (id > 0 && g_allow[i].id == id) {
            *by_id = 1;
            hit = 1;
            break;
        }
    }
    if (!hit && text != NULL && text[0] != '\0') {
        for (i = 0; i < TG_ALLOW_MAX; i++) {
            if (!g_allow[i].used) continue;
            if (g_allow[i].text[0] == '\0') continue;
            if (strcmp(g_allow[i].text, text) == 0) {
                hit = 1;
                break;
            }
        }
    }
    allow_unlock();
    return hit;
}

/* T7-04：原厂基础指令放行的判定（实现见本文件"原厂基础指令放行"一节） */
static int native_allow_hit(int id, int *by_session);

/* ------------------------------------------------------- 璋冪敤绾跨▼韬唤 */
/* 我们发起播报的调用线程是 ContentProvider 的 Binder 线程（comm = "Binder:<pid>_<n>"）。
 * 原厂自己驱动的回答来自它的工作线程（Protocol/Playback/AudioState 等），comm 不是 Binder。 */
static int caller_is_binder(char *comm_out, size_t cap)
{
    char path[64];
    char buf[32];
    int fd, n;

    if (comm_out != NULL && cap > 0) comm_out[0] = '\0';
    snprintf(path, sizeof(path), "/proc/self/task/%ld/comm", (long)syscall(SYS_gettid));
    fd = open(path, O_RDONLY);
    if (fd < 0) return 0;
    n = (int)read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return 0;
    while (n > 0 && (buf[n - 1] == '\n' || buf[n - 1] == '\0')) n--;
    buf[n] = '\0';
    if (comm_out != NULL && cap > 0) snprintf(comm_out, cap, "%s", buf);
    return strncmp(buf, "Binder:", 7) == 0 ? 1 : 0;
}

/* ------------------------------------------------------------- 鍥炶皟 */

/* Hook 1 后置回调：rv = TtsManager::playTts 的返回值，text = TtsInfo.text */
static void tg_play_post(int rv, const char *text)
    __attribute__((used, noinline));

static void tg_play_post(int rv, const char *text)
{
    char comm[32];
    int binder;

    INC(g_seen_play);
    binder = caller_is_binder(comm, sizeof(comm));
    if (rv > 0 && binder) {
        INC(g_ours);
        allow_add(rv, text);
        slog("playTts -> allow-listed id=%d comm=%s text_bytes=%d",
             rv, comm, text != NULL ? (int)strlen(text) : 0);
    } else {
        INC(g_not_ours);
        slog("playTts -> NOT ours rv=%d comm=%s (factory-driven, not allow-listed)",
             rv, comm);
    }
}

/* Hook 2 ???????? = ????? = ??? */
static int tg_start_pre(int self, int id, const void *info)
    __attribute__((used, noinline));

static int tg_start_pre(int self, int id, const void *info)
{
    const char *text = NULL;
    unsigned int streaming = 0;
    int by_id = 0;
    char comm[32];

    (void)self;
    INC(g_seen_start);

    if (info != NULL) {
        text = *(const char *const *)((const char *)info + TG_OFF_TTSRESP_TEXT);
        streaming = *(const unsigned char *)((const char *)info + TG_OFF_TTSRESP_STREAM);
    }

    if ((text == NULL || text[0] == '\0') && id <= 0) {
        /* 没有任何可判定信息：不碰，交给原厂（宁可多播一次也不要误伤状态机） */
        INC(g_empty);
        return 1;
    }

    if (allow_has(id, text, &by_id)) {
        INC(g_allowed);
        if (by_id) INC(g_hit_id); else INC(g_hit_text);
        slog("onTtsStart ALLOW id=%d by=%s streaming=%u text_bytes=%d",
             id, by_id ? "session_id" : "text", streaming,
             text != NULL ? (int)strlen(text) : 0);
        return 1;
    }

    /* T7-04：这条原厂回答是不是针对一条 route=native 的基础指令（音量/天气/关屏/时间）？
     * 是就放行 -- 原厂自己的回答必须能播出来，守卫只拦"原厂替普通对话抢答"那种。 */
    {
        int by_session = 0;

        if (native_allow_hit(id, &by_session)) {
            INC(g_native_allowed);
            slog("onTtsStart ALLOW id=%d by=native_%s intent=%s seq=%lld exp_ms=%lld "
                 "streaming=%u text_bytes=%d",
                 id, by_session ? "session" : "window",
                 g_native.mk.intent[0] != '\0' ? g_native.mk.intent : "?",
                 g_native.mk.seq, g_native.mk.exp_ms,
                 streaming, text != NULL ? (int)strlen(text) : 0);
            return 1;
        }
    }

    (void)caller_is_binder(comm, sizeof(comm));
    INC(g_dropped);
    slog("onTtsStart DROP id=%d streaming=%u comm=%s text=\"%s\" (factory NLU answer)",
         id, streaming, comm, text != NULL ? text : "(null)");
    return 0;
}

/* ------------------------------------------------- T7-04：原厂基础指令放行
 *
 * 背景：T7-02 的守卫把"所有没经过我方 playTts 的原厂回答"都拦掉了。
 * 但音量/天气/关屏/时间这四类指令，Worker 侧已经标成 route=native，
 * 由原厂自己回答 -- 这时原厂回答必须放行，否则用户说了"现在几点"却没有任何回应。
 *
 * 判定依据只有一个文件（Worker 写完再原子 rename，所以读到的永远是完整一份）：
 *   /data/local/tmp/t5_bridge/work/native_route.public.json
 *   {"version":2,"seq":..,"wall_ms":..,"exp_ms":..,"session":"1969141",
 *    "event_id":"..","intent":"time","rule":"time.keyword"}
 *
 * 判定顺序（T7-05 收紧，实现在 native_marker.c，可在 host 单测）：
 *   1) onTtsStart 的 sessionId == 文件里的 session -> 放行（最强证据：原厂回答问题针对这条 ASR 会话）；
 *   2) 只有"标记里没有 session"时，才在 exp_ms 窗口内兜底放行；
 *   3) session 对不上就拦（T7-04 是无条件放行，等于把窗口内所有原厂回答都放出去了）。
 * 文件读取带 200 ms 缓存，且文件身份（mtime/size/ino）变化时立刻重读。 */


static long long mono_ms(void)
{
    struct timespec ts;

    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

static long long wall_ms(void)
{
    struct timespec ts;

    if (clock_gettime(CLOCK_REALTIME, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

/* 重新读标记文件。返回 1 = 读到并解析出有效标记，0 = 没有/无效。 */
static int native_reload(long long now)
{
    char buf[TG_NATIVE_FILE_MAX];
    struct stat sb;
    int fd;
    ssize_t n;

    memset(&g_native.mk, 0, sizeof(g_native.mk));
    g_native.read_at_ms = now;
    if (!g_native_enabled || g_native_path[0] == '\0') return 0;

    INC(g_native_reads);
    if (stat(g_native_path, &sb) == 0) {
        g_native.file_mtime_ms = (long long)sb.st_mtime * 1000 + sb.st_mtim.tv_nsec / 1000000;
        g_native.file_size = (long long)sb.st_size;
        g_native.file_ino = (unsigned long long)sb.st_ino;
    }

    fd = open(g_native_path, O_RDONLY);
    if (fd < 0) return 0;
    n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) { INC(g_native_errors); return 0; }
    buf[n] = '\0';

    if (nm_parse(buf, (size_t)n, &g_native.mk) != 0) {
        INC(g_native_errors);
        return 0;
    }
    return 1;
}

/* 文件身份变了就立刻重读：连续两条 route=native 指令间隔可能只有几百毫秒，
 * 只按时间缓存会把上一条标记当成这一条的（T7-04 的问题之一）。 */
static int native_should_reload(long long now)
{
    struct stat sb;
    long long mtime_ms;
    long long size;
    unsigned long long ino;

    if (!g_native.mk.valid) return 1;
    if (now - g_native.read_at_ms > TG_NATIVE_CACHE_MS) return 1;
    if (stat(g_native_path, &sb) != 0) return 0;
    mtime_ms = (long long)sb.st_mtime * 1000 + sb.st_mtim.tv_nsec / 1000000;
    size = (long long)sb.st_size;
    ino = (unsigned long long)sb.st_ino;
    if (mtime_ms != g_native.file_mtime_ms || size != g_native.file_size ||
        ino != g_native.file_ino) {
        return 1;
    }
    return 0;
}

/* 0 = 不放行；1 = 放行。by_session 回填 1 = 按 sessionId 命中 */
static int native_allow_hit(int id, int *by_session)
{
    long long now_m;
    long long now_w;

    if (by_session != NULL) *by_session = 0;
    if (!g_native_enabled) return 0;

    now_m = mono_ms();
    if (native_should_reload(now_m)) (void)native_reload(now_m);
    if (!g_native.mk.valid) return 0;

    now_w = wall_ms();
    if (now_w <= 0) return 0;
    if (nm_decide(&g_native.mk, id, now_w, &g_native_stats, by_session)) {
        if (!*by_session) INC(g_native_window_hits);
        return 1;
    }
    g_native_expired = g_native_stats.expired;
    g_native_miss = g_native_stats.miss_session;
    return 0;
}


/* ------------------------------------------------------- ???????????*/

typedef struct {
    uintptr_t base;
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

/* 在已加载模块的内存镜像里解析 dynsym（与 T6-01 同一套做法） */
static int mem_find_sym(uintptr_t base, const char *want, uint32_t *out_addr,
                        char *err, size_t errlen)
{
    const Elf32_Ehdr *eh = (const Elf32_Ehdr *)base;
    const Elf32_Phdr *ph;
    const Elf32_Dyn *dyn = NULL;
    uint32_t i;
    uint32_t symtab = 0, strtab = 0, gnuhash = 0, strsz = 0, nsyms = 0;

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
        if (ph[i].p_type != PT_DYNAMIC) continue;
        dyn = (const Elf32_Dyn *)(base + ph[i].p_vaddr);
        break;
    }
    if (dyn == NULL) {
        snprintf(err, errlen, "no PT_DYNAMIC in %s", TG_MODULE);
        return TG_E_MODULE;
    }

    for (i = 0; dyn[i].d_tag != DT_NULL; i++) {
        switch (dyn[i].d_tag) {
        case DT_SYMTAB: symtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRTAB: strtab = (uint32_t)dyn[i].d_un.d_ptr; break;
        case DT_STRSZ:  strsz  = (uint32_t)dyn[i].d_un.d_val; break;
        case DT_GNU_HASH: gnuhash = (uint32_t)dyn[i].d_un.d_ptr; break;
        default: break;
        }
    }
    if (symtab == 0 || strtab == 0 || strsz == 0) {
        snprintf(err, errlen, "DT_SYMTAB/DT_STRTAB/DT_STRSZ missing in %s", TG_MODULE);
        return TG_E_MODULE;
    }
    if (gnuhash == 0) {
        snprintf(err, errlen, "no DT_GNU_HASH in %s", TG_MODULE);
        return TG_E_SYMBOL;
    }

    {
        const uint32_t *h = (const uint32_t *)(base + gnuhash);
        uint32_t nbuckets = h[0], symoffset = h[1], bloom_size = h[2];
        const uint32_t *buckets = h + 4 + bloom_size;
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
            *out_addr = (uint32_t)(base + syms[i].st_value);
            return TG_OK;
        }
    }

    snprintf(err, errlen, "symbol not found in %s dynsym (%u syms): %s", TG_MODULE, nsyms, want);
    return TG_E_SYMBOL;
}

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

/* --------------------------------------------------------------- Stub 椤?*/

/*
 * stub 页布局（全部 ARM 指令、word 对齐；字面量都与使用点同页内偏移）：
 *
 * playTts（后置：先跑原函数，再把返回值交给回调，最后把 rv 送回调用方）
 *   +0x00 E92D407F  push {r0,r1,r2,r3,r4,r5,r6,lr}
 *   +0x04 E59F4024  ldr  r4, [pc, #0x24]   ; r4 = cb
 *   +0x08 E59F5024  ldr  r5, [pc, #0x24]   ; r5 = trampoline
 *   +0x0C E12FFF35  blx  r5                ; r0 = 原函数返回值（参数仍是原样的 r0-r3 压栈复用值）
 *   +0x10 E1A06000  mov  r6, r0
 *   +0x14 E59D1004  ldr  r1, [sp, #4]      ; ??r1 = TtsInfo*
 *   +0x18 E5911004  ldr  r1, [r1, #4]      ; TtsInfo.text
 *   +0x1C E1A00006  mov  r0, r6
 *   +0x20 E12FFF34  blx  r4                ; cb(rv, text)
 *   +0x24 E58D6000  str  r6, [sp, #0]      ; ????????r0 -> pop ??r0 = rv
 *   +0x28 E8BD407F  pop  {r0,r1,r2,r3,r4,r5,r6,lr}
 *   +0x2C E12FFF1E  bx   lr
 *   +0x30 <cb>
 *   +0x34 <trampoline>
 *   trampoline(+0x80)???????????+ ldr pc,[pc,#-4] + func+8
 *
 * onTtsStart?????????????????? 0 ????????0?????????????? *   +0x100 E92D401F  push {r0,r1,r2,r3,r4,lr}
 *   +0x104 E59F401C  ldr  r4, [pc, #0x1C]  ; r4 = cb
 *   +0x108 E12FFF34  blx  r4               ; cb(self, id, info) -- 参数原样
 *   +0x10C E3500000  cmp  r0, #0
 *   +0x110 0A000001  beq  +0x11C           ; 鎷︽埅
 *   +0x114 E8BD401F  pop  {r0,r1,r2,r3,r4,lr}
 *   +0x118 E59FF010  ldr  pc, [pc, #0x10]  ; ???????????+0x130
 *   +0x11C E3A00000  mov  r0, #0           ; 拦截路径：返回值 0
 *   +0x120 E59D4010  ldr  r4, [sp, #16]    ; 还原 r4（被调用者保存）
 *   +0x124 E28DD018  add  sp, sp, #24      ; 退回全部 6 个压栈字（少退一个就毁掉调用方栈）
 *   +0x128 E12FFF1E  bx   lr
 *   +0x12C <cb>
 *   +0x130 <trampoline>
 *   trampoline(+0x180)???????????+ ldr pc,[pc,#-4] + func+8
 */
#define STUB_PLAY_OFF    0x00
#define TRAMP_PLAY_OFF   0x80
#define STUB_START_OFF   0x100
#define TRAMP_START_OFF  0x180

static int build_stub_page(void)
{
    uint32_t *s;
    uint32_t *t;

    if (g_stub_page != NULL) return 0;

    g_stub_page = mmap(NULL, TG_STUB_PAGE, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_stub_page == MAP_FAILED) {
        g_stub_page = NULL;
        set_err("mmap(stub page) failed errno=%d", errno);
        return TG_E_MMAP;
    }
    memset(g_stub_page, 0, TG_STUB_PAGE);

    /* --- playTts stub --- */
    g_stub_play = (uint32_t)(uintptr_t)g_stub_page + STUB_PLAY_OFF;
    s = (uint32_t *)(uintptr_t)g_stub_play;
    s[0]  = 0xE92D407Fu;                 /* push {r0-r6,lr} */
    s[1]  = 0xE59F4024u;                 /* ldr r4,[pc,#0x24] -> s[12] */
    s[2]  = 0xE59F5024u;                 /* ldr r5,[pc,#0x24] -> s[13] */
    s[3]  = 0xE12FFF35u;                 /* blx r5 */
    s[4]  = 0xE1A06000u;                 /* mov r6,r0 */
    s[5]  = 0xE59D1004u;                 /* ldr r1,[sp,#4] */
    s[6]  = 0xE5911004u;                 /* ldr r1,[r1,#4] */
    s[7]  = 0xE1A00006u;                 /* mov r0,r6 */
    s[8]  = 0xE12FFF34u;                 /* blx r4 */
    s[9]  = 0xE58D6000u;                 /* str r6,[sp,#0] */
    s[10] = 0xE8BD407Fu;                 /* pop {r0-r6,lr} */
    s[11] = 0xE12FFF1Eu;                 /* bx lr */
    s[12] = (uint32_t)(uintptr_t)&tg_play_post;
    /* s[13] = trampoline，下面填 */

    /* playTts trampoline：原厂前两条 + 跳回 func+8 */
    g_tramp_play = (uint32_t)(uintptr_t)g_stub_page + TRAMP_PLAY_OFF;
    t = (uint32_t *)(uintptr_t)g_tramp_play;
    t[0] = g_orig_play[0];
    t[1] = g_orig_play[1];
    t[2] = TG_PATCH_JUMP;
    t[3] = g_func_play + 8;
    s[13] = g_tramp_play;

    /* --- onTtsStart stub --- */
    g_stub_start = (uint32_t)(uintptr_t)g_stub_page + STUB_START_OFF;
    g_tramp_start = (uint32_t)(uintptr_t)g_stub_page + TRAMP_START_OFF;
    s = (uint32_t *)(uintptr_t)g_stub_start;
    s[0]  = 0xE92D401Fu;                 /* push {r0-r4,lr} ?? ??= 24 B??p ??8 ????????*/
    s[1]  = 0xE59F4020u;                 /* ldr r4,[pc,#0x20] -> s[11] = cb */
    s[2]  = 0xE12FFF34u;                 /* blx r4 ; cb(self,id,info) */
    s[3]  = 0xE3500000u;                 /* cmp r0,#0 */
    s[4]  = 0x0A000001u;                 /* beq +0x8 -> s[7] (鎷︽埅) */
    s[5]  = 0xE8BD401Fu;                 /* pop {r0-r4,lr}  放行 */
    s[6]  = 0xE59FF010u;                 /* ldr pc,[pc,#0x10] -> s[12] = trampoline */
    s[7]  = 0xE3A00000u;                 /* mov r0,#0 (拦截路径：返回值 0) */
    s[8]  = 0xE59D4010u;                 /* ldr r4,[sp,#16]：还原被调用者保存寄存器 */
    s[9]  = 0xE28DD018u;                 /* add sp,sp,#24：把 6 个压栈字全部退回 */
    s[10] = 0xE12FFF1Eu;                 /* bx lr */
    s[11] = (uint32_t)(uintptr_t)&tg_start_pre;
    s[12] = g_tramp_start;               /* 放行 -> trampoline */

    /* onTtsStart trampoline：原厂前两条 + 跳回 func+8 */
    t = (uint32_t *)(uintptr_t)g_tramp_start;
    t[0] = g_orig_start[0];
    t[1] = g_orig_start[1];
    t[2] = TG_PATCH_JUMP;
    t[3] = g_func_start + 8;

    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + TG_STUB_PAGE);

    /* 必须把 stub 页改成可执行：mmap 出来的页只有 RW，跳进去就是 SIGSEGV。
     * 先试 RX（最小权限），不行再退到 RWX（Android 8.1 + permissive SELinux 实测允许）。 */
    if (mprotect(g_stub_page, TG_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        if (mprotect(g_stub_page, TG_STUB_PAGE, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            set_err("mprotect(stub,RX) failed errno=%d", errno);
            return TG_E_PROT;
        }
    }
    return 0;
}

/* ------------------------------------------------------------- 琛ヤ竵鏈綋 */

static int patch_one(uint32_t func, uint32_t stub, const uint32_t *orig)
{
    uint32_t *p = (uint32_t *)(uintptr_t)func;
    uintptr_t page = func & ~(uintptr_t)0xFFF;
    int old = page_prot(page);

    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("mprotect(%p,RWX) failed errno=%d", (void *)(uintptr_t)func, errno);
        return TG_E_PROT;
    }
    /* 先写字面量再写跳转：顺序反了会跳到垃圾地址 */
    p[1] = stub;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    p[0] = TG_PATCH_JUMP;
    __builtin___clear_cache((char *)p, (char *)p + 8);
    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));
    (void)orig;
    return TG_OK;
}

static int restore_one(uint32_t func, const uint32_t *orig)
{
    uint32_t *p = (uint32_t *)(uintptr_t)func;
    uintptr_t page = func & ~(uintptr_t)0xFFF;
    int old = page_prot(page);

    if (mprotect((void *)page, 4096, PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
        set_err("mprotect(%p,RWX) failed on uninstall errno=%d", (void *)(uintptr_t)func, errno);
        return TG_E_PROT;
    }
    p[0] = orig[0];
    p[1] = orig[1];
    __builtin___clear_cache((char *)p, (char *)p + 8);
    (void)mprotect((void *)page, 4096, old ? old : (PROT_READ | PROT_EXEC));
    return TG_OK;
}

static int verify_entry(uint32_t func, const char *sym, const uint32_t *orig)
{
    const uint32_t *p = (const uint32_t *)(uintptr_t)func;

    if (p[0] == orig[0] && p[1] == orig[1]) return TG_OK;
    set_err("entry not original at %s (%p): %08x %08x (orig %08x %08x)",
            sym, (void *)(uintptr_t)func, p[0], p[1], orig[0], orig[1]);
    return TG_E_PROLOGUE;
}

int tg_hook_prepare(void)
{
    mod_info m = {0, 0};
    uint32_t a1 = 0, a2 = 0;
    char err[256] = {0};
    int rc;

    if (g_func_play != 0 && g_func_start != 0) return TG_OK;

    dl_iterate_phdr(mod_cb, &m);
    if (!m.found) {
        set_err("module %s not loaded in pid %d", TG_MODULE, (int)getpid());
        return TG_E_MODULE;
    }

    rc = mem_find_sym(m.base, TG_SYM_PLAY, &a1, err, sizeof(err));
    if (rc != TG_OK) { set_err("%s", err); return rc; }
    rc = mem_find_sym(m.base, TG_SYM_START, &a2, err, sizeof(err));
    if (rc != TG_OK) { set_err("%s", err); return rc; }

    if ((a1 - (uint32_t)m.base) != TG_OFF_PLAY) {
        set_err("playTts offset 0x%x != expected 0x%x (base=%p)",
                (unsigned)(a1 - (uint32_t)m.base), (unsigned)TG_OFF_PLAY, (void *)m.base);
        return TG_E_OFFSET;
    }
    if ((a2 - (uint32_t)m.base) != TG_OFF_START) {
        set_err("onTtsStart offset 0x%x != expected 0x%x (base=%p)",
                (unsigned)(a2 - (uint32_t)m.base), (unsigned)TG_OFF_START, (void *)m.base);
        return TG_E_OFFSET;
    }

    g_func_play = a1;
    g_func_start = a2;

    {
        const uint32_t *p = (const uint32_t *)(uintptr_t)a1;
        if (p[0] != TG_PRO_PLAY0 || p[1] != TG_PRO_PLAY1) {
            set_err("playTts prologue mismatch: %08x %08x (want %08x %08x)",
                    p[0], p[1], TG_PRO_PLAY0, TG_PRO_PLAY1);
            g_func_play = 0;
            return TG_E_PROLOGUE;
        }
        g_orig_play[0] = p[0];
        g_orig_play[1] = p[1];
    }
    {
        const uint32_t *p = (const uint32_t *)(uintptr_t)a2;
        if (p[0] != TG_PRO_START0 || p[1] != TG_PRO_START1) {
            set_err("onTtsStart prologue mismatch: %08x %08x (want %08x %08x)",
                    p[0], p[1], TG_PRO_START0, TG_PRO_START1);
            g_func_start = 0;
            return TG_E_PROLOGUE;
        }
        g_orig_start[0] = p[0];
        g_orig_start[1] = p[1];
    }

    g_state = TG_OK;
    g_err[0] = '\0';
    slog("prepare ok: base=%p playTts=0x%08x onTtsStart=0x%08x",
         (void *)m.base, g_func_play, g_func_start);
    return TG_OK;
}

/* ?????? = ????????????Injector ???????????????????????????? */
unsigned int tg_hook_patch_lo(void)
{
    uint32_t lo = 0;

    if (g_func_play != 0) lo = g_func_play;
    if (g_func_start != 0 && (lo == 0 || g_func_start < lo)) lo = g_func_start;
    return (unsigned int)lo;
}

unsigned int tg_hook_patch_hi(void)
{
    uint32_t hi = 0;

    if (g_func_play != 0) hi = g_func_play + 8;
    if (g_func_start != 0 && g_func_start + 8 > hi) hi = g_func_start + 8;
    return (unsigned int)hi;
}

int tg_hook_install(void)
{
    int rc;

    if (g_patched) { g_state = TG_OK; return TG_OK; }

    rc = tg_hook_prepare();
    if (rc != TG_OK) { g_state = rc; return rc; }

    rc = verify_entry(g_func_play, "playTts", g_orig_play);
    if (rc != TG_OK) { g_state = rc; return rc; }
    rc = verify_entry(g_func_start, "onTtsStart", g_orig_start);
    if (rc != TG_OK) { g_state = rc; return rc; }

    if (build_stub_page() != 0) { g_state = TG_E_MMAP; return g_state; }

    /* 顺序：先装 onTtsStart（拦截），再装 playTts（记账）。
     * 这样即使 playTts 安装失败，也不会出现"只记账不拦截"的半成品状态被当成成功。 */
    rc = patch_one(g_func_start, g_stub_start, g_orig_start);
    if (rc != TG_OK) { g_state = rc; return rc; }
    g_hooked_start = 1;

    rc = patch_one(g_func_play, g_stub_play, g_orig_play);
    if (rc != TG_OK) {
        (void)restore_one(g_func_start, g_orig_start);
        g_hooked_start = 0;
        g_state = rc;
        return rc;
    }
    g_hooked_play = 1;
    g_patched = 1;
    g_state = TG_OK;
    g_err[0] = '\0';

    slog("installed: onTtsStart patch=%08x stub=%08x tramp=%08x ; playTts patch=%08x stub=%08x tramp=%08x",
         g_func_start, g_stub_start, g_tramp_start, g_func_play, g_stub_play, g_tramp_play);
    return TG_OK;
}

int tg_hook_uninstall(void)
{
    if (!g_patched) { g_state = TG_OK; return TG_OK; }

    if (g_hooked_play) {
        (void)restore_one(g_func_play, g_orig_play);
        g_hooked_play = 0;
    }
    if (g_hooked_start) {
        (void)restore_one(g_func_start, g_orig_start);
        g_hooked_start = 0;
    }
    g_patched = 0;
    g_state = TG_OK;
    g_err[0] = '\0';
    slog("uninstalled: original prologues restored (playTts=%08x onTtsStart=%08x)",
         g_func_play, g_func_start);
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

int tg_hook_hooked(void)
{
    return g_patched ? 1 : 0;
}

const char *tg_hook_stats(void)
{
    static char buf[420];

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d play=%d start=%d func_play=%08x func_start=%08x "
             "play_seen=%lu ours=%lu not_ours=%lu start_seen=%lu allowed=%lu dropped=%lu "
             "hit_id=%lu hit_text=%lu empty=%lu native_allowed=%lu native_session=%lu "
             "native_window=%lu native_miss=%lu native_reads=%lu native_expired=%lu "
             "native_bad=%lu native_seq=%lld native_file=%s",
             g_state, g_patched ? 1 : 0, g_hooked_play, g_hooked_start,
             g_func_play, g_func_start,
             GET(g_seen_play), GET(g_ours), GET(g_not_ours),
             GET(g_seen_start), GET(g_allowed), GET(g_dropped),
             GET(g_hit_id), GET(g_hit_text), GET(g_empty),
             GET(g_native_allowed), g_native_stats.hit_session,
             GET(g_native_window_hits), GET(g_native_miss),
             GET(g_native_reads), GET(g_native_expired),
             g_native_stats.bad_marker, g_native.mk.seq,
             g_native_path[0] != '\0' ? g_native_path : "(disabled)");
    return buf;
}

/* ???????????????????????Injector ?????? tg_hook_install()??*/
__attribute__((constructor)) static void tg_ctor(void)
{
    const char *env = getenv("TG_NATIVE_ROUTE_FILE");

    if (env != NULL && env[0] != '/') env = NULL;      /* 只接受绝对路径 */
    snprintf(g_native_path, sizeof(g_native_path), "%s",
             env != NULL ? env : TG_NATIVE_FILE_DEFAULT);
    {
        const char *off = getenv("TG_TTSGUARD_NATIVE");
        if (off != NULL && off[0] == '0') g_native_enabled = 0;
    }
    slog("libtg_ttsguard.so loaded (pid=%d); waiting for tg_hook_install() "
         "(native_allow=%d file=%s)", (int)getpid(), g_native_enabled, g_native_path);
}
