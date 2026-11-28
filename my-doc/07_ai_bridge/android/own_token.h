/*
 * own_token.h -- T9-29 (P1)：决策令牌（Worker 与 Hook 共用同一份实现）
 *
 * 为什么需要它：
 *   "Worker 认为 Hook 会 TAKE" 不等于"Hook 对这一条真的 TAKE 了"。
 *   审查意见 §二 明确要求 event_id + gen + decision 的关联验证。
 *   桥接端生成 event_id，Hook 侧看不到它，所以令牌用 Hook 和 Worker **都有**的三样东西算：
 *     session_id + 原始文本（截到 511B，与 tg_wire 的发送上限一致）+ gen
 *
 * 铁律：两侧必须字节级一致。所以这个函数只有一份实现，编进两个二进制（同 intent_route.c）。
 * 任何归一化（去语气词/转小写）都**不许**在这里做 —— 两侧归一化时机不同会立刻失配。
 */
#ifndef T9_29_OWN_TOKEN_H
#define T9_29_OWN_TOKEN_H

#include <stddef.h>

#define OWN_TOK_MAX 9      /* 8 hex + NUL */

/* 文本参与哈希的字节上限（与 hook_agent/tg_wire.h 的 TG_MAX_TEXT_BYTES 对齐） */
#define OWN_TOK_TEXT_CAP 511

/* 计算令牌：fnv1a64(session || 0x1f || text[0..min(len,511)] || 0x1f || gen)
 * 输出 8 位小写 hex + NUL。out 容量需 >= OWN_TOK_MAX。 */
int  own_token(const char *session, const char *text, long long gen,
               char *out, size_t cap);

#endif /* T9_29_OWN_TOKEN_H */
