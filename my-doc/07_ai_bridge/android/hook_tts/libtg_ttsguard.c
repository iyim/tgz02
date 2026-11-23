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

/* T8-15.2：原厂连续对话续期时长（duplexDialogRenew）的唯一合法入口。
 * SessionManager::onStopTalk(int, _WakeEndInfo*) = 本轮 EOU。原厂自己的写法就是：
 *   0x113a4c ldr r0,[r5,#128]   ; r5 = this（0x11392c mov r5,r0 确认）
 *   0x113a54 str r0,[r4,#76]    ; 写入本轮 stopTalk 上下文 ctx+0x4C
 *   0x113a5c str r1(=0),[r5,#128] ; 立刻清零 -> 值只在"这一轮"有效
 * 所以续期时长必须在**进入 onStopTalk 之前**写好；在 TTS 结束时再设已经晚了。
 * GenieApi::setFullDuplexDialogRenewDuration(unsigned) 的整个函数体只有
 *   str r4,[r0,#128]（见 evidence/t8-15.1/disasm_setter.txt），等价于本 hook 的直写。
 * 配置默认 renew_ms=0：此时第三个 hook 根本不会解析、不会安装。 */
#define TG_SYM_STOPTALK \
    "_ZN9AliAiLabs4AGUI14SessionManager10onStopTalkEiPNS0_19IInputDeviceManager13_WakeEndInfo_E"
#define TG_OFF_STOPTALK    0x113918u
#define TG_PRO_STOPTALK0   0xE92D4FF0u   /* push {r4-r11,lr} */
#define TG_PRO_STOPTALK1   0xE28DB01Cu   /* add  fp, sp, #28 */
#define TG_OFF_RENEW_FIELD 0x80u         /* SessionManager+0x80 = duplexDialogRenew */
#define TG_RENEW_MS_MAX    30000u
#define TG_RENEW_FILE_DEFAULT "/data/local/tmp/t7/renew.conf"

/* T8-15.2 第二阶段：原厂"续听"的真正入口（客户端本地调用，不依赖服务端）。
 * 真机证据（evidence/t8-15.2/r1_excerpt.logcat、evidence/t8-15.1/device_relisten_probe.log）：
 *   21:12:02.052 AGSpeechEngine: handleWakeupPromptFinish,895
 *   21:12:02.220 AGSpeechEngineProxy: startTalk,506:[NearbyWakeup] type:continuity, wakeupWord:(null)
 *   21:12:02.235 AGSpeechEngine: onListenStarted,1202 -> onStartTalk wakeupType=1
 * 同时证据显示：那一轮原厂自己发出的 duplexDialogRenew 是 0 —— 续听与这个字段无关，
 * 是客户端本地"提示音播完 -> startTalk(continuity)"的流程。
 * 该符号是本地符号（dynsym 里没有），只能按偏移调用，所以必须校验偏移 + 序言，否则拒绝安装。
 * 结构体形状：官方 JNI Java_..._AiLabsCore_startTalk 先把栈上约 88 B 清零再填字段，
 * 因此"全零 _WakeUpInfo_"才是原厂形状（不是 NULL）。 */
#define TG_OFF_STARTTALK   0xfcff8u
#define TG_PRO_STARTTALK0  0xE92D4830u   /* push {r4,r5,r11,lr} */
#define TG_PRO_STARTTALK1  0xE28DB008u   /* add  r11, sp, #8 */
#define TG_WAKEUPINFO_SIZE 88
/* _WakeUpInfo_ 字段（AGSpeechEngineProxy::startTalk @ libsmartbox 0xe90a8 反汇编确认）：
 *   +0x00 int    type            0 = active，1 = continuity（原厂续听用 1）
 *   +0x04 char*  wakeupWord      续听时为 NULL
 *   +0x08 char*  wakeupFilterWord
 *   +0x18 int    vadtime
 * 全零结构体 = active —— 21:35 的第一次实测就是这么开成了 active 会话（session 1969862，
 * 服务端 20 s 后回"无指令"，一句都没听到）。所以必须把 type 置成 continuity。 */
#define TG_OFF_WAKEUPTYPE  0x00u
#define TG_CONT_TYPE_DEFAULT 1u
#define TG_CONT_FILE_DEFAULT "/data/local/tmp/t7/continuity.req"
/* 续听请求契约（worker 写、守卫读）：
 *   文件内容 = 一个十进制整数序号（严格递增，建议用 CLOCK_MONOTONIC 毫秒）。
 *   守卫只消费严格大于上次已消费值的序号 -> 轮询不会重复消费同一个请求。
 *   消费后先过三道闸门（停止/退出 hold、原厂正在聆听、800 ms 去抖）：
 *     - 命中 stop/exit hold  -> 立刻丢弃（用户已要求停止，终态，不重试）
 *     - 其它闸门            -> 在 TG_REQ_RETRY_MS 窗口内每 120 ms 重试
 *     - 窗口到期仍在闸门里  -> 记为 expired 丢弃，并打印原因
 *   路径必须与 worker 侧 T8_CONT_REQ_FILE 一致；配置里的 continuity_file 可覆盖，
 *   但两侧不一致时 worker 的请求会被静默忽略（守卫启动日志会打实际监听路径）。 */
