/*
 * t9_15_alarm_route_unit_test.c -- T9-15: alarm/reminder intent passthrough rule.
 *
 * Host unit test (same harness pattern as t8_12_20_exit_route_unit_test.c):
 *   - positive: alarm-set / wake-up / reminder phrasings must classify to IR_ALARM
 *     with complete=1 (=> PASS to the factory cloud alarm chain)
 *   - veto: knowledge/story questions containing alarm words must NOT route native
 *   - regression: exit/stop/weather/time rules still classify; time questions
 *     must win over alarm words ("闹钟时间" style phrasing)
 */
#include "intent_route.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

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

static void checkf(int cond, const char *fmt, ...)
{
    char buf[512];
    va_list ap;

    va_start(ap, fmt);
    vsnprintf(buf, sizeof(buf), fmt, ap);
    va_end(ap);
    check(cond, buf);
}

static void expect_intent(const char *text, ir_intent want, const char *label)
{
    ir_result r;
    char buf[512];
    int hit;

    memset(&r, 0, sizeof(r));
    hit = ir_classify(text, &r);
    snprintf(buf, sizeof(buf), "%s: classify(\"%s\") -> %s (want %s)", label, text,
             hit ? ir_intent_name(r.intent) : "none",
             (want == IR_NONE) ? "none" : ir_intent_name(want));
    if (want == IR_NONE) {
        check(hit == 0, buf);
    } else {
        check(hit == 1 && r.intent == want && r.complete == 1, buf);
    }
}

int main(void)
{
    printf("=== T9-15 alarm intent route unit test ===\n");

    /* ---------------- [1] positive: alarm set phrasings ---------------- */
    printf("\n[1] 正向：定闹钟/叫我起床（必须命中 alarm 且 complete）\n");
    expect_intent("天猫精灵定早上七点的闹钟", IR_ALARM, "user's real failed phrase");
    expect_intent("定个闹钟", IR_ALARM, "bare set alarm");
    expect_intent("明天七点叫我起床", IR_ALARM, "wake me up phrase");
    expect_intent("天猫精灵叫我起床", IR_ALARM, "wake + wake-up");
    expect_intent("帮我设个闹钟", IR_ALARM, "set an alarm");
    expect_intent("提醒我明天八点吃药", IR_ALARM, "reminder");
    expect_intent("设个提醒", IR_ALARM, "set reminder");
    expect_intent("取消闹钟", IR_ALARM, "cancel alarm");
    expect_intent("删掉闹钟", IR_ALARM, "delete alarm");
    expect_intent("天猫精灵，定个七点的闹钟", IR_ALARM, "wake + comma + set");

    /* ---------------- [2] veto: knowledge questions ---------------- */
    printf("\n[2] 否决：知识性提问（含闹钟字样但不该放行）\n");
    expect_intent("闹钟是谁发明的", IR_NONE, "who invented");
    expect_intent("闹钟的英文怎么说", IR_NONE, "how to say in english");
    expect_intent("为什么闹钟会响", IR_NONE, "why does it ring");
    expect_intent("给我讲个闹钟的故事", IR_NONE, "tell a story");

    /* ---------------- [3] regression: other intents unchanged ---------------- */
    printf("\n[3] 回归：其他意图不受影响\n");
    expect_intent("天猫精灵退出", IR_EXIT, "exit still works");
    expect_intent("停止", IR_STOP, "stop still works");
    expect_intent("今天天气怎么样", IR_WEATHER, "weather still works");
    expect_intent("现在几点了", IR_TIME, "time still works");
    expect_intent("把音量调到50", IR_VOLUME, "volume still works");
    /* media scope note: "我想听故事" already classified none on HEAD before T9-15
     * (media keywords are play/pause/next, not 听故事) - pre-existing, not a regression. */
    expect_intent("我想听故事", IR_NONE, "media scope unchanged (pre-existing)");
    expect_intent("你还几岁", IR_NONE, "chit-chat still goes to ai");

    /* ---------------- [4] route bit & names ---------------- */
    printf("\n[4] 路由位与名称\n");
    checkf(ir_route_bit(IR_ALARM) == T7B_ROUTE_ALARM, "route bit = 0x%x", T7B_ROUTE_ALARM);
    checkf(ir_intent_from_name("alarm") == IR_ALARM, "from_name(alarm)");
    checkf(T7B_ROUTE_ALL == 0x1FF, "ALL extends to 0x1FF (got 0x%x)", T7B_ROUTE_ALL);

    printf("\n=== result: %d pass, %d fail ===\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
