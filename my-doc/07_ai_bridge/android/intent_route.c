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
    out->complete = 1;              /* 默认"可以执行"，只有明确证据才降级 */
    out->note[0] = '\0';
    if (rule != NULL) {
        strncpy(out->rule, rule, sizeof(out->rule) - 1);
        out->rule[sizeof(out->rule) - 1] = '\0';
    }
    if (arg != NULL) {
        strncpy(out->arg, arg, sizeof(out->arg) - 1);
        out->arg[sizeof(out->arg) - 1] = '\0';
    }
}

/* T7-05-R1：结尾是这些 = 数量/动作还没说完。
 * "音量调到"/"音量调到百分之" 命中 volume，但拿去执行会让原厂按自己的理解
 * 把音量设成 100（真机实测），所以这类结果 complete=0，转 AI 澄清。 */
static const char *const IR_TAIL_DANGLING[] = {
    "调到", "调成", "设成", "设为", "改到", "改成", "换成", "变成",
    "百分之", "百分", "到", "为",
    NULL
};

static int ir_tail_dangling(const char *n)
{
    size_t len = strlen(n);
    int i;

    for (i = 0; IR_TAIL_DANGLING[i] != NULL; i++) {
        size_t klen = strlen(IR_TAIL_DANGLING[i]);

        if (len >= klen && strcmp(n + (len - klen), IR_TAIL_DANGLING[i]) == 0) return 1;
    }
    return 0;
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
 *
 * T7-05 修正（真机翻车点）：必须用**离数字最近的那个触发词**，而不是按表的顺序试。
 * 原实现按表顺序试，"百分之"后面没有数字时会落到后面的短触发词"到"，
 * 于是"音量调到百分之"（ASR 截断）被解析成 set:100 —— 用户没说要 100，原厂却把音量拉满。
 */
static int ir_take_cn_number(const char *norm, char *arg, size_t cap, int *ambiguous)
{
    static const char *const trig[] = {
        "百分之", "调到", "调成", "设成", "设为", "到", NULL
    };
    const char *best = NULL;      /* 最靠右的触发词之后的位置 */
    int best_is_pct = 0;          /* 该触发词是"百分之" */
    int ti;

    if (ambiguous != NULL) *ambiguous = 0;

    for (ti = 0; trig[ti] != NULL; ti++) {
        const char *hit = strstr(norm, trig[ti]);

        while (hit != NULL) {
            const char *p = hit + strlen(trig[ti]);

            if (best == NULL || p > best) {
                best = p;
                best_is_pct = (strcmp(trig[ti], "百分之") == 0);
            }
            hit = strstr(hit + strlen(trig[ti]), trig[ti]);
        }
    }
    if (best == NULL) return 0;

    {
        const char *p = best;
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
        if (!seen) return 0;
        /* "百分之" 后面只剩一个字（二 / 三 / 十 除外）很可能是"二十"被截断，
         * 无法判断用户到底要 2 还是 20 —— 这种交给 AI 澄清，绝不执行。 */
        if (best_is_pct && ambiguous != NULL) {
            size_t seg = (size_t)(p - best);


            if (seg == 3) {
                static const char *const single_cn[] = {
                    "一", "二", "两", "三", "四", "五", "六", "七", "八", "九", NULL
                };
                int k;

                for (k = 0; single_cn[k] != NULL; k++) {
                    if (memcmp(best, single_cn[k], 3) == 0) { *ambiguous = 1; break; }
                }
            }
        }
        total = section + (num < 0 ? 0 : num);
        if (total > 100) total = 100;
        if (total <= 0) return 0;
        if (snprintf(arg, cap, "set:%d", total) < 0) return 0;
        return 1;
    }
}
/* ---------------- 音量 ---------------- */

static const char *const IR_VOL_HIT[] = {
    "音量", "声音", "喇叭", "音响", "响度",
    /* 口语里不点明"音量"也能听懂的说法 */
    "大声点", "小声点", "太吵", "太响", "响一点", "轻一点", NULL
};

static const char *const IR_VOL_VETO[] = {
    /* 内容类说法：说的是"放什么"，不是音量 */
    "歌曲音量", "音量大小对比", "音量知识",
    /* T7-05：问句/知识类说法不是操作回声（真人样本："声音小了是什么原因"） */
    "什么意思", "是什么意思", "为什么", "原理", "怎么调", "怎么设置",
    "聊", "说说", "讲讲", "科普", "什么原因", "怎么回事", "怎么办", "原因",
    NULL
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
    {
        int amb = 0;

        if (ir_take_cn_number(n, arg, sizeof(arg), &amb)) {
            ir_set(out, IR_VOLUME, "volume.set", arg);
            if (amb) {
                out->complete = 0;
                snprintf(out->note, sizeof(out->note), "ambiguous-qty");
            }
            return 1;
        }
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
    "冷不冷", "热不热",
    "多少度", "几度", "最高温", "最低温", "高温", "低温",           /* T9-18：温度问句 */
    NULL
};

static const char *const IR_WEATHER_VETO[] = {
    /* 影视/歌曲作品名里带"天气" */
    "天气之子", "天气预爆",
    /* T7-05 真人样本："我想聊聊天气"/"天气是怎么形成的" 都要走 AI，
     * 但"天气怎么样""明天会下雨吗"必须留给原厂，所以这里只否决
     * "聊天/知识/成因"这些明确的非查询语境，不否决裸"怎么"。 */
    "聊", "说说", "讲讲", "谈谈", "唠", "介绍", "为什么", "怎么形成",
    "形成", "成因", "原理", "科学", "科普", "诗句", "知识", "是什么意思",
    "是什么", "怎么回事",
    "水温", "体温", "室温",                                        /* T9-18：非天气的"多少度" */
    NULL
};

static int ir_match_weather(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_WEATHER_HIT)) return 0;
    if (ir_has_any(n, IR_WEATHER_VETO)) return 0;
    ir_set(out, IR_WEATHER, "weather.keyword", "");
    return 1;
}

