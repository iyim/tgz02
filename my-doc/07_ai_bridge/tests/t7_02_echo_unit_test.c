/*
 * t7_02_echo_unit_test.c -- T7-02 回声过滤的 host 单测（不碰设备）
 *
 * 覆盖：归一化、唤醒词/语气词剥离、最长公共子串相似度、播放窗口判定、
 *       回声丢弃、窗口内真指令保留、窗口外放行、无指令规则开关、过滤器总开关。
 *
 * 播放状态用一个临时文件模拟（格式与设备上的 play.public.json 一致）。
 */
#include "echo_filter.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

static int g_pass, g_fail;

#define CHK(cond, fmt, ...) do { \
    if (cond) { g_pass++; } \
    else { g_fail++; printf("FAIL %s:%d: " fmt "\n", __FILE__, __LINE__, ##__VA_ARGS__); } \
} while (0)

#define CHK_STR(actual, expect) do { \
    const char *a_ = (actual), *e_ = (expect); \
    if (a_ != NULL && e_ != NULL && strcmp(a_, e_) == 0) { g_pass++; } \
    else { g_fail++; printf("FAIL %s:%d: got \"%s\" want \"%s\"\n", \
                            __FILE__, __LINE__, a_ ? a_ : "(null)", e_ ? e_ : "(null)"); } \
} while (0)

#define CHK_INT(actual, expect) do { \
    long a_ = (long)(actual), e_ = (long)(expect); \
    if (a_ == e_) { g_pass++; } \
    else { g_fail++; printf("FAIL %s:%d: got %ld want %ld\n", __FILE__, __LINE__, a_, e_); } \
} while (0)

static const char *g_state_path = "play.public.json";

static void write_state(const char *json)
{
    FILE *f = fopen(g_state_path, "wb");
    if (f == NULL) { printf("FATAL cannot write %s\n", g_state_path); exit(2); }
    fwrite(json, 1, strlen(json), f);
    fclose(f);
}

static void rm_state(void)
{
    remove(g_state_path);
}

/* 让 ef_ctx 指向临时状态文件 */
static void init_ctx(ef_ctx *e, int enabled, int nocmd)
{
    ef_config c;
    char err[128];

    (void)ef_defaults(&c);
    c.enabled = enabled;
    c.drop_nocmd = nocmd;
    if (ef_init(e, &c, ".", err, sizeof(err)) != 0) {
        printf("FATAL ef_init: %s\n", err);
        exit(2);
    }
}

static void test_normalize(void)
{
    char out[EF_TEXT_MAX];

    (void)ef_normalize("天猫精灵，现在 几点了？", out, sizeof(out));
    CHK_STR(out, "天猫精灵现在几点了");

    (void)ef_normalize("  ABC-def_12  ", out, sizeof(out));
    CHK_STR(out, "abcdef12");

    (void)ef_normalize("", out, sizeof(out));
    CHK_STR(out, "");

    (void)ef_normalize("。。。！？", out, sizeof(out));
    CHK_STR(out, "");
}

static void test_fillers(void)
{
    char norm[EF_TEXT_MAX], rest[EF_TEXT_MAX];

    (void)ef_normalize("天猫精灵", norm, sizeof(norm));
    CHK_INT(ef_strip_fillers(norm, rest, sizeof(rest)), 0);

    (void)ef_normalize("天猫精灵嗯", norm, sizeof(norm));
    CHK_INT(ef_strip_fillers(norm, rest, sizeof(rest)), 0);

    (void)ef_normalize("天猫精灵嗯拜拜", norm, sizeof(norm));
    CHK_INT(ef_strip_fillers(norm, rest, sizeof(rest)), 0);

    (void)ef_normalize("嗯", norm, sizeof(norm));
    CHK_INT(ef_strip_fillers(norm, rest, sizeof(rest)), 0);

    /* 真指令必须留下内容（返回的是字节长度：5 个汉字 = 15 字节） */
    (void)ef_normalize("天猫精灵现在几点了", norm, sizeof(norm));
    CHK_INT(ef_strip_fillers(norm, rest, sizeof(rest)), 15);
    CHK_STR(rest, "现在几点了");

    (void)ef_normalize("帮我把音量调到五十", norm, sizeof(norm));
    CHK(ef_strip_fillers(norm, rest, sizeof(rest)) > 0, "strip removed a real command");

    /* 语气词只删语气词，不动实词 */
    (void)ef_normalize("我想听周杰伦的歌吧", norm, sizeof(norm));
    CHK(ef_strip_fillers(norm, rest, sizeof(rest)) > 0, "strip removed a real command");
    CHK(rest[0] != '\0', "strip produced empty string");
}

static void test_similar(void)
{
    CHK_INT(ef_similar("晚上好主人现在是晚上九点十二分", "晚上好主人现在是晚上九点十二分"), 100);
    CHK_INT(ef_similar("嗯拜拜", "拜拜有需要再叫我"), 66);
    CHK(ef_similar("推荐浅草寺第一次去东京很合适", "东京好吃的有寿司拉面天妇罗") < 30,
        "unrelated texts must stay low");
    CHK_INT(ef_similar("", "abc"), 0);
    CHK_INT(ef_similar("abc", ""), 0);
    /* 单字符输入不与长文本相似（避免误杀单字指令） */
    CHK_INT(ef_similar("停", "东京好吃的有寿司拉面天妇罗"), 0);
}

