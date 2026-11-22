/*
 * t7_04_gate_unit_test.c -- T7-04 ASR 暂存门的 host 单测（纯逻辑 + 暂存槽落盘）
 *
 * 场景都对应真人语音里真实出现过的形态：
 *   1) 同一 session 两次 final（修订/前缀扩展）：只提交一次，文本取更完整的那次
 *   2) 同一 session 更短的中间结果：忽略，不让它覆盖完整文本
 *   3) 同一 session 里两句话：先交旧的，再握新的（顺序不能反）
 *   4) 跨 session 悬空谓词（"帮我播放" + "周杰伦的歌"）：合并成一句
 *   5) 跨 session 但不是悬空谓词：不合并，按两条独立指令
 *   6) max_hold 上限：连续续说也不会无限等
 *   7) 关掉 gate = 旧行为（来一条提一条）
 *   8) 暂存槽落盘/恢复：Worker 重启后不丢，也不会重复提交；过期则丢弃
 */
#include <stdio.h>
#include <string.h>

#include "utterance_gate.h"
#include "worker_util.h"

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

static ug_config cfg_default(void)
{
    ug_config c;

    (void)ug_defaults(&c);
    return c;
}

int main(void)
{
    char tmpdir[256];
    char hold[320];
    ug_ctx g;
    ug_out o;
    ug_config c;
    long long t = 1000;

    printf("=== T7-04 utterance gate unit test ===\n");

    printf("\n[1] same session, prefix revision\n");
    c = cfg_default();
    ug_init(&g, &c);
    check(ug_feed(&g, "s1", "e1", "帮我播放周杰伦", t, &o) == UG_HELD, "first final held");
    check(ug_feed(&g, "s1", "e2", "帮我播放周杰伦的歌", t + 200, &o) == UG_HELD,
          "revision extends, still held");
    check(g.merges == 1, "merge counter = 1");
    check(ug_poll(&g, t + 200 + 449, &o) == UG_HELD, "not due yet");
    check(ug_poll(&g, t + 200 + 450, &o) == UG_RELEASE, "released after debounce");
    check(strcmp(o.text, "帮我播放周杰伦的歌") == 0, "released text is the merged one");
    check(strcmp(o.first_event_id, "e1") == 0, "first event id kept for idempotency");
    check(o.merges == 1, "out merges = 1");
    check(strcmp(o.why, "timeout") == 0, "release reason timeout");

    printf("\n[1b] dangling utterance gets the wider (cross-session) window\n");
    c = cfg_default();
    ug_init(&g, &c);
    (void)ug_feed(&g, "s1b", "e1", "帮我播放", t, &o);
    check(g.due_ms == t + c.cross_session_ms, "dangling text waits cross_session_ms");
    check(ug_poll(&g, t + c.debounce_ms, &o) == UG_HELD, "not released at debounce time");

    printf("\n[2] same session, shorter middle result ignored\n");
    c = cfg_default();
    ug_init(&g, &c);
    (void)ug_feed(&g, "s2", "e1", "现在几点了", t, &o);
    check(ug_feed(&g, "s2", "e2", "现在几点", t + 100, &o) == UG_DROP, "shorter dropped");
    check(strcmp(o.why, "dup") == 0, "drop reason dup");
    check(ug_poll(&g, t + 10000, &o) == UG_RELEASE, "later release still works");
    check(strcmp(o.text, "现在几点了") == 0, "kept the longer text");

    printf("\n[3] same session, two different utterances\n");
    c = cfg_default();
    ug_init(&g, &c);
    (void)ug_feed(&g, "s3", "e1", "讲个笑话", t, &o);
    {
        int rc = ug_feed(&g, "s3", "e2", "再讲一个", t + 100, &o);
        check(rc == UG_RELEASE, "old one released when a different sentence arrives");
        check(strcmp(o.text, "讲个笑话") == 0, "released old text first (order preserved)");
        check(g.have == 1, "new sentence is held");
        check(strcmp(g.text, "再讲一个") == 0, "new sentence held as is");
    }

    printf("\n[4] cross session, dangling predicate merges\n");
    c = cfg_default();
    ug_init(&g, &c);
    (void)ug_feed(&g, "s4a", "e1", "帮我播放", t, &o);
    check(ug_feed(&g, "s4b", "e2", "周杰伦的歌", t + 700, &o) == UG_HELD,
          "cross-session merge keeps it held");
    check(g.cross_merged == 1, "cross merge counter");
    check(ug_poll(&g, t + 700 + 1000, &o) == UG_RELEASE, "released after window");
    check(strcmp(o.text, "帮我播放周杰伦的歌") == 0, "merged text is the full sentence");

    printf("\n[5] cross session, not dangling -> not merged\n");
    c = cfg_default();
    ug_init(&g, &c);
    (void)ug_feed(&g, "s5a", "e1", "今天天气怎么样", t, &o);
    {
        int rc = ug_feed(&g, "s5b", "e2", "现在几点", t + 300, &o);
        check(rc == UG_RELEASE, "no merge when the first sentence is complete");
        check(strcmp(o.text, "今天天气怎么样") == 0, "first released unchanged");
        check(g.cross_merged == 0, "no cross merge");
    }

    printf("\n[6] max_hold caps the wait\n");
    c = cfg_default();
    c.max_hold_ms = 900;
    c.debounce_ms = 400;
    ug_init(&g, &c);
    (void)ug_feed(&g, "s6", "e1", "帮我查一下", t, &o);
    (void)ug_feed(&g, "s6", "e2", "帮我查一下明天", t + 300, &o);
    (void)ug_feed(&g, "s6", "e3", "帮我查一下明天天气", t + 600, &o);
    (void)ug_feed(&g, "s6", "e4", "帮我查一下明天天气怎么样", t + 800, &o);
    check(g.due_ms <= t + 900, "deadline capped by max_hold_ms");
    check(ug_poll(&g, t + 901, &o) == UG_RELEASE, "released at the cap");

    printf("\n[7] gate disabled = legacy behaviour\n");
    c = cfg_default();
    c.enabled = 0;
    ug_init(&g, &c);
    check(ug_feed(&g, "s7", "e1", "随便说一句", t, &o) == UG_RELEASE, "immediate release");
    check(strcmp(o.why, "bypass") == 0, "reason bypass");

    printf("\n[8] hold slot persistence\n");
    c = cfg_default();
    ug_init(&g, &c);
    snprintf(tmpdir, sizeof(tmpdir), "t7_04_gate_tmp");
    (void)wu_mkdir_p(tmpdir);
    snprintf(hold, sizeof(hold), "%s/utterance_hold.json", tmpdir);
    (void)ug_feed(&g, "s8", "e1", "帮我放一首歌", t, &o);
    check(ug_hold_save(&g, hold, NULL, 0) == 0, "hold saved");
    check(wu_file_size(hold) > 0, "hold file exists");

    {
        ug_ctx g2;
        ug_out o2;

        ug_init(&g2, &c);
        check(ug_hold_restore(&g2, hold, t + 500, &o2) == UG_HELD, "restore returns held");
        check(g2.have == 1, "restored slot is pending");
        check(strcmp(g2.text, "帮我放一首歌") == 0, "restored text intact");
        check(strcmp(g2.event_id, "e1") == 0, "restored event id intact");
        check(g2.due_ms <= t + 500, "restored item is due immediately");
        check(ug_poll(&g2, t + 500, &o2) == UG_RELEASE, "restored item releases once");
        check(wu_file_size(hold) < 0, "hold file removed after restore");
    }

    printf("\n[9] expired hold slot is dropped, not replayed\n");
    {
        ug_ctx g3;
        ug_out o3;

        ug_init(&g3, &c);
        (void)ug_feed(&g3, "s9", "e1", "很久以前的一句话", t, &o);
        (void)ug_hold_save(&g3, hold, NULL, 0);
        /* 伪造过期：把文件里的 saved_wall_ms 改成很久以前 */
        {
            char buf[1024];
            size_t len = 0;
            char out2[1024];
            size_t i, o2n = 0;

            if (wu_read_file(hold, buf, sizeof(buf), &len) == 0) {
                const char *key = "\"saved_wall_ms\":";
                const char *p = strstr(buf, key);
                if (p != NULL) {
                    size_t head = (size_t)(p - buf) + strlen(key);
                    for (i = 0; i < head; i++) out2[o2n++] = buf[i];
                    o2n += (size_t)snprintf(out2 + o2n, sizeof(out2) - o2n, "1");
                    for (i = head; i < len && buf[i] != ',' && buf[i] != '}'; i++) { }
                    while (i < len) out2[o2n++] = buf[i++];
                    out2[o2n] = '\0';
                    {
                        FILE *f = fopen(hold, "wb");
                        if (f != NULL) { fwrite(out2, 1, o2n, f); fclose(f); }
                    }
                }
            }
        }
        ug_init(&g3, &c);
        (void)ug_hold_restore(&g3, hold, t + 100000, &o3);
        check(g3.have == 0, "expired slot not restored");
        check(g3.expired_on_restore == 1, "expired counter incremented");
    }

    printf("\n[10] dangling predicate helper\n");
    check(ug_looks_incomplete("帮我播放") == 1, "帮我播放 is dangling");
    check(ug_looks_incomplete("音量调到") == 1, "音量调到 is dangling");
    check(ug_looks_incomplete("今天天气怎么样") == 0, "complete sentence is not dangling");
    check(ug_looks_incomplete("现在几点") == 0, "现在几点 is complete");

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
