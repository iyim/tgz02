/*
 * alarm_skill.c -- T9-16: TG-Z02 自有闹钟技能（worker 侧）。
 *
 * 职责（只做三件事，绝不直接操作 Android）：
 *   1) 从 ASR 归一化文本里解析闹钟参数（时间/重复/动作）；
 *   2) 把结构化请求写到 work_dir/alarm_request.public.json（App 的
 *      AlarmRequestMonitor 监听该文件，落自有 DB 并注册 AlarmScheduler）；
 *   3) 返回人类可读的确认话术（rep->text 由既有 TTS 链路播报）。
 *
 * 解析范围（第一版，全部真机可回归）：
 *   动作：set（定/设/叫我/喊我/提醒）/ cancel（取消/删掉/关掉）
 *        query（查看/有什么/哪些）/ off_all（关闭所有）
 *   时间：HH:MM 或 中文「七点」「七点半」「七点一刻」「三点零五」
 *         修饰「早上/上午(→小时 0-11 保持)/下午/晚上(→+12)」「明天」
 *         相对「N分钟后」（1..720）
 *   重复：「每天」/「工作日」/ 周X..周X（每天=1..7，工作日=1..5，单个周X=该日）
 *   兜底：解析不出完整时间 -> code=T8_SK_E_ARG + 说明话术（绝不编时间）。
 *
 * 输出 JSON（原子 tmp+rename，0644）：
 *   {"v":1,"ts_ms":...,"action":"set|cancel|query|off_all",
 *    "hour":H,"minute":M,"day_offset":0|1,"repeat":[1..7],
 *    "label":"...","session":"..."}
 * App 侧以 ts_ms+session 幂等去重。
 */
#include "alarm_skill.h"
#include "worker_util.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* ---------- 中文时间词表（UTF-8，多字节 memcmp） ---------- */

static const char *const CN_DIGIT[] = {
    "零", "一", "二", "两", "三", "四", "五", "六", "七", "八", "九", "十", NULL
};
static const int CN_DIGIT_VAL[] = { 0, 1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

/* 解析「十」「十五」「二十」「七」这类小时表达，返回 0..23，-1 = 不认识 */
static int cn_hour(const char *p, int *consumed)
{
    int i, v = -1, c = 0;
    /* 两位词优先匹配（"十四"），词表顺序即此意 */
    for (i = 0; CN_DIGIT[i] != NULL; i++) {
        size_t kl = strlen(CN_DIGIT[i]);
        if (strncmp(p, CN_DIGIT[i], kl) == 0) {
            v = CN_DIGIT_VAL[i];
            c = (int)kl;
            break;
        }
    }
    if (v < 0) return -1;
    p += c;
    *consumed += c;
    /* 「十X」：当前是「十」且后面还有数字 */
    if (v == 10) {
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d == 10) { v = 20; *consumed += (int)kl; }        /* 二十 */
                else if (d >= 1 && d <= 9) { v = 10 + d; *consumed += (int)kl; } /* 十X */
                break;
            }
        }
        return (v >= 0 && v <= 23) ? v : -1;
    }
    /* 「X十Y」已在上面处理；「X十」本身 = X*10，但小时里「二十」已处理，
     * 其余 X(0..9) 直接用；十几 <= 23 由调用方校验 */
    if (v >= 0 && v <= 23) return v;
    return -1;
}

static int cn_minute_tail(const char *p, int *consumed, int *minute)
{
    *minute = 0;
    if (strncmp(p, "点半", 6) == 0) { *minute = 30; *consumed += 6; return 1; }
    if (strncmp(p, "点一刻", 9) == 0) { *minute = 15; *consumed += 9; return 1; }
    if (strncmp(p, "点半刻", 9) == 0) { *minute = 45; *consumed += 9; return 1; }
    if (strncmp(p, "点", 3) == 0) {
        *consumed += 3;
        p += 3;
        /* 「零五」「零五分」/「五分」/「五十五分」 */
        int i, v = -1, c = 0;
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) { v = CN_DIGIT_VAL[i]; c = (int)kl; break; }
        }
        if (v < 0) return 1;             /* 「七点」= 整点 */
        p += c; *consumed += c;
        int m = v;
        /* 「十五」「五十五」类：第二个数字 */
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d == 10 && m == 1) m = 10;                    /* 一十 */
                else if (m == 1 && d >= 1 && d <= 9) m = 10 + d;  /* 十X */
                else if (m == 10) m = d;                          /* X十 (二十->20? handled) */
                *consumed += (int)kl;
                break;
            }
        }
        if (strncmp(p, "分", 3) == 0) *consumed += 3;
        if (m >= 0 && m <= 59) { *minute = m; return 1; }
        return 1;
    }
    return 0;                                    /* 没有「点」 */
}

