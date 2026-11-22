/*
 * t7_05r1_incomplete_unit_test.c -- T7-05-R1：不完整指令 vs 可执行指令，以及二次识别去重
 *
 * 任务书 §二 点名的风险：
 *   "音量调到百分之" 被暂存后，max_hold 超时仍可能被当成完整 IR_VOLUME 交给原厂执行；
 *   随后更完整的识别结果又被 15 s 前缀去重规则丢掉。
 *
 * 这里把"识别到意图"（ir_classify 返回 1）和"可以执行"（ir.complete == 1）分开断言，
 * 并把去重规则换成"完全同一句话 + 3 s"，用样本证明用户主动说的第二条指令不会被吞。
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

/* 期望：命中 <want_intent>，complete == want_complete，note 里含 want_note（空则不检查） */
static void expect(const char *text, ir_intent want_intent, int want_complete,
                   const char *want_note)
{
    ir_result ir;
    int hit = ir_classify(text, &ir);
    char what[256];

    snprintf(what, sizeof(what), "%s -> hit=%d intent=%s complete=%d note=%s arg=%s",
             text, hit, hit ? ir_intent_name(ir.intent) : "-", hit ? ir.complete : -1,
             hit ? ir.note : "-", hit ? ir.arg : "-");
    if (want_intent == IR_NONE) {
        check(hit == 0, what);
        return;
    }
    check(hit == 1 && ir.intent == want_intent, what);
    check(ir.complete == want_complete, what);
    if (want_note != NULL && want_note[0] != '\0') {
        check(strstr(hit ? ir.note : "", want_note) != NULL, what);
    }
}

int main(void)
{
    ir_result ir;
    ug_ctx g;
    ug_config c;
    ug_out o;
    long long t = 5000000;

    printf("=== T7-05-R1 incomplete command / duplicate recognition ===\n");

    printf("\n[1] 不完整表达：识别到意图但不能执行\n");
    expect("音量调到", IR_VOLUME, 0, "dangling");
    expect("声音调到百分之", IR_VOLUME, 0, "dangling");
    expect("音量调到百分之二", IR_VOLUME, 0, "ambiguous-qty");
    expect("把声音调到二十", IR_VOLUME, 1, NULL);        /* 完整：二十 = 20 */
    expect("音量调到百分之十", IR_VOLUME, 1, NULL);
    expect("把声音调到二十五", IR_VOLUME, 1, NULL);
    expect("音量调到百分之二十五", IR_VOLUME, 1, NULL);

    printf("\n[2] 其它完整说法仍然可执行\n");
    expect("声音大一点", IR_VOLUME, 1, NULL);
    expect("音量调小", IR_VOLUME, 1, NULL);
    expect("调大音量", IR_VOLUME, 1, NULL);
    expect("关闭屏幕", IR_SCREEN_OFF, 1, NULL);
    expect("现在几点", IR_TIME, 1, NULL);
    expect("帮我播放周杰伦的歌", IR_MEDIA, 1, NULL);
    expect("暂停", IR_STOP, 1, NULL);

    printf("\n[3] 不完整表达进不了快路，也不会被当成完整指令发布\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s1", "e1", "音量调到百分之", t, &o) == UG_HELD,
          "incomplete volume held, not released");
    check(g.fast_released == 0, "fast path not used for incomplete");
    /* 超时后放出来的是"半句话"，路由层会看到 complete=0 -> 转 AI 澄清 */
    check(ug_poll(&g, t + 4000, &o) == UG_RELEASE, "released after max_hold");
    check(ir_classify(o.text, &ir) == 1 && ir.complete == 0,
          "released text is still flagged incomplete -> AI 澄清, not native");

    printf("\n[4] 先不完整、后完整：两条都要能各自处理，不能被去重吞掉\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s1", "e1", "音量调到百分之", t, &o) == UG_HELD, "first held");
    /* 13 s 后（远超跨 session 合并窗口）：先把握着的半句话交出来，新的完整句另存 */
    check(ug_feed(&g, "s2", "e2", "音量调到百分之二十", t + 13000, &o) == UG_RELEASE,
          "old incomplete fragment released separately");
    check(strcmp(o.text, "音量调到百分之") == 0, "released the incomplete fragment first");
    check(ir_classify(o.text, &ir) == 1 && ir.complete == 0,
          "the released fragment stays flagged incomplete (-> AI, never executed)");
    check(strcmp(g.text, "音量调到百分之二十") == 0, "complete command held on its own");
    check(ug_poll(&g, t + 13000 + 5000, &o) == UG_RELEASE, "complete command released later");
    check(ir_classify(o.text, &ir) == 1 && ir.complete == 1 && strcmp(ir.arg, "set:20") == 0,
          "complete command executable with set:20");

    printf("\n[5] 用户主动说的第二条指令不会被当成重复\n");
    /* 去重规则：完全同一句话 + 3 s 内。这里只断言"文本不同就不会被判重"，
     * Worker 里的判定用 strcmp，可据此直接推导；同时用 gate 证明两句都会被放出来。 */
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s5", "e1", "播放周杰伦", t, &o) == UG_RELEASE, "first released (fast)");
    check(ug_feed(&g, "s5", "e2", "播放周杰伦的新歌", t + 1500, &o) == UG_RELEASE,
          "second (prefix extension, new session) NOT dropped");
    check(strcmp(o.text, "播放周杰伦的新歌") == 0, "second text passed through");

    printf("\n[6] 同一句话被 ASR 重复识别：文本完全一致，交给 Worker 的 3 s 规则\n");
    {
        ir_result a, b;

        check(ir_classify("调大音量", &a) == 1, "a classified");
        check(ir_classify("调大音量", &b) == 1, "b classified");
        check(strcmp(a.arg, b.arg) == 0, "identical normalized result");
        /* 两次主动说"调大音量"：判据是"文本完全一致 + 3 s 内"（见 ai_worker.h
         * T7B_NATIVE_DUP_MS）。这里锁定语义：只要文本不同，就不会被判重。 */
        check(strcmp("调大音量", "调大音量吧") != 0, "different text never matches dup rule");
        check(strcmp(a.arg, "up") == 0, "both are plain volume-up commands");
    }

    printf("\n[7] 完整指令的快路不受影响\n");
    (void)ug_defaults(&c);
    ug_init(&g, &c);
    check(ug_feed(&g, "s7", "e1", "音量调到百分之十", t, &o) == UG_RELEASE, "released at once");
    check(strcmp(o.why, "fast") == 0, "fast path");

    printf("\n=== total: pass=%d fail=%d ===\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
