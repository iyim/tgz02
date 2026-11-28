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
#include <sys/stat.h>

/* ---------- 中文时间词表（UTF-8，多字节 memcmp） ---------- */

static const char *const CN_DIGIT[] = {
    "零", "一", "二", "两", "三", "四", "五", "六", "七", "八", "九", "十", NULL
};
static const int CN_DIGIT_VAL[] = { 0, 1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

/* 解析「十」「十五」「二十」「七」这类小时表达，返回 0..23，-1 = 不认识。
 * T9-17 修正："十一点" 原来被当成 1 点（反向扫描先撞到「一」就收工）；现在
 * 支持 十/十X/X十/X十Y，并让调用方优先尝试两位写法。 */
static int cn_hour(const char *p, int *consumed)
{
    int i, v = -1, c = 0;
    *consumed = 0;

    /* 十 / 十X */
    if (strncmp(p, "十", 3) == 0) {
        v = 10;
        c = 3;
        p += 3;
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v += d; c += (int)kl; }
                break;
            }
        }
        *consumed = c;
        return (v >= 0 && v <= 23) ? v : -1;
    }

    for (i = 0; CN_DIGIT[i] != NULL; i++) {
        size_t kl = strlen(CN_DIGIT[i]);
        if (strncmp(p, CN_DIGIT[i], kl) == 0) { v = CN_DIGIT_VAL[i]; c = (int)kl; break; }
    }
    if (v < 0) return -1;
    p += c;

    /* 早上的「零X」= X 点（"零点五"不常见，这里只处理整点前的零） */
    if (v == 0) {
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v = d; c += (int)kl; }
                break;
            }
        }
        *consumed = c;
        return v;
    }

    /* X十 / X十Y（二十 / 二十三点） */
    if (v >= 1 && v <= 2 && strncmp(p, "十", 3) == 0) {
        v *= 10;
        c += 3;
        p += 3;
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v += d; c += (int)kl; }
                break;
            }
        }
    }
    *consumed = c;
    return (v >= 0 && v <= 23) ? v : -1;
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

static const char *const ACT_CANCEL[] = { "取消闹钟", "删掉闹钟", "删除闹钟", "关掉闹钟", "关闭闹钟", "取消提醒", "关闭提醒", NULL };
static const char *const ACT_QUERY[]  = { "查看", "什么闹钟", "哪些闹钟", "都有什么闹钟", "闹钟状态", "有什么闹钟", NULL };
static const char *const ACT_OFFALL[] = { "关闭所有闹钟", "关闭全部闹钟", NULL };

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

/* ---------- 目的标签（T9-17："5 分钟后提醒我起床" -> 起床） ---------- */

/* 提示词：命中位置最靠后的那个决定目的语起点（长度优先，避免"提醒我"吃掉"记得提醒我"） */
static const char *const LABEL_MARKERS[] = {
    "记得提醒我", "提醒一下我", "到时候告诉我", "到时告诉我",
    "提醒我", "叫醒我", "叫我", "喊我", "让我", "记得", NULL
};
/* 目的语前的动词/助词，去掉不影响语义 */
static const char *const LABEL_LEAD[] = { "去", "一下", "赶紧", "开始", NULL };
/* 目的语后的语气词/时态尾巴 */
static const char *const LABEL_TAIL[] = {
    "的时候", "的时间", "啦", "了", "吧", "呀", "啊", "哦", "呢", "嘛", "哈", "呗", NULL
};

static int is_punct_at(const char *p)
{
    unsigned char a = (unsigned char)p[0];
    if (a == '\0') return 1;
    if (a == ',' || a == '.' || a == '!' || a == '?' || a == ';' || a == ':') return 1;
    /* 全角：，。！？；： */
    if (a == 0xEF && (unsigned char)p[1] == 0xBC) {
        unsigned char t = (unsigned char)p[2];
        if (t == 0x8C || t == 0x81 || t == 0x9F || t == 0x9B || t == 0x9A) return 1;
    }
    /* 全角：。、 */
    if (a == 0xE3 && (unsigned char)p[1] == 0x80) {
        unsigned char t = (unsigned char)p[2];
        if (t == 0x82 || t == 0x81) return 1;
    }
    return 0;
}