/* T8-15.2 自动续听：读 T5 TTS 执行器发布的播放状态文件（守卫原本就在读同目录的
 * native_route.public.json，读权限已具备）。语义：state 变回 idle 且 finished_ms 变化
 * = 我方的 TTS 真的播完了（原厂回答会被守卫拦在 onTtsStart，不会触发这个变化）。
 * 默认关闭（continuity_auto=0）。 */
#define TG_PLAY_FILE_DEFAULT "/data/local/tmp/t5_bridge/tts/play.public.json"
#define TG_CONT_AUTO_MAX_DEFAULT 12u
/* T8-15.3：worker 写的"别再自动开麦"截止时间（CLOCK_MONOTONIC 毫秒）。
 * 用户说"退出/停止"时写入，自动续听读到未过期的截止时间就跳过 —— 停止/退出优先。 */
#define TG_HOLD_FILE_DEFAULT "/data/local/tmp/t5_bridge/ai_worker/listen_hold"
/* T8-15.3：原厂会话开口标记（AGSpeechEngineProxy::startTalk），用于"不要重复开麦" */
#define TG_OFF_PROXY_STARTTALK 0xe90a8u
#define TG_PRO_PSTART0         0xE92D4BF0u   /* push {r4-r9,r11,lr} */
#define TG_PRO_PSTART1         0xE28DB018u   /* add  r11, sp, #24 */

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
static int        g_hooked_stoptalk;
static uint32_t   g_func_play, g_func_start;
static uint32_t   g_func_stoptalk;
static uint32_t   g_orig_play[2], g_orig_start[2], g_orig_stoptalk[2];
static void      *g_stub_page = NULL;
static uint32_t   g_stub_play, g_stub_start, g_stub_stoptalk;
static uint32_t   g_tramp_play, g_tramp_start, g_tramp_stoptalk;

/* T8-15.2：续期配置（renew.conf，默认不存在 => renew_ms=0 => 第三个 hook 不装） */
static unsigned   g_renew_ms;
static unsigned   g_renew_max;
static char       g_renew_path[192];
static volatile unsigned long g_renew_sets;      /* 实际写入 duplexDialogRenew 的次数 */
static volatile unsigned long g_renew_skipped;   /* 因 renew_max 上限被跳过 */
static volatile unsigned  g_renew_pre;           /* 最近一次进入 onStopTalk 时字段的旧值 */

/* T8-15.2 第二阶段：手动一次性续听（默认关闭；只由控制文件触发，不做任何自动行为） */
static uint32_t   g_func_starttalk;
static int        g_cont_enable;
static char       g_cont_file[192];
static volatile int g_cont_run;              /* 轮询线程是否继续 */
static volatile int g_cont_started;          /* 是否已创建过轮询线程 */
static volatile int g_cont_alive;            /* 轮询线程是否还活着（uninstall 等它退出） */
static volatile unsigned long g_cont_calls;  /* 实际调用 startTalk 的次数 */
static volatile unsigned long g_cont_ok;     /* 返回值 >0 的次数 */
static volatile int  g_cont_last;            /* 最近一次返回值 */
static unsigned       g_cont_type = TG_CONT_TYPE_DEFAULT;   /* 写进 _WakeUpInfo_+0 的类型 */
static int            g_cont_auto;                            /* 1 = 我方 TTS 播完自动续听 */
static char           g_play_file[192];
static unsigned       g_cont_auto_max = TG_CONT_AUTO_MAX_DEFAULT;
static long long mono_ms(void);

static volatile unsigned long g_cont_polls;      /* 轮询次数（诊断用） */
static volatile unsigned long g_play_reads;      /* play.public.json 成功解析次数 */
static volatile unsigned long g_play_fails;      /* 解析失败次数 */
/* T8-15.3：防重复开麦 + 停止优先 */
static volatile int        g_dev_listening;       /* 1 = 原厂当前有一段聆听会话（startTalk..EOU） */
static volatile long long  g_last_cont_ms;        /* 上次续听触发的单调时刻（去抖） */
static uint32_t            g_func_pstarttalk;     /* AGSpeechEngineProxy::startTalk 标记点 */
static uint32_t            g_stub_pstarttalk, g_tramp_pstarttalk;
static uint32_t            g_orig_pstarttalk[2];
static int                 g_hooked_pstarttalk;
static volatile unsigned long g_cont_skipped;     /* 因"已在聆听/去抖/停止标记"被跳过的次数 */
/* T8-15.4：worker -> 守卫的续听请求（单文件、单序号；契约见文件头注释） */
#define TG_REQ_RETRY_MS 2500
static volatile int        g_req_pending;
static volatile long long  g_req_seq = -1;
static volatile long long  g_req_at;

static volatile long long  g_req_logged;
static volatile unsigned long g_req_seen, g_req_fired, g_req_dropped;

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
/* ------------------------------------------------- T8-15.2 续期前置回调 */

