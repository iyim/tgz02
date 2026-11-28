/*
 * intent_route.h -- T7-04 本地意图优先路由（纯规则、纯本地、不调用任何原厂 Native 函数）
 *
 * 为什么要有这一层：
 *   设备原厂本来就有音量 / 天气 / 关屏 / 时间这类基础语音能力，云端 NLU 直接答，
 *   不需要大模型参与。T7-02 之后我们把原厂回答屏蔽掉、只播 AI 的回答，结果是
 *   "帮我调大音量"这种命令被送去模型，模型既不能真的调音量，又会和原厂抢答。
 *
 * 做法（本文件只做判定，不做执行）：
 *   1) 先把 ASR 文本归一化（复用 echo_filter 的 ef_normalize / ef_strip_fillers：
 *      去空白/标点/控制字符、拉丁字母转小写、保留汉字与数字，并去掉唤醒词与语气词）；
 *   2) 按"规则表 + 必要条件/否决条件"分类到 volume / weather / screen_off / screen_on / time；
 *   3) 命中就由 Worker 标 route=native：既不请求模型，也不重复说话，
 *      让原厂自己的链路回答（同时写放行标记，让 TTS 守卫保留这条原厂回答）。
 *
 * 设计原则（对应任务书 §4 路由实现要求 5/6/7）：
 *   - 规则可维护：一条意图 = 一张关键词表 + 一张否决表，加词不用改逻辑；
 *   - 覆盖口语与同义说法，不是单一固定句；数字表达（全角/半角）都认；
 *   - 判不准就不拦：只有明确命中才返回 1，其余一律返回 0 继续走大模型；
 *   - 纯函数，无状态、无 I/O，可在 host 上直接单测（tests/t7_04_route_unit_test.c）。
 */
#ifndef T7R4_INTENT_ROUTE_H
#define T7R4_INTENT_ROUTE_H

#include <stddef.h>

#include "echo_filter.h"

#define IR_TEXT_MAX    EF_TEXT_MAX
#define IR_RULE_MAX    40
#define IR_ARG_MAX     24
#define IR_NOTE_MAX    16

typedef enum {
    IR_NONE = 0,
    IR_VOLUME = 1,
    IR_WEATHER = 2,
    IR_SCREEN_OFF = 3,
    IR_TIME = 4,
    IR_SCREEN_ON = 5,    /* 任务书要求"至少"四类；开屏同属原厂屏幕能力，顺手一起管 */
    IR_MEDIA = 6,        /* 播放控制（下一首/继续/播放…）：原厂技能本来就管，不该让模型抢答 */
    IR_STOP = 7,         /* 打断播报（停止/暂停/别说了）：第一效果是立刻静音，不是让模型解释 */
    IR_EXIT = 8,         /* T8-12.20：退出对话（退出/退出一下/结束对话）——原厂 exitTalk 的触发语，
                          * 之前没有这条规则导致 DECIDE 下被当 AI 拦下，原厂退出链路走不到 */
    IR_DEVICE_STATUS = 9,/* T8-14.2：设备自身状态（电量/运行时长）。**原厂没有这个能力**，
                          * 因此不分配 route 位（ir_route_bit 返回 0）：命中后只可能是
                          * 自有技能接管或回落 AI，绝不会被"放行给原厂"。 */
    IR_ALARM = 10        /* T9-16：闹钟/提醒（定闹钟/叫我起床/设个提醒）。
                          * T9-19d（用户要求"回归原厂闹钟"）：重新分配 route 位
                          * T7B_ROUTE_ALARM(0x100)，位一旦被 mask 打开，hook 就 PASS 给
                          * 原厂 NLU（原厂执行并播报），worker 不再注册闹钟技能。 */
} ir_intent;

typedef struct {
    ir_intent intent;             /* IR_NONE = 没有命中任何本地指令 */
    char      rule[IR_RULE_MAX];  /* 命中的规则名，写日志用，例如 volume.mute */
    char      arg[IR_ARG_MAX];    /* volume 的参数：up / down / set:30 / mute / unmute */
    /* T7-05-R1：命中意图 ≠ 可以执行。"音量调到百分之"命中了 volume，但参数不完整，
     * 拿去执行会让原厂按它自己的理解把音量设成 100。只有 complete=1 才允许
     * 写放行标记、交给原厂执行；complete=0 的走 AI 澄清。 */
    int       complete;           /* 1 = 参数/语义完整，可执行 */
    char      note[IR_NOTE_MAX];  /* 不完整原因：dangling / ambiguous-qty / ... */
} ir_result;

/* 本地意图路由的位掩码（worker.conf 的 route_intents=volume,time,...）
 * 放在这里而不是 ai_worker.h：utterance_gate 也要用同一套位做"完整指令快路"，
 * 而它不应该依赖整个 Worker 头文件。 */
#define T7B_ROUTE_VOLUME     0x01
#define T7B_ROUTE_WEATHER    0x02
#define T7B_ROUTE_SCREEN_OFF 0x04
#define T7B_ROUTE_TIME       0x08
#define T7B_ROUTE_SCREEN_ON  0x10
#define T7B_ROUTE_MEDIA      0x20
#define T7B_ROUTE_STOP       0x40
#define T7B_ROUTE_EXIT       0x80   /* T8-12.20：退出对话位。T7B_ROUTE_ALL 由 0x7F 扩到 0xFF，
                                     * worker_conf 的掩码校验（~T7B_ROUTE_ALL）与 libtg_hook 的
                                     * env 上限校验都引用 ALL，必须同步扩大。 */
#define T7B_ROUTE_ALARM      0x100  /* T9-19d：闹钟位。打开 = 放行原厂闹钟（PASS）。 */
#define T7B_ROUTE_ALL        0x1FF  /* T9-19d：恢复 T9-15 的 1FF；worker_conf 的掩码校验
                                     * （~T7B_ROUTE_ALL）与 libtg_hook 的 env 上限校验都
                                     * 引用 ALL，必须同步。 */

/* 判定一条 ASR 文本：1 = 属于原厂基础指令（route=native），0 = 不是（route=ai） */
int ir_classify(const char *text, ir_result *out);

/* 意图对应的路由位（未知意图返回 0） */
int ir_route_bit(ir_intent it);

/* 同上，但输入已经是 ir_normalize() 的结果（host 单测与内部复用） */
int ir_classify_norm(const char *norm, ir_result *out);

/* 归一化：ef_normalize + ef_strip_fillers，结果写进 out 并返回长度 */
int ir_normalize(const char *text, char *out, size_t cap);

const char *ir_intent_name(ir_intent it);
int ir_intent_from_name(const char *name);

#endif /* T7R4_INTENT_ROUTE_H */
