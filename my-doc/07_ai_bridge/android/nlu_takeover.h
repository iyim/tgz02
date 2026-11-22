/*
 * nlu_takeover.h -- T8-01：会话级 NLU/CDM 接管判据（纯逻辑，无 I/O，可在 host 上单测）
 *
 * 背景（证据见 asr_independent/T8-01_NLU_CDM_TAKEOVER.md）：
 *   云端 ASR + 云端 NLU 是同一条 WSS 会话的两段；本地看到的 NLU 结果只有两个入口，
 *   最后都汇到 AliAiLabs::AGUI::SessionDispatch::onNlpResult(int, int, NlpResult*)
 *   （libsmartbox.so 偏移 0x118ebc）。它再往下才是
 *     onRouterDetailInfo -> playAudios(AudioManager::processMediaCommand) -> processCommand
 *   也就是"原厂技能真的被执行"的地方。TTS Guard 挂的是 TtsManager::playTts /
 *   onTtsStart —— 在技能之后，所以只挡声音、不挡副作用。
 *
 * 本模块解决的问题：给定一条 final 文本，判定这条"会话"归谁，并记住它；
 * 等该会话的 NLU 结果到达时，把"我方会话"的结果丢掉，原厂的 CDM/技能就不会执行。
 *
 * 设计约束（对应任务书 §4）：
 *   - 复用现有 intent_route 的规则判定，不写第二套分流逻辑；
 *   - 只有"明确命中且参数完整"的本地指令才放行给原厂；其余一律由我方接管（判不准不拦的
 *     反面：判不准就接管——因为 AI 路径本来就能兜底，而放行原厂会让技能副作用失控）；
 *   - 未登记的会话一律放行（宁可原厂答，不可误伤原厂本地指令）；
 *   - 有 TTL：一条 final 的 NLU 结果最多等 T8_TO_TTL_MS，过期就不再拦；
 *   - 会话结束/退出显式清理，槽位有限（T8_TO_SLOTS）且可回收。
 */
#ifndef T8_NLU_TAKEOVER_H
#define T8_NLU_TAKEOVER_H

#include <stddef.h>

#define T8_TO_SLOTS        8
#define T8_TO_SESSION_MAX  40
#define T8_TO_RULE_MAX     24
#define T8_TO_INTENT_MAX   16
#define T8_TO_TTL_MS       30000

typedef enum {
    T8_TO_PASS = 0,   /* 交给原厂：NLU 结果照常进入 CDM，本地技能照常执行 */
    T8_TO_TAKE = 1    /* 我方接管：该会话的 NLU 结果必须被丢弃 */
} t8_to_decision;

typedef enum {
    T8_TO_WHY_NONE = 0,
    T8_TO_WHY_AI = 1,             /* 不是本地指令（IR_NONE） */
    T8_TO_WHY_AI_INCOMPLETE = 2,  /* 命中意图但参数不完整，交给 AI 澄清 */
    T8_TO_WHY_AI_INTENT_OFF = 3   /* 命中了意图，但该意图当前未启用本地路由 */
} t8_to_why;

typedef struct {
    int       used;
    char      session[T8_TO_SESSION_MAX];
    long long deadline_ms;
    int       drops;                  /* 该会话被丢弃的 NLU 结果次数（诊断） */
    char      intent[T8_TO_INTENT_MAX];
    char      rule[T8_TO_RULE_MAX];
    t8_to_why why;
} t8_to_slot;

typedef struct {
    t8_to_slot    slot[T8_TO_SLOTS];
    unsigned long marked;     /* 判定为接管并登记的会话次数 */
    unsigned long passed;     /* 判定为放行（本地指令）的次数 */
    unsigned long dropped;    /* 实际丢弃的 NLU 结果次数 */
    unsigned long expired;    /* 因 TTL 过期而不再拦截的次数 */
    unsigned long unknown;    /* 未登记会话的 NLU 结果（放行）次数 */
} t8_to_state;

void t8_to_init(t8_to_state *st);

/*
 * onStream(isFinished=1) 时调用：判定并登记。
 *   route_mask：worker.conf 里启用的本地意图位掩码（T7B_ROUTE_*），0 = 全都算未启用。
 *   返回值：T8_TO_PASS = 这条会话归原厂；T8_TO_TAKE = 归我方（已登记）。
 */
t8_to_decision t8_to_on_final(t8_to_state *st, const char *session, const char *text,
                              long long now_ms, int route_mask, t8_to_why *out_why);

/* SessionDispatch::onNlpResult 时调用：1 = 丢弃（我方会话），0 = 放行原厂 */
int t8_to_should_drop(t8_to_state *st, const char *session, long long now_ms);

/* 会话结束（onStopTalk / exitTalk / 我方回复完成）：清掉登记 */
void t8_to_on_session_end(t8_to_state *st, const char *session);

/* 清理过期槽位，返回清理条数 */
int t8_to_purge(t8_to_state *st, long long now_ms);

/* 诊断：当前被接管的会话数 / 槽位占用 */
int t8_to_active(const t8_to_state *st, long long now_ms);

const char *t8_to_why_name(t8_to_why why);

#endif /* T8_NLU_TAKEOVER_H */