/*
 * renew.conf 解析（默认路径 /data/local/tmp/t7/renew.conf，可用 TG_RENEW_FILE 覆盖）。
 *   renew_ms=N     续听时长；0 或缺失 = 关闭（第三个 hook 不解析、不安装）
 *   renew_max=N    最多写多少次（0 = 不限；防止没人管的时候无限续期）
 * 任何读取/格式失败都退回 renew_ms=0（安全降级），只记日志，不抛错。
 */
static void renew_conf_load(void)
{
    const char *env = getenv("TG_RENEW_FILE");
    char line[256];
    FILE *f;

    g_renew_ms = 0;
    g_renew_max = 0;
    g_cont_enable = 0;
    g_cont_auto = 0;
    snprintf(g_cont_file, sizeof(g_cont_file), "%s", TG_CONT_FILE_DEFAULT);
    snprintf(g_play_file, sizeof(g_play_file), "%s", TG_PLAY_FILE_DEFAULT);
    snprintf(g_renew_path, sizeof(g_renew_path), "%s",
             (env != NULL && env[0] == '/') ? env : TG_RENEW_FILE_DEFAULT);

    f = fopen(g_renew_path, "r");
    if (f == NULL) {
        slog("renew: no config at %s -> disabled", g_renew_path);
        return;
    }
    while (fgets(line, sizeof(line), f) != NULL) {
        char *p = line, *eq, *val, *end;
        long v;

        while (*p == ' ' || *p == '\t') p++;
        eq = strchr(p, '=');
        if (eq == NULL) continue;
        *eq = '\0';
        val = eq + 1;
        while (*val == ' ' || *val == '\t') val++;
        end = val;
        while (*end != '\0' && *end != '\n' && *end != '\r' &&
               *end != ' ' && *end != '\t' && *end != '#') end++;
        *end = '\0';
        while (eq > p && (eq[-1] == ' ' || eq[-1] == '\t')) *--eq = '\0';
        if (val[0] == '\0') continue;

        v = strtol(val, NULL, 10);
        if (strcmp(p, "renew_ms") == 0) {
            if (v < 0) v = 0;
            if (v > (long)TG_RENEW_MS_MAX) v = (long)TG_RENEW_MS_MAX;
            g_renew_ms = (unsigned)v;
        } else if (strcmp(p, "renew_max") == 0) {
            if (v < 0) v = 0;
            g_renew_max = (unsigned)v;
        } else if (strcmp(p, "continuity_enable") == 0) {
            g_cont_enable = (v != 0);
        } else if (strcmp(p, "continuity_type") == 0) {
            if (v < 0) v = 0;
            if (v > 3) v = 3;
            g_cont_type = (unsigned)v;
        } else if (strcmp(p, "continuity_auto") == 0) {
            g_cont_auto = (v != 0);
        } else if (strcmp(p, "continuity_auto_max") == 0) {
            if (v < 0) v = 0;
            g_cont_auto_max = (unsigned)v;
        } else if (strcmp(p, "continuity_play_file") == 0) {
            snprintf(g_play_file, sizeof(g_play_file), "%s",
                     (val[0] == '/') ? val : TG_PLAY_FILE_DEFAULT);
        } else if (strcmp(p, "continuity_file") == 0) {
            snprintf(g_cont_file, sizeof(g_cont_file), "%s",
                     (val[0] == '/') ? val : TG_CONT_FILE_DEFAULT);
        }
    }
    fclose(f);
    if (g_cont_file[0] == '\0') {
        snprintf(g_cont_file, sizeof(g_cont_file), "%s", TG_CONT_FILE_DEFAULT);
    }
    if (g_play_file[0] == '\0') {
        snprintf(g_play_file, sizeof(g_play_file), "%s", TG_PLAY_FILE_DEFAULT);
    }
    slog("renew: conf=%s renew_ms=%u renew_max=%u continuity_enable=%d file=%s auto=%d play_file=%s auto_max=%u",
         g_renew_path, g_renew_ms, g_renew_max, g_cont_enable, g_cont_file,
         g_cont_auto, g_play_file, g_cont_auto_max);
}

/*
 * SessionManager::onStopTalk 前置回调。r0 = this（ARM AAPCS，0x11392c mov r5,r0 确认）。
 * 只做一件事：把 renew_ms 写进 this+0x80，随后原厂体在 0x113a4c 立刻读走并清零。
 * 不拦截、不改寄存器、不改返回值；self 为空就什么都不做（安全降级）。
 */