/* ---------------- 闹钟/提醒（T9-15） ----------------
 *
 * 原厂 smartapp 的 basedomain.ui.alarm 域有完整的云端闹钟链路：
 *   云端技能解析 -> ALARM_DATA_SYNC 下发 -> AlarmManager.setAlarmClock
 *   -> AlarmReceiver 响铃（真机验证：dumpsys alarm 有 22:00/07:30 注册，
 *   AlarmQueryReceiver 回答 Alarm is EMPTY，:business 进程存活）。
 * 我们的 LLM 建不了闹钟；命中即 PASS 回原厂，绝不接管。
 *
 * 关键词边界：
 *   - 「闹钟」「叫我起床」「提醒我」等放行；
 *   - 否决知识性提问（为什么/怎么/说说等，与 weather 否决同款）；
 *   - time 规则在 alarm 之前判定，时间疑问句不会被这里误吃。
 */
static const char *const IR_ALARM_HIT[] = {
    "闹钟", "叫我起床", "喊我起床", "叫我起来", "提醒我", "设个提醒",
    "提醒一下", "定个闹钟", "设个闹钟", "定闹钟", "设闹钟", "取消闹钟",
    "关掉闹钟", "删掉闹钟", "闹钟响了", "贪睡",
    NULL
};

static const char *const IR_ALARM_VETO[] = {
    "为什么", "怎么", "如何", "是什么", "说说", "讲讲", "聊聊", "谈谈",
    "起源", "历史", "发明", "原理", "故事", "儿歌", "诗",
    NULL
};

static int ir_match_alarm(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_ALARM_HIT)) return 0;
    if (ir_has_any(n, IR_ALARM_VETO)) return 0;
    ir_set(out, IR_ALARM, "alarm.keyword", "");
    return 1;
}

/* ---------------- 设备自身状态（T8-14.2） ----------------
 *
 * 背景：音箱自己有多少电、开了多久，原厂没有这项能力。这是第一个"纯自有"意图 ——
 * 所以它**没有 route 位**（ir_route_bit 返回 0），永远不会被放行给原厂执行；
 * 只在自有技能开关打开时由 device.status 接管，否则照旧交给模型。
 *
 * 识别边界（任务书 §三）：
 *   - 电量类：电量/电池/多少电/剩多少电/还有多少电/几格电 ...
 *   - 时长类：运行多久/开机多久/运行时间/工作多久 ...
 *   - 否决：电压/电流/电费/功率（问的是电学量，不是剩余电量）；
 *           充电宝/手机/笔记本/电动车（问的是别的设备）；推荐/买/价格（在挑商品）；
 *           什么意思/为什么/原理/怎么算/怎么办/怎么修（在问知识，不是查状态）。
 * 分类顺序上必须排在"时间"之前："设备运行时间是多少"里含 "时间是多少"（时间命中词），
 * 排在后面就会被误判成问时间。
 */
