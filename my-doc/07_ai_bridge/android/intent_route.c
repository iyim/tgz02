/*
 * intent_route.c -- 见 intent_route.h
 *
 * 规则表结构（每张表都是 NULL 结尾的字符串数组）：
 *   hit   必须至少命中一个（子串匹配，归一化后的文本）
 *   veto  命中任意一个就否决（用来避免"屏幕亮度"被当成"关屏"这类误判）
 *
 * 归一化之后的文本只有汉字/字母/数字，所以关键词里不要写空格和标点。
 */
#include "intent_route.h"

#include <stdio.h>
#include <string.h>

/* ---------------- 小工具 ---------------- */

static int ir_has(const char *s, const char *kw)
{
    return (kw != NULL && kw[0] != '\0' && strstr(s, kw) != NULL);
}

static int ir_has_any(const char *s, const char *const *list)
{
    int i;

    for (i = 0; list[i] != NULL; i++) {
        if (ir_has(s, list[i])) return 1;
    }
    return 0;
}

static void ir_set(ir_result *out, ir_intent it, const char *rule, const char *arg)
{
    if (out == NULL) return;
    out->intent = it;
    if (rule != NULL) {
        strncpy(out->rule, rule, sizeof(out->rule) - 1);
        out->rule[sizeof(out->rule) - 1] = '\0';
    }
    if (arg != NULL) {
        strncpy(out->arg, arg, sizeof(out->arg) - 1);
        out->arg[sizeof(out->arg) - 1] = '\0';
    }
}

/* 取第一个数字串（归一化后的文本只保留 ASCII 数字）写成 "set:<n>" */
static int ir_take_number(const char *norm, char *arg, size_t cap)
{
    const char *p = norm;
    char digits[12];
    size_t n = 0;

    if (norm == NULL || arg == NULL || cap == 0) return 0;
    while (*p != '\0') {
        if (*p >= '0' && *p <= '9') {
            if (n + 1 < sizeof(digits)) digits[n++] = *p;
            p++;
            continue;
        }
        if (n > 0) break;          /* 已经取到一段就停（"调到30，再大点"只取第一个） */
        p++;
    }
    if (n == 0) return 0;
    digits[n] = '\0';
    if (snprintf(arg, cap, "set:%s", digits) < 0) return 0;
    return 1;
}

/* 中文数字（零..九）：UTF-8 比较，不能用字符常量（汉字是多字节） */
static int ir_cn_digit(const char *p)
{
    static const char *const digit_cn[] = {
        "零", "〇", "一", "二", "两", "三", "四", "五", "六", "七", "八", "九", NULL
    };
    static const int digit_val[] = { 0, 0, 1, 2, 2, 3, 4, 5, 6, 7, 8, 9 };
    int i;

    for (i = 0; digit_cn[i] != NULL; i++) {
        if (memcmp(p, digit_cn[i], 3) == 0) return digit_val[i];
    }
    return -1;
}
/*
 * 中文数字：只有"数量语境"才解析 —— 出现 百分之 / 调到 / 调成 / 设成 / 设为 之后才是数值，
 * 否则"调大一点""小一点"里的"一"会被误当成 1。
 * 支持 0..100：十 / 十五 / 二十五 / 三十 / 一百 / 一百五（一百五 => 150 超范围，按 100 处理）。
 */
static int ir_take_cn_number(const char *norm, char *arg, size_t cap)
{
    static const char *const trig[] = {
        "百分之", "调到", "调成", "调到", "设成", "设为", "到", NULL
    };
    int ti;

    for (ti = 0; trig[ti] != NULL; ti++) {
        const char *hit = strstr(norm, trig[ti]);

        while (hit != NULL) {
            const char *p = hit + strlen(trig[ti]);
            int section = 0, num = -1, seen = 0, total;

            while (*p != '\0') {
                const unsigned char *b = (const unsigned char *)p;

                if (b[0] < 0xE0) break;                    /* 数字段结束 */
                if (memcmp(p, "百", 3) == 0) {
                    section += (num <= 0 ? 1 : num) * 100;
                    num = -1;
                    seen = 1;
                    p += 3;
                    continue;
                }
                if (memcmp(p, "十", 3) == 0) {
                    section += (num <= 0 ? 1 : num) * 10;
                    num = -1;
                    seen = 1;
                    p += 3;
                    continue;
                }
                {
                    int d = ir_cn_digit(p);
                    if (d < 0) break;
                    num = d;
                    seen = 1;
                    p += 3;
                }
            }
            if (seen) {
                total = section + (num < 0 ? 0 : num);
                if (total > 100) total = 100;
                if (total > 0) {
                    if (snprintf(arg, cap, "set:%d", total) < 0) return 0;
                    return 1;
                }
            }
            hit = strstr(hit + 3, trig[ti]);
        }
    }
    return 0;
}
/* ---------------- 音量 ---------------- */