/* 返回 1 = 取到了有意义的目的语；0 = 没有（调用方用"闹钟"兜底） */
static int alarm_label(const char *n, char *out, size_t cap)
{
    const char *p = n, *best = NULL;
    size_t len = 0, i, o = 0;
    int cut = 1;

    if (out == NULL || cap < 8) return 0;
    out[0] = '\0';
    if (n == NULL || n[0] == '\0') return 0;

    for (i = 0; LABEL_MARKERS[i] != NULL; i++) {
        const char *q = n, *hit = NULL;
        size_t ml = strlen(LABEL_MARKERS[i]);
        while ((q = strstr(q, LABEL_MARKERS[i])) != NULL) { hit = q; q += ml; }
        if (hit != NULL) {
            const char *after = hit + ml;
            if (best == NULL || after > best) best = after;
        }
    }
    if (best != NULL) p = best;

    while (*p != '\0' && (*p == ' ' || *p == '\t')) p++;
    for (i = 0; LABEL_LEAD[i] != NULL; i++) {
        size_t kl = strlen(LABEL_LEAD[i]);
        if (strncmp(p, LABEL_LEAD[i], kl) == 0) { p += kl; break; }
    }

    while (p[len] != '\0' && !is_punct_at(p + len)) len++;
    while (cut) {
        cut = 0;
        for (i = 0; LABEL_TAIL[i] != NULL; i++) {
            size_t lf = strlen(LABEL_TAIL[i]);
            if (lf > 0 && len >= lf && memcmp(p + len - lf, LABEL_TAIL[i], lf) == 0) {
                len -= lf;
                cut = 1;
                break;
            }
        }
    }
    while (len > 0 && p[len - 1] == ' ') len--;

    /* 按 UTF-8 边界拷贝，同时剔除 JSON 里非法的 " 和 \ */
    for (i = 0; i < len && o + 1 < cap; ) {
        unsigned char ch = (unsigned char)p[i];
        int need = (ch < 0x80) ? 1 : ((ch >> 5) == 0x6 ? 2 : ((ch >> 4) == 0xE ? 3 : 4));
        if (i + (size_t)need > len) break;
        if (ch == (unsigned char)'"' || ch == (unsigned char)'\\') { i += need; continue; }
        if (o + (size_t)need + 1 > cap) break;
        memcpy(out + o, p + i, need);
        o += need;
        i += need;
    }
    out[o] = '\0';
    return out[0] != '\0';
}

/* 解析「分」表达：零五 / 五 / 十五 / 二十 / 五十 / 四十五 -> 0..59，-1 = 不认识。
 * T9-17 真机回归："五点五十提醒我赶班车" 原来解析成 5:05（五十只取了「五」）。 */