static const char *const IR_DEV_POWER_HIT[] = {
    "电量", "电池", "多少电", "剩多少电", "还有多少电", "还剩多少电",
    "几格电", "剩余电量", "电量还剩", "电量还有", "电量多少", NULL
};

/* ⚠ 匹配发生在**规范化之后**的文本上，而 ef_strip_fillers 会把语气词"行"整字删除：
 *   "运行多久" -> "运多久"，"运行时间" -> "运时间"。
 * 所以词表必须以"规范化后仍能命中"的形式为主（运多久/运时间/运了多久），
 * 原始写法只作可读性冗余保留。这一条是 T8-14.2 真机前实测踩到的坑。 */
static const char *const IR_DEV_UPTIME_HIT[] = {
    "运多久", "运了多久", "运多长时间", "运时间",
    "运行多久", "运行时间",
    "开机多久", "开机多长时间", "开机时间",
    "工作多久", "工作多长时间",
    "开多久", "开了多久", "开多长时间", NULL
};

static const char *const IR_DEV_VETO[] = {
    "电压", "电流", "电费", "功率", "充电器", "充电线", "电阻",
    "充电宝", "手机", "笔记本", "电动车", "耳机", "灯泡",
    "推荐", "买", "价格", "多少钱", "哪个好",
    "什么意思", "是什么意思", "为什么", "原理", "怎么算", "区别", "知识",
    "怎么办", "怎么修", "坏了",
    /* "运输/物流时间"是问快递，不是问本机运行时长 */
    "运输", "快递", "物流", "发货", "配送", NULL
};

static int ir_match_device_status(const char *n, ir_result *out)
{
    int power = ir_has_any(n, IR_DEV_POWER_HIT);
    int uptime = ir_has_any(n, IR_DEV_UPTIME_HIT);

    if (!power && !uptime) return 0;
    if (ir_has_any(n, IR_DEV_VETO)) return 0;

    if (power && uptime) ir_set(out, IR_DEVICE_STATUS, "device.both", "");
    else if (power)      ir_set(out, IR_DEVICE_STATUS, "device.power", "");
    else                 ir_set(out, IR_DEVICE_STATUS, "device.uptime", "");
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
    "设置闹钟", "几分钟", "多少分钟", "几点提醒", "几点叫我",
    /* T7-05 真人样本："日期格式是什么"是知识问题，不是问现在几点 */
    "格式", "怎么写", "写法", "定义", "含义", "怎么算", "换算", "由来",
    "为什么", "是什么意思", "是什么", NULL
};

