/*
 * libtg_ttsguard.c -- T7-02 鍘熷巶鍥炵瓟灞忚斀锛圱TS 鏉ユ簮瀹堝崼锛夛紝ARM32 / Android 8.1
 *
 * 鐩爣锛氫繚鐣欏師鍘傚敜閱掋€丄SR銆乀TS 寮曟搸锛屽彧灞忚斀"鍘熷巶 NLU 瀵规櫘閫氱敤鎴锋寚浠ょ敓鎴愮殑鍥炵瓟"锛? *      璁?AI Worker 鐨勫洖绛旓紙璧板師鍘?TTS锛夋甯告挱鎶ャ€? *
 * 涓轰粈涔堝繀椤诲湪 native 灞傚仛锛堢湡鏈哄疄娴嬬殑璋冪敤閾撅紝瑙?evidence/t7_02_trace_e1.logcat锛夛細
 *
 *   鍘熷巶鍥炵瓟锛堣灞忚斀锛夛細
 *     cloud Speak 鍛戒护 -> TtsManager::onTtsStart(sessionId=<ASR session>, isStreaming=1, tts="鐜板湪鏄€?)
 *       -> AudioManager::playTTS(stream:<ASR session>) -> AudioManager::processTtsStart
 *       -> PlaybackService::playTts -> PCM
 *
 *   AI Worker 鍥炵瓟锛堜繚鐣欙級锛? *     TTS 鎵ц鍣?/ app_process -> GenieTable.query(method=4)
 *       -> VoiceManager.playTts(TtsInfo{sessionId=0, pkg='com.tgz02.aibridge.tts'})
 *       -> JNI AiLabsCore.playTts -> TtsManager::playTts(TtsInfo)   <== 鍙湁鎴戜滑鐨勬枃鏈粠杩欓噷杩? *       -> 鍘熷巶鑷繁鍙?AliGenie.Speaker/TextToSpeech 璇锋眰锛堟槸鎴戜滑杩涚▼鍙戣捣鐨勬櫘閫氳皟鐢級
 *       -> cloud 鍥?Speak -> TtsManager::onTtsStart(sessionId=<playTts 杩斿洖鐨?id>, ...)
 *       -> 鍚屼竴鏉℃挱鏀鹃摼
 *
 * 涓ゆ潯璺渶缁堟眹鍚堝湪 TtsManager::onTtsStart銆傚尯鍒嗕緷鎹彧鏈?鏉ユ簮"锛屼笉鑳戒竴鍒€鍒囷細
 *   - 鎴戜滑鍙戣捣鏃讹紝TtsManager::playTts 杩斿洖浜嗘湰娆℃挱鎶ョ殑 sessionId锛堢湡鏈哄疄娴?5244437锛? *     涓庨殢鍚?onTtsStart 鐨?sessionId 瀹屽叏涓€鑷达級锛岃皟鐢ㄧ嚎绋嬫槸 Binder 绾跨▼锛圕ontentProvider
 *     鐨?Binder 鍒嗗彂绾跨▼锛宑omm 鍓嶇紑 "Binder:"锛夛紱
 *   - 鍘熷巶鍥炵瓟娌℃湁缁忚繃 TtsManager::playTts锛屽畠鐢变簯绔?Speak 鍛戒护鐩存帴椹卞姩
 *     锛堟棩蹇楅噷 onTtsStart 鐨?sessionId 绛変簬 ASR session id锛屼緥濡?1967633锛夈€? *
 * 鍥犳鏈簱瑁呬袱涓彧璇?inline hook锛? *   1) TtsManager::playTts        鈥斺€?鍚庣疆锛氳杩斿洖鍊硷紱鑻ヨ皟鐢ㄦ柟鏄?Binder 绾跨▼锛屾妸
 *                                    (id, text) 璁板叆"鎴戞柟鍏佽闆?锛? *   2) TtsManager::onTtsStart     鈥斺€?鍓嶇疆锛歩d 鎴?text 鍛戒腑鍏佽闆?-> 鍘熸牱鏀捐锛? *                                    鍚﹀垯涓嶈皟鐢ㄥ師鍑芥暟锛堥煶棰戦摼鏍规湰涓嶄細寤虹珛锛夊苟璁拌处銆? *
 * 鏄庣‘涓嶇鐨勪笢瑗匡細
 *   - 鍞ら啋鎻愮ず闊宠蛋 prompt 鎾斁閾撅紙AudioManager::playPrompt / player:prompt锛夛紝
 *     涓嶇粡杩?onTtsStart锛屽洜姝ゅ師鍘傝繖娆℃敼鍔ㄥ悗浠嶇劧姝ｅ父锛? *   - 涓嶅叧 TTS 鏈嶅姟銆佷笉鏀归煶閲?闈欓煶銆佷笉鍔?AudioFlinger/PCM锛? *   - 涓嶅啓鍘熷巶 APK銆佷笉鏀?system/boot/vendor锛? *   - 涓?T6-01 libtg_hook.so 瀹屽叏鐙珛锛氫笉鍚岀殑 .so銆佷笉鍚岀殑琛ヤ竵鐐癸紝鍙垎鍒鍗搞€? *
 * ABI锛氫笌 libtg_hook.so 鍚屽悕鍚岀鍚嶏紙tg_hook_prepare/install/uninstall/status/
 * last_error/stats/hooked/patch_lo/patch_hi锛夛紝鍥犳**涓嶉渶瑕佹敼宸查獙鏀剁殑 Injector**锛? * 鐩存帴 tg_injector --so libtg_ttsguard.so 鍗冲彲瑁呭嵏銆? *
 * 澶辫触绛栫暐锛氭ā鍧?绗﹀彿/鍋忕Щ/搴忚█浠讳綍涓€椤逛笉鍖归厤灏辨嫆缁濆畨瑁咃紙缁濅笉"灏藉姏鑰屼负"鐚滃湴鍧€锛夈€? */
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
#include <sys/syscall.h>
#include <sys/types.h>
#include <time.h>
#include <unistd.h>