static int cn_minute(const char *p, int *consumed)
{
    int i, v = -1, c = 0;
    *consumed = 0;

    /* 「十」开头：十 / 十五 / 十九 */
    if (strncmp(p, "十", 3) == 0) {
        v = 10;
        c = 3;
        p += 3;
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v += d; c += (int)kl; }
                break;
            }
        }
        *consumed = c;
        return v;
    }

    for (i = 0; CN_DIGIT[i] != NULL; i++) {
        size_t kl = strlen(CN_DIGIT[i]);
        if (strncmp(p, CN_DIGIT[i], kl) == 0) { v = CN_DIGIT_VAL[i]; c = (int)kl; break; }
    }
    if (v < 0) return -1;
    p += c;

    /* 「零X」= 个位（"七点零五"） */
    if (v == 0) {
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v = d; c += (int)kl; }
                break;
            }
        }
        *consumed = c;
        return v;
    }

    /* 「X十」「X十Y」：二十 / 五十 / 四十五 */
    if (v >= 1 && v <= 5 && strncmp(p, "十", 3) == 0) {
        v *= 10;
        c += 3;
        p += 3;
        for (i = 0; CN_DIGIT[i] != NULL; i++) {
            size_t kl = strlen(CN_DIGIT[i]);
            if (strncmp(p, CN_DIGIT[i], kl) == 0) {
                int d = CN_DIGIT_VAL[i];
                if (d >= 1 && d <= 9) { v += d; c += (int)kl; }
                break;
            }
        }
    }
    *consumed = c;
    return (v >= 0 && v <= 59) ? v : -1;
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

    /* 相对时间：「N分钟后」「N分钟以后」。N 支持两种形态：
     *   - 阿拉伯数字（"5分钟后"）
     *   - 中文数字（"五分钟后"「十分钟后」「十五分钟后」，最多到 九十九）
     * T9-16 真机教训：ASR 把「五分钟后提醒我」识别成纯中文，原实现只认阿拉伯
     * 数字导致 E_ARG 死循环。 */
    p = strstr(n, "分钟后");
    if (p == NULL) p = strstr(n, "分钟以后");
    if (p != NULL) {
        /* 优先：紧邻的阿拉伯数字 */
        const char *q = p;
        char num[8];
        int k = 0;
        while (q > n && q[-1] >= '0' && q[-1] <= '9') q--;
        while (q < p && k + 1 < (int)sizeof(num) && *q >= '0' && *q <= '9') num[k++] = *q++;
        if (k > 0) {
            num[k] = '\0';
            rel_minutes = atoi(num);
        } else {
            /* 中文数字：从「分钟」往前扫，取最近一段可解析的中文数（一..九十九） */
            const char *best = NULL;
            int best_v = -1;
            const char *scan;
            for (scan = p - 3; scan >= n + 2; scan -= 3) {
                /* 试着从 scan 解析一个中文数（两位：X十Y / 十Y / X十 / X） */
                const char *s = scan;
                int v = -1, len = 0, i2;
                int first = -1;
                for (i2 = 0; CN_DIGIT[i2] != NULL; i2++) {
                    size_t kl = strlen(CN_DIGIT[i2]);
                    if (strncmp(s, CN_DIGIT[i2], kl) == 0) { first = CN_DIGIT_VAL[i2]; len = (int)kl; break; }
                }
                if (first < 0) continue;
                s += len;
                if (first == 10) {
                    v = 10;
                    /* 十Y */
                    for (i2 = 0; CN_DIGIT[i2] != NULL; i2++) {
                        size_t kl = strlen(CN_DIGIT[i2]);
                        if (strncmp(s, CN_DIGIT[i2], kl) == 0) {
                            int d = CN_DIGIT_VAL[i2];
                            if (d >= 1 && d <= 9) { v = 10 + d; len += (int)kl; }
                            break;
                        }
                    }
                } else if (first >= 1 && first <= 9) {
                    v = first;
                    /* X十 */
                    if (strncmp(s, "十", 3) == 0) {
                        v = first * 10; len += 3; s += 3;
                        for (i2 = 0; CN_DIGIT[i2] != NULL; i2++) {
                            size_t kl = strlen(CN_DIGIT[i2]);
                            if (strncmp(s, CN_DIGIT[i2], kl) == 0) {
                                int d = CN_DIGIT_VAL[i2];
                                if (d >= 1 && d <= 9) { v += d; len += (int)kl; }
                                break;
                            }
                        }
                    }
                }
                if (v >= 1 && v <= 720) { best = scan; best_v = v; break; }
            }
            if (best != NULL) rel_minutes = best_v;
        }
        if (rel_minutes > 0 && rel_minutes <= 720) {
            *hour = -2;
            *minute = rel_minutes;
            return 1;
        }
        snprintf(err, errcap, "range");
        return 0;
    }

    /* 「明天」修饰 */
    if (strstr(n, "明天") != NULL) *day_offset = 1;

    /* HH:MM 阿拉伯数字形式（归一化保留了 ASCII 数字与冒号？冒号会被去掉，
     * 常见 ASR 不会输出 HH:MM，所以中文点表达是主路径） */
    {
        char num[5];
        int k = 0;
        /* 找 "点" 的两种形式：中文「点」或数字+数字 */
        const char *dian = strstr(n, "点");
        if (dian != NULL) {
            /* 中文路径 */
            c = 0;
            h = cn_hour(dian > n ? dian - 3 * 1 : dian, &c);   /* 「点」前一个字可能是数字词 */
            /* 更稳：从「点」往前找中文数字词 */
            {
                /* 从「点」往前按 3/2/1 个字试：二十三点 -> 二十 / 十三 / 三。
                 * 必须先试长的，否则「二十三点」会被截成「十三」。 */
                const char *s3 = dian - 9;
                const char *s2 = dian - 6;
                const char *s1 = dian - 3;
                int back_bytes = 0;
                h = -1;
                if (s3 >= n) {
                    h = cn_hour(s3, &back_bytes);
                    if (h >= 0) c = back_bytes;
                }
                if (h < 0 && s2 >= n) {
                    h = cn_hour(s2, &back_bytes);
                    if (h >= 0) c = back_bytes;
                }
                if (h < 0 && s1 >= n) {
                    h = cn_hour(s1, &back_bytes);
                    if (h >= 0) c = back_bytes;
                }
            }
            if (h >= 0) {
                p = dian + 3;                /* 跳过「点」 */
                /* 半/一刻/零五 */
                if (strncmp(p, "半", 3) == 0) { m = 30; }
                else if (strncmp(p, "一刻", 6) == 0) { m = 15; }
                else {
                    int i2;
                    int cc = 0;
                    int mv = cn_minute(p, &cc);
                    (void) i2;
                    if (mv >= 0) { m = mv; p += cc; }
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
    /* T9-16 真机修正：worker 是 root，wu_open_wo 落盘 0600（root umask），App uid 10071
     * 读不到 -> FileNotFoundException -> 语音建的闹钟 App 永远收不到。与 route_publish
     * 同款：rename 后显式 chmod 0644。 */
    if (rc == 0 && chmod(path, 0644) != 0) rc = -1;
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
        /* T9-16 真机修正：解析失败是**有效的对话结果**（听懂了意图但没听懂时间），
         * 用 T8_SK_OK 把提示话术送 TTS；E_ARG 会进重试死循环且用户什么都听不到。 */
        return T8_SK_OK;
    }
    rel = (hour == -2) ? minute : -1;

    /* T9-17 用户反馈：闹钟不一定是起床，目的语要留下来
     * （"5 分钟后提醒我起床" -> label=起床；说不上目的才用「闹钟」） */
    if (!alarm_label(n, label, sizeof(label))) {
        snprintf(label, sizeof(label), "闹钟");
    }

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
        /* T9-16 用户反馈：确认话术要说**具体时间**（"21:36 的闹钟"），不说"的闹钟"。
         * 绝对时间用 HH:MM 点分口语（"21 点 36 分"），相对时间用 N 分钟。 */
        char when_spoken[80];
        if (rel >= 0) {
            snprintf(when_spoken, sizeof(when_spoken), "%d 分钟后", rel);
        } else if (minute == 0) {
            snprintf(when_spoken, sizeof(when_spoken), "%d 点整", hour);
        } else {
            snprintf(when_spoken, sizeof(when_spoken), "%d 点 %d 分", hour, minute);
        }
        const char *day_txt = dayoff ? "明天 " : "";
        const char *rep_txt = (repeat == 0x7F) ? "，每天都会叫你"
                            : (repeat == 0x1F) ? "，工作日都会叫你"
                            : (repeat != 0) ? "，会按星期重复" : "";
        /* T9-16 用户反馈：话术里不念 label（"布丁闹钟的闹钟"重复拗口），只念时间；
         * T9-17 补充：如果听出了目的（起床/吃药/开会…），末尾要带上它，
         * 否则用户不知道这个闹钟是干什么的。 */
        if (strcmp(label, "闹钟") != 0) {
            snprintf(res->message, sizeof(res->message),
                     "好啦，%s%s的闹钟记好了，到点提醒你%s。", day_txt, when_spoken, label);
        } else {
            snprintf(res->message, sizeof(res->message),
                     "好啦，%s%s的闹钟记好了%s，到点我叫你。", day_txt, when_spoken, rep_txt);
        }
    }
    return T8_SK_OK;
}