static void tg_stoptalk_pre(void *self, int eou_id, void *wake_end)
{
    unsigned pre;
    unsigned long n;

    (void)eou_id;
    (void)wake_end;
    /* T8-15.3：EOU = 原厂这一轮录音停了，麦克风不再是"开着的" */
    g_dev_listening = 0;
    if (self == NULL) return;

    /* 上一次写入的值此刻应当已经是 0（原厂 0x113a5c 清零）：这是"字段真被消费"的旁证 */
    pre = *(volatile unsigned *)((char *)self + TG_OFF_RENEW_FIELD);
    g_renew_pre = pre;

    if (g_renew_ms == 0) return;
    n = GET(g_renew_sets);
    if (g_renew_max != 0 && n >= (unsigned long)g_renew_max) {
        INC(g_renew_skipped);
        return;
    }
    *(volatile unsigned *)((char *)self + TG_OFF_RENEW_FIELD) = (unsigned)g_renew_ms;
    INC(g_renew_sets);
    slog("renew: self=%p pre=%u set=%u n=%lu", self, pre, (unsigned)g_renew_ms, n + 1);
}

/* T8-15.3：原厂自己开了一段聆听（唤醒 / 续听 / 提示音续听都走这里）。
 * 只做标记，不拦截、不改参数、不改返回值 —— 自动续听据此避免重复开麦。 */
static void tg_proxy_starttalk_pre(void *self, void *info)
{
    (void)info;
    (void)self;
    g_dev_listening = 1;
}