static const char *const IR_VOL_HIT[] = {
    "音量", "声音", "喇叭", "音响", "响度",
    /* 口语里不点明"音量"也能听懂的说法 */
    "大声点", "小声点", "太吵", "太响", "响一点", "轻一点", NULL
};

static const char *const IR_VOL_VETO[] = {
    /* 内容类说法：说的是"放什么"，不是音量 */
    "歌曲音量", "音量大小对比", "音量知识", NULL
};

static const char *const IR_VOL_MUTE[] = {
    "静音", "别出声", "不要出声", "关掉声音", "关闭声音", "声音关掉",
    "把声音关掉", "把声音关", "音量关掉", "关闭音量", "声音静音", "音量静音",
    NULL
};

static const char *const IR_VOL_UNMUTE[] = {
    "取消静音", "退出静音", "恢复声音", "打开声音", "声音打开",
    "恢复音量", "音量恢复", "打开音量", "声音开一下", NULL
};

static const char *const IR_VOL_UP[] = {
    "调大", "调高", "大一点", "大点", "大声", "响一点", "响点", "高一点",
    "加一点", "增大", "增加", "开大", "开到", "太小声", "太小", "听不清",
    "声音大", "音量大", "音量加", "音量高", "声音加", NULL
};

static const char *const IR_VOL_DOWN[] = {
    "调小", "调低", "小一点", "小点", "小声", "轻一点", "轻点", "低一点",
    "减小", "降低", "关小", "太吵", "太响", "声音小", "音量小", "音量减",
    "音量低", "声音减", NULL
};

/* 只要出现"音量/声音"再加任何一个动作词，就说明用户在操作音量（具体方向交给原厂解析）。
 * 这一条是为了覆盖"音量调到百分之十""声音给到一半""音量设成最大"这类说法。 */
static const char *const IR_VOL_ACTION[] = {
    "调", "设", "改", "到", "百分", "最大", "最小", "一半", "加", "减",
    "大", "小", "高", "低", "关", "开", "响", "轻", "静", NULL
};

static int ir_match_volume(const char *n, ir_result *out)
{
    char arg[IR_ARG_MAX];

    /* 静音/取消静音优先：它们本身就是完整指令，不要求出现"音量/声音" */
    if (ir_has_any(n, IR_VOL_VETO)) return 0;
    if (ir_has_any(n, IR_VOL_UNMUTE)) {
        ir_set(out, IR_VOLUME, "volume.unmute", "unmute");
        return 1;
    }
    if (ir_has_any(n, IR_VOL_MUTE)) {
        ir_set(out, IR_VOLUME, "volume.mute", "mute");
        return 1;
    }

    if (!ir_has_any(n, IR_VOL_HIT)) return 0;

    arg[0] = '\0';
    if (ir_take_number(n, arg, sizeof(arg))) {
        ir_set(out, IR_VOLUME, "volume.set", arg);
        return 1;
    }
    if (ir_has(n, "一半")) {
        ir_set(out, IR_VOLUME, "volume.half", "half");
        return 1;
    }
    if (ir_take_cn_number(n, arg, sizeof(arg))) {
        ir_set(out, IR_VOLUME, "volume.set", arg);
        return 1;
    }
    if (ir_has(n, "最大") || ir_has(n, "全开")) {
        ir_set(out, IR_VOLUME, "volume.max", "max");
        return 1;
    }
    if (ir_has(n, "最小")) {
        ir_set(out, IR_VOLUME, "volume.min", "min");
        return 1;
    }
    if (ir_has_any(n, IR_VOL_UP)) {
        ir_set(out, IR_VOLUME, "volume.up", "up");
        return 1;
    }
    if (ir_has_any(n, IR_VOL_DOWN)) {
        ir_set(out, IR_VOLUME, "volume.down", "down");
        return 1;
    }
    /* 只说了"音量"两个字：原厂会追问，我们也交给原厂，不让模型猜 */
    if (strcmp(n, "音量") == 0 || strcmp(n, "声音") == 0) {
        ir_set(out, IR_VOLUME, "volume.bare", "");
        return 1;
    }
    /* 还有"音量 + 动作词"的其它口语（"音量给我调一下"）：仍然交给原厂 */
    if (ir_has_any(n, IR_VOL_ACTION)) {
        ir_set(out, IR_VOLUME, "volume.adjust", "");
        return 1;
    }
    return 0;
}