#define TG_MODULE      "libsmartbox.so"
#define TG_LOG_TAG     "tgt"

/* 鎴戞柟鍏ュ彛锛歍tsManager::playTts(ITtsClient::_TtsInfo_ const*) */
#define TG_SYM_PLAY    "_ZN9AliAiLabs4AGUI10TtsManager7playTtsEPKNS0_10ITtsClient9_TtsInfo_E"
#define TG_OFF_PLAY    0x11fafcu
#define TG_PRO_PLAY0   0xE92D4BF0u   /* push {r4,r5,r6,r7,r8,r9,fp,lr} */
#define TG_PRO_PLAY1   0xE28DB018u   /* add  fp, sp, #24 */

/* 姹囧悎鐐癸細TtsManager::onTtsStart(int, ITtsClient::TtsResponseInfo const*) */
#define TG_SYM_START   "_ZN9AliAiLabs4AGUI10TtsManager10onTtsStartEiPKNS0_10ITtsClient15TtsResponseInfoE"
#define TG_OFF_START   0x11f110u
#define TG_PRO_START0  0xE92D4FF0u   /* push {r4-r11,lr} */
#define TG_PRO_START1  0xE28DB01Cu   /* add  fp, sp, #28 */

/* 缁撴瀯浣撳瓧娈靛亸绉伙紙鐢?libsmartbox.so 鍙嶆眹缂栫‘璁わ紝瑙佹姤鍛?搂1.3锛夛細
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

/* 鍏佽闆嗭細鎴戞柟 playTts 杩斿洖鐨?sessionId + 鏂囨湰鎸囩汗 */
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

