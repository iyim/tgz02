/*
 * t7_05r2_dedupe_unit_test.c -- T7-05-R2 重复识别判定（主机，零设备、零网络）
 *
 * 这里**不用** strcmp 之类的辅助判断自证规则，而是直接调用生产代码：
 *   - t7_dup.c   : Worker 路由前的重复判定（ai_worker.c 调用的同一份）
 *   - utterance_gate.c : ASR 暂存门（Worker 每条 final 都过它）
 *
 * 覆盖任务书第三节的 6 个场景：
 *   1) 同一次 ASR final 重复上报        -> 只执行一次
 *   2) 用户连说两遍"调大音量"           -> 两次都执行
 *   3) 用户连说两遍"播放周杰伦"         -> 两次都处理
 *   4) "播放周杰伦" 后 "播放周杰伦的新歌" -> 不吞
 *   5) 不完整音量指令后补完整参数        -> 完整指令不吞
 *   6) 不同 session 的相同文本           -> 不判重复
 */
#include "t7_dup.h"
#include "utterance_gate.h"

#include <stdio.h>
#include <string.h>

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) { g_pass++; }
    else { g_fail++; printf("FAIL %s\n", what); }
}

/* ---------------- A. t7_dup（Worker 路由去重） ---------------- */
static void test_dup_module(void)
{
    t7_dup d;
    t7dup_key k;

    /* 1) 同一条 final 重复上报：event_id 相同 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-5869-1969159-g2", "1969159", "天猫精灵现在几点了", 102);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A1 first sighting is new");
    t7dup_note(&d, &k);
    ok(t7dup_check(&d, &k) == T7DUP_SAME_EVENT, "A1 same event_id is duplicate");
    ok(d.n_same_event == 1, "A1 same-event counter");

    /* 同一条记录换路径再来一次：session+seq+文本 相同（event_id 空） */
    t7dup_init(&d);
    t7dup_key_set(&k, "", "1969159", "天猫精灵现在几点了", 102);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    ok(t7dup_check(&d, &k) == T7DUP_SAME_REPORT, "A2 same report (session+seq+text) is duplicate");

    /* 2) 用户连说两遍"调大音量"：文本相同但 event_id 不同 -> 必须执行 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-5869-1969200-g1", "1969200", "天猫精灵音量调大", 120);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "t6-5869-1969210-g2", "1969210", "天猫精灵音量调大", 121);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A3 repeated volume command executes twice");
    ok(d.n_same_text_new_event == 1, "A3 counts same-text-new-event");
    t7dup_note(&d, &k);
    ok(d.n_new == 2, "A3 both counted as new");

    /* 3) 用户连说两遍"播放周杰伦" -> 都执行 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-1-1969300-g1", "1969300", "天猫精灵播放周杰伦", 130);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "t6-1-1969301-g2", "1969301", "天猫精灵播放周杰伦", 131);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A4 repeat play command executes twice");

    /* 4) "播放周杰伦" -> "播放周杰伦的新歌" 不吞 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-1-1969400-g1", "1969400", "天猫精灵播放周杰伦", 140);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "t6-1-1969405-g2", "1969405", "天猫精灵播放周杰伦的新歌", 141);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A5 longer follow-up command is not swallowed");

    /* 5) 不完整 -> 完整：不能被当成重复 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-1-1969500-g1", "1969500", "天猫精灵音量调到百分之", 150);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "t6-1-1969502-g2", "1969502", "天猫精灵音量调到百分之十", 151);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A6 complete command after incomplete is not swallowed");

    /* 6) 不同 session 的相同文本：不判重复 */
    t7dup_init(&d);
    t7dup_key_set(&k, "t6-1-1969600-g1", "1969600", "天猫精灵今天什么天气", 160);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "t6-1-1969610-g1", "1969610", "天猫精灵今天什么天气", 161);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A7 same text in another session is new");

    /* 空文本/空 event_id 的极端情况不应崩；身份全空时无法证明是"同一条"，按新指令执行 */
    t7dup_init(&d);
    t7dup_key_set(&k, "", "", "", -1);
    t7dup_check(&d, &k); t7dup_note(&d, &k);
    t7dup_key_set(&k, "", "", "", -1);
    ok(t7dup_check(&d, &k) == T7DUP_NEW, "A8 empty identity cannot prove duplication -> executes");
    ok(strcmp(t7dup_verdict_name(T7DUP_SAME_EVENT), "same-event-id") == 0, "A9 verdict name");
}

/* ---------------- B. 暂存门（Worker 实际用的 ug_feed） ---------------- */
static void gate_new(ug_ctx *g)
{
    ug_config c;

    ug_defaults(&c);
    c.debounce_ms = 450;
    c.max_hold_ms = 2500;
    c.fast_native = 1;
    ug_init(g, &c);
}