/* ---------------- 天气 ---------------- */

static const char *const IR_WEATHER_HIT[] = {
    "天气", "下雨", "下雪", "雨伞", "带伞", "气温", "刮风", "风大",
    "空气质量", "空气指数", "紫外线", "雾霾", "阴天", "晴天", "穿什么衣服",
    "冷不冷", "热不热", NULL
};

static const char *const IR_WEATHER_VETO[] = {
    /* 影视/歌曲作品名里带"天气" */
    "天气之子", "天气预爆", NULL
};

static int ir_match_weather(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_WEATHER_HIT)) return 0;
    if (ir_has_any(n, IR_WEATHER_VETO)) return 0;
    ir_set(out, IR_WEATHER, "weather.keyword", "");
    return 1;
}

/* ---------------- 时间 ---------------- */

static const char *const IR_TIME_HIT[] = {
    "几点", "几时", "什么时间", "现在时间", "当前时间", "时间是多少",
    "几号", "多少号", "星期几", "礼拜几", "周几", "今天日期", "日期",
    "今天星期", "明天星期", "今天几", "现在几", NULL
};

static const char *const IR_TIME_VETO[] = {
    /* 带"几号/日期"但不是问时间的说法 */
    "号码", "电话", "生日", "航班", "车次", "订单", "快递", "快递号",
    "房间号", "门牌", "编号", "账号", "密码", "倒计时", "定个闹钟",
    "设置闹钟", "几分钟", "多少分钟", "几点提醒", "几点叫我", NULL
};

static int ir_match_time(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_TIME_HIT)) return 0;
    if (ir_has_any(n, IR_TIME_VETO)) return 0;
    ir_set(out, IR_TIME, "time.keyword", "");
    return 1;
}

/* ---------------- 关屏 / 开屏 ---------------- */

static const char *const IR_SCREEN_OFF_HIT[] = {
    "关闭屏幕", "关掉屏幕", "关屏幕", "把屏幕关", "屏幕关掉", "屏幕关闭",
    "屏幕关了", "熄屏", "息屏", "屏幕熄灭", "屏幕灭", "关屏", "黑屏",
    "关一下屏幕", "关一下屏", "把屏关", "屏幕关一下", NULL
};

static const char *const IR_SCREEN_VETO[] = {
    /* 亮度类不是关屏（原厂另有能力，这里不抢） */
    "亮度", "调亮", "点亮", "打开屏幕", "开屏", "亮一点", "更亮", "暗一点",
    "屏幕暗", "亮屏", NULL
};

static const char *const IR_SCREEN_ON_HIT[] = {
    "打开屏幕", "开启屏幕", "点亮屏幕", "屏幕点亮", "屏幕打开", "把屏幕打开",
    "开一下屏幕", "开屏", "亮屏", "屏幕亮起来", "亮起来", NULL
};

static int ir_match_screen_off(const char *n, ir_result *out)
{
    if (ir_has_any(n, IR_SCREEN_VETO)) return 0;
    if (ir_has_any(n, IR_SCREEN_OFF_HIT)) {
        ir_set(out, IR_SCREEN_OFF, "screen.keyword", "");
        return 1;
    }
    /* 组合式："把屏幕关掉/屏幕关一下/关掉这块屏" */
    if ((ir_has(n, "屏幕") || ir_has(n, "显示屏") || ir_has(n, "这块屏")) &&
        (ir_has(n, "关") || ir_has(n, "熄") || ir_has(n, "灭"))) {
        ir_set(out, IR_SCREEN_OFF, "screen.pattern", "");
        return 1;
    }
    return 0;
}

static int ir_match_screen_on(const char *n, ir_result *out)
{
    /* 带"关/熄/灭/暗"的说法一律不算开屏（否则"关屏幕"会被反向命中） */
    if (ir_has(n, "关") || ir_has(n, "熄") || ir_has(n, "灭") || ir_has(n, "暗")) return 0;
    if (ir_has_any(n, IR_SCREEN_ON_HIT)) {
        ir_set(out, IR_SCREEN_ON, "screen.on", "");
        return 1;
    }
    return 0;
}

/* ---------------- 播放控制（原厂技能） ---------------- */

static const char *const IR_MEDIA_HIT[] = {
    "暂停", "继续播放", "接着放", "接着播", "停止播放", "静音播放",
    "下一首", "上一首", "切歌", "换一首", "换首歌", "单曲循环", "随机播放",
    "播放音乐", "放首歌", "来首歌", "放音乐", "播放歌曲", "播放", "放一首", "播一首", "播首", "放首",
    "来一首", "唱一首", "听歌", "停止音乐", "关掉音乐", "音乐关掉", NULL
};