/* ---------------- 缁熻锛堝師瀛愶紝璇讳晶鍙兘鐪嬪埌涓棿鍊硷紝澶熺敤锛?---------------- */
static volatile unsigned long g_seen_play;      /* playTts 琚皟鐢ㄦ鏁?*/
static volatile unsigned long g_ours;           /* 鍒ゅ畾涓烘垜鏂癸紙Binder 绾跨▼ + id>0锛?*/
static volatile unsigned long g_not_ours;       /* playTts 浣嗚皟鐢ㄦ柟涓嶆槸 Binder 绾跨▼ */
static volatile unsigned long g_seen_start;     /* onTtsStart 琚皟鐢ㄦ鏁?*/
static volatile unsigned long g_allowed;        /* onTtsStart 鏀捐 */
static volatile unsigned long g_dropped;        /* onTtsStart 鎷︽埅锛堝師鍘備富鍔ㄥ洖绛旓級 */
static volatile unsigned long g_hit_id;         /* 鎸?sessionId 鍛戒腑 */
static volatile unsigned long g_hit_text;       /* 鎸夋枃鏈懡涓?*/
static volatile unsigned long g_empty;          /* 绌烘枃鏈?绌烘寚閽堬紙涓嶆嫤鎴紝鏀捐锛?*/

/* T7-04锛氬師鍘傚熀纭€鎸囦护鏀捐锛堝疄鐜拌鏈枃浠?鍘熷巶鍩虹鎸囦护鏀捐"涓€鑺傦級 */
#define TG_NATIVE_FILE_DEFAULT "/data/local/tmp/t5_bridge/work/native_route.public.json"
#define TG_NATIVE_CACHE_MS     250
#define TG_NATIVE_FILE_MAX     512

typedef struct {
    int       valid;
    long long exp_ms;
    long long session;
    char      intent[24];
    long long read_at_ms;
} native_allow_t;

static char          g_native_path[256];
static int           g_native_enabled = 1;
static native_allow_t g_native;
static volatile unsigned long g_native_allowed;
static volatile unsigned long g_native_reads;
static volatile unsigned long g_native_errors;
static volatile unsigned long g_native_expired;

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

/* --------------------------------------------------------------- 鍏佽闆?*/

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
        /* 鏋佺煭鑷棆锛涙寔鏈夎€呭彧鍋氬嚑鍗佸瓧鑺傛嫹璐?*/
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
        /* 涓嶈鎴柇鍦ㄥ瀛楄妭搴忓垪涓棿 */
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

/* 鍛戒腑杩斿洖 1锛?by_id 鏍囨槑鍛戒腑鏂瑰紡 */
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

/* T7-04锛氬師鍘傚熀纭€鎸囦护鏀捐鐨勫垽瀹氾紙瀹炵幇瑙佹湰鏂囦欢"鍘熷巶鍩虹鎸囦护鏀捐"涓€鑺傦級 */
static int native_allow_hit(int id, int *by_session);

/* ------------------------------------------------------- 璋冪敤绾跨▼韬唤 */
/* 鎴戜滑鍙戣捣鎾姤鐨勮皟鐢ㄧ嚎绋嬫槸 ContentProvider 鐨?Binder 绾跨▼锛坈omm = "Binder:<pid>_<n>"锛夈€? * 鍘熷巶鑷繁椹卞姩鐨勫洖绛旀潵鑷畠鐨勫伐浣滅嚎绋嬶紙Protocol/Playback/AudioState 绛夛級锛宑omm 涓嶆槸 Binder銆?*/
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

/* Hook 1 鍚庣疆鍥炶皟锛歳v = TtsManager::playTts 鐨勮繑鍥炲€硷紝text = TtsInfo.text */
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