static void test_gate_same_final(void)
{
    ug_ctx g;
    ug_out o;
    int k1, k2;

    /* 1) 同一条 final 又投递一次（event_id 相同）-> 只执行一次 */
    gate_new(&g);
    k1 = ug_feed(&g, "1970001", "t6-1-1970001-g1", "天猫精灵关闭屏幕", 0, &o);
    ok(k1 == UG_RELEASE, "B1 first final releases (fast path)");
    k2 = ug_feed(&g, "1970001", "t6-1-1970001-g1", "天猫精灵关闭屏幕", 10, &o);
    ok(k2 == UG_DROP, "B1 same event_id is dropped");
    ok(strcmp(o.why, "dup") == 0, "B1 drop reason is dup");

    /* 2) 用户连说两遍"调大音量"（不同 event_id）-> 两次都执行 */
    gate_new(&g);
    k1 = ug_feed(&g, "1970002", "t6-1-1970002-g1", "天猫精灵音量调大一点", 0, &o);
    ok(k1 == UG_RELEASE, "B2 first volume up releases");
    k2 = ug_feed(&g, "1970002", "t6-1-1970002-g2", "天猫精灵音量调大一点", 1200, &o);
    ok(k2 == UG_RELEASE, "B2 second volume up also releases");

    /* 3) 用户连说两遍"播放周杰伦" -> 两次都处理（都会释放，不会被吞） */
    gate_new(&g);
    k1 = ug_feed(&g, "1970003", "t6-1-1970003-g1", "天猫精灵播放周杰伦", 0, &o);
    ok(k1 == UG_RELEASE, "B3 first play command releases");
    k2 = ug_feed(&g, "1970003", "t6-1-1970003-g2", "天猫精灵播放周杰伦", 300, &o);
    ok(k2 == UG_RELEASE, "B3 second play command also releases (not swallowed)");
    ok(strcmp(o.text, "天猫精灵播放周杰伦") == 0, "B3 second release carries the same text");

    /* 3b) 同一句话在同一个 session、不同 event：走暂存槽也要放出去（不是 DROP） */
    gate_new(&g);
    k1 = ug_feed(&g, "1970013", "t6-1-1970013-g1", "天猫精灵给我讲个笑话", 0, &o);
    ok(k1 == UG_HELD, "B3b chat utterance is held");
    k2 = ug_feed(&g, "1970013", "t6-1-1970013-g2", "天猫精灵给我讲个笑话", 200, &o);
    ok(k2 == UG_RELEASE, "B3b identical repeat releases immediately");
    ok(strcmp(o.why, "repeat") == 0, "B3b release reason is repeat");
    {
        int k3 = ug_poll(&g, 5000, &o);
        ok(k3 == UG_RELEASE, "B3b held first utterance still releases later");
        ok(strstr(o.text, "讲个笑话") != NULL, "B3b held text is the first utterance");
    }

    /* 4) "播放周杰伦" -> 5 s 后 "播放周杰伦的新歌"：不吞 */
    gate_new(&g);
    k1 = ug_feed(&g, "1970004", "t6-1-1970004-g1", "天猫精灵播放周杰伦", 0, &o);
    ok(k1 == UG_RELEASE, "B4 first command releases");
    ok(strstr(o.text, "的新歌") == NULL, "B4 first text is the short one");
    k1 = ug_feed(&g, "1970004", "t6-1-1970004-g2", "天猫精灵播放周杰伦的新歌", 5000, &o);
    ok(k1 == UG_RELEASE, "B4 longer command releases (not swallowed)");
    ok(strstr(o.text, "的新歌") != NULL, "B4 released text is the longer command");

    /* 6) 不同 session 的相同文本：不能判重复 */
    gate_new(&g);
    k1 = ug_feed(&g, "1970005", "t6-1-1970005-g1", "天猫精灵今天什么天气", 0, &o);
    ok(k1 == UG_RELEASE, "B6 first weather command releases");
    k2 = ug_feed(&g, "1970006", "t6-1-1970006-g1", "天猫精灵今天什么天气", 400, &o);
    ok(k2 != UG_DROP, "B6 same text in another session is not a duplicate");
}

static void test_gate_incomplete(void)
{
    ug_ctx g;
    ug_out o;
    int k;

    /* 5) 不完整 -> 补完整：完整的那句不能被吞；不完整的那句不许单独执行 */
    gate_new(&g);
    k = ug_feed(&g, "1970007", "t6-1-1970007-g1", "天猫精灵音量调到百分之", 0, &o);
    ok(k == UG_HELD, "B5 incomplete command is held (never fast-released)");
    k = ug_feed(&g, "1970007", "t6-1-1970007-g2", "天猫精灵音量调到百分之十", 300, &o);
    ok(k == UG_HELD, "B5 complete revision merges into the hold");
    k = ug_poll(&g, 2000, &o);
    ok(k == UG_RELEASE, "B5 merged utterance releases once");
    ok(strstr(o.text, "十") != NULL, "B5 released text carries the complete parameter");

    /* 同前缀但只是"百分之"重复两次（同 session、不同 event）不应把完整那句挤掉 */
    gate_new(&g);
    ug_feed(&g, "1970008", "t6-1-1970008-g1", "天猫精灵音量调到百分之", 0, &o);
    ug_feed(&g, "1970008", "t6-1-1970008-g2", "天猫精灵音量调到百分之", 50, &o);
    k = ug_feed(&g, "1970008", "t6-1-1970008-g3", "天猫精灵音量调到百分之十", 120, &o);
    ok(k != UG_DROP, "B5 duplicate incomplete does not swallow the complete one");
}

int main(void)
{
    test_dup_module();
    test_gate_same_final();
    test_gate_incomplete();
    printf("t7_05r2_dedupe: pass=%d fail=%d\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