static long long mono_ms(void)
{
    struct timespec ts;

    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

/* T8-15.3：worker 写的"别再开麦"截止时间是否仍然有效。读不到 = 不拦（安全方向是少开麦）。 */
static int hold_active(void)
{
    FILE *f = fopen(TG_HOLD_FILE_DEFAULT, "r");
    char buf[64];
    long long until = 0;
    int active;

    if (f == NULL) return 0;
    if (fgets(buf, sizeof(buf), f) == NULL) {
        fclose(f);
        return 0;
    }
    fclose(f);
    until = strtoll(buf, NULL, 10);
    active = (until > mono_ms());
    if (active) {
        static long long logged;
        long long now = mono_ms();

        if (now - logged > 5000) {
            logged = now;
            slog("continuity: hold active for %lld ms more - auto-listen skipped",
                 (long long)(until - now));
        }
    }
    return active;
}

/* 从 play.public.json 读 "state" 与 "finished_ms"：只有 state=idle 且带 finished_ms 才算一次播完。
 * 返回 0 = 读到了，-1 = 没读到/格式不对（不触发，安全降级）。 */
static int play_finished_ms(const char *path, long long *out)
{
    FILE *f = fopen(path, "r");
    char buf[1024];
    size_t n;
    const char *p;

    if (f == NULL) return -1;
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    if (n == 0) return -1;
    buf[n] = '\0';

    p = strstr(buf, "\"state\"");
    if (p == NULL) return -1;
    p = strchr(p, ':');
    if (p == NULL) return -1;
    p++;
    while (*p == ' ' || *p == '\t') p++;
    if (*p != '"') return -1;
    p++;
    if (strncmp(p, "idle", 4) != 0) return -1;

    p = strstr(buf, "\"finished_ms\"");
    if (p == NULL) return -1;
    p = strchr(p, ':');
    if (p == NULL) return -1;
    *out = strtoll(p + 1, NULL, 10);   /* ARM32: strtol 是 32 位，毫秒时间戳会溢出成 LONG_MAX */
    return 0;
}

/* 真正调用一次续听。why 只用于日志。返回 startTalk 的返回值。 */
static int cont_fire(const char *why, long long seq)
{
    unsigned char info[TG_WAKEUPINFO_SIZE];
    unsigned long n;
    int ret;

    if (g_func_starttalk == 0) return -1;
    memset(info, 0, sizeof(info));
    *(unsigned *)(void *)(info + TG_OFF_WAKEUPTYPE) = g_cont_type;
    g_last_cont_ms = mono_ms();
    n = (unsigned long)g_cont_calls;
    g_cont_calls = n + 1;
    /* startTalk(type, &_WakeUpInfo_) —— 结构体 +0 必须是 continuity，否则开成 active */
    ret = ((int (*)(int, const void *))g_func_starttalk)((int)g_cont_type, info);
    g_cont_last = ret;
    if (ret > 0) g_cont_ok++;
    slog("continuity: %s seq=%lld startTalk(type=%u, info+0=%u) -> %d (n=%lu ok=%lu)",
         why, seq, g_cont_type, *(unsigned *)(void *)(info + TG_OFF_WAKEUPTYPE),
         ret, n + 1, (unsigned long)g_cont_ok);
    return ret;
}

/* T8-15.2：手动一次性续听线程。仅在 continuity_enable=1 时启动。
 *   手动：控制文件里的数字变化 -> 触发一次（:core 的 SELinux 域不能写/删该目录，只能读）。
 *   自动：continuity_auto=1 时，我方 TTS 播完（play.public.json 的 finished_ms 变化且 state=idle）
 *         就触发一次，最多 continuity_auto_max 次。默认关闭。 */
static void *tg_continuity_thread(void *arg)
{
    long long last_seq = -1;
    long long last_fin = -1;
    unsigned auto_fired = 0;

    (void)arg;
    g_cont_alive = 1;
    slog("continuity: armed, watching %s (startTalk@%08x type=%u auto=%d play=%s max=%u)",
         g_cont_file, g_func_starttalk, g_cont_type, g_cont_auto, g_play_file, g_cont_auto_max);
    /* 先把当前请求序号读进来：启动时已有的序号不算新请求，只有"严格更大"才消费 */
    {
        FILE *f = fopen(g_cont_file, "r");

        if (f != NULL) {
            char buf[32] = {0};

            if (fgets(buf, sizeof(buf), f) != NULL) last_seq = strtoll(buf, NULL, 10);
            fclose(f);
            slog("continuity: request baseline seq=%lld", last_seq);
        }
    }
    while (g_cont_run) {
        long long seq = -1;
        FILE *f = fopen(g_cont_file, "r");

        /* ---- T8-15.4：跨进程续听请求的消费端（契约见文件头） ---- */
        if (f != NULL) {
            char buf[32] = {0};

            if (fgets(buf, sizeof(buf), f) != NULL) seq = strtoll(buf, NULL, 10);
            fclose(f);
        }
        if (seq > last_seq) {
            last_seq = seq;
            g_req_seq = seq;
            g_req_pending = 1;
            g_req_at = mono_ms();
            g_req_logged = 0;
            INC(g_req_seen);
            slog("continuity req: seq=%lld accepted -> pending (attempt window %d ms)",
                 seq, TG_REQ_RETRY_MS);
        }
        if (g_req_pending) {
            long long now = mono_ms();
            const char *skip = NULL;

            if (hold_active()) skip = "stop/exit hold";
            else if (g_dev_listening) skip = "factory already listening";
            else if (g_last_cont_ms != 0 && now - g_last_cont_ms < 800) skip = "debounce";

            if (skip == NULL) {
                g_req_pending = 0;
                INC(g_req_fired);
                slog("continuity req: seq=%lld firing after %lld ms", g_req_seq, now - g_req_at);
                (void)cont_fire("worker-request", g_req_seq);
            } else if (strcmp(skip, "stop/exit hold") == 0) {
                /* 停止/退出是终态：立刻丢弃，绝不重试 */
                g_req_pending = 0;
                INC(g_req_dropped);
                slog("continuity req: seq=%lld dropped (%s) - user asked to stop", g_req_seq, skip);
            } else if (now - g_req_at > TG_REQ_RETRY_MS) {
                g_req_pending = 0;
                INC(g_req_dropped);
                slog("continuity req: seq=%lld expired after %lld ms (%s)",
                     g_req_seq, now - g_req_at, skip);
            } else if (now - g_req_logged > 400) {
                g_req_logged = now;
                slog("continuity req: seq=%lld deferred (%s) +%lld ms", g_req_seq, skip,
                     now - g_req_at);
            }
        }
        if (g_cont_auto) {
            long long fin = 0;

            if (play_finished_ms(g_play_file, &fin) == 0) {
                INC(g_play_reads);
                if (last_fin < 0) {
                    last_fin = fin;             /* 首个观测值只作基线，不触发 */
                    slog("continuity: auto baseline finished_ms=%lld", fin);
                } else if (fin != last_fin) {
                    last_fin = fin;
                    /* T8-15.3：上限按"一段连续对话"算 —— 距离上次自动续听超过 30 s 视为新对话，
                     * 计数归零。否则跑够 12 次以后会永久安静，把连续对话关死。 */
                    if (g_last_cont_ms != 0 && mono_ms() - g_last_cont_ms > 30000) auto_fired = 0;
                    if (g_cont_auto_max != 0 && auto_fired >= g_cont_auto_max) {
                        if (auto_fired == g_cont_auto_max) {
                            auto_fired++;
                            slog("continuity: auto limit reached (%u) - staying quiet",
                                 g_cont_auto_max);
                        }
                    } else {
                        long long now = mono_ms();
                        const char *skip = NULL;

                        if (g_dev_listening) skip = "factory already listening";
                        else if (hold_active()) skip = "stop/exit hold";
                        else if (g_last_cont_ms != 0 && now - g_last_cont_ms < 800) skip = "debounce";

                        if (skip != NULL) {
                            INC(g_cont_skipped);
                            slog("continuity: auto trigger skipped (%s) finished_ms=%lld", skip, fin);
                        } else {
                            auto_fired++;
                            (void)cont_fire("auto-after-tts", fin);
                        }
                    }
                }
            } else {
                INC(g_play_fails);
            }
        }
        INC(g_cont_polls);
        usleep(120 * 1000);
    }
    slog("continuity: thread exit");
    g_cont_alive = 0;
    return NULL;
}

#define STUB_PLAY_OFF    0x00
#define TRAMP_PLAY_OFF   0x80
#define STUB_START_OFF   0x100
#define TRAMP_START_OFF  0x180
/* T8-15.2 续期前置 hook（默认不装） */
#define STUB_STOPTALK_OFF   0x200
#define TRAMP_STOPTALK_OFF  0x280
/* T8-15.3 原厂"开麦"标记点（AGSpeechEngineProxy::startTalk） */
#define STUB_PSTART_OFF     0x300
#define TRAMP_PSTART_OFF    0x380

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

    /* --- T8-15.2 onStopTalk 前置 stub（只在 renew_ms>0 时构建/安装） ---
     *   +0x200 E92D401F  push {r0,r1,r2,r3,r4,lr}   ; 24 B，SP 保持 8 对齐
     *   +0x204 E59F401C  ldr  r4,[pc,#0x1C]         ; -> +0x228 = cb
     *   +0x208 E12FFF34  blx  r4                    ; cb(this, eou_id, info)
     *   +0x20C E8BD401F  pop  {r0,r1,r2,r3,r4,lr}   ; 参数原样还原
     *   +0x210 E59FF014  ldr  pc,[pc,#0x14]         ; -> +0x22C = trampoline
     */
    if (g_func_stoptalk != 0) {
        uint32_t nop = 0xE1A00000u;      /* mov r0,r0 */

        g_stub_stoptalk = (uint32_t)(uintptr_t)g_stub_page + STUB_STOPTALK_OFF;
        g_tramp_stoptalk = (uint32_t)(uintptr_t)g_stub_page + TRAMP_STOPTALK_OFF;
        s = (uint32_t *)(uintptr_t)g_stub_stoptalk;
        s[0]  = 0xE92D401Fu;
        s[1]  = 0xE59F401Cu;
        s[2]  = 0xE12FFF34u;
        s[3]  = 0xE8BD401Fu;
        s[4]  = 0xE59FF014u;
        s[5]  = nop;
        s[6]  = nop;
        s[7]  = nop;
        s[8]  = nop;
        s[9]  = nop;
        s[10] = (uint32_t)(uintptr_t)&tg_stoptalk_pre;
        s[11] = g_tramp_stoptalk;

        t = (uint32_t *)(uintptr_t)g_tramp_stoptalk;
        t[0] = g_orig_stoptalk[0];
        t[1] = g_orig_stoptalk[1];
        t[2] = TG_PATCH_JUMP;
        t[3] = g_func_stoptalk + 8;
    }

    /* --- T8-15.3 原厂开麦标记点 stub（只记账，不拦截） --- */
    if (g_func_pstarttalk != 0) {
        uint32_t nop = 0xE1A00000u;

        g_stub_pstarttalk = (uint32_t)(uintptr_t)g_stub_page + STUB_PSTART_OFF;
        g_tramp_pstarttalk = (uint32_t)(uintptr_t)g_stub_page + TRAMP_PSTART_OFF;
        s = (uint32_t *)(uintptr_t)g_stub_pstarttalk;
        s[0]  = 0xE92D401Fu;                 /* push {r0-r4,lr} */
        s[1]  = 0xE59F401Cu;                 /* ldr  r4,[pc,#0x1C] -> s[10] */
        s[2]  = 0xE12FFF34u;                 /* blx  r4 ; cb(self, info) */
        s[3]  = 0xE8BD401Fu;                 /* pop  {r0-r4,lr} */
        s[4]  = 0xE59FF014u;                 /* ldr  pc,[pc,#0x14] -> s[11] */
        s[5]  = nop;
        s[6]  = nop;
        s[7]  = nop;
        s[8]  = nop;
        s[9]  = nop;
        s[10] = (uint32_t)(uintptr_t)&tg_proxy_starttalk_pre;
        s[11] = g_tramp_pstarttalk;

        t = (uint32_t *)(uintptr_t)g_tramp_pstarttalk;
        t[0] = g_orig_pstarttalk[0];
        t[1] = g_orig_pstarttalk[1];
        t[2] = TG_PATCH_JUMP;
        t[3] = g_func_pstarttalk + 8;
    }

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

    renew_conf_load();

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

    /* T8-15.2：只有配了续期时长才解析并校验第三个入口；否则它根本不存在于本次安装。
     * 注意安全降级方向：续期解析失败只关掉续期，**绝不能**连带把 TTS 守卫一起关掉
     * （守卫缺失 = 原厂回答会盖住我们的回答，比"不续听"严重得多）。 */
    g_func_stoptalk = 0;
    g_hooked_stoptalk = 0;
    if (g_renew_ms > 0 || g_cont_enable) {
        /* T8-15.3：连续对话开启时，即使 renew_ms=0 也装这个 hook —— 它同时承担
         * "原厂这一轮录音已停"的标记，自动续听靠它避免重复开麦。 */
        uint32_t a3 = 0;
        const uint32_t *p;
        const char *why = NULL;
        char detail[256] = {0};

        rc = mem_find_sym(m.base, TG_SYM_STOPTALK, &a3, detail, sizeof(detail));
        if (rc != TG_OK) {
            why = "symbol";
        } else if ((a3 - (uint32_t)m.base) != TG_OFF_STOPTALK) {
            snprintf(detail, sizeof(detail), "onStopTalk offset 0x%x != expected 0x%x",
                     (unsigned)(a3 - (uint32_t)m.base), (unsigned)TG_OFF_STOPTALK);
            why = "offset";
        } else {
            p = (const uint32_t *)(uintptr_t)a3;
            if (p[0] != TG_PRO_STOPTALK0 || p[1] != TG_PRO_STOPTALK1) {
                snprintf(detail, sizeof(detail), "onStopTalk prologue %08x %08x != %08x %08x",
                         p[0], p[1], TG_PRO_STOPTALK0, TG_PRO_STOPTALK1);
                why = "prologue";
            } else {
                g_orig_stoptalk[0] = p[0];
                g_orig_stoptalk[1] = p[1];
                g_func_stoptalk = a3;
            }
        }
        if (why != NULL) {
            set_err("renew: refusing onStopTalk hook (%s): %s -> renew disabled, TTS guard unaffected",
                    why, detail[0] != '\0' ? detail : "?");
            g_renew_ms = 0;
            g_func_stoptalk = 0;
        }
    }

    /* T8-15.2 第二阶段：GenieApi::startTalk 是本地符号（dynsym 里没有），只能按偏移 + 序言校验。
     * 校验失败只关掉"手动续听"，TTS 守卫照旧安装。 */
    g_func_starttalk = 0;
    if (g_cont_enable) {
        uint32_t a4 = (uint32_t)m.base + TG_OFF_STARTTALK;
        const uint32_t *p = (const uint32_t *)(uintptr_t)a4;

        if (p[0] != TG_PRO_STARTTALK0 || p[1] != TG_PRO_STARTTALK1) {
            set_err("continuity: startTalk prologue %08x %08x != %08x %08x -> continuity disabled, "
                    "TTS guard unaffected", p[0], p[1], TG_PRO_STARTTALK0, TG_PRO_STARTTALK1);
            g_cont_enable = 0;
        } else {
            g_func_starttalk = a4;
        }
    }

    /* T8-15.3：原厂开麦标记点（AGSpeechEngineProxy::startTalk）。同样是本地符号，
     * 按偏移 + 序言校验；失败只关自动续听的防重逻辑，不影响守卫与手动续听。 */
    g_func_pstarttalk = 0;
    g_hooked_pstarttalk = 0;
    if (g_cont_enable) {
        uint32_t a5 = (uint32_t)m.base + TG_OFF_PROXY_STARTTALK;
        const uint32_t *p = (const uint32_t *)(uintptr_t)a5;

        if (p[0] != TG_PRO_PSTART0 || p[1] != TG_PRO_PSTART1) {
            set_err("continuity: proxy startTalk prologue %08x %08x != %08x %08x "
                    "-> listening marker disabled", p[0], p[1], TG_PRO_PSTART0, TG_PRO_PSTART1);
        } else {
            g_orig_pstarttalk[0] = p[0];
            g_orig_pstarttalk[1] = p[1];
            g_func_pstarttalk = a5;
        }
    }

    slog("prepare ok: base=%p playTts=0x%08x onTtsStart=0x%08x onStopTalk=0x%08x "
         "(renew_ms=%u continuity=%d startTalk=0x%08x proxyStartTalk=0x%08x)",
         (void *)m.base, g_func_play, g_func_start, g_func_stoptalk, g_renew_ms,
         g_cont_enable, g_func_starttalk, g_func_pstarttalk);
    return TG_OK;
}

