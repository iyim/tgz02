/*
 * t9_18_weather_route_unit_test.c -- T9-18.3 host unit test:
 * weather intent classification matrix (hit/veto/city/complete) plus
 * alarm/volume regression, mirroring the on-device live test.
 */
#include "intent_route.h"

#include <stdio.h>
#include <string.h>

static int g_pass, g_fail;

static void checkf(int ok, const char *label)
{
    printf("%-3s %s\n", ok ? "OK" : "NG", label);
    if (ok) g_pass++; else g_fail++;
}

static void expect(const char *text, ir_intent want, int want_complete, const char *label)
{
    ir_result r;
    char buf[512];
    int hit;

    memset(&r, 0, sizeof(r));
    hit = ir_classify(text, &r);
    snprintf(buf, sizeof(buf), "%s: classify(\"%s\") -> %s complete=%d (want %s/%d)",
             label, text,
             hit ? ir_intent_name(r.intent) : "none", r.complete,
             (want == IR_NONE) ? "none" : ir_intent_name(want), want_complete);
    if (want == IR_NONE)
        checkf(hit == 0, buf);
    else
        checkf(hit == 1 && r.intent == want && r.complete == want_complete, buf);
}

int main(void)
{
    printf("=== T9-18 weather route unit test ===\n");

    /* [1] task-book weather phrases -> IR_WEATHER complete */
    printf("\n[1] weather positive\n");
    expect("天猫精灵今天天气怎么样", IR_WEATHER, 1, "today");
    expect("天猫精灵明天天气怎么样", IR_WEATHER, 1, "tomorrow");
    expect("天猫精灵后天天气怎么样", IR_WEATHER, 1, "day after");
    expect("天猫精灵明天会下雨吗", IR_WEATHER, 1, "rain question");
    expect("天猫精灵今天多少度", IR_WEATHER, 1, "current temp (温度 hit)");
    expect("今天最高温是多少", IR_WEATHER, 1, "high/low temp");
    expect("天猫精灵空气质量怎么样", IR_WEATHER, 1, "aqi");
    expect("天猫精灵北京天气怎么样", IR_WEATHER, 1, "city slot");
    expect("未来几天天气怎么样", IR_WEATHER, 1, "multi day");
    expect("今天需要带伞吗", IR_WEATHER, 1, "umbrella");
    expect("今天紫外线强吗", IR_WEATHER, 1, "uv");

    /* [2] knowledge / chat with weather words -> veto */
    printf("\n[2] weather veto\n");
    expect("天猫精灵天气是怎么形成的", IR_NONE, 0, "how formed");
    expect("天猫精灵我想聊聊天气", IR_NONE, 0, "chat");
    expect("天气之子好看吗", IR_NONE, 0, "movie name");
    expect("给我讲讲天气的知识", IR_NONE, 0, "knowledge");

    /* [3] regression: alarm take (T9-16), volume, time */
    printf("\n[3] regression\n");
    expect("天猫精灵定早上七点的闹钟", IR_ALARM, 1, "alarm passthrough->take");
    expect("把音量调到50", IR_VOLUME, 1, "volume");
    expect("现在几点了", IR_TIME, 1, "time");
    expect("停止播放", IR_STOP, 1, "stop");
    expect("天猫精灵退出", IR_EXIT, 1, "exit");

    /* [4] route bits */
    printf("\n[4] route bits\n");
    checkf(ir_route_bit(IR_WEATHER) == T7B_ROUTE_WEATHER, "weather bit = 0x02");
    checkf(ir_route_bit(IR_ALARM) == 0, "alarm has no route bit (T9-16)");
    checkf(ir_intent_from_name("weather") == IR_WEATHER, "from_name(weather)");

    printf("\n=== total: pass=%d fail=%d ===\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
