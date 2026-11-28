/*
 * own_token.c -- T9-29 (P1)：决策令牌（唯一实现，编进 worker 与 libtg_hook.so）
 *
 * 只依赖标准 C，不依赖 worker_util（hook 侧不链接 worker_util，避免把整套文件 I/O 拖进 :core）。
 */
#include "own_token.h"

#include <stdio.h>
#include <string.h>

#define TOK_SEED 1469598103934665603ULL   /* FNV-1a 64 offset basis */

static unsigned long long tok_update(unsigned long long h, const void *data, size_t len)
{
    const unsigned char *p = (const unsigned char *)data;
    size_t i;

    for (i = 0; i < len; i++) {
        h ^= (unsigned long long)p[i];
        h *= 1099511628211ULL;
    }
    return h;
}

int own_token(const char *session, const char *text, long long gen, char *out, size_t cap)
{
    unsigned long long h = TOK_SEED;
    char g[32];
    const char *s = (session != NULL) ? session : "";
    const char *t = (text != NULL) ? text : "";
    size_t tn = strlen(t);
    char sep = 0x1f;
    int n;

    if (out == NULL || cap < OWN_TOK_MAX) return -1;
    if (tn > OWN_TOK_TEXT_CAP) tn = OWN_TOK_TEXT_CAP;

    h = tok_update(h, s, strlen(s));
    h = tok_update(h, &sep, 1);
    h = tok_update(h, t, tn);
    h = tok_update(h, &sep, 1);

    n = snprintf(g, sizeof(g), "%lld", gen);
    if (n > 0) h = tok_update(h, g, (size_t)n);

    snprintf(out, cap, "%08llx", (h & 0xFFFFFFFFULL));
    return 0;
}
