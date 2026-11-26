/*
 * t9_18_weather_live_test.c -- T9-18.3: device-side weather takeover-decision test.
 * dlopens the DEPLOYED /system/tgz02/lib/libtg_hook.so and calls the real
 * t8_to_on_final with weather phrases. Private hook state in this test process
 * only; the injected :core instance is not touched.
 *
 * Decision semantics (nlu_takeover.c):
 *   PASS(factory)      = this utterance would be handed to the factory chain
 *   TAKE               = hook would register the session and DROP factory NLU
 *                        (in production, worker side then routes it: native/skill/AI)
 *   TAKE_UNREGISTERED / FAILCLOSED = fail-closed paths (never observed here)
 *
 * Test matrix (mask=0x1FF = route bits all on):
 *   With takeover ON and weather in route mask, a *complete* weather phrase
 *   classifies as IR_WEATHER -> T8_TO_PASS (factory executes).
 *   A knowledge question containing weather keywords -> veto -> TAKE(AI).
 *
 * The matrix we care about for T9-18.3 is the classification result itself
 * (hit/veto/complete), which we observe via why + decision for each phrase,
 * both with mask=0x1FF (weather enabled) and mask=0x1FD (weather bit OFF,
 * 0x2 cleared) to verify the route_intents switch restores factory behaviour
 * even when the phrase hits IR_WEATHER.
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

typedef struct {
    const char *text;
    int expect_pass_on;   /* with mask 0x1FF (weather enabled) */
    const char *tag;
} tcase;

static const tcase cases[] = {
    /* task-book weather phrases -- complete -> weather intent -> PASS(factory) */
    { "天猫精灵今天天气怎么样",     1, "weather.today" },
    { "天猫精灵明天天气怎么样",     1, "weather.tomorrow" },
    { "天猫精灵后天天气怎么样",     1, "weather.dayafter" },
    { "天猫精灵明天会下雨吗",       1, "weather.rain" },
    { "天猫精灵现在多少度",         1, "weather.temp" },        /* hmm: no hit word? see below */
    { "天猫精灵今天最高温是多少",   1, "weather.highlow" },
    { "天猫精灵空气质量怎么样",     1, "weather.aqi" },
    { "天猫精灵北京天气怎么样",     1, "weather.city" },
    { "天猫精灵未来几天天气怎么样", 1, "weather.multiday" },
    /* knowledge / chat with weather keywords -> veto -> TAKE(AI) */
    { "天猫精灵天气是怎么形成的",   0, "weather.knowledge" },
    { "天猫精灵我想聊聊天气",       0, "weather.chat" },
    { "天气之子好看吗",             0, "weather.movie" },
    /* regression: alarm passthrough (T9-15) and volume */
    { "天猫精灵定早上七点的闹钟",   0, "alarm.take (T9-16: own alarm skill, factory dropped)" },
    { "把音量调到50",               1, "volume.regression" },
    { NULL, 0, NULL }
};

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

    static char state[65536];
    int i, fails = 0, passes = 0;

    /* ---- phase 1: weather bit ENABLED (mask 0x1FF) ---- */
    memset(state, 0, sizeof(state));
    if (init(state) != 0) { printf("init failed\n"); return 1; }
    en(state, 1);
    printf("== phase 1: mask=0x1FF (weather enabled) ==\n");
    for (i = 0; cases[i].text != NULL; i++) {
        int why = -1;
        int d = of(state, "t918w", cases[i].text, 0LL, 0x1FF, &why);
        int ok = ((d == 0) == cases[i].expect_pass_on);
        printf("%-2s [%2d] %-28s %-20s -> %-16s why=%s\n",
               ok ? "OK" : "NG", i, cases[i].text, cases[i].tag,
               dec_name(d), why_name(why));
        if (ok) passes++; else fails++;
    }

    /* ---- phase 2: weather bit OFF (mask 0x1FD = 0x1FF & ~0x2) ----
     * "天猫精灵今天天气怎么样" now hits IR_WEATHER but the intent bit is off:
     * why must be AI_INTENT_OFF and decision TAKE (factory answer suppressed --
     * this is exactly the takeover knob for "route_intents restores factory"). */
    memset(state, 0, sizeof(state));
    if (init(state) != 0) { printf("init2 failed\n"); return 1; }
    en(state, 1);
    printf("== phase 2: mask=0x1FD (weather bit OFF) ==\n");
    {
        int why = -1;
        int d = of(state, "t918w2", "天猫精灵今天天气怎么样", 0LL, 0x1FD, &why);
        int ok = (d != 0 && why == 3);   /* TAKE + AI_INTENT_OFF */
        printf("%-2s [%2d] %-28s %-20s -> %-16s why=%s\n",
               ok ? "OK" : "NG", 20, "天猫精灵今天天气怎么样", "weather.bit-off",
               dec_name(d), why_name(why));
        if (ok) passes++; else fails++;
    }

    printf("=== %d pass, %d fail ===\n", passes, fails);
    return fails == 0 ? 0 : 1;
}
