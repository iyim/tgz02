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

typedef enum {
    IR_NONE = 0,
    IR_VOLUME = 1,
    IR_WEATHER = 2,
    IR_SCREEN_OFF = 3,
    IR_TIME = 4,
    IR_SCREEN_ON = 5,    /* 任务书要求"至少"四类；开屏同属原厂屏幕能力，顺手一起管 */
    IR_MEDIA = 6         /* 播放控制（暂停/继续/下一首…）：原厂技能本来就管，不该让模型抢答 */
} ir_intent;

typedef struct {
    ir_intent intent;             /* IR_NONE = 没有命中任何本地指令 */
    char      rule[IR_RULE_MAX];  /* 命中的规则名，写日志用，例如 volume.mute */
    char      arg[IR_ARG_MAX];    /* volume 的参数：up / down / set:30 / mute / unmute */
} ir_result;

/* 判定一条 ASR 文本：1 = 属于原厂基础指令（route=native），0 = 不是（route=ai） */
int ir_classify(const char *text, ir_result *out);

/* 同上，但输入已经是 ir_normalize() 的结果（host 单测与内部复用） */
int ir_classify_norm(const char *norm, ir_result *out);

/* 归一化：ef_normalize + ef_strip_fillers，结果写进 out 并返回长度 */
int ir_normalize(const char *text, char *out, size_t cap);

const char *ir_intent_name(ir_intent it);
int ir_intent_from_name(const char *name);

#endif /* T7R4_INTENT_ROUTE_H */