/* ?????? = ????????????Injector ???????????????????????????? */
unsigned int tg_hook_patch_lo(void)
{
    uint32_t lo = 0;

    if (g_func_play != 0) lo = g_func_play;
    if (g_func_start != 0 && (lo == 0 || g_func_start < lo)) lo = g_func_start;
    if (g_func_stoptalk != 0 && (lo == 0 || g_func_stoptalk < lo)) lo = g_func_stoptalk;
    if (g_func_pstarttalk != 0 && (lo == 0 || g_func_pstarttalk < lo)) lo = g_func_pstarttalk;
    return (unsigned int)lo;
}

unsigned int tg_hook_patch_hi(void)
{
    uint32_t hi = 0;

    if (g_func_play != 0) hi = g_func_play + 8;
    if (g_func_start != 0 && g_func_start + 8 > hi) hi = g_func_start + 8;
    if (g_func_stoptalk != 0 && g_func_stoptalk + 8 > hi) hi = g_func_stoptalk + 8;
    if (g_func_pstarttalk != 0 && g_func_pstarttalk + 8 > hi) hi = g_func_pstarttalk + 8;
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

    /* T8-15.2：续期 hook 最后装。失败就把前两个一起回滚，绝不留下"续期装上了、守卫没装上"或
     * 反过来这种半成品（守卫缺失 = 原厂回答会压过我们的回答）。 */
    if (g_func_stoptalk != 0) {
        rc = patch_one(g_func_stoptalk, g_stub_stoptalk, g_orig_stoptalk);
        if (rc != TG_OK) {
            (void)restore_one(g_func_play, g_orig_play);
            g_hooked_play = 0;
            (void)restore_one(g_func_start, g_orig_start);
            g_hooked_start = 0;
            g_state = rc;
            return rc;
        }
        g_hooked_stoptalk = 1;
    }

    /* T8-15.3：开麦标记点（只记账） */
    if (g_func_pstarttalk != 0) {
        rc = patch_one(g_func_pstarttalk, g_stub_pstarttalk, g_orig_pstarttalk);
        if (rc != TG_OK) {
            (void)restore_one(g_func_play, g_orig_play);
            g_hooked_play = 0;
            (void)restore_one(g_func_start, g_orig_start);
            g_hooked_start = 0;
            if (g_hooked_stoptalk) {
                (void)restore_one(g_func_stoptalk, g_orig_stoptalk);
                g_hooked_stoptalk = 0;
            }
            g_state = rc;
            return rc;
        }
        g_hooked_pstarttalk = 1;
    }

    g_patched = 1;
    g_state = TG_OK;
    g_err[0] = '\0';

    slog("installed: onTtsStart patch=%08x stub=%08x tramp=%08x ; playTts patch=%08x stub=%08x tramp=%08x",
         g_func_start, g_stub_start, g_tramp_start, g_func_play, g_stub_play, g_tramp_play);
    if (g_hooked_stoptalk) {
        slog("installed: onStopTalk hook patch=%08x stub=%08x tramp=%08x renew_ms=%u (also listening marker)",
             g_func_stoptalk, g_stub_stoptalk, g_tramp_stoptalk, g_renew_ms);
    }
    if (g_hooked_pstarttalk) {
        slog("installed: proxy startTalk marker patch=%08x stub=%08x tramp=%08x",
             g_func_pstarttalk, g_stub_pstarttalk, g_tramp_pstarttalk);
    }
    /* T8-15.2 第二阶段：手动一次性续听（只有 continuity_enable=1 才会走到这里） */
    if (g_cont_enable && g_func_starttalk != 0 && !g_cont_started) {
        pthread_t th;

        g_cont_run = 1;
        if (pthread_create(&th, NULL, tg_continuity_thread, NULL) == 0) {
            (void)pthread_detach(th);
            g_cont_started = 1;
        } else {
            g_cont_run = 0;
            set_err("continuity: pthread_create failed -> continuity disabled (TTS guard unaffected)");
        }
    }
    return TG_OK;
}