static void test_window_echo(void)
{
    ef_ctx e;
    long long now = 1795266000000LL;

    write_state("{\"v\":1,\"state\":\"playing\",\"event_id\":\"ev-1\","
                "\"started_ms\":1795266000000,\"finished_ms\":0}");
    init_ctx(&e, 1, 0);
    ef_note_enqueue(&e, "ev-1", "晚上好主人，现在是晚上九点十二分。", now);

    /* 逐字回声 */
    CHK_INT(ef_check(&e, "晚上好主人现在是晚上九点十二分", now + 2000), EF_DROP_ECHO);
    CHK_INT(e.dropped_echo, 1);
    CHK_INT(e.window_hits, 1);

    /* 尾音碎片 */
    CHK_INT(ef_check(&e, "九点十二分", now + 3000), EF_DROP_ECHO);
    CHK_INT(e.dropped_echo, 2);

    /* 播出期间用户说别的话 -> 必须保留 */
    CHK_INT(ef_check(&e, "天猫精灵杭州有什么好玩的", now + 4000), EF_KEEP);
    CHK_INT(e.kept_in_window, 1);
    CHK_INT(e.dropped_echo, 2);

    rm_state();
}

static void test_window_after(void)
{
    ef_ctx e;
    long long now = 1795266000000LL;

    /* 播报结束后 1 s 内仍算窗口（尾巴还在扬声器/混响里） */
    write_state("{\"v\":1,\"state\":\"idle\",\"event_id\":\"ev-2\","
                "\"started_ms\":1795265980000,\"finished_ms\":1795266000000}");
    init_ctx(&e, 1, 0);
    ef_note_enqueue(&e, "ev-2", "东京好吃的有寿司和拉面。", now);

    CHK_INT(ef_check(&e, "东京好吃的有寿司和拉面", now + 900), EF_DROP_ECHO);
    /* 超过 after 窗口 -> 放行（人可能真的在复述） */
    CHK_INT(ef_check(&e, "东京好吃的有寿司和拉面", now + 6000), EF_KEEP);

    rm_state();
}

static void test_no_command_rule(void)
{
    ef_ctx e;
    long long now = 1795266000000LL;

    write_state("{\"v\":1,\"state\":\"idle\",\"event_id\":\"\",\"started_ms\":0,\"finished_ms\":0}");
    init_ctx(&e, 1, 1);
    CHK_INT(ef_check(&e, "天猫精灵", now), EF_DROP_NO_COMMAND);
    CHK_INT(ef_check(&e, "嗯", now), EF_DROP_NO_COMMAND);
    CHK_INT(ef_check(&e, "天猫精灵嗯拜拜", now), EF_DROP_NO_COMMAND);
    CHK_INT(ef_check(&e, "天猫精灵推荐个景点", now), EF_KEEP);
    CHK_INT(e.dropped_nocmd, 3);

    /* 关掉这条规则后同样的输入必须放行 */
    init_ctx(&e, 1, 0);
    CHK_INT(ef_check(&e, "天猫精灵", now), EF_KEEP);

    /* 总开关关掉 -> 什么都不拦 */
    init_ctx(&e, 0, 1);
    CHK_INT(ef_check(&e, "天猫精灵", now), EF_KEEP);
    CHK_INT(e.kept, 1);

    rm_state();
}

static void test_missing_state(void)
{
    ef_ctx e;
    long long now = 1795266000000LL;

    rm_state();
    init_ctx(&e, 1, 1);
    /* 没有播放状态文件：不能误杀真指令，也不能拦回声（无从判断） */
    CHK_INT(ef_check(&e, "天猫精灵放首歌", now), EF_KEEP);
    CHK_INT(ef_check(&e, "天猫精灵", now), EF_DROP_NO_COMMAND);
    CHK(e.state_errors >= 1, "missing state file must be counted");
}

static void test_single_char_command(void)
{
    ef_ctx e;
    long long now = 1795266000000LL;

    write_state("{\"v\":1,\"state\":\"playing\",\"event_id\":\"ev-3\","
                "\"started_ms\":1795266000000,\"finished_ms\":0}");
    init_ctx(&e, 1, 1);
    ef_note_enqueue(&e, "ev-3", "正在为你播放音乐，请稍等。", now);
    /* 播报期间的单字指令不参与文本相似判定，必须留下 */
    CHK_INT(ef_check(&e, "停", now + 1000), EF_KEEP);
    rm_state();
}

int main(void)
{
    test_normalize();
    test_fillers();
    test_similar();
    test_window_echo();
    test_window_after();
    test_no_command_rule();
    test_missing_state();
    test_single_char_command();

    printf("T7-02 echo_filter unit: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