static int ir_match_time(const char *n, ir_result *out)
{
    /* T8-12.20 修复遗留回归（3af077d2 引入，与本轮退出修复无关，为使回归套件
     * 全绿而最小修复）：否决词 "是什么" 会把 "现在是什么时间" 这样的真实问句
     * 一并误杀。
     * T8-12.21 收紧豁免（审查结论）：T8-12.20 的实现里 "现在"+"是什么" 同时出现
     * 会整体跳过 ir_has_any，把 快递/生日/号码/格式 等其它否决词也一起豁免。
     * 修正 = 单独遍历否决表：只有同时满足 "现在" 且否决项**恰好是** "是什么"
     * 时跳过该项，其余否决项（含 "是什么意思"）照常生效。 */
    int i;

    if (!ir_has_any(n, IR_TIME_HIT)) return 0;
    {
        int exempt_shi_sm = (ir_has(n, "现在") && ir_has(n, "是什么"));

        for (i = 0; IR_TIME_VETO[i] != NULL; i++) {
            if (exempt_shi_sm && strcmp(IR_TIME_VETO[i], "是什么") == 0) continue;
            if (ir_has(n, IR_TIME_VETO[i])) return 0;
        }
    }
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
    "屏幕暗", "亮屏",
    /* T7-05 真人样本："黑屏怎么办"是提问，不是关屏指令 */
    "怎么办", "怎么回事", "什么原因", "坏了", "为什么", "怎么修", "修理",
    "是什么意思", "什么意思", "风险", "危害", "知识", NULL
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

/* ---------------- 音乐播放（T9-25：自有原生播放器） ----------------
 *
 * 为什么单独一条意图而不是复用 IR_MEDIA：IR_MEDIA 语义是"放行给原厂"，而原厂这个
 * 号下没有音乐服务（实测回"我控制不了音箱里的应用"）。音乐必须由我们自己的
 * MusicService 执行，所以它是一条没有 route 位的自有技能意图。
 *
 * 关掉 skill_music_enabled 时，Worker 会把它退回 IR_MEDIA（见 ai_worker 的
 * music.fallback_media），行为与加音乐之前一字不差。
 */
static const char *const IR_MUSIC_PLAY[] = {
    "播放", "放一首", "放首", "放个", "放点", "来一首", "来首", "来点",
    "我想听", "想听", "我要听", "听一下", "听一首", "播一首", "播首", "唱一首", "唱首", NULL
};

static const char *const IR_MUSIC_CTRL[] = {
    "暂停", "继续播放", "接着放", "接着播", "继续播", "下一首", "上一首", "切歌",
    "换一首", "换首歌", "别放了", "停止播放", NULL
};

/* 问"有什么歌/推荐/为什么"是要建议，不是要播放；音量归 IR_VOLUME */
static const char *const IR_MUSIC_VETO[] = {
    "怎么", "为什么", "是什么", "什么意思", "推荐", "有什么", "哪首", "哪些",
    "介绍", "音量", "声音", "大声", "小声", "播放器", NULL
};

static int ir_match_music(const char *n, ir_result *out)
{
    if (ir_has_any(n, IR_MUSIC_VETO)) return 0;
    /* 控制词先判："继续播放"/"暂停播放" 里也含"播放"，先判点歌会被当成点歌。 */
    if (ir_has_any(n, IR_MUSIC_CTRL)) {
        const char *a = "pause";
        if (ir_has(n, "继续") || ir_has(n, "接着")) a = "resume";
        else if (ir_has(n, "下一首") || ir_has(n, "切歌") ||
                 ir_has(n, "换一首") || ir_has(n, "换首歌")) a = "next";
        else if (ir_has(n, "上一首")) a = "prev";
        ir_set(out, IR_MUSIC, "music.ctrl", a);
        return 1;
    }
    if (ir_has_any(n, IR_MUSIC_PLAY)) {
        ir_set(out, IR_MUSIC, "music.play", "play");
        return 1;
    }
    return 0;
}

int ir_music_query(const char *text, char *out, size_t cap)
{
    static const char *const STRIP[] = { "歌曲", "一首", "首", "个", "点", "歌", "的", NULL };
    char norm[IR_TEXT_MAX];
    int i, n;
    const char *p;
    size_t o;

    if (out == NULL || cap == 0) return 0;
    out[0] = '\0';
    if (text == NULL) return 0;
    n = ir_normalize(text, norm, sizeof(norm));
    if (n <= 0) return 0;

    p = NULL;
    for (i = 0; IR_MUSIC_PLAY[i] != NULL; i++) {
        const char *hit = strstr(norm, IR_MUSIC_PLAY[i]);
        if (hit == NULL) continue;
        if (p == NULL || hit < p) p = hit + strlen(IR_MUSIC_PLAY[i]);
    }
    if (p == NULL) return 0;

    /* 去掉"一首/首/个/点/歌/的"这类量词与助词，剩下的就是搜索词 */
    for (;;) {
        int stripped = 0;
        for (i = 0; STRIP[i] != NULL; i++) {
            size_t len = strlen(STRIP[i]);
            if (strncmp(p, STRIP[i], len) == 0) { p += len; stripped = 1; break; }
        }
        if (!stripped) break;
    }

    o = strlen(p);
    while (o > 0) {                       /* 去掉句尾语气词 */
        if (o >= 3 && (strncmp(p + o - 3, "吧", 3) == 0 || strncmp(p + o - 3, "啊", 3) == 0 ||
                       strncmp(p + o - 3, "呢", 3) == 0 || strncmp(p + o - 3, "哦", 3) == 0)) {
            o -= 3;
            continue;
        }
        break;
    }
    if (o >= cap) o = cap - 1;
    memcpy(out, p, o);
    out[o] = '\0';
    return (int)o;
}

/* ---------------- 播放控制（原厂技能） ---------------- */

static const char *const IR_MEDIA_HIT[] = {
    "继续播放", "接着放", "接着播",
    "下一首", "上一首", "切歌", "换一首", "换首歌", "单曲循环", "随机播放",
    "播放音乐", "放首歌", "来首歌", "放音乐", "播放歌曲", "播放", "放一首", "播一首", "播首", "放首",
    "来一首", "唱一首", "听歌", "停止音乐", "关掉音乐", "音乐关掉",
    /* T8-15.4：媒体暂停/恢复必须归"播放控制"，不能落进"结束对话"的停止语里 ——
     * 否则用户说一句"暂停"就把连续对话关死（真机实测：暂停之后说的话再没人听）。 */
    "暂停播放", "暂停一下", "暂停", "恢复播放", "继续播", NULL
};

static const char *const IR_MEDIA_VETO[] = {
    /* 问"有什么/推荐/哪首"是要建议，不是要控制播放 */
    "推荐", "有什么", "哪首", "哪些", "介绍", "好听", "怎么", "为什么",
    "什么意思", "是什么", "播放器", NULL
};

/* T8-15.4：播放"暂停/恢复"要能与"播放"区分开（arg 只用于我们自己的记录与日志，
 * 原厂侧仍是自己的 NLU 决定动作；但有区分才看得出用户到底想干什么）。 */
static const char *const IR_MEDIA_PAUSE[] = {
    "暂停播放", "暂停一下", "暂停", NULL
};

static int ir_match_media(const char *n, ir_result *out)
{
    if (!ir_has_any(n, IR_MEDIA_HIT)) return 0;
    if (ir_has_any(n, IR_MEDIA_VETO)) return 0;

    if (ir_has_any(n, IR_MEDIA_PAUSE)) { ir_set(out, IR_MEDIA, "media.pause", "pause"); return 1; }
    ir_set(out, IR_MEDIA, "media.play", "play");
    return 1;
}

/* ---------------- 打断播报 ---------------- */

/* 用户想"现在别说了"。这类话绝不能让模型回答（模型只会说"我停不了，你自己操作"），
 * 而且必须在 Worker 侧先把正在播的回答停掉（写 tts/control/stop）。 */
static const char *const IR_STOP_HIT[] = {
    "停止", "停下", "停一下", "先停", "别说了", "别说", "不要说了",
    "不用说了", "安静", "闭嘴", "打住", NULL
};

static const char *const IR_STOP_VETO[] = {
    /* "停止"出现在问句/解释里，不是要打断 */
    "什么意思", "为什么", "怎么", "什么是", "停止线", "停车", "停靠", "不停",
    NULL
};

static int ir_match_stop(const char *n, ir_result *out)
{
    /* T8-15.4：单字"停"只认整句 —— 否则"暂停/暂停播放"这类播放控制会被当成"结束对话"，
     * 真机实测：一句"暂停"把连续对话关死，后面说的话再没人听（"停"仍在命中表里做子串匹配）。 */
    int hit = ir_has_any(n, IR_STOP_HIT) || strcmp(n, "停") == 0;
    if (!hit) return 0;
    if (ir_has_any(n, IR_STOP_VETO)) return 0;
    ir_set(out, IR_STOP, "stop.keyword", "stop");
    return 1;
}

/* ---------------- 退出对话（T8-12.20） ----------------
 *
 * 背景（T8-12.19 审查结论）：原厂 SessionManager::exitTalk 是设备退出语音对话的
 * 唯一正常入口，触发语是"退出"类短句。之前意图路由没有退出类规则，DECIDE 接管
 * 开启时"天猫精灵退出"被归为 AI -> 登记 -> 原 onNlpResult 主体被跳过，设备永远
 * 退不出去。这是用户可感知缺陷，不是预期的 AI 拦截策略。
 *
 * 语义边界（任务书 §二.3）：
 *   - "退出静音"必须继续命中音量 unmute：本匹配器在分类链里排在音量之后，
 *     且用整句精确匹配，含其它内容的句子到不了这里；
 *   - "退出登录"不得判为退出对话：否决词表覆盖；
 *   - 不把任意包含"退出"的长句（"怎么退出微信"）判为退出：只认归一化后的
 *     整句精确匹配，不使用子串匹配。
 * 执行路径：PASS 交给原厂，原厂自己识别退出语并走 exitTalk —— 本层不做执行，
 * 也不注册本地技能（skill_dispatch 的 default 分支天然回落，无需改动）。
 */
static const char *const IR_EXIT_PHRASES[] = {
    "退出", "退出一下", "退出对话", "退出聊天",
    "结束对话", "结束聊天", "结束会话", "结束一下对话",
    NULL
};

/* 含这些内容的句子即使整句是"退出X"形态，也不是"退出语音对话" */
static const char *const IR_EXIT_VETO[] = {
    "静音",           /* 退出静音 -> volume.unmute（在音量匹配器已被接走，这里兜底） */
    "登录", "登陆",    /* 退出登录 -> 账号操作，必须走 AI/原厂其它技能 */
    NULL
};

static int ir_match_exit(const char *n, ir_result *out)
{
    int i;

    if (ir_has_any(n, IR_EXIT_VETO)) return 0;
    /* 整句精确匹配：只有"用户除了退出没说别的"才算退出对话 */
    for (i = 0; IR_EXIT_PHRASES[i] != NULL; i++) {
        if (strcmp(n, IR_EXIT_PHRASES[i]) == 0) {
            ir_set(out, IR_EXIT, "exit.keyword", "");
            return 1;
        }
    }
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
    ir_result *r;
    int hit;

    if (out != NULL) memset(out, 0, sizeof(*out));
    if (norm == NULL || norm[0] == '\0') return 0;
    r = (out != NULL) ? out : &tmp;

    /* 顺序即优先级：打断 > 关屏 > 开屏 > 天气 > 设备状态 > 时间 > 播放控制 > 音量 > 退出对话
     * （T8-12.20：退出排在最后 —— "退出静音"必须先被 volume.unmute 接走，
     *   退出匹配器只兜底纯退出短句；
     *  T8-14.2：设备状态排在时间之前 —— "设备运行时间是多少"含时间命中词，
     *   排在后面会被误判成问时间） */
    hit = ir_match_stop(norm, r) ||
          ir_match_screen_off(norm, r) ||
          ir_match_screen_on(norm, r) ||
          /* T9-25：音乐排在天气之前 —— "播放周杰伦的晴天"里"晴天"是歌名，
           * 排在天气后面会被 weather.keyword 抢走（真机自测复现过）。 */
          ir_match_music(norm, r) ||
          ir_match_weather(norm, r) ||
          ir_match_device_status(norm, r) ||
          ir_match_time(norm, r) ||
          ir_match_alarm(norm, r) ||
          ir_match_media(norm, r) ||
          ir_match_volume(norm, r) ||
          ir_match_exit(norm, r);
    if (!hit) return 0;

    /* T7-05-R1：命中意图 != 参数完整。
     * 句子结尾还挂在数量/动作上（"音量调到"/"音量调到百分之"）时只标记"识别到了"，
     * 不标记"可以执行"，由 Worker 转 AI 澄清。 */
    if (r->complete && ir_tail_dangling(norm)) {
        r->complete = 0;
        if (r->note[0] == '\0') snprintf(r->note, sizeof(r->note), "dangling");
    }
    return 1;
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

int ir_route_bit(ir_intent it)
{
    switch (it) {
    case IR_VOLUME:     return T7B_ROUTE_VOLUME;
    case IR_WEATHER:    return T7B_ROUTE_WEATHER;
    case IR_SCREEN_OFF: return T7B_ROUTE_SCREEN_OFF;
    case IR_TIME:       return T7B_ROUTE_TIME;
    case IR_SCREEN_ON:  return T7B_ROUTE_SCREEN_ON;
    case IR_MEDIA:      return T7B_ROUTE_MEDIA;
    case IR_STOP:       return T7B_ROUTE_STOP;
    case IR_EXIT:       return T7B_ROUTE_EXIT;
    case IR_ALARM:      return T7B_ROUTE_ALARM;      /* T9-19d：放行原厂闹钟 */
    case IR_MUSIC:      return 0;                    /* T9-25：自有播放器，永不放行 */
    case IR_NONE:
    default:            return 0;
    }
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
    case IR_STOP:       return "stop";
    case IR_EXIT:       return "exit";
    case IR_ALARM:      return "alarm";
    case IR_MUSIC:      return "music";
    case IR_DEVICE_STATUS: return "device_status";
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
    if (strcmp(name, "stop") == 0) return IR_STOP;
    if (strcmp(name, "exit") == 0) return IR_EXIT;
    if (strcmp(name, "alarm") == 0) return IR_ALARM;
    if (strcmp(name, "music") == 0) return IR_MUSIC;
    if (strcmp(name, "device_status") == 0) return IR_DEVICE_STATUS;
    return IR_NONE;
}