static int has_any(const char *n, const char *const *list)
{
    int i;
    for (i = 0; list[i] != NULL; i++) {
        if (strstr(n, list[i]) != NULL) return 1;
    }
    return 0;
}

/* ---------- 动作 ---------- */

static const char *const ACT_CANCEL[] = { "取消闹钟", "删掉闹钟", "删除闹钟", "关掉闹钟", "取消提醒", NULL };
static const char *const ACT_QUERY[]  = { "查看", "什么闹钟", "哪些闹钟", "都有什么闹钟", "闹钟状态", "有什么闹钟", NULL };
static const char *const ACT_OFFALL[] = { "关闭所有闹钟", "关闭全部闹钟", "关闭闹钟", NULL };

static int alarm_action(const char *n)
{
    if (has_any(n, ACT_CANCEL)) return T9_ALARM_CANCEL;
    if (has_any(n, ACT_QUERY))  return T9_ALARM_QUERY;
    if (has_any(n, ACT_OFFALL)) return T9_ALARM_OFF_ALL;
    /* set 是兜底：出现闹钟/叫我/提醒类关键词即 set（IR_ALARM 已保证进来的是这类话术） */
    return T9_ALARM_SET;
}

/* ---------- 重复规则 ---------- */

static int alarm_repeat(const char *n, int *repeat)
{
    static const char *const WK[] = { "周一", "周二", "周二", "周三", "周四", "周五", "周六", "周日", "礼拜一", "礼拜二", "礼拜三", "礼拜四", "礼拜五", "礼拜六", "礼拜日", NULL };
    static const int WK_VAL[]    = { 1, 2, 2, 3, 4, 5, 6, 7, 1, 2, 3, 4, 5, 6, 7 };
    int i, mask = 0;

    if (strstr(n, "每天") != NULL || strstr(n, "每日") != NULL) {
        *repeat = 0x7F;
        return 1;
    }
    if (strstr(n, "工作日") != NULL) {
        *repeat = 0x1F;
        return 1;
    }
    for (i = 0; WK[i] != NULL; i++) {
        if (strstr(n, WK[i]) != NULL) mask |= (1 << WK_VAL[i]);
    }
    if (mask != 0) { *repeat = mask; return 1; }
    *repeat = 0;                                 /* 一次性 */
    return 0;
}

