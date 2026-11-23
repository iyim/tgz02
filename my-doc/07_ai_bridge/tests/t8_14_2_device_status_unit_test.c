/*
 * t8_14_2_device_status_unit_test.c -- T8-14.2 device.status 契约（纯 host，零设备）
 *
 * 覆盖任务书 §四要求的数据源用例：
 *   - 合法值（0 / 55 / 100，带换行与空格）
 *   - 异常值（101 / -5 / 非数字 / 空文件 / 文件不存在）-> 明确降级，不编数字
 *   - uptime 解析与时长格式化（分钟 / 小时+分钟 / 天+小时）
 *   - 两个数据源都不可用 -> T8_SK_E_CTX（技能失败，不是假成功）
 *   - 真实意图识别：三条任务书问句 + "设备运行时间是多少"，
 *     且不误伤"现在几点 / 今天星期几 / 音量 / 停止"，否决"电池原理 / 充电宝 / 电压 / 快递运输时间"
 *   - intent -> 技能请求翻译、技能名、注册后执行成功
 *
 * 注意：匹配发生在**规范化**后的文本上（ef_strip_fillers 会删掉"行"），
 * 所以词表以 "运多久/运时间" 为主；本测试直接覆盖这一点。
 */
#include "intent_route.h"
#include "skill_dispatch.h"

#include <stdio.h>
#include <string.h>
#ifdef _WIN32
#  include <direct.h>
#  define MKDIR(p) _mkdir(p)
#else
#  include <sys/stat.h>
#  define MKDIR(p) mkdir((p), 0700)
#endif

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

static const char *OUT_DIR = "out\\t8_14_2_unit";

static void write_text(const char *name, const char *body)
{
    char path[512];
    FILE *f;

    snprintf(path, sizeof(path), "%s\\%s", OUT_DIR, name);
    f = fopen(path, "wb");
    if (f == NULL) return;
    fwrite(body, 1, strlen(body), f);
    fclose(f);
}

static void path_of(char *out, size_t cap, const char *name)
{
    snprintf(out, cap, "%s\\%s", OUT_DIR, name);
}

/* ctx 指向临时文件；uptime 默认关闭（空串 = 读 /proc/uptime，host 上没有） */
static void ctx_init(t8_dev_ctx *c, const char *battery, const char *uptime)
{
    memset(c, 0, sizeof(*c));
    if (battery != NULL) snprintf(c->battery_path, sizeof(c->battery_path), "%s", battery);
    if (uptime != NULL) snprintf(c->uptime_path, sizeof(c->uptime_path), "%s", uptime);
}

static int run_skill(t8_dev_ctx *c, t8_skill_result *res)
{
    t8_skill_req req;

    t8_skill_req_init(&req, T8_SK_DEVICE_STATUS, "1969200");
    memset(res, 0, sizeof(*res));
    return t8_skill_device_status_exec(&req, res, c);
}

