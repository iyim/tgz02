/*
 * libtg_dialog.c -- T7-03 连续对话（免唤醒续听）与 ASR 端点观测，ARM32 / Android 8.1
 *
 * 目标（任务书 T7-02-R1 第二节问题二、第三节问题三）：
 *   1) 让"一次唤醒、多轮语音"成为可能：AI 回答播完后，用原厂自己的"开始说话"入口
 *      重新打开麦克风，用户不必再说唤醒词；
 *   2) 定位 ASR 提前结束（半句话提交）的真正参数：观测原厂本地 VAD 判停配置，
 *      并可按配置抬高下限；
 *   3) 观测原厂唤醒/会话入口的真实参数（输入设备类型、_WakeUpInfo_ 内容），
 *      为"续听"提供可核对的依据。
 *
 * 为什么用这些入口（全部取自 libsmartbox.so 的真实符号，见 T7-03 报告 §2）：
 *   AliAiLabs::AGUI::GenieApi::startTalk(InputDeviceType, const _WakeUpInfo_*)
 *       Java 层（按键/UI）可调用的公开桥接入口，内部 =
 *       IMmiCore::getInstance() -> InputDeviceManager -> getInputDevice(type)
 *       -> InputDevice::getRecognizer()->startTalk(info)，即"立刻开始识别"。
 *   AliAiLabs::AGUI::SessionManager::onStartTalk(typeA, typeB, _WakeUpInfo_*, _WakeUpEventRet_*)
 *       唤醒后的会话建立入口（ASR session id 从这里产生）。真机实测唤醒时
 *       typeA=7、typeB=0、wake_type=0，调用点 lr_off=0x1078e0（libsmartbox 内）。
 *   AGSpeechEngine::setVADPauseTime(int,bool) / setSilenceTimeout(int)
 *       本地 VAD 判停参数（运行时配置：devicesettingInfo::pauseTime=700 /
 *       localASRPauseTime=150 / ASRStopPolicy=2）。
 *
 * 本库只做两件事：
 *   A. 只读观测：给上述函数装 inline hook，记录参数（不改返回值；只有当配置里
 *      显式给了 VAD 下限时才改那一个参数）；
 *   B. 受控动作：控制线程轮询 /data/local/tmp/t6/talk.req，按命令调用原厂入口。
 *
 * 明确不碰：libtg_hook.so（ASR→Bridge 通道）、libtg_ttsguard.so（原厂回答屏蔽）、
 * Injector/Supervisor、PCM、AudioFlinger。它们的 hook 点与本库不重叠，可共存。
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
#include <time.h>
#include <unistd.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/syscall.h>

#define TG_MODULE   "libsmartbox.so"
#define TG_LOG_TAG  "TGD"

/* 控制文件必须放在**目标进程（uid 1000 system）可读可 unlink** 的目录：
 * /data/local/tmp 是 0771 shell:shell、/data/local/tmp/t6 是 0755 root:root，
 * 原厂进程既读不到也删不掉（实测 unlink 失败会让命令无限重复）。
 * /data/local/tmp/t5_bridge/work 是 0777，T5 起就在用，这里复用它。 */
#define DG_REQ_PATH  "/data/local/tmp/t5_bridge/work/talk.req"
#define DG_CFG_PATH  "/data/local/tmp/t6/dialog.cfg"

#define DG_STUB_PAGE 4096
#define DG_MAX_HOOK  4

/* ---------------- 返回码（与 Injector 的约定一致） ---------------- */
#define DG_OK          0
#define DG_E_ARG      (-1)
#define DG_E_MODULE   (-2)
#define DG_E_SYMBOL   (-3)
#define DG_E_OFFSET   (-4)
#define DG_E_PROLOGUE (-5)
#define DG_E_MMAP     (-6)
#define DG_E_PROT     (-7)
#define DG_E_STATE    (-8)

/* ---------------- 符号（libsmartbox.so，真机 /system/app/smartapp/lib/arm/） ---------------- */
#define SYM_IM_STARTTALK \
    "_ZN9AliAiLabs4AGUI18InputDeviceManager9startTalkENS0_19IInputDeviceManager15InputDeviceTypeEPNS2_12_WakeUpInfo_E"
#define SYM_ON_STARTTALK \
    "_ZN9AliAiLabs4AGUI14SessionManager11onStartTalkENS0_19IInputDeviceManager15InputDeviceTypeES3_PNS2_12_WakeUpInfo_EPNS2_16_WakeUpEventRet_E"
#define SYM_SET_VADPAUSE  "_ZN14AGSpeechEngine15setVADPauseTimeEib"
#define SYM_SET_SILENCE   "_ZN14AGSpeechEngine17setSilenceTimeoutEi"
#define SYM_GENIE_START   \
    "_ZN9AliAiLabs4AGUI8GenieApi9startTalkENS0_19IInputDeviceManager15InputDeviceTypeEPKNS2_12_WakeUpInfo_E"
#define SYM_GENIE_STOP    \
    "_ZN9AliAiLabs4AGUI8GenieApi8stopTalkENS0_19IInputDeviceManager15InputDeviceTypeEPKNS2_14_StopWakeInfo_E"
