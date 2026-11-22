/*
 * t7_04_route_unit_test.c -- T7-04 本地意图路由的 host 单测（纯函数，零真机、零网络）
 *
 * 覆盖：
 *   1) 四类意图的正例（任务书 §4 点名的真人说法 + 口语变体 + 数字表达）
 *   2) 反例：普通聊天、不属于本轮的设备控制、容易误判的词（亮度/生日/闹钟/号码）
 *   3) 参数提取（音量 set:30 / 增减 / 静音 / 取消静音），全角数字也要认
 *   4) 唤醒词/语气词剥离后仍能命中（"天猫精灵，把音量调大一点"）
 */
#include <stdio.h>
#include <string.h>

#include "intent_route.h"

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

static void expect_intent(const char *text, ir_intent want, const char *want_arg)
{
    ir_result r;
    char label[512];
    int hit;

    memset(&r, 0, sizeof(r));
    hit = ir_classify(text, &r);
    snprintf(label, sizeof(label), "classify(\"%s\") -> %s%s%s", text,
             hit ? ir_intent_name(r.intent) : "none",
             (hit && r.arg[0] != '\0') ? " arg=" : "",
             (hit && r.arg[0] != '\0') ? r.arg : "");
    if (want == IR_NONE) {
        check(hit == 0, label);
        return;
    }
    if (!hit) {
        check(0, label);
        return;
    }
    check(r.intent == want, label);
    if (want_arg != NULL) check(strcmp(r.arg, want_arg) == 0, label);
}

int main(void)
{
    printf("=== T7-04 intent route unit test ===\n");

    printf("\n[1] volume\n");
    expect_intent("天猫精灵，音量调大一点", IR_VOLUME, "up");
    expect_intent("音量调小一点", IR_VOLUME, "down");
    expect_intent("把音量调到30", IR_VOLUME, "set:30");
    expect_intent("音量调到 ３０", IR_VOLUME, "set:30");
    expect_intent("调大一点声音", IR_VOLUME, "up");
    expect_intent("声音小一点", IR_VOLUME, "down");
    expect_intent("大声点", IR_VOLUME, "up");
    expect_intent("小声点", IR_VOLUME, "down");
    expect_intent("太吵了", IR_VOLUME, "down");
    expect_intent("静音", IR_VOLUME, "mute");
    expect_intent("取消静音", IR_VOLUME, "unmute");
    expect_intent("恢复声音", IR_VOLUME, "unmute");
    expect_intent("天猫精灵，把音量开到最大", IR_VOLUME, "up");
    expect_intent("音量", IR_VOLUME, "");

    printf("\n[2] weather\n");
    expect_intent("查一下天气", IR_WEATHER, "");
    expect_intent("今天天气怎么样", IR_WEATHER, "");
    expect_intent("明天会下雨吗", IR_WEATHER, "");
    expect_intent("东京天气怎么样", IR_WEATHER, "");
    expect_intent("今天气温多少度", IR_WEATHER, "");
    expect_intent("出门要不要带伞", IR_WEATHER, "");
    expect_intent("空气质量怎么样", IR_WEATHER, "");

    printf("\n[3] screen off / on\n");
    expect_intent("关闭屏幕", IR_SCREEN_OFF, "");
    expect_intent("把屏幕关掉", IR_SCREEN_OFF, "");
    expect_intent("熄屏", IR_SCREEN_OFF, "");
    expect_intent("息屏", IR_SCREEN_OFF, "");
    expect_intent("天猫精灵，屏幕关一下", IR_SCREEN_OFF, "");
    expect_intent("关屏", IR_SCREEN_OFF, "");
    expect_intent("打开屏幕", IR_SCREEN_ON, "");
    expect_intent("把屏幕点亮", IR_SCREEN_ON, "");

    printf("\n[4] time\n");
    expect_intent("现在几点", IR_TIME, "");
    expect_intent("现在是什么时间", IR_TIME, "");
    expect_intent("今天几号", IR_TIME, "");
    expect_intent("今天星期几", IR_TIME, "");
    expect_intent("今天礼拜几", IR_TIME, "");
    expect_intent("现在时间是多少", IR_TIME, "");
    expect_intent("天猫精灵现在几点了", IR_TIME, "");

    printf("\n[5] negatives (must stay on the AI path)\n");
    expect_intent("给我讲个笑话", IR_NONE, NULL);
    expect_intent("你是谁", IR_NONE, NULL);
    expect_intent("东京有什么好玩的", IR_NONE, NULL);
    expect_intent("推荐一部科幻电影", IR_NONE, NULL);
    expect_intent("帮我定个闹钟", IR_NONE, NULL);
    expect_intent("播一首周杰伦的歌", IR_NONE, NULL);
    expect_intent("屏幕亮度调高一点", IR_NONE, NULL);      /* 亮度 != 关屏 */
    expect_intent("把屏幕调暗一点", IR_NONE, NULL);
    expect_intent("我的生日是几号", IR_NONE, NULL);        /* 问日期 != 问时间 */
    expect_intent("把空调调到26度", IR_NONE, NULL);        /* 不属于本轮那几类 */
    expect_intent("这个声音真好听", IR_NONE, NULL);
    expect_intent("快递几号到", IR_NONE, NULL);
    expect_intent("天气之子好看吗", IR_NONE, NULL);        /* 作品名 */
    expect_intent("", IR_NONE, NULL);

    printf("\n[6] names / helpers\n");
    check(strcmp(ir_intent_name(IR_VOLUME), "volume") == 0, "intent name volume");
    check(strcmp(ir_intent_name(IR_SCREEN_OFF), "screen_off") == 0, "intent name screen_off");
    check(strcmp(ir_intent_name(IR_SCREEN_ON), "screen_on") == 0, "intent name screen_on");
    check(ir_intent_from_name("weather") == IR_WEATHER, "intent from name weather");
    check(ir_intent_from_name("screen_on") == IR_SCREEN_ON, "intent from name screen_on");
    check(ir_intent_from_name("nope") == IR_NONE, "intent from name unknown");
    {
        char norm[256];
        int n = ir_normalize("天猫精灵，把  音量 调大一点！", norm, sizeof(norm));
        check(n > 0 && strcmp(norm, "把音量调大一点") == 0, "normalize strips wake word");
    }

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