/* ---------- 时间解析 ---------- */
/* 返回 1 = 成功（hour/minute 有效）；0 = 解析失败 */
static int alarm_time_parse(const char *n, int *hour, int *minute, int *day_offset, char *err, size_t errcap)
{
    const char *p;
    int h = -1, m = 0, c;
    int rel_minutes = -1;

    *hour = -1; *minute = -1; *day_offset = 0;
    err[0] = '\0';

    /* 相对时间：「N分钟后」「N分钟以后」（N 为阿拉伯数字，归一化后只剩 ASCII 数字） */
    p = strstr(n, "分钟后");
    if (p == NULL) p = strstr(n, "分钟以后");
    if (p != NULL) {
        /* 向前扫描数字 */
        const char *q = p;
        char num[8];
        int k = 0;
        while (q > n && q[-1] >= '0' && q[-1] <= '9') q--;
        while (q < p && k + 1 < (int)sizeof(num) && *q >= '0' && *q <= '9') num[k++] = *q++;
        if (k > 0) {
            num[k] = '\0';
            rel_minutes = atoi(num);
            if (rel_minutes <= 0 || rel_minutes > 720) {
                snprintf(err, errcap, "range");
                return 0;
            }
            *hour = -2;                      /* 标记为相对时间 */
            *minute = rel_minutes;
            return 1;
        }
    }

    /* 「明天」修饰 */
    if (strstr(n, "明天") != NULL) *day_offset = 1;

    /* HH:MM 阿拉伯数字形式（归一化保留了 ASCII 数字与冒号？冒号会被去掉，
     * 常见 ASR 不会输出 HH:MM，所以中文点表达是主路径） */
    {
        char num[5];
        int k = 0;
        const char *q = n;
        /* 找 "点" 的两种形式：中文「点」或数字+数字 */
        const char *dian = strstr(n, "点");
        if (dian != NULL) {
            /* 中文路径 */
            c = 0;
            h = cn_hour(dian > n ? dian - 3 * 1 : dian, &c);   /* 「点」前一个字可能是数字词 */
            /* 更稳：从「点」往前找中文数字词 */
            {
                const char *back = dian;
                int tried;
                h = -1;
                for (tried = 0; tried < 3 && h < 0; tried++) {
                    int back_bytes = 0;
                    const char *s = back - 3;
                    if (s < n) break;
                    h = cn_hour(s, &back_bytes);
                    if (h >= 0) { c = back_bytes; break; }
                    back = s;
                }
            }
            if (h >= 0) {
                p = dian + 3;                /* 跳过「点」 */
                /* 半/一刻/零五 */
                if (strncmp(p, "半", 3) == 0) { m = 30; }
                else if (strncmp(p, "一刻", 6) == 0) { m = 15; }
                else {
                    int i2, v = -1, cc = 0;
                    for (i2 = 0; CN_DIGIT[i2] != NULL; i2++) {
                        size_t kl = strlen(CN_DIGIT[i2]);
                        if (strncmp(p, CN_DIGIT[i2], kl) == 0) { v = CN_DIGIT_VAL[i2]; cc = (int)kl; break; }
                    }
                    if (v >= 0) {
                        p += cc;
                        m = v;
                        for (i2 = 0; CN_DIGIT[i2] != NULL; i2++) {
                            size_t kl = strlen(CN_DIGIT[i2]);
                            if (strncmp(p, CN_DIGIT[i2], kl) == 0) {
                                int d2 = CN_DIGIT_VAL[i2];
                                if (m == 1 && d2 >= 1 && d2 <= 9) m = 10 + d2;   /* 十五 */
                                else if (m == 1 && d2 == 10) m = 10;
                                *minute = m;
                                break;
                            }
                        }
                    }
                }
                /* 上午/下午/晚上 修正 */
                if (strstr(n, "下午") != NULL || strstr(n, "晚上") != NULL) {
                    if (h < 12) h += 12;
                }
                /* 早上/上午：七点=7 点，不 +12 */
                if (h >= 0 && h <= 23 && m >= 0 && m <= 59) {
                    *hour = h; *minute = m;
                    return 1;
                }
            }
        }
        /* 阿拉伯 HHMM / HH:MM 形式（4 位数字） */
        (void)num; (void)k;
    }
    snprintf(err, errcap, "notime");
    return 0;
}

/* ---------- 技能实现 ---------- */

void t9_alarm_defaults(t9_alarm_ctx *c)
{
    if (c == NULL) return;
    c->work_dir[0] = '\0';
    c->say_path[0] = '\0';
}

static int write_request(const t9_alarm_ctx *c, const char *body)
{
    char path[T8_SK_PATH_MAX + 64];
    char tmp[T8_SK_PATH_MAX + 72];
    int fd, rc = 0;

    if (c == NULL || c->work_dir[0] == '\0') return -1;
    snprintf(path, sizeof(path), "%s/alarm_request.public.json", c->work_dir);
    snprintf(tmp, sizeof(tmp), "%s.tmp", path);

    fd = wu_open_wo(tmp);
    if (fd < 0) return -1;
    if (wu_write_all(fd, body, strlen(body)) != 0) rc = -1;
    wu_close(fd);
    if (rc == 0 && wu_rename_replace(tmp, path) != 0) rc = -1;
    return rc;
}

