/*
 * t7_05_gate_order_unit_test.c -- T7-05 顺序修复的 host 单测
 *
 * 目的：证明"先攒成完整 utterance、再判定本地意图"这条顺序，对任务书列出的
 * 五组分段样本都成立，并且完整指令不会被无意义地拖延。
 *
 * 链路（Worker 里的真实顺序）：
 *   asr_final -> 回声过滤 -> ug_feed() -> [完整] -> uttq -> ir_classify() -> route
 * 这里用 ug_feed/ug_poll + ir_classify 直接复现同一顺序。
 */
#include <stdio.h>
#include <string.h>

#include "intent_route.h"
#include "utterance_gate.h"

static int g_pass = 0;
static int g_fail = 0;

static void check(int cond, const char *what)
{
    if (cond) {
        g_pass++;
    } else {
        g_fail++;
        printf("  FAIL %s\n", what);
    }
}

/* 把"一条 utterance 攒好之后会走哪条路"写成可断言的函数：
 * 返回 1 = route=native（原厂执行），0 = route=ai（进模型）。 */
static int route_of(const char *text)
{
    ir_result ir;

    if (!ir_classify(text, &ir)) return 0;
    return 1;
}


/* 跑一组"两条 final 被拆开"的样本，返回最终 release 出去的文本 */
static int run_split(const char *frag1, const char *frag2, const char *sess1,
                     const char *sess2, long long gap, char *out_text, size_t cap,
                     int *released_early, char *why, size_t whycap)
{
    ug_ctx g;
    ug_config c;
    ug_out o;
    long long t = 1000000;
    int rc;

    (void)ug_defaults(&c);
    ug_init(&g, &c);
    *released_early = 0;
    out_text[0] = '\0';
    why[0] = '\0';

    rc = ug_feed(&g, sess1, "e1", frag1, t, &o);
    if (rc == UG_RELEASE) {
        /* 第一段就被放出去 = 顺序错了（半句话直接进路由） */
        *released_early = 1;
        snprintf(out_text, cap, "%s", o.text);
        snprintf(why, whycap, "%s", o.why);
        return UG_RELEASE;
    }
    rc = ug_feed(&g, sess2, "e2", frag2, t + gap, &o);
    if (rc == UG_RELEASE) {
        snprintf(out_text, cap, "%s", o.text);
        snprintf(why, whycap, "%s", o.why);
        return UG_RELEASE;
    }
    /* 等到期：最多 max_hold + debounce */
    for (long long d = 1; d <= 4000; d += 10) {
        rc = ug_poll(&g, t + gap + d, &o);
        if (rc == UG_RELEASE) {
            snprintf(out_text, cap, "%s", o.text);
            snprintf(why, whycap, "%s", o.why);
            return UG_RELEASE;
        }
    }
    return UG_HELD;
}

int main(void)
{
    char txt[UG_TEXT_MAX];
    char why[32];
    int early = 0;
    ug_ctx g;
    ug_config c;
    ug_out o;
    long long t = 2000000;

    printf("=== T7-05 gate-before-route order unit test ===\n");

    printf("\n[1] 帮我播放 + 周杰伦的歌 (cross session)\n");
    check(run_split("帮我播放", "周杰伦的歌", "s1", "s2", 800, txt, sizeof(txt), &early, why,
                    sizeof(why)) == UG_RELEASE, "released as one utterance");
    check(early == 0, "first fragment was NOT released by itself");
    check(strcmp(txt, "帮我播放周杰伦的歌") == 0, "merged text is the whole sentence");
    check(g.cross_merged == 1, "cross-session merge counted");
    check(route_of(txt) == 1, "merged sentence routes to factory (media)");

    printf("\n[2] 音量调到 + 百分之十 (cross session)\n");
    /* 同 session 的两段也要拼（实测原厂端点常常不换 session） */
    check(run_split("音量调到", "百分之十", "s1", "s1", 300, txt, sizeof(txt), &early, why,
                    sizeof(why)) == UG_RELEASE, "released after same-session merge");
    check(strcmp(txt, "音量调到百分之十") == 0, "same-session merge keeps both halves");
    check(early == 0, "first fragment (dangling) not released early");
    check(route_of(txt) == 1, "routes to factory (volume)");
    {
        ir_result ir;

        check(ir_classify(txt, &ir) == 1 && strcmp(ir.arg, "set:10") == 0,
              "volume arg parsed as set:10");
    }

    printf("\n[3] 关闭屏幕 (single complete command, fast path)\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s3", "e1", "关闭屏幕", t, &o) == UG_RELEASE, "released immediately");
    check(strcmp(o.why, "fast") == 0, "released by fast path (no needless wait)");
    check(route_of(o.text) == 1, "routes to factory (screen_off)");
    check(g.held == 0, "nothing was held");
    check(g.fast_released == 1, "fast counter = 1");

    printf("\n[4] 现在几点 (single complete command, fast path)\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s4", "e1", "现在几点", t, &o) == UG_RELEASE, "released immediately");
    check(strcmp(o.why, "fast") == 0, "fast path");
    check(route_of(o.text) == 1, "routes to factory (time)");

    printf("\n[5] 明天 + 会下雨吗 (open-prefix fragment)\n");
    check(run_split("明天", "会下雨吗", "s1", "s2", 700, txt, sizeof(txt), &early, why,
                    sizeof(why)) == UG_RELEASE, "released as one utterance");
    check(early == 0, "'明天' was held (open prefix, not a complete command)");
    check(strcmp(txt, "明天会下雨吗") == 0, "merged text keeps both halves");
    check(route_of(txt) == 1, "merged question routes to factory (weather)");

    printf("\n[6] duplicate right after fast release is dropped\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s6", "e1", "关闭屏幕", t, &o) == UG_RELEASE, "first released");
    check(ug_feed(&g, "s6", "e2", "关闭屏幕吧", t + 150, &o) == UG_DROP,
          "same-session revision dropped (no double execution)");
    check(g.dropped_dup == 1, "dup counter = 1");

    printf("\n[7] chat text still waits for the window (no double answer)\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s7", "e1", "帮我讲个故事", t, &o) == UG_HELD, "chat held");
    check(ug_feed(&g, "s7", "e2", "帮我讲个故事吧", t + 200, &o) == UG_HELD,
          "revision still held");
    check(g.merges == 1, "revision merged, not submitted twice");
    check(route_of("帮我讲个故事") == 0, "chat routes to ai");

    printf("\n[8] gate disabled = old behaviour (release at once)\n");
    (void)ug_defaults(&c);
    c.enabled = 0;
    ug_init(&g, &c);
    check(ug_feed(&g, "s8", "e1", "关灯", t, &o) == UG_RELEASE, "bypass release");

    printf("\n[9] 音量调到二十五 (complete volume command with cn number)\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s9", "e1", "把声音调到二十五", t, &o) == UG_RELEASE, "released at once");
    {
        ir_result ir;

        check(ir_classify(o.text, &ir) == 1 && strcmp(ir.arg, "set:25") == 0,
              "cn number 25 parsed");
    }

    printf("\n=== total: pass=%d fail=%d ===\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