#define SYM_GENIE_ISTALK  "_ZN9AliAiLabs4AGUI8GenieApi6isTalkEv"

/* T7-03：原厂"连续对话/全双工"管理器（真机库里确实存在，见报告 §2.5）
 *   IMmiCore::getInstance() -> MmiCtx
 *   MmiCtx::getContinuousDialogManager() -> ContinuousDialogManager*
 *   ContinuousDialogManager::onNotify(int, void*, int, int)  // 0x44e = "播报结束" 通知
 *   ContinuousDialogManager::startFullDuplexDialog()         // 需要 +0x70 这个门闩
 */
#define SYM_MMI_GETINSTANCE "_ZN9AliAiLabs4AGUI8IMmiCore11getInstanceEv"
#define SYM_GET_CDM         "_ZN9AliAiLabs4AGUI6MmiCtx26getContinuousDialogManagerEv"
#define SYM_CDM_ONNOTIFY    "_ZN9AliAiLabs4AGUI23ContinuousDialogManager8onNotifyEiPvii"
#define SYM_CDM_STARTFULL   "_ZN9AliAiLabs4AGUI23ContinuousDialogManager21startFullDuplexDialogEv"
/* 唤醒提示音播完 -> 立刻开始说话：原厂自己的入口。
 * 真机上唤醒后的会话就是由这条路径建立的（onStartTalk 的 lr_off=0x1078e0 就在
 * InputDeviceManager 里，紧邻这个函数），所以它比 startTalk 更接近"原厂行为"。 */
#define SYM_MMI_GETINPUT    "_ZN9AliAiLabs4AGUI6MmiCtx21getInputDeviceManagerEv"
#define SYM_IM_PROMPTFIN    "_ZN9AliAiLabs4AGUI18InputDeviceManager18wakeupPromptFinishEv"
#define DG_NOTIFY_TTS_END   0x44e

/* 实测序言（ARM，位置无关，可整条搬进 trampoline；字节见报告 §2.4）：
 *   InputDeviceManager::startTalk     f0 48 2d e9 10 b0 8d e2  = E92D48F0 E28DB010
 *   SessionManager::onStartTalk       f0 4f 2d e9 1c b0 8d e2  = E92D4FF0 E28DB01C
 *   AGSpeechEngine::setVADPauseTime   70 4c 2d e9 10 b0 8d e2  = E92D4C70 E28DB010
 *   AGSpeechEngine::setSilenceTimeout 30 48 2d e9 08 b0 8d e2  = E92D4830 E28DB008
 */
static const uint32_t PRO_IM_START[2]  = { 0xE92D48F0u, 0xE28DB010u };
static const uint32_t PRO_ON_START[2]  = { 0xE92D4FF0u, 0xE28DB01Cu };
static const uint32_t PRO_VADPAUSE[2]  = { 0xE92D4C70u, 0xE28DB010u };
static const uint32_t PRO_SILENCE[2]   = { 0xE92D4830u, 0xE28DB008u };

/* ---------------- 配置（安装时从文件读，可用控制命令改） ---------------- */
typedef struct {
    int input_type;          /* starttalk 默认输入设备类型（-1 = 用最近一次观测值） */
    int min_vad_pause_ms;    /* >0：setVADPauseTime 的下限（0 = 只观测，不改参数） */
    int min_silence_ms;      /* >0：setSilenceTimeout 的下限 */
    int debug;               /* 1 = 打印每次 hook 调用 */
} dg_cfg;

static dg_cfg g_cfg = { -1, 0, 0, 0 };

/* ---------------- 状态 ---------------- */
static int       g_state = DG_OK;
static char      g_err[320];
static int       g_patched;
static int       g_thread_started;
static volatile int g_stop;
static void     *g_stub_page;
static uintptr_t g_base;

typedef struct {
    const char *name;
    const char *sym;
    const uint32_t *pro;
    uint32_t func;
    uint32_t orig[2];
    uint32_t stub;
    uint32_t tramp;
    int      hooked;
} dg_hook;

static dg_hook g_hooks[DG_MAX_HOOK] = {
    { "InputDeviceManager::startTalk",     SYM_IM_STARTTALK, PRO_IM_START, 0, {0,0}, 0, 0, 0 },
    { "SessionManager::onStartTalk",       SYM_ON_STARTTALK, PRO_ON_START, 0, {0,0}, 0, 0, 0 },
    { "AGSpeechEngine::setVADPauseTime",   SYM_SET_VADPAUSE, PRO_VADPAUSE, 0, {0,0}, 0, 0, 0 },
    { "AGSpeechEngine::setSilenceTimeout", SYM_SET_SILENCE,  PRO_SILENCE,  0, {0,0}, 0, 0, 0 },
};

/* GenieApi 入口（同一套 dynsym 解析得到；解析不到不致命） */
static int  (*g_genie_start)(int type, const void *info);
static void (*g_genie_stop)(int type, const void *info);
static int  (*g_genie_istalk)(void);