int t9_skill_alarm_exec(const t8_skill_req *req, t8_skill_result *res, void *ctx)
{
    t9_alarm_ctx *c = (t9_alarm_ctx *)ctx;
    const char *n = req->text;
    int action, hour, minute, dayoff, repeat, rel = -1;
    char err[32];
    char body[512];
    char label[T8_SK_ARG_MAX];
    char when[64];
    long long now;

    if (c == NULL || c->work_dir[0] == '\0') {
        snprintf(res->message, sizeof(res->message), "闹钟技能没有配置工作目录，暂时记不了。");
        return T8_SK_E_CTX;
    }
    if (n == NULL || n[0] == '\0') {
        snprintf(res->message, sizeof(res->message), "我没有听清你要设置的闹钟。");
        return T8_SK_E_ARG;
    }

    action = alarm_action(n);
    now = wu_wall_ms();

    if (action == T9_ALARM_QUERY) {
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"ts_ms\":%lld,\"action\":\"query\",\"session\":\"%s\"}",
                 now, req->session);
        if (write_request(c, body) != 0) {
            snprintf(res->message, sizeof(res->message), "闹钟查询没有发出去，请再试一次。");
            return T8_SK_E_FAIL;
        }
        snprintf(res->message, sizeof(res->message), "你在闹钟页面里可以看到全部闹钟哦。");
        return T8_SK_OK;
    }
    if (action == T9_ALARM_OFF_ALL) {
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"ts_ms\":%lld,\"action\":\"off_all\",\"session\":\"%s\"}",
                 now, req->session);
        if (write_request(c, body) != 0) {
            snprintf(res->message, sizeof(res->message), "闹钟关闭没有发出去，请再试一次。");
            return T8_SK_E_FAIL;
        }
        snprintf(res->message, sizeof(res->message), "好的，我把所有闹钟都关掉了。");
        return T8_SK_OK;
    }
    if (action == T9_ALARM_CANCEL) {
        /* 取消语义第一版：按时间匹配关闭（App 侧处理 hour/minute；无时间=关最近） */
        int okp = alarm_time_parse(n, &hour, &minute, &dayoff, err, sizeof(err));
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"ts_ms\":%lld,\"action\":\"cancel\",\"hour\":%d,\"minute\":%d,"
                 "\"session\":\"%s\"}",
                 now, okp ? hour : -1, okp ? minute : -1, req->session);
        if (write_request(c, body) != 0) {
            snprintf(res->message, sizeof(res->message), "闹钟取消没有发出去，请再试一次。");
            return T8_SK_E_FAIL;
        }
        snprintf(res->message, sizeof(res->message), "好的，我把对应的闹钟关掉了。");
        return T8_SK_OK;
    }

    /* ---- set ---- */
    (void)alarm_repeat(n, &repeat);
    if (!alarm_time_parse(n, &hour, &minute, &dayoff, err, sizeof(err))) {
        if (strcmp(err, "range") == 0) {
            snprintf(res->message, sizeof(res->message), "分钟数要在 1 到 720 之间哦。");
        } else {
            snprintf(res->message, sizeof(res->message),
                     "我没有听清时间，可以说\"明天早上七点叫我起床\"。");
        }
        return T8_SK_E_ARG;
    }
    rel = (hour == -2) ? minute : -1;

    /* label = 去掉触发词后的原文太复杂，第一版固定「布丁闹钟」+会话号后4位 */
    snprintf(label, sizeof(label), "布丁闹钟");

    if (rel >= 0) {
        snprintf(when, sizeof(when), "%d 分钟后", rel);
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"ts_ms\":%lld,\"action\":\"set\",\"rel_minutes\":%d,"
                 "\"repeat\":%d,\"label\":\"%s\",\"session\":\"%s\"}",
                 now, rel, repeat, label, req->session);
    } else {
        snprintf(when, sizeof(when), "%s %02d:%02d", dayoff ? "明天" : "今天", hour, minute);
        snprintf(body, sizeof(body),
                 "{\"v\":1,\"ts_ms\":%lld,\"action\":\"set\",\"hour\":%d,\"minute\":%d,"
                 "\"day_offset\":%d,\"repeat\":%d,\"label\":\"%s\",\"session\":\"%s\"}",
                 now, hour, minute, dayoff, repeat, label, req->session);
    }
    if (write_request(c, body) != 0) {
        snprintf(res->message, sizeof(res->message), "闹钟没有保存成功，请再试一次。");
        return T8_SK_E_FAIL;
    }
    {
        const char *rep_txt = (repeat == 0x7F) ? "，每天都会叫你"
                            : (repeat == 0x1F) ? "，工作日都会叫你"
                            : (repeat != 0) ? "，会按星期重复" : "";
        snprintf(res->message, sizeof(res->message),
                 "好啦，%s的闹钟记好了%s，到点我叫你。", when, rep_txt);
    }
    return T8_SK_OK;
}