/* Hook 2 鍓嶇疆鍥炶皟锛? = 鏀捐锛? = 鎷︽埅 */
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
        /* 娌℃湁浠讳綍鍙垽瀹氫俊鎭細涓嶇锛屼氦缁欏師鍘傦紙瀹佸彲澶氭挱涓€娆′篃涓嶈璇激鐘舵€佹満锛?*/
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

    /* T7-04锛氳繖鏉″師鍘傚洖绛旀槸涓嶆槸閽堝涓€鏉?route=native 鐨勫熀纭€鎸囦护锛堥煶閲?澶╂皵/鍏冲睆/鏃堕棿锛夛紵
     * 鏄氨鏀捐 鈥斺€?鍘熷巶鑷繁鐨勫洖绛斿繀椤昏兘鎾嚭鏉ワ紝瀹堝崼鍙嫤"鍘熷巶鏇挎櫘閫氬璇濇姠绛?銆?*/
    {
        int by_session = 0;

        if (native_allow_hit(id, &by_session)) {
            INC(g_native_allowed);
            slog("onTtsStart ALLOW id=%d by=native_%s intent=%s exp_ms=%lld streaming=%u "
                 "text_bytes=%d",
                 id, by_session ? "session" : "window", g_native.intent, g_native.exp_ms,
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

/* ------------------------------------------------- T7-04锛氬師鍘傚熀纭€鎸囦护鏀捐
 *
 * 鑳屾櫙锛歍7-02 鐨勫畧鍗妸"鎵€鏈夋病缁忚繃鎴戞柟 playTts 鐨勫師鍘傚洖绛?閮芥嫤鎺変簡銆? * 浣嗛煶閲?澶╂皵/鍏冲睆/鏃堕棿杩欏洓绫绘寚浠わ紝Worker 渚у凡缁忔爣鎴?route=native锛? * 鐢卞師鍘傝嚜宸卞洖绛?鈥斺€?杩欐椂鍘熷巶鍥炵瓟蹇呴』鏀捐锛屽惁鍒欑敤鎴疯浜?鐜板湪鍑犵偣"鍗存病鏈変换浣曞洖搴斻€? *
 * 鍒ゅ畾渚濇嵁鍙湁涓€涓枃浠讹紙Worker 鍐欏畬鍐嶅師瀛?rename锛屾墍浠ヨ鍒扮殑姘歌繙鏄畬鏁翠竴浠斤級锛? *   /data/local/tmp/t5_bridge/work/native_route.public.json
 *   {"version":1,"wall_ms":..,"exp_ms":..,"session":"1969141","event_id":"..",
 *    "intent":"time","rule":"time.keyword"}
 *
 * 瑙勫垯锛堜袱鏉★紝閮借姹傛病杩?exp_ms锛夛細
 *   1) onTtsStart 鐨?sessionId == 鏂囦欢閲岀殑 session锛堟渶寮鸿瘉鎹細鍘熷巶鍥炵瓟閽堝鐨勬槸杩欐潯 ASR 浼氳瘽锛? *   2) 浼氳瘽 id 瀵逛笉涓婃椂锛屽彧瑕佽繕鍦ㄦ湁鏁堟湡鍐呭氨鏀捐 鈥斺€?鍘熷巶鐨勪簯绔簲绛斿彲鑳芥崲涓€涓?id锛? *      浣?鍒氬垰鎵嶆湁涓€鏉?route=native"杩欎釜浜嬪疄浠嶇劧鎴愮珛銆? * 鏂囦欢璇诲彇鍋氫簡 250 ms 缂撳瓨锛屼笖鍙湪 onTtsStart 鏃跺彂鐢燂紙涓€娆￠棶绛斾竴娆★級锛屼笉杩涚儹璺緞銆? */


static long long mono_ms(void)
{
    struct timespec ts;

    if (clock_gettime(CLOCK_MONOTONIC, &ts) != 0) return 0;
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

/* 鏋佺畝 JSON 鍙栧€硷細鏂囦欢鍙湁涓€琛屻€佸瓧娈靛浐瀹氾紝涓嶉渶瑕佸畬鏁磋В鏋愬櫒 */
static int json_str(const char *buf, const char *key, char *out, size_t cap)
{
    char pat[64];
    const char *p;
    const char *e;
    size_t n;

    if (out == NULL || cap == 0) return -1;
    out[0] = '\0';
    snprintf(pat, sizeof(pat), "\"%s\":\"", key);
    p = strstr(buf, pat);
    if (p == NULL) return -1;
    p += strlen(pat);
    e = strchr(p, '"');
    if (e == NULL) return -1;
    n = (size_t)(e - p);
    if (n >= cap) n = cap - 1;
    memcpy(out, p, n);
    out[n] = '\0';
    return 0;
}

static long long json_ll(const char *buf, const char *key, long long dflt)
{
    char pat[64];
    const char *p;

    snprintf(pat, sizeof(pat), "\"%s\":", key);
    p = strstr(buf, pat);
    if (p == NULL) return dflt;
    p += strlen(pat);
    return (long long)strtoll(p, NULL, 10);
}

static void native_reload(long long now)
{
    char buf[TG_NATIVE_FILE_MAX];
    int fd;
    ssize_t n;

    g_native.valid = 0;
    g_native.exp_ms = 0;
    g_native.session = 0;
    g_native.intent[0] = '\0';
    g_native.read_at_ms = now;

    if (!g_native_enabled || g_native_path[0] == '\0') return;

    INC(g_native_reads);
    fd = open(g_native_path, O_RDONLY);
    if (fd < 0) return;                    /* 娌℃湁鏍囪 = 娌℃湁 route=native锛堟甯告儏鍐碉級 */
    n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) { INC(g_native_errors); return; }
    buf[n] = '\0';

    g_native.exp_ms = json_ll(buf, "exp_ms", 0);
    {
        char sess[32];
        if (json_str(buf, "session", sess, sizeof(sess)) == 0 && sess[0] != '\0') {
            g_native.session = strtoll(sess, NULL, 10);
        }
    }
    (void)json_str(buf, "intent", g_native.intent, sizeof(g_native.intent));
    g_native.valid = (g_native.exp_ms > 0);
}

/* 0 = 涓嶆斁琛岋紱1 = 鏀捐锛?by_session 鏍囨槑鏄惁鎸?sessionId 鍛戒腑 */
static int native_allow_hit(int id, int *by_session)
{
    long long now_wall;
    struct timespec ts;

    if (by_session != NULL) *by_session = 0;
    if (!g_native_enabled) return 0;

    if (!g_native.valid || mono_ms() - g_native.read_at_ms > TG_NATIVE_CACHE_MS) {
        native_reload(mono_ms());
    }
    if (!g_native.valid) return 0;

    /* 鏈夋晥鏈熺敤澧欓挓姣旇緝锛歐orker 鍐欑殑 exp_ms 鏄閽熸绉掞紝涓よ€呭悓涓€鏃堕挓鍩?*/
    if (clock_gettime(CLOCK_REALTIME, &ts) != 0) return 0;
    now_wall = (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
    if (now_wall > g_native.exp_ms) {
        INC(g_native_expired);
        return 0;
    }
    if (id > 0 && g_native.session > 0 && (long long)id == g_native.session) {
        if (by_session != NULL) *by_session = 1;
    }
    return 1;
}

/* ------------------------------------------------------- 妯″潡涓庣鍙峰畾浣?*/

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

/* 鍦ㄥ凡鍔犺浇妯″潡鐨勫唴瀛橀暅鍍忛噷瑙ｆ瀽 dynsym锛堜笌 T6-01 鍚屼竴濂楀仛娉曪級 */
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
 * stub 椤靛竷灞€锛堝叏閮?ARM 鎸囦护銆亀ord 瀵归綈锛涘瓧闈㈤噺閮戒笌浣跨敤鐐瑰悓椤靛唴鍋忕Щ锛夛細
 *
 * playTts锛堝悗缃細鍏堣窇鍘熷嚱鏁帮紝鍐嶆妸杩斿洖鍊间氦缁欏洖璋冿紝鏈€鍚庢妸 rv 閫佸洖璋冪敤鏂癸級
 *   +0x00 E92D407F  push {r0,r1,r2,r3,r4,r5,r6,lr}
 *   +0x04 E59F4024  ldr  r4, [pc, #0x24]   ; r4 = cb
 *   +0x08 E59F5024  ldr  r5, [pc, #0x24]   ; r5 = trampoline
 *   +0x0C E12FFF35  blx  r5                ; r0 = 鍘熷嚱鏁拌繑鍥炲€硷紙鍙傛暟浠嶆槸鍘熸牱鐨?r0-r3 鍘嬫爤澶嶇敤鐨勫€硷級
 *   +0x10 E1A06000  mov  r6, r0
 *   +0x14 E59D1004  ldr  r1, [sp, #4]      ; 鍘?r1 = TtsInfo*
 *   +0x18 E5911004  ldr  r1, [r1, #4]      ; TtsInfo.text
 *   +0x1C E1A00006  mov  r0, r6
 *   +0x20 E12FFF34  blx  r4                ; cb(rv, text)
 *   +0x24 E58D6000  str  r6, [sp, #0]      ; 瑕嗙洊淇濆瓨鐨?r0 -> pop 鍚?r0 = rv
 *   +0x28 E8BD407F  pop  {r0,r1,r2,r3,r4,r5,r6,lr}
 *   +0x2C E12FFF1E  bx   lr
 *   +0x30 <cb>
 *   +0x34 <trampoline>
 *   trampoline(+0x80)锛氬師鍘備袱鏉℃寚浠?+ ldr pc,[pc,#-4] + func+8
 *
 * onTtsStart锛堝墠缃細鍏堥棶鍥炶皟锛屽洖璋冭 0 灏辩洿鎺ヨ繑鍥?0锛岄煶棰戦摼涓嶄細寤虹珛锛? *   +0x100 E92D401F  push {r0,r1,r2,r3,r4,lr}
 *   +0x104 E59F401C  ldr  r4, [pc, #0x1C]  ; r4 = cb
 *   +0x108 E12FFF34  blx  r4               ; cb(self, id, info) 鈥斺€?鍙傛暟鍘熸牱
 *   +0x10C E3500000  cmp  r0, #0
 *   +0x110 0A000001  beq  +0x11C           ; 鎷︽埅
 *   +0x114 E8BD401F  pop  {r0,r1,r2,r3,r4,lr}
 *   +0x118 E59FF010  ldr  pc, [pc, #0x10]  ; 鏀捐锛氬瓧闈㈤噺鍦?+0x130
 *   +0x11C E3A00000  mov  r0, #0           ; 鎷︽埅璺緞锛氳繑鍥炲€?0
 *   +0x120 E59D4010  ldr  r4, [sp, #16]    ; 杩樺師 r4锛堣璋冪敤鑰呬繚瀛橈級
 *   +0x124 E28DD018  add  sp, sp, #24      ; 閫€鍥炲叏閮?6 涓帇鏍堝瓧锛堝皯閫€涓€涓氨姣佹帀璋冪敤鏂规爤锛? *   +0x128 E12FFF1E  bx   lr
 *   +0x12C <cb>
 *   +0x130 <trampoline>
 *   trampoline(+0x180)锛氬師鍘備袱鏉℃寚浠?+ ldr pc,[pc,#-4] + func+8
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
    /* s[13] = trampoline锛屼笅闈㈠～ */

    /* playTts trampoline锛氬師鍘傚墠涓ゆ潯 + 璺冲洖 func+8 */
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
    s[0]  = 0xE92D401Fu;                 /* push {r0-r4,lr} 锛? 瀛?= 24 B锛宻p 浠?8 瀛楄妭瀵归綈锛?*/
    s[1]  = 0xE59F4020u;                 /* ldr r4,[pc,#0x20] -> s[11] = cb */
    s[2]  = 0xE12FFF34u;                 /* blx r4 ; cb(self,id,info) */
    s[3]  = 0xE3500000u;                 /* cmp r0,#0 */
    s[4]  = 0x0A000001u;                 /* beq +0x8 -> s[7] (鎷︽埅) */
    s[5]  = 0xE8BD401Fu;                 /* pop {r0-r4,lr}  鏀捐 */
    s[6]  = 0xE59FF010u;                 /* ldr pc,[pc,#0x10] -> s[12] = trampoline */
    s[7]  = 0xE3A00000u;                 /* mov r0,#0 (鎷︽埅璺緞锛氳繑鍥炲€?0) */
    s[8]  = 0xE59D4010u;                 /* ldr r4,[sp,#16]锛氳繕鍘熻璋冪敤鑰呬繚瀛樺瘎瀛樺櫒 */
    s[9]  = 0xE28DD018u;                 /* add sp,sp,#24锛氭妸 6 涓帇鏍堝瓧鍏ㄩ儴閫€鍥?*/
    s[10] = 0xE12FFF1Eu;                 /* bx lr */
    s[11] = (uint32_t)(uintptr_t)&tg_start_pre;
    s[12] = g_tramp_start;               /* 鏀捐 -> trampoline */

    /* onTtsStart trampoline锛氬師鍘傚墠涓ゆ潯 + 璺冲洖 func+8 */
    t = (uint32_t *)(uintptr_t)g_tramp_start;
    t[0] = g_orig_start[0];
    t[1] = g_orig_start[1];
    t[2] = TG_PATCH_JUMP;
    t[3] = g_func_start + 8;

    __builtin___clear_cache((char *)g_stub_page, (char *)g_stub_page + TG_STUB_PAGE);

    /* 蹇呴』鎶?stub 椤垫敼鎴愬彲鎵ц锛歮map 鍑烘潵鐨勯〉鍙湁 RW锛岃烦杩涘幓灏辨槸 SIGSEGV銆?     * 鍏堣瘯 RX锛堟渶灏忔潈闄愶級锛屼笉琛屽啀閫€鍒?RWX锛圓ndroid 8.1 + permissive SELinux 瀹炴祴鍏佽锛夈€?*/
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
    /* 鍏堝啓瀛楅潰閲忓啀鍐欒烦杞細椤哄簭鍙嶄簡浼氳烦鍒板瀮鍦惧湴鍧€ */
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

/* 琛ヤ竵绐楀彛 = 涓や釜鍏ュ彛鐨勫苟闆嗭紙Injector 鐢ㄥ畠鍋?娌℃湁绾跨▼鍋滃湪琛ヤ竵閲?鐨勪繚瀹堟鏌ワ級 */
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

    /* 椤哄簭锛氬厛瑁?onTtsStart锛堟嫤鎴級锛屽啀瑁?playTts锛堣璐︼級銆?     * 杩欐牱鍗充娇 playTts 瀹夎澶辫触锛屼篃涓嶄細鍑虹幇"鍙璐︿笉鎷︽埅"鐨勫崐鎴愬搧鐘舵€佽褰撴垚鎴愬姛銆?*/
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
    static char buf[360];

    snprintf(buf, sizeof(buf),
             "state=%d hooked=%d play=%d start=%d func_play=%08x func_start=%08x "
             "play_seen=%lu ours=%lu not_ours=%lu start_seen=%lu allowed=%lu dropped=%lu "
             "hit_id=%lu hit_text=%lu empty=%lu native_allowed=%lu native_reads=%lu "
             "native_expired=%lu native_file=%s",
             g_state, g_patched ? 1 : 0, g_hooked_play, g_hooked_start,
             g_func_play, g_func_start,
             GET(g_seen_play), GET(g_ours), GET(g_not_ours),
             GET(g_seen_start), GET(g_allowed), GET(g_dropped),
             GET(g_hit_id), GET(g_hit_text), GET(g_empty),
             GET(g_native_allowed), GET(g_native_reads), GET(g_native_expired),
             g_native_path[0] != '\0' ? g_native_path : "(disabled)");
    return buf;
}

/* 搴撳姞杞芥椂涓嶅仛浠讳綍浜嬶細瀹夎鍔ㄤ綔鐢?Injector 鏄惧紡璋冪敤 tg_hook_install()銆?*/
__attribute__((constructor)) static void tg_ctor(void)
{
    const char *env = getenv("TG_NATIVE_ROUTE_FILE");

    if (env != NULL && env[0] != '/') env = NULL;      /* 鍙帴鍙楃粷瀵硅矾寰?*/
    snprintf(g_native_path, sizeof(g_native_path), "%s",
             env != NULL ? env : TG_NATIVE_FILE_DEFAULT);
    {
        const char *off = getenv("TG_TTSGUARD_NATIVE");
        if (off != NULL && off[0] == '0') g_native_enabled = 0;
    }
    slog("libtg_ttsguard.so loaded (pid=%d); waiting for tg_hook_install() "
         "(native_allow=%d file=%s)", (int)getpid(), g_native_enabled, g_native_path);
}