static const char *const IR_MEDIA_VETO[] = {
    /* 问"有什么/推荐/哪首"是要建议，不是要控制播放 */
    "推荐", "有什么", "哪首", "哪些", "介绍", "好听", "怎么", "为什么",
    "什么意思", "是什么", "播放器", NULL
};

static int ir_match_media(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_MEDIA_HIT)) return 0;
    if (ir_has_any(n, IR_MEDIA_VETO)) return 0;
    if (ir_has(n, "暂停")) { ir_set(out, IR_MEDIA, "media.pause", "pause"); return 1; }
    if (ir_has_any(n, IR_MEDIA_HIT)) { ir_set(out, IR_MEDIA, "media.play", "play"); return 1; }
    return 0;
}

/* ---------------- 归一化与分类 ---------------- */

int ir_normalize(const char *text, char *out, size_t cap)
{
    char raw[IR_TEXT_MAX];
    int n;

    if (out == NULL || cap == 0) return 0;
    out[0] = '\0';
    if (text == NULL) return 0;

    n = ef_normalize(text, raw, sizeof(raw));
    if (n <= 0) return 0;
    n = ef_strip_fillers(raw, out, cap);
    if (n <= 0) {
        /* 整句都是唤醒词/语气词：保留归一化结果，交给上层按"无指令"处理 */
        strncpy(out, raw, cap - 1);
        out[cap - 1] = '\0';
        return (int)strlen(out);
    }
    return n;
}

/* 全角数字 -> ASCII（归一化只保留 ASCII 数字，先换掉才不会把"１２３"当标点丢掉） */
static int ir_fold_digits(const char *in, char *out, size_t cap)
{
    const unsigned char *p = (const unsigned char *)in;
    size_t o = 0;

    if (out == NULL || cap == 0) return 0;
    out[0] = '\0';
    if (in == NULL) return 0;
    while (*p != '\0') {
        if (o + 4 >= cap) break;
        if (p[0] == 0xEF && p[1] == 0xBC && p[2] >= 0x90 && p[2] <= 0x99) {
            out[o++] = (char)('0' + (p[2] - 0x90));
            p += 3;
            continue;
        }
        out[o++] = (char)*p++;
    }
    out[o] = '\0';
    return (int)o;
}

int ir_classify_norm(const char *norm, ir_result *out)
{
    ir_result tmp;

    if (out != NULL) memset(out, 0, sizeof(*out));
    if (norm == NULL || norm[0] == '\0') return 0;

    /* 顺序即优先级：关屏 > 开屏 > 天气 > 时间 > 播放控制 > 音量 */
    if (ir_match_screen_off(norm, out != NULL ? out : &tmp)) return 1;
    if (ir_match_screen_on(norm, out != NULL ? out : &tmp)) return 1;
    if (ir_match_weather(norm, out != NULL ? out : &tmp)) return 1;
    if (ir_match_time(norm, out != NULL ? out : &tmp)) return 1;
    if (ir_match_media(norm, out != NULL ? out : &tmp)) return 1;
    if (ir_match_volume(norm, out != NULL ? out : &tmp)) return 1;
    return 0;
}

int ir_classify(const char *text, ir_result *out)
{
    char prepared[IR_TEXT_MAX];
    char norm[IR_TEXT_MAX];
    int n;

    if (out != NULL) memset(out, 0, sizeof(*out));
    if (text == NULL) return 0;
    (void)ir_fold_digits(text, prepared, sizeof(prepared));
    n = ir_normalize(prepared, norm, sizeof(norm));
    if (n <= 0) return 0;
    return ir_classify_norm(norm, out);
}

const char *ir_intent_name(ir_intent it)
{
    switch (it) {
    case IR_VOLUME:     return "volume";
    case IR_WEATHER:    return "weather";
    case IR_SCREEN_OFF: return "screen_off";
    case IR_TIME:       return "time";
    case IR_SCREEN_ON:  return "screen_on";
    case IR_MEDIA:      return "media";
    case IR_NONE:
    default:            return "none";
    }
}

int ir_intent_from_name(const char *name)
{
    if (name == NULL) return IR_NONE;
    if (strcmp(name, "volume") == 0) return IR_VOLUME;
    if (strcmp(name, "weather") == 0) return IR_WEATHER;
    if (strcmp(name, "screen_off") == 0) return IR_SCREEN_OFF;
    if (strcmp(name, "time") == 0) return IR_TIME;
    if (strcmp(name, "screen_on") == 0) return IR_SCREEN_ON;
    if (strcmp(name, "media") == 0) return IR_MEDIA;
    return IR_NONE;
}