int tg_hook_uninstall(void)
{
    if (!g_patched) { g_state = TG_OK; return TG_OK; }

    g_cont_run = 0;          /* 先让续听轮询线程停下，再恢复序言 */
    /* 等它真的退出（最多 500 ms）：否则下一次 install 会起第二个轮询线程，
     * 两个线程看到同一个计数器各触发一次 —— 重复开麦。 */
    {
        int spin;

        for (spin = 0; spin < 50 && g_cont_alive; spin++) usleep(10 * 1000);
        if (!g_cont_alive) g_cont_started = 0;
    }

    if (g_hooked_play) {
        (void)restore_one(g_func_play, g_orig_play);
        g_hooked_play = 0;
    }
    if (g_hooked_start) {
        (void)restore_one(g_func_start, g_orig_start);
        g_hooked_start = 0;
    }
    if (g_hooked_stoptalk) {
        (void)restore_one(g_func_stoptalk, g_orig_stoptalk);
        g_hooked_stoptalk = 0;
    }
    if (g_hooked_pstarttalk) {
        (void)restore_one(g_func_pstarttalk, g_orig_pstarttalk);
        g_hooked_pstarttalk = 0;
    }
    g_patched = 0;
    g_state = TG_OK;
    g_err[0] = '\0';
    slog("uninstalled: original prologues restored (playTts=%08x onTtsStart=%08x onStopTalk=%08x "
         "proxyStartTalk=%08x)",
         g_func_play, g_func_start, g_func_stoptalk, g_func_pstarttalk);
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
    static char buf[1024];

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
    {
        size_t n = strlen(buf);

        snprintf(buf + n, sizeof(buf) - n,
                 " stoptalk=%d func_stoptalk=%08x renew_ms=%u renew_sets=%lu "
                 "renew_skip=%lu renew_pre=%u renew_file=%s "
                 "cont=%d cont_started=%d cont_calls=%lu cont_ok=%lu cont_last=%d cont_file=%s "
                 "cont_skip=%lu listening=%d pstart=%d hold_file=%s",
                 g_hooked_stoptalk, g_func_stoptalk, g_renew_ms,
                 GET(g_renew_sets), GET(g_renew_skipped), g_renew_pre,
                 g_renew_path[0] != '\0' ? g_renew_path : "(none)",
                 g_cont_enable, g_cont_started, GET(g_cont_calls), GET(g_cont_ok),
                 g_cont_last, g_cont_file, GET(g_cont_skipped), g_dev_listening,
                 g_hooked_pstarttalk, TG_HOLD_FILE_DEFAULT);
        snprintf(buf + strlen(buf), sizeof(buf) - strlen(buf),
                 " req_seen=%lu req_fired=%lu req_dropped=%lu req_pending=%d req_seq=%lld",
                 GET(g_req_seen), GET(g_req_fired), GET(g_req_dropped), g_req_pending, g_req_seq);
    }
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
