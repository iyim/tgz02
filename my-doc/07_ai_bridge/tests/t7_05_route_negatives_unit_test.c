/*
 * t7_05_route_negatives_unit_test.c -- T7-05 路由误判样本（任务书 五、路由规则完善）
 *
 * 每条样本都写明"应该走哪条路"，避免为了命中率把所有含"天气/时间/播放/停止"
 * 的句子都拦到原厂：只有"明确动作 + 语义完整"才 route=native。
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

/* expect: IR_NONE = 应该走 AI；其它 = 应该走原厂并为此意图 */
static void expect(const char *text, ir_intent want, const char *tag)
{
    ir_result ir;
    int hit = ir_classify(text, &ir);
    char what[256];

    snprintf(what, sizeof(what), "[%s] %s -> want=%s got=%s rule=%s arg=%s", tag, text,
             ir_intent_name(want), hit ? ir_intent_name(ir.intent) : "ai(none)",
             hit ? ir.rule : "-", hit ? ir.arg : "-");
    if (want == IR_NONE) check(hit == 0, what);
    else check(hit == 1 && ir.intent == want, what);
}

int main(void)
{
    printf("=== T7-05 route false-positive / negative samples ===\n");

    printf("\n[1] 任务书点名的误判样本（必须走 AI）\n");
    expect("我想聊聊天气", IR_NONE, "chat");
    expect("天气是怎么形成的", IR_NONE, "knowledge");
    expect("黑屏怎么办", IR_NONE, "help");
    expect("日期格式是什么", IR_NONE, "knowledge");
    expect("停止线是什么意思", IR_NONE, "knowledge");
    expect("推荐几首周杰伦的歌", IR_NONE, "suggest");
    expect("声音小了是什么原因", IR_NONE, "diagnose");
    expect("为什么没声音了", IR_NONE, "diagnose");
    expect("音量怎么调", IR_NONE, "howto");
    expect("时间是怎么定义的", IR_NONE, "knowledge");
    expect("屏幕坏了怎么办", IR_NONE, "help");
    expect("天气之子好看吗", IR_NONE, "movie");

    printf("\n[2] 任务书点名的正样本（必须走原厂）\n");
    expect("帮我播放周杰伦的歌", IR_MEDIA, "media");
    expect("音量调到百分之十", IR_VOLUME, "volume");
    expect("把声音调到二十五", IR_VOLUME, "volume-cn");
    expect("关闭屏幕", IR_SCREEN_OFF, "screen");
    expect("现在几点", IR_TIME, "time");
    expect("明天会下雨吗", IR_WEATHER, "weather");
    expect("声音大一点", IR_VOLUME, "volume-up");
    expect("暂停", IR_STOP, "stop");
    expect("下一首", IR_MEDIA, "media-next");

    printf("\n[3] 中文数字/全角数字/百分比\n");
    {
        ir_result ir;

        check(ir_classify("音量调到百分之十", &ir) == 1 && strcmp(ir.arg, "set:10") == 0,
              "百分之十 -> set:10");
        check(ir_classify("把声音调到二十五", &ir) == 1 && strcmp(ir.arg, "set:25") == 0,
              "二十五 -> set:25");
        check(ir_classify("音量调到５０", &ir) == 1 && strcmp(ir.arg, "set:50") == 0,
              "full width ５０ -> set:50");
        check(ir_classify("音量调到一半", &ir) == 1 && strcmp(ir.arg, "half") == 0,
              "一半 -> half");
        check(ir_classify("音量开到最大", &ir) == 1 && strcmp(ir.arg, "max") == 0,
              "最大 -> max");
    }

    printf("\n[4] 悬空谓词不产生完整意图（留给暂存门）\n");
    {
        ir_result ir;

        /* "音量调到" 里没有数量，ir 仍会命中 volume.adjust（宽规则），
         * 但暂存门用它做"还没说完"的判据，两条信息互补，不冲突。 */
        check(ir_classify("音量调到", &ir) == 1, "dangling volume still classified");
        check(strcmp(ir.arg, "set:") != 0 && ir.arg[0] != 's', "no bogus set: arg");
    }

    printf("\n[5] 意图到路由位的映射\n");
    check(ir_route_bit(IR_VOLUME) == T7B_ROUTE_VOLUME, "volume bit");
    check(ir_route_bit(IR_WEATHER) == T7B_ROUTE_WEATHER, "weather bit");
    check(ir_route_bit(IR_SCREEN_OFF) == T7B_ROUTE_SCREEN_OFF, "screen_off bit");
    check(ir_route_bit(IR_TIME) == T7B_ROUTE_TIME, "time bit");
    check(ir_route_bit(IR_SCREEN_ON) == T7B_ROUTE_SCREEN_ON, "screen_on bit");
    check(ir_route_bit(IR_MEDIA) == T7B_ROUTE_MEDIA, "media bit");
    check(ir_route_bit(IR_STOP) == T7B_ROUTE_STOP, "stop bit");
    check(ir_route_bit(IR_NONE) == 0, "none bit = 0");
    check((T7B_ROUTE_VOLUME | T7B_ROUTE_WEATHER | T7B_ROUTE_SCREEN_OFF |
           T7B_ROUTE_TIME | T7B_ROUTE_SCREEN_ON | T7B_ROUTE_MEDIA |
           T7B_ROUTE_STOP) == T7B_ROUTE_ALL, "all bits covered");

    printf("\n=== total: pass=%d fail=%d ===\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