int main(void)
{
    t8_dev_ctx c;
    t8_skill_result res;
    char batt[512], upt[512];
    int rc;

    printf("=== T8-14.2 device.status unit test ===\n");
    (void)MKDIR("out");
    (void)MKDIR(OUT_DIR);

    /* ---------------- [1] 合法电量值 ---------------- */
    printf("\n[1] 合法电量：0 / 55 / 100（含换行与空格）\n");
    {
        const char *vals[] = { "0\n", "55", "100\n" };
        const char *want[] = { "电量 0%", "电量 55%", "电量 100%" };
        int i;

        for (i = 0; i < 3; i++) {
            char name[64];
            char expect[64];

            snprintf(name, sizeof(name), "batt_ok_%d.txt", i);
            write_text(name, vals[i]);
            path_of(batt, sizeof(batt), name);
            ctx_init(&c, batt, "no_such_uptime_file");
            rc = run_skill(&c, &res);
            snprintf(expect, sizeof(expect), "%s", want[i]);
            check(rc == T8_SK_OK, "legal battery -> OK");
            check(strcmp(res.message, expect) == 0, "legal battery -> '电量 N%'");
            check(strstr(res.message, "已运行") == NULL,
                  "battery-only message does not claim uptime");
        }
    }
    write_text("batt_space.txt", "  55  \n");
    path_of(batt, sizeof(batt), "batt_space.txt");
    ctx_init(&c, batt, "no_such_uptime_file");
    check(run_skill(&c, &res) == T8_SK_OK && strcmp(res.message, "电量 55%") == 0,
          "surrounding spaces tolerated");

    /* ---------------- [2] 异常电量值 -> 降级，不编数字 ---------------- */
    printf("\n[2] 异常电量：101 / -5 / abc / 空文件 / 不存在\n");
    {
        const char *names[] = { "batt_over.txt", "batt_neg.txt", "batt_junk.txt",
                                "batt_empty.txt", "batt_missing.txt" };
        const char *bodies[] = { "101\n", "-5\n", "abc\n", "" , NULL };
        int i;

        for (i = 0; i < 5; i++) {
            if (bodies[i] != NULL) write_text(names[i], bodies[i]);
            path_of(batt, sizeof(batt), names[i]);
            ctx_init(&c, batt, "no_such_uptime_file");
            rc = run_skill(&c, &res);
            check(rc == T8_SK_E_CTX, "bad/missing battery -> E_CTX (no fabricated value)");
            check(strstr(res.message, "%") == NULL, "no percentage in degraded message");
        }
    }

    /* ---------------- [3] uptime 解析与格式化 ---------------- */
    printf("\n[3] uptime：真机样本格式 + 分钟/小时/天三档格式化\n");
    {
        struct { const char *body; const char *want; } cases[] = {
            { "109436.02 129337.44\n", "已运行 1 天 6 小时" },   /* 真机实测样本 */
            { "3661.5 4000.0\n",       "已运行 1 小时 1 分钟" },
            { "90000.0 200.0\n",       "已运行 1 天 1 小时" },
            { "300.0 10.0\n",          "已运行 5 分钟" },
            { "0.9 1.0\n",             "已运行 0 分钟" }
        };
        int i;

        for (i = 0; i < 5; i++) {
            char name[64];

            snprintf(name, sizeof(name), "uptime_%d.txt", i);
            write_text(name, cases[i].body);
            path_of(upt, sizeof(upt), name);
            ctx_init(&c, "no_such_battery_file", upt);
            rc = run_skill(&c, &res);
            check(rc == T8_SK_OK, "legal uptime -> OK");
            check(strcmp(res.message, cases[i].want) == 0, "uptime formatted as expected");
        }
    }
    write_text("uptime_junk.txt", "not-a-number\n");
    path_of(upt, sizeof(upt), "uptime_junk.txt");
    ctx_init(&c, "no_such_battery_file", upt);
    check(run_skill(&c, &res) == T8_SK_E_CTX, "junk uptime -> E_CTX");

    /* ---------------- [4] 两个数据源都不可用 ---------------- */
    printf("\n[4] 两个数据源都不可用 -> 明确失败（不是假成功）\n");
    ctx_init(&c, "no_such_battery_file", "no_such_uptime_file");
    rc = run_skill(&c, &res);
    check(rc == T8_SK_E_CTX, "both sources missing -> T8_SK_E_CTX");
    check(res.code == T8_SK_E_CTX, "res.code == E_CTX");
    check(res.message[0] != '\0', "message explains the unavailability");
    check(strstr(res.message, "%") == NULL && strstr(res.message, "电量") == NULL,
          "no invented battery value");

    /* ---------------- [5] 两者都有 -> 一句话两件事 ---------------- */
    printf("\n[5] 两者都可用：电量 + 运行时长\n");
    write_text("batt_both.txt", "77\n");
    write_text("uptime_both.txt", "7200.0 1.0\n");
    path_of(batt, sizeof(batt), "batt_both.txt");
    path_of(upt, sizeof(upt), "uptime_both.txt");
    ctx_init(&c, batt, upt);
    rc = run_skill(&c, &res);
    check(rc == T8_SK_OK, "both sources -> OK");
    check(strcmp(res.message, "电量 77%，已运行 2 小时") == 0, "combined message");
    check(strlen(res.message) < T8_SK_MSG_MAX, "message fits T8_SK_MSG_MAX");

    /* ---------------- [6] 意图识别（真实问句 + 不误伤） ---------------- */
    printf("\n[6] 意图识别：设备状态问句命中，时间/音量/停止不被动，否决词生效\n");
    {
        struct { const char *text; int intent; const char *note; } cases[] = {
            { "音箱还剩多少电",        IR_DEVICE_STATUS, "power question" },
            { "现在设备电量是多少",    IR_DEVICE_STATUS, "power question 2" },
            { "音箱运行多久了",        IR_DEVICE_STATUS, "uptime question" },
            { "设备运行时间是多少",    IR_DEVICE_STATUS, "uptime vs time keyword" },
            { "现在几点",              IR_TIME,          "time stays time" },
            { "今天星期几",            IR_TIME,          "weekday stays time" },
            { "音量调到百分之30",      IR_VOLUME,        "volume untouched" },
            { "停止",                  IR_STOP,          "stop untouched" },
            { "电池是什么原理",        IR_NONE,          "knowledge question vetoed" },
            { "充电宝电量多少",        IR_NONE,          "other device vetoed" },
            { "快递运输时间多久",      IR_NONE,          "logistics vetoed" },
            { "电压是多少",            IR_NONE,          "electrical quantity vetoed" }
        };
        int i;

        for (i = 0; i < 12; i++) {
            ir_result r;

            memset(&r, 0, sizeof(r));
            (void)ir_classify(cases[i].text, &r);
            if ((int)r.intent != cases[i].intent) {
                printf("  got %s for %s\n", ir_intent_name(r.intent), cases[i].text);
            }
            check((int)r.intent == cases[i].intent, cases[i].note);
        }
        /* 设备状态必须"语义完整"才可执行 —— 与其它意图同一套规则 */
        {
            ir_result r;
            memset(&r, 0, sizeof(r));
            (void)ir_classify("音箱还剩多少电", &r);
            check(r.complete == 1, "device intent is complete for a plain question");
        }
    }

    /* ---------------- [7] 翻译 / 名称 / 注册执行 ---------------- */
    printf("\n[7] intent -> 请求、技能名、注册执行、NOIMPL 语义不变\n");
    {
        t8_skill_req req;
        t8_skill_registry reg;

        memset(&req, 0, sizeof(req));
        check(t8_skill_from_intent(IR_DEVICE_STATUS, "", "1969200", &req) == 1,
              "IR_DEVICE_STATUS mapped to a skill");
        check(req.id == T8_SK_DEVICE_STATUS, "-> T8_SK_DEVICE_STATUS");
        check(strcmp(req.session, "1969200") == 0, "session carried");
        check(req.argc == 0, "no arguments for device.status");
        check(strcmp(t8_skill_name(T8_SK_DEVICE_STATUS), "device.status") == 0,
              "name device.status");

        t8_skill_registry_init(&reg);
        memset(&req, 0, sizeof(req));
        t8_skill_req_init(&req, T8_SK_DEVICE_STATUS, "1969200");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_E_NOIMPL,
              "unregistered device.status -> NOIMPL");

        check(t8_skill_register(&reg, T8_SK_DEVICE_STATUS, t8_skill_device_status_exec, &c)
              == T8_SK_OK, "register device.status");
        write_text("batt_reg.txt", "42\n");
        path_of(batt, sizeof(batt), "batt_reg.txt");
        ctx_init(&c, batt, "no_such_uptime_file");
        rc = t8_skill_execute(&reg, &req, &res);
        check(rc == T8_SK_OK && reg.ok == 1 && reg.noimpl == 1,
              "registered execution ok, counters consistent");
        check(strcmp(res.message, "电量 42%") == 0, "registered execution returns message");
    }

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