/* 原厂连续对话管理器入口 */
static void *(*g_mmi_instance)(void);
static void *(*g_get_cdm)(void *mmi);
static void  (*g_cdm_onnotify)(void *cdm, int type, void *data, int a, int b);
static void  (*g_cdm_startfull)(void *cdm);
static void *(*g_get_inputmgr)(void *mmi);
static void  (*g_prompt_finish)(void *im);

/* ---------------- 统计 ---------------- */
static volatile unsigned long g_c_im_start;    /* InputDeviceManager::startTalk 调用 */
static volatile unsigned long g_c_on_start;    /* SessionManager::onStartTalk 调用 */
static volatile unsigned long g_c_vad_set;     /* setVADPauseTime 调用 */
static volatile unsigned long g_c_sil_set;     /* setSilenceTimeout 调用 */
static volatile unsigned long g_c_vad_clamp;   /* 被抬高的次数 */
static volatile unsigned long g_c_sil_clamp;
static volatile unsigned long g_c_cmd;         /* 收到的控制命令 */
static volatile unsigned long g_c_genie_ok;    /* GenieApi::startTalk 返回 true */
static volatile unsigned long g_c_genie_fail;
static volatile unsigned long g_c_snap;        /* 抓到并接受快照的次数 */

#define GET(x) __atomic_load_n(&(x), __ATOMIC_RELAXED)
#define INC(x) __atomic_add_fetch(&(x), 1ul, __ATOMIC_RELAXED)

