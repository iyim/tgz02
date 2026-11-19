/*
 * t5_state.c -- 任务状态名的字符串映射
 */
#include "t5_types.h"

#include <string.h>

const char *t5_state_name(t5_state s)
{
    switch (s) {
    case T5_DISCOVERED: return "DISCOVERED";
    case T5_VALIDATING: return "VALIDATING";
    case T5_PENDING:    return "PENDING";
    case T5_PROCESSING: return "PROCESSING";
    case T5_SUCCEEDED:  return "SUCCEEDED";
    case T5_FAILED:     return "FAILED";
    case T5_RETRY:      return "RETRY";
    default:            return "?";
    }
}

int t5_state_from_name(const char *s, t5_state *out)
{
    static const struct { const char *n; t5_state v; } tbl[] = {
        { "DISCOVERED", T5_DISCOVERED },
        { "VALIDATING", T5_VALIDATING },
        { "PENDING",    T5_PENDING },
        { "PROCESSING", T5_PROCESSING },
        { "SUCCEEDED",  T5_SUCCEEDED },
        { "FAILED",     T5_FAILED },
        { "RETRY",      T5_RETRY }
    };
    size_t i;
    if (s == NULL || out == NULL) return -1;
    for (i = 0; i < sizeof(tbl) / sizeof(tbl[0]); i++) {
        if (strcmp(s, tbl[i].n) == 0) { *out = tbl[i].v; return 0; }
    }
    return -1;
}

int t5_state_is_terminal(t5_state s)
{
    return (s == T5_SUCCEEDED || s == T5_FAILED) ? 1 : 0;
}
