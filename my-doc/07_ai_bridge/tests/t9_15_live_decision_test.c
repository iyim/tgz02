/*
 * t9_15_live_test.c -- T9-15: device-side takeover-decision test.
 * dlopens the DEPLOYED /system/tgz02/lib/libtg_hook.so and calls the real
 * t8_to_on_final with the exact user phrase. Private hook state in this test
 * process only; the injected :core instance is not touched.
 */
#include <stdio.h>
#include <string.h>
#include <dlfcn.h>

typedef int  (*init_fn)(void *);
typedef int  (*en_set_fn)(void *, int);
typedef int  (*final_fn)(void *, const char *, const char *, long long, int, int *);

static const char *dec_name(int d)
{
    switch (d) {
    case 0: return "PASS(factory)";
    case 1: return "TAKE";
    case 2: return "TAKE_UNREGISTERED";
    case 3: return "TAKE_FAILCLOSED";
    default: return "?";
    }
}

static const char *why_name(int w)
{
    switch (w) {
    case 0: return "NONE";
    case 1: return "AI(no native intent)";
    case 2: return "AI_INCOMPLETE";
    case 3: return "AI_INTENT_OFF";
    case 4: return "OVERFLOW";
    case 5: return "FAILCLOSED";
    case 6: return "NO_SESSION";
    default: return "?";
    }
}

int main(void)
{
    void *h = dlopen("/system/tgz02/lib/libtg_hook.so", RTLD_NOW);
    if (h == NULL) { printf("dlopen failed: %s\n", dlerror()); return 1; }

    init_fn init = (init_fn)dlsym(h, "t8_to_init");
    en_set_fn en = (en_set_fn)dlsym(h, "t8_to_enabled_set");
    final_fn of = (final_fn)dlsym(h, "t8_to_on_final");
    if (init == NULL || en == NULL || of == NULL) {
        printf("dlsym failed: %s\n", dlerror());
        return 1;
    }

    static char state[65536];  /* >= real t8_to_state (64 slots x ~100B + counters) */
    memset(state, 0, sizeof(state));
    if (init(state) != 0) { printf("init failed\n"); return 1; }
    en(state, 1);

    const char *cases[] = {
        "天猫精灵定早上七点的闹钟",       /* user's real failed phrase -> must PASS now */
        "明天早上七点叫我起床",           /* alarm set -> PASS */
        "提醒我明天八点吃药",             /* reminder -> PASS */
        "闹钟是谁发明的",                 /* knowledge -> TAKE (AI) */
        "今天天气怎么样",                 /* weather -> PASS (pre-existing) */
        "把音量调到50",                   /* volume -> PASS (pre-existing) */
        "我想听故事",                     /* chit-chat -> TAKE (AI) */
        NULL
    };
    int expect_pass[] = { 1, 1, 1, 0, 1, 1, 0 };

    int i, fails = 0, passes = 0;
    for (i = 0; cases[i] != NULL; i++) {
        int why = -1;
        int d = of(state, "t915test-session", cases[i], 0LL, 0x1FF, &why);
        int ok = ((d == 0) == expect_pass[i]);
        printf("%-2s [%d] %-30s -> %-16s why=%s\n",
               ok ? "OK" : "NG", i, cases[i], dec_name(d), why_name(why));
        if (ok) passes++; else fails++;
    }
    printf("=== %d pass, %d fail ===\n", passes, fails);
    return fails == 0 ? 0 : 1;
}