/* ---------------- 日志 ---------------- */
static void slog(const char *fmt, ...)
{
    char buf[480];
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

/* ---------------- 唤醒信息快照（_WakeUpInfo_） ----------------
 * 布局来自 SessionManager::setWakeUpInfo 的实测反汇编：
 *   +0x00 int  wakeupType (0..0x11)
 *   +0x04 char* wakeupWord     +0x08 char* 另一字符串
 *   +0x10..+0x2c 若干 int（含时间戳/能量/角度等）
 *   +0x30 char* +0x34 char* +0x38 char* +0x3c 数组指针
 * 本库只按字节整体复制 +0x58，不解引用其中的指针（跨会话指针可能已释放）。
 */
#define DG_SNAP_BYTES 0x58
typedef struct {
    int      valid;
    int      type_seen;      /* startTalk 的第一个参数（输入设备类型） */
    int      wake_type;      /* _WakeUpInfo_ +0x00 */
    uint32_t raw[DG_SNAP_BYTES / 4];
} dg_snap;

static dg_snap g_snap;

/* 真机实测（22:39 / 22:45 日志）：onStartTalk 会在同一个 tid、同一毫秒里出现"成对"的
 * 第二次进入，参数是 (全局对象, &obj+0x34, &obj+0x48, 栈地址)，不是 (type, type, wakeInfo, ret)；
 * 那个第二路会把快照冲成垃圾。校验规则（只用不依赖环境的判据）：
 *   1) info 对齐且不为空；
 *   2) *(int*)info（wakeupType）必须在 0..0x11（setWakeUpInfo 里就是这个范围，越界会被压成 7）。
 * 注意：**不能**用"是否在栈上"来判断——真实唤醒信息本来就是调用方栈上的临时对象
 * （实测 0x92e02660，与回调栈帧只差几 KB），按栈判断会把真快照全丢掉。 */
static int snap_info_ok(const void *info, char *why, size_t whylen)
{
    uintptr_t p = (uintptr_t)info;
    int t;

    if (p < 0x10000 || (p & 3) != 0) {
        snprintf(why, whylen, "info %p unaligned or too low", info);
        return 0;
    }
    t = *(const int *)info;
    if (t < 0 || t > 0x11) {
        snprintf(why, whylen, "wake_type %d out of range", t);
        return 0;
    }
    return 1;
}

static void snap_capture(int input_type, const void *info)
{
    char why[96];

    if (info == NULL) {
        if (g_cfg.debug) slog("snap: skip, info=NULL (type=%d)", input_type);
        return;
    }
    if (input_type < 0 || input_type > 0x20) {
        if (g_cfg.debug) slog("snap: skip, input_type=%d out of range", input_type);
        return;
    }
    if (!snap_info_ok(info, why, sizeof(why))) {
        if (g_cfg.debug) slog("snap: skip, %s", why);
        return;
    }
    g_snap.type_seen = input_type;
    g_snap.wake_type = *(const int *)info;
    memcpy(g_snap.raw, info, DG_SNAP_BYTES);
    g_snap.valid = 1;
    INC(g_c_snap);
    if (g_cfg.debug) {
        slog("snap: type=%d info=%p wake_type=%d +18=%08x +28=%08x +2c=%08x",
             input_type, info, g_snap.wake_type,
             g_snap.raw[6], g_snap.raw[10], g_snap.raw[11]);
    }
}

/* 自己构造一份 _WakeUpInfo_（不依赖任何跨会话指针）：
 *   +0x00 wakeupType   +0x04 唤醒词（静态字符串）  +0x08 同左  +0x30 同左
 * 其余整数字段为 0，指针字段为 NULL —— setWakeUpInfo 对 NULL 有显式分支（实测反汇编）。 */
static char     g_syn_word[] = "\xE5\xA4\xA9\xE7\x8C\xAB\xE7\xB2\xBE\xE7\x81\xB5"; /* 天猫精灵 */
static uint32_t g_syn[DG_SNAP_BYTES / 4];

static void syn_build(int wake_type)
{
    memset(g_syn, 0, sizeof(g_syn));
    g_syn[0] = (uint32_t)wake_type;
    g_syn[1] = (uint32_t)(uintptr_t)g_syn_word;
    g_syn[2] = (uint32_t)(uintptr_t)g_syn_word;
    g_syn[12] = (uint32_t)(uintptr_t)g_syn_word;
}

/* ---------------- hook 回调（r = 进入函数时的 r0..r3 + r4 + lr） ----------------
 * 布局（ARM push {r0,r1,r2,r3,r4,lr}）：
 *   r[0]=r0  r[1]=r1  r[2]=r2  r[3]=r3  r[4]=r4  r[5]=lr
 */
static void cb_im_start(uint32_t *r)     /* (this, InputDeviceType, _WakeUpInfo_*) */
{
    INC(g_c_im_start);
    if (g_cfg.debug || g_c_im_start <= 20) {
        /* 只打寄存器原值：这里的指针不保证可用，任何解引用都可能把原厂进程打死 */
        slog("imStartTalk#%lu: this=%08x type=%d info=%08x lr_off=%08x tid=%d",
             GET(g_c_im_start), r[0], (int)r[1], r[2],
             (uint32_t)(r[5] - g_base), (int)syscall(__NR_gettid));
    }
    snap_capture((int)r[1], (const void *)r[2]);
}

static void cb_on_start(uint32_t *r)     /* (this, typeA, typeB, _WakeUpInfo_*, _WakeUpEventRet_*) */
{
    INC(g_c_on_start);
    if (g_cfg.debug || g_c_on_start <= 20) {
        slog("onStartTalk#%lu: this=%08x A=%d(0x%08x) B=%d(0x%08x) info=%08x "
             "lr_off=%08x tid=%d",
             GET(g_c_on_start), r[0], (int)r[1], r[1], (int)r[2], r[2], r[3],
             (uint32_t)(r[5] - g_base), (int)syscall(__NR_gettid));
    }
    if ((int)r[1] >= 0 && (int)r[1] <= 0x20) {
        snap_capture((int)r[1], (const void *)r[3]);
    }
}

static void cb_vad_pause(uint32_t *r)    /* (this, int ms, bool flag) */
{
    int ms = (int)r[1];

    INC(g_c_vad_set);
    if (g_cfg.min_vad_pause_ms > 0 && ms > 0 && ms < g_cfg.min_vad_pause_ms) {
        slog("setVADPauseTime: %d ms -> %d ms (config floor)", ms, g_cfg.min_vad_pause_ms);
        r[1] = (uint32_t)g_cfg.min_vad_pause_ms;
        INC(g_c_vad_clamp);
    } else {
        slog("setVADPauseTime: %d ms flag=%d (unchanged)", ms, (int)r[2]);
    }
}

static void cb_silence(uint32_t *r)      /* (this, int ms) */
{
    int ms = (int)r[1];

    INC(g_c_sil_set);
    if (g_cfg.min_silence_ms > 0 && ms > 0 && ms < g_cfg.min_silence_ms) {
        slog("setSilenceTimeout: %d ms -> %d ms (config floor)", ms, g_cfg.min_silence_ms);
        r[1] = (uint32_t)g_cfg.min_silence_ms;
        INC(g_c_sil_clamp);
    } else {
        slog("setSilenceTimeout: %d ms (unchanged)", ms);
    }
}

/* ---------------- ELF 解析（与 T6-01/T7-02 同一套做法） ---------------- */
typedef struct {
    uintptr_t base;
    int       found;
} dg_mod;

static int mod_cb(struct dl_phdr_info *info, size_t size, void *data)
{
    dg_mod *m = (dg_mod *)data;
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

/* 返回运行时地址（base + st_value）；0 = 未找到 */
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
    unsigned i;

    if (g_stub_page != NULL) return 0;
    g_stub_page = mmap(NULL, DG_STUB_PAGE, PROT_READ | PROT_WRITE,
                       MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
    if (g_stub_page == MAP_FAILED) {
        g_stub_page = NULL;
        set_err("mmap(stub page) failed errno=%d", errno);
        return DG_E_MMAP;
    }
    memset(g_stub_page, 0, DG_STUB_PAGE);

    for (i = 0; i < DG_MAX_HOOK; i++) {
        dg_hook *h = &g_hooks[i];
        uint32_t *s;

        h->stub  = (uint32_t)(uintptr_t)g_stub_page + i * 0x40;
        h->tramp = (uint32_t)(uintptr_t)g_stub_page + 0x400 + i * 0x40;
        s = (uint32_t *)(uintptr_t)h->stub;

        /* push {r0,r1,r2,r3,r4,lr}
         * mov  r0, sp              ; 回调参数 = 压栈的 r0..r3
         * ldr  r1, [pc, #0x10]     ; -> s[8] = 回调
         * blx  r1
         * pop  {r0,r1,r2,r3,r4,lr}
         * ldr  pc, [pc, #-4]       ; -> s[6] = trampoline
         */
        s[0] = 0xE92D401Fu;
        s[1] = 0xE1A0000Du;
        s[2] = 0xE59F1010u;
        s[3] = 0xE12FFF31u;
        s[4] = 0xE8BD401Fu;
        s[5] = 0xE59FF004u;
        s[6] = h->tramp;
        s[7] = 0;
        s[8] = (uint32_t)(uintptr_t)((i == 0) ? cb_im_start :
                                     (i == 1) ? cb_on_start :
                                     (i == 2) ? cb_vad_pause : cb_silence);

        /* trampoline：原厂前两条指令 + ldr pc,[pc,#-4] + func+8 */
        {
            uint32_t *t = (uint32_t *)(uintptr_t)h->tramp;
            t[0] = h->orig[0];
            t[1] = h->orig[1];
            t[2] = 0xE59FF004u;
            t[3] = h->func + 8;
        }
    }
    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + DG_STUB_PAGE);

    /* 必须可执行：Android 8.1 上 RW 页取指 = SIGSEGV(SEGV_ACCERR)（T7-03 实测，
     * 见 evidence/t7_03_exp1_crash.logcat）。先 RX，再退 RWX，都不行就拒绝安装。 */
    if (mprotect(g_stub_page, DG_STUB_PAGE, PROT_READ | PROT_EXEC) != 0) {
        if (mprotect(g_stub_page, DG_STUB_PAGE,
                     PROT_READ | PROT_WRITE | PROT_EXEC) != 0) {
            set_err("mprotect(stub page RX/RWX) failed errno=%d", errno);
            return DG_E_PROT;
        }
    }
    return 0;
}

static int install_one(dg_hook *h)
{
    uint32_t *p;

    if (h->func == 0) return DG_E_SYMBOL;
    if (h->orig[0] != h->pro[0] || h->orig[1] != h->pro[1]) {
        set_err("%s: prologue %08x %08x != expected %08x %08x", h->name,
                h->orig[0], h->orig[1], h->pro[0], h->pro[1]);
        return DG_E_PROLOGUE;
    }
    if (page_rwx(h->func) != 0) {
        set_err("%s: mprotect(%08x) failed errno=%d", h->name, h->func, errno);
        return DG_E_PROT;
    }
    p = (uint32_t *)(uintptr_t)h->func;
    p[0] = 0xE51FF004u;                 /* ldr pc, [pc, #-4] */
    p[1] = h->stub;
    __builtin___clear_cache((char *)h->func, (char *)(h->func + 8));
    h->hooked = 1;
    return 0;
}

static void restore_one(dg_hook *h)
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

/* ---------------- 配置读取 ---------------- */
static void cfg_load(void)
{
    FILE *f = fopen(DG_CFG_PATH, "r");
    char line[256];

    if (f == NULL) return;
    while (fgets(line, sizeof(line), f) != NULL) {
        char *eq, *k, *v;
        size_t n;

        if (line[0] == '#' || line[0] == '\n') continue;
        eq = strchr(line, '=');
        if (eq == NULL) continue;
        *eq = '\0';
        k = line;
        v = eq + 1;
        n = strlen(v);
        while (n > 0 && (v[n - 1] == '\n' || v[n - 1] == '\r' || v[n - 1] == ' ')) v[--n] = '\0';
        if (strcmp(k, "input_type") == 0) g_cfg.input_type = atoi(v);
        else if (strcmp(k, "min_vad_pause_ms") == 0) g_cfg.min_vad_pause_ms = atoi(v);
        else if (strcmp(k, "min_silence_ms") == 0) g_cfg.min_silence_ms = atoi(v);
        else if (strcmp(k, "debug") == 0) g_cfg.debug = atoi(v);
    }
    fclose(f);
    slog("config: input_type=%d min_vad_pause_ms=%d min_silence_ms=%d debug=%d (%s)",
         g_cfg.input_type, g_cfg.min_vad_pause_ms, g_cfg.min_silence_ms, g_cfg.debug, DG_CFG_PATH);
}

/* ---------------- 控制通道（文件轮询） ---------------- */
static int run_cmd(char *cmd)
{
    char *arg = strchr(cmd, ' ');
    long type;

    if (arg != NULL) { *arg = '\0'; arg++; }
    INC(g_c_cmd);

    if (strcmp(cmd, "starttalk") == 0) {
        type = (arg != NULL) ? atol(arg) : (g_snap.valid ? g_snap.type_seen : g_cfg.input_type);
        if (g_genie_start == NULL) { slog("cmd starttalk: GenieApi::startTalk unresolved"); return -1; }
        {
            int rv = g_genie_start((int)type, NULL);
            slog("cmd starttalk type=%ld info=NULL -> %d (isTalk=%d)",
                 type, rv, (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
            if (rv) INC(g_c_genie_ok); else INC(g_c_genie_fail);
            return rv ? 0 : -2;
        }
    }
    if (strcmp(cmd, "starttalk_saved") == 0) {
        type = (arg != NULL) ? atol(arg) : g_snap.type_seen;
        if (g_genie_start == NULL) { slog("cmd starttalk_saved: unresolved"); return -1; }
        if (!g_snap.valid) { slog("cmd starttalk_saved: no snapshot yet"); return -3; }
        {
            int rv;
            /* 拷一份再用：整数字段保留实测值，字符串指针换成我们自己的静态串
             * （原快照里的指针指向原厂 heap，跨会话可能已经释放），可选指针清 0。 */
            memcpy(g_syn, g_snap.raw, DG_SNAP_BYTES);
            g_syn[1] = (uint32_t)(uintptr_t)g_syn_word;   /* +0x04 唤醒词 */
            g_syn[2] = (uint32_t)(uintptr_t)g_syn_word;   /* +0x08 */
            g_syn[12] = (uint32_t)(uintptr_t)g_syn_word;  /* +0x30 */
            g_syn[13] = 0;                                /* +0x34 */
            g_syn[14] = 0;                                /* +0x38 */
            g_syn[15] = 0;                                /* +0x3c */
            rv = g_genie_start((int)type, (const void *)g_syn);
            slog("cmd starttalk_saved type=%ld wake_type=%d -> %d (isTalk=%d)",
                 type, g_snap.wake_type, rv,
                 (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
            if (rv) INC(g_c_genie_ok); else INC(g_c_genie_fail);
            return rv ? 0 : -2;
        }
    }
    if (strcmp(cmd, "probe") == 0) {
        int t;
        if (g_genie_start == NULL) { slog("cmd probe: unresolved"); return -1; }
        syn_build(g_snap.valid ? g_snap.wake_type : 0);
        for (t = 0; t <= 8; t++) {
            int rv = g_genie_start(t, (const void *)g_syn);
            slog("probe starttalk type=%d -> %d (isTalk=%d)", t, rv,
                 (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
            if (rv) { INC(g_c_genie_ok); } else { INC(g_c_genie_fail); }
        }
        return 0;
    }
    if (strcmp(cmd, "starttalk_clean") == 0) {
        type = (arg != NULL) ? atol(arg) : (g_snap.valid ? g_snap.type_seen : g_cfg.input_type);
        if (g_genie_start == NULL) { slog("cmd starttalk_clean: unresolved"); return -1; }
        {
            int wake_type = g_snap.valid ? g_snap.wake_type : 0;
            int rv;
            syn_build(wake_type);
            rv = g_genie_start((int)type, (const void *)g_syn);
            slog("cmd starttalk_clean type=%ld wake_type=%d word=\"%s\" -> %d (isTalk=%d)",
                 type, wake_type, g_syn_word, rv,
                 (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
            if (rv) INC(g_c_genie_ok); else INC(g_c_genie_fail);
            return rv ? 0 : -2;
        }
    }
    if (strcmp(cmd, "cdminfo") == 0) {
        void *mmi, *cdm;
        unsigned char *b;
        if (g_mmi_instance == NULL || g_get_cdm == NULL) {
            slog("cmd cdminfo: CDM entry unresolved"); return -1;
        }
        mmi = g_mmi_instance();
        cdm = (mmi != NULL) ? g_get_cdm(mmi) : NULL;
        if (cdm == NULL) { slog("cmd cdminfo: mmi=%p cdm=NULL", mmi); return -2; }
        b = (unsigned char *)cdm;
        slog("cmd cdminfo: mmi=%p cdm=%p flags60=%d flags70=%d wake=%08x ts=%08x/%08x",
             mmi, cdm, (int)b[0x60], (int)b[0x70],
             *(const uint32_t *)(b + 8), *(const uint32_t *)(b + 0x78),
             *(const uint32_t *)(b + 0x7c));
        return 0;
    }
    if (strcmp(cmd, "cdmnotify") == 0) {
        void *mmi, *cdm;
        int ntype = (arg != NULL) ? atoi(arg) : DG_NOTIFY_TTS_END;
        if (g_mmi_instance == NULL || g_get_cdm == NULL || g_cdm_onnotify == NULL) {
            slog("cmd cdmnotify: CDM entry unresolved"); return -1;
        }
        mmi = g_mmi_instance();
        cdm = (mmi != NULL) ? g_get_cdm(mmi) : NULL;
        if (cdm == NULL) { slog("cmd cdmnotify: cdm=NULL (mmi=%p)", mmi); return -2; }
        slog("cmd cdmnotify: cdm=%p flags70=%d notify=%d", cdm,
             (int)((unsigned char *)cdm)[0x70], ntype);
        g_cdm_onnotify(cdm, ntype, NULL, 0, 0);
        slog("cmd cdmnotify done (isTalk=%d)", (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
        return 0;
    }
    if (strcmp(cmd, "cdmstart") == 0) {
        void *mmi, *cdm;
        if (g_mmi_instance == NULL || g_get_cdm == NULL || g_cdm_startfull == NULL) {
            slog("cmd cdmstart: CDM entry unresolved"); return -1;
        }
        mmi = g_mmi_instance();
        cdm = (mmi != NULL) ? g_get_cdm(mmi) : NULL;
        if (cdm == NULL) { slog("cmd cdmstart: cdm=NULL"); return -2; }
        ((unsigned char *)cdm)[0x70] = 1;      /* 门闩：实测 startFullDuplexDialog 只在非 0 时干活 */
        slog("cmd cdmstart: cdm=%p latch=1", cdm);
        g_cdm_startfull(cdm);
        slog("cmd cdmstart done (isTalk=%d)", (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
        return 0;
    }
    if (strcmp(cmd, "promptfin") == 0) {
        void *mmi, *im;
        if (g_mmi_instance == NULL || g_get_inputmgr == NULL || g_prompt_finish == NULL) {
            slog("cmd promptfin: entry unresolved"); return -1;
        }
        mmi = g_mmi_instance();
        im = (mmi != NULL) ? g_get_inputmgr(mmi) : NULL;
        if (im == NULL) { slog("cmd promptfin: input manager NULL (mmi=%p)", mmi); return -2; }
        slog("cmd promptfin: im=%p -> wakeupPromptFinish()", im);
        g_prompt_finish(im);
        slog("cmd promptfin done (isTalk=%d)", (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
        return 0;
    }
    if (strcmp(cmd, "stoptalk") == 0) {
        type = (arg != NULL) ? atol(arg) : (g_snap.valid ? g_snap.type_seen : g_cfg.input_type);
        if (g_genie_stop == NULL) { slog("cmd stoptalk: unresolved"); return -1; }
        g_genie_stop((int)type, NULL);
        slog("cmd stoptalk type=%ld done (isTalk=%d)", type,
             (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
        return 0;
    }
    if (strcmp(cmd, "istalk") == 0) {
        slog("cmd istalk -> %d", (g_genie_istalk != NULL) ? g_genie_istalk() : -1);
        return 0;
    }
    if (strcmp(cmd, "snap") == 0) {
        slog("cmd snap: valid=%d type=%d wake_type=%d +18=%08x +1c=%08x +20=%08x +24=%08x "
             "+28=%08x +2c=%08x",
             g_snap.valid, g_snap.type_seen, g_snap.wake_type,
             g_snap.raw[6], g_snap.raw[7], g_snap.raw[8], g_snap.raw[9],
             g_snap.raw[10], g_snap.raw[11]);
        return 0;
    }
    if (strcmp(cmd, "vad") == 0) {
        if (arg == NULL) return -1;
        g_cfg.min_vad_pause_ms = atoi(arg);
        slog("cmd vad: min_vad_pause_ms=%d", g_cfg.min_vad_pause_ms);
        return 0;
    }
    if (strcmp(cmd, "silence") == 0) {
        if (arg == NULL) return -1;
        g_cfg.min_silence_ms = atoi(arg);
        slog("cmd silence: min_silence_ms=%d", g_cfg.min_silence_ms);
        return 0;
    }
    if (strcmp(cmd, "debug") == 0) {
        g_cfg.debug = (arg != NULL) ? atoi(arg) : 1;
        slog("cmd debug=%d", g_cfg.debug);
        return 0;
    }
    slog("cmd unknown: %s", cmd);
    return -1;
}

static void *ctl_thread(void *arg)
{
    unsigned long long last_key = 0;
    unsigned long long last_mtime = 0;

    (void)arg;
    slog("control thread started (req=%s)", DG_REQ_PATH);
    while (!g_stop) {
        struct stat st;
        if (stat(DG_REQ_PATH, &st) == 0) {
            /* 同一个文件只执行一次：即使 unlink 失败（权限/挂载），也不会无限重复。
             * 键 =(inode, mtime)；脚本每次写新内容都会换 mtime。 */
            unsigned long long key = ((unsigned long long)st.st_ino << 32) ^
                                     (unsigned long long)st.st_size;
            unsigned long long mt = (unsigned long long)st.st_mtime * 1000ull +
                                    (unsigned long long)st.st_mtim.tv_nsec / 1000000ull;
            if (key != last_key || mt != last_mtime) {
                int fd = open(DG_REQ_PATH, O_RDONLY);
                last_key = key;
                last_mtime = mt;
                if (fd >= 0) {
                    char buf[256];
                    ssize_t n = read(fd, buf, sizeof(buf) - 1);
                    close(fd);
                    if (n > 0) {
                        char *nl;
                        buf[n] = '\0';
                        nl = strchr(buf, '\n');
                        if (nl != NULL) *nl = '\0';
                        slog("cmd: \"%s\"", buf);
                        (void)run_cmd(buf);
                    }
                    (void)unlink(DG_REQ_PATH);
                }
            }
        }
        usleep(150000);
    }
    return NULL;
}

/* ---------------- 导出 ABI（与 Injector 约定一致） ---------------- */
int tg_hook_prepare(void)
{
    dg_mod m;
    unsigned i;

    if (g_state != DG_OK) return g_state;
    memset(&m, 0, sizeof(m));
    dl_iterate_phdr(mod_cb, &m);
    if (!m.found) {
        set_err("%s is not loaded in this process", TG_MODULE);
        g_state = DG_E_MODULE;
        return g_state;
    }
    g_base = m.base;

    for (i = 0; i < DG_MAX_HOOK; i++) {
        dg_hook *h = &g_hooks[i];
        uint32_t v = mem_sym(m.base, h->sym);

        if (v == 0) {
            set_err("%s: symbol not found (%s)", h->name, h->sym);
            g_state = DG_E_SYMBOL;
            return g_state;
        }
        h->func = v;
        h->orig[0] = *(const uint32_t *)(uintptr_t)(h->func + 0);
        h->orig[1] = *(const uint32_t *)(uintptr_t)(h->func + 4);
    }

    /* GenieApi 主动入口：同样用 dynsym 解析。
     * 刻意不用 dlopen/dlsym —— prepare 阶段是 Injector 的"遥控调用"上下文，
     * bionic 的 dlopen 会取锁/TLS，那里不安全（T7-03 实测 SIGSEGV）。 */
    g_genie_start  = (int (*)(int, const void *))mem_sym(m.base, SYM_GENIE_START);
    g_genie_stop   = (void (*)(int, const void *))mem_sym(m.base, SYM_GENIE_STOP);
    g_genie_istalk = (int (*)(void))mem_sym(m.base, SYM_GENIE_ISTALK);
    g_mmi_instance = (void *(*)(void))mem_sym(m.base, SYM_MMI_GETINSTANCE);
    g_get_cdm      = (void *(*)(void *))mem_sym(m.base, SYM_GET_CDM);
    g_cdm_onnotify = (void (*)(void *, int, void *, int, int))mem_sym(m.base, SYM_CDM_ONNOTIFY);
    g_cdm_startfull = (void (*)(void *))mem_sym(m.base, SYM_CDM_STARTFULL);
    g_get_inputmgr = (void *(*)(void *))mem_sym(m.base, SYM_MMI_GETINPUT);
    g_prompt_finish = (void (*)(void *))mem_sym(m.base, SYM_IM_PROMPTFIN);
    slog("genie api: startTalk=%p stopTalk=%p isTalk=%p",
         (void *)g_genie_start, (void *)g_genie_stop, (void *)g_genie_istalk);
    slog("cdm entry: mmi=%p getCdm=%p onNotify=%p startFull=%p",
         (void *)g_mmi_instance, (void *)g_get_cdm,
         (void *)g_cdm_onnotify, (void *)g_cdm_startfull);

    return DG_OK;
}

int tg_hook_patch_lo(void)
{
    return (int)g_hooks[0].func;
}

int tg_hook_patch_hi(void)
{
    unsigned i;
    int hi = (int)g_hooks[0].func;

    for (i = 1; i < DG_MAX_HOOK; i++) {
        if ((int)g_hooks[i].func > hi) hi = (int)g_hooks[i].func;
    }
    return hi;
}

int tg_hook_install(void)
{
    unsigned i;
    int rc;

    if (g_state != DG_OK) return g_state;
    if (g_patched) return DG_OK;

    cfg_load();
    rc = build_stub_page();
    if (rc != 0) { g_state = rc; return rc; }

    for (i = 0; i < DG_MAX_HOOK; i++) {
        rc = install_one(&g_hooks[i]);
        if (rc != 0) {
            unsigned j;
            for (j = 0; j < i; j++) restore_one(&g_hooks[j]);
            g_state = rc;
            return rc;
        }
        slog("hooked %s @ %08x (offset 0x%x) stub=%08x tramp=%08x", g_hooks[i].name,
             g_hooks[i].func, g_hooks[i].func - (uint32_t)g_base,
             g_hooks[i].stub, g_hooks[i].tramp);
    }
    g_patched = 1;

    if (!g_thread_started) {
        pthread_t th;
        if (pthread_create(&th, NULL, ctl_thread, NULL) == 0) {
            pthread_detach(th);
            g_thread_started = 1;
        } else {
            slog("control thread create failed; hooks still active");
        }
    }
    return DG_OK;
}

int tg_hook_uninstall(void)
{
    unsigned i;

    g_stop = 1;
    for (i = 0; i < DG_MAX_HOOK; i++) restore_one(&g_hooks[i]);
    g_patched = 0;
    return DG_OK;
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
    return (g_state == DG_OK) ? 1 : 0;
}

int tg_hook_hooked(void)
{
    return g_patched ? 1 : 0;
}

const char *tg_hook_stats(void)
{
    static char buf[400];

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d thread=%d im_start=%lu on_start=%lu vad_set=%lu sil_set=%lu "
             "vad_clamp=%lu sil_clamp=%lu genie_ok=%lu genie_fail=%lu snap=%lu cmds=%lu "
             "min_vad=%d min_sil=%d type=%d",
             g_state, g_patched ? 1 : 0, g_thread_started ? 1 : 0,
             GET(g_c_im_start), GET(g_c_on_start), GET(g_c_vad_set), GET(g_c_sil_set),
             GET(g_c_vad_clamp), GET(g_c_sil_clamp), GET(g_c_genie_ok), GET(g_c_genie_fail),
             GET(g_c_snap), GET(g_c_cmd), g_cfg.min_vad_pause_ms, g_cfg.min_silence_ms,
             g_cfg.input_type);
    return buf;
}

__attribute__((constructor)) static void dg_ctor(void)
{
    slog("libtg_dialog.so loaded (pid=%d); waiting for tg_hook_install()", (int)getpid());
}
