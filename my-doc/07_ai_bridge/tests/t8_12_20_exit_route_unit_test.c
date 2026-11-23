/*
 * t8_12_20_exit_route_unit_test.c -- T8-12.20 退出意图 host 单测（纯函数，零真机、零网络）
 *
 * 缺陷背景（T8-12.19 审查结论）：
 *   DECIDE 接管开启时"天猫精灵退出"被 ir_classify 归为 IR_NONE -> why=AI ->
 *   登记会话 -> t8_to_should_drop=1 -> 原 onNlpResult 主体被跳过 -> 原厂
 *   exitTalk 链路走不到，设备退不出对话。修复 = 新增 IR_EXIT + T7B_ROUTE_EXIT。
 *
 * 覆盖（任务书 §三）：
 *   [1] 正向：退出 / 天猫精灵退出 / 退出一下 / 结束对话（+口语变体）
 *   [2] 反向回归：退出静音->volume、退出登录->不命中退出、长句含退出->AI、
 *       讲笑话->AI、现在几点->time、停止播放->stop、播放/媒体->media
 *   [3] 接管核心断言：DECIDE + 明确退出 + 路由开启 -> PASS 且不登记；
 *       关闭退出路由 -> TAKE(ai-intent-off)；普通 AI 仍 DROP。
 *   [4] 配置路径：worker_conf 名字解析 "exit" / "all" 含新位 / 旧配置串兼容；
 *       wc_route_intents_str 回写出 exit。
 *   [5] 映射完整性：ir_route_bit / ir_intent_name / ir_intent_from_name。
 */
#include "intent_route.h"
#include "nlu_takeover.h"
#include "worker_conf.h"
#include "worker_util.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static char g_tmp[512];

static const char *conf_path(void)
{
    static char p[512];
    snprintf(p, sizeof(p), "%s\\worker.conf", g_tmp);
    return p;
}

static void write_text(const char *path, const char *text)
{
    int fd = wu_open_wo(path);

    if (fd < 0) return;
    (void)wu_write_all(fd, text, strlen(text));
    (void)wu_fsync(fd);
    wu_close(fd);
}

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

/* check with a formatted label (printf-style) */
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
    printf("=== T8-12.20 exit intent route unit test ===\n");

    /* ---------------- [1] 正向 ---------------- */
    printf("\n[1] 正向：明确退出表达（整句精确匹配）\n");
    expect_intent("退出", IR_EXIT, "bare exit");
    expect_intent("天猫精灵退出", IR_EXIT, "wake + exit");
    expect_intent("天猫精灵，退出", IR_EXIT, "wake + comma + exit");
    expect_intent("退出一下", IR_EXIT, "exit a bit");
    expect_intent("天猫精灵退出一下", IR_EXIT, "wake + exit a bit");
    expect_intent("结束对话", IR_EXIT, "end dialog");
    expect_intent("天猫精灵结束对话", IR_EXIT, "wake + end dialog");
    expect_intent("天猫精灵结束一下对话", IR_EXIT, "variant end");
    expect_intent("退出聊天", IR_EXIT, "exit chat");
    expect_intent("结束聊天", IR_EXIT, "end chat");
    {
        ir_result r;
        memset(&r, 0, sizeof(r));
        check(ir_classify("天猫精灵退出", &r) == 1 && strcmp(r.rule, "exit.keyword") == 0,
              "exit rule name is exit.keyword");
        check(ir_route_bit(IR_EXIT) == T7B_ROUTE_EXIT, "route bit of IR_EXIT");
    }

    /* ---------------- [2] 反向与回归 ---------------- */
    printf("\n[2] 反向与回归\n");
    expect_intent("天猫精灵退出静音", IR_VOLUME, "exit-mute must stay volume.unmute");
    {
        ir_result r;
        memset(&r, 0, sizeof(r));
        check(ir_classify("退出静音", &r) == 1 && r.intent == IR_VOLUME &&
              strcmp(r.arg, "unmute") == 0,
              "bare exit-mute -> volume.unmute arg");
    }
    expect_intent("退出登录", IR_NONE, "exit-login must NOT be exit dialog");
    expect_intent("天猫精灵退出登录", IR_NONE, "wake + exit-login not exit dialog");
    expect_intent("退出登陆", IR_NONE, "variant char 登陆");
    expect_intent("怎么退出微信", IR_NONE, "long sentence containing 退出 stays AI");
    expect_intent("怎么退出QQ账号", IR_NONE, "long sentence containing 退出 stays AI");
    expect_intent("退出模式是什么意思", IR_NONE, "knowledge question stays AI");
    expect_intent("给我讲个笑话", IR_NONE, "AI chat unchanged");
    expect_intent("天猫精灵给我讲一个笑话", IR_NONE, "AI chat (wake) unchanged");
    expect_intent("现在几点了", IR_TIME, "time route unchanged");
    expect_intent("天猫精灵现在几点", IR_TIME, "time route (wake) unchanged");
    expect_intent("停止播放", IR_STOP, "stop route unchanged");
    expect_intent("暂停", IR_MEDIA, "media (T8-15.4: pause must not end dialog)");
    expect_intent("继续播放", IR_MEDIA, "media route unchanged");
    expect_intent("下一首", IR_MEDIA, "media route unchanged");
    expect_intent("音量调到百分之三十", IR_VOLUME, "volume route unchanged");
    expect_intent("查一下天气", IR_WEATHER, "weather route unchanged");
    expect_intent("关闭屏幕", IR_SCREEN_OFF, "screen_off route unchanged");
    expect_intent("打开屏幕", IR_SCREEN_ON, "screen_on route unchanged");

    /* ---------------- [3] 接管核心断言 ---------------- */
    printf("\n[3] 接管核心断言（t8_to_on_final 决策）\n");
    {
        t8_to_state st;
        t8_to_why why;
        int mask_all = T7B_ROUTE_ALL;

        /* 3a：DECIDE 下明确退出命中且路由开启 -> PASS，不登记为 AI 会话 */
        (void)t8_to_init(&st);
        (void)t8_to_enabled_set(&st, 1);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-exit", "天猫精灵退出", 1000, mask_all, &why);
            check(d == T8_TO_PASS, "exit with route enabled must PASS to factory");
            check(why == T8_TO_WHY_NONE, "why must be none on PASS");
            check(st.marked == 0UL, "exit must NOT be registered (marked=0)");
            check(st.passed == 1UL, "passed counter = 1");
            check(t8_to_should_drop(&st, "s-exit", 1200) == 0,
                  "exit session must not be dropped (factory exitTalk must run)");
        }
        t8_to_destroy(&st);

        /* 3b：关闭退出路由 -> 遵循现有 route mask 机制 -> TAKE(ai-intent-off) */
        (void)t8_to_init(&st);
        (void)t8_to_enabled_set(&st, 1);
        why = T8_TO_WHY_NONE;
        {
            int mask_no_exit = T7B_ROUTE_ALL & ~T7B_ROUTE_EXIT;
            t8_to_decision d = t8_to_on_final(&st, "s-exit-off", "天猫精灵退出", 1000,
                                              mask_no_exit, &why);
            check(d == T8_TO_TAKE, "exit with route disabled must be taken over");
            check(why == T8_TO_WHY_AI_INTENT_OFF, "why must be ai-intent-off");
            check(st.marked == 1UL, "disabled-exit registers the session");
        }
        t8_to_destroy(&st);

        /* 3c：普通 AI 仍然可以被 DROP */
        (void)t8_to_init(&st);
        (void)t8_to_enabled_set(&st, 1);
        {
            t8_to_decision d = t8_to_on_final(&st, "s-ai", "天猫精灵给我讲一个笑话", 1000,
                                              mask_all, NULL);
            check(d == T8_TO_TAKE, "AI utterance still taken over");
            check(t8_to_should_drop(&st, "s-ai", 1200) == 1, "AI session still dropped");
        }
        t8_to_destroy(&st);
    }

    /* ---------------- [4] 配置路径（worker_conf，经 wc_load 真实解析） ---------------- */
    printf("\n[4] 配置路径：名字解析 / all 位覆盖 / 旧配置兼容 / 未知 token 前向兼容 / 回写\n");
    {
        snprintf(g_tmp, sizeof(g_tmp), "%s\\t81220_%ld",
                 getenv("TEMP") ? getenv("TEMP") : ".", (long)wu_self_pid());
        (void)wu_mkdir_p(g_tmp);
        (void)wu_unlink(conf_path());
    }
    {
        t6b_config cfg;
        char err[256];
        int applied = 0;

        /* 4a：显式 exit 名字（经真实 wc_load 解析，不是直接调内部函数） */
        memset(&cfg, 0, sizeof(cfg));
        write_text(conf_path(), "route_intents=volume,time,exit\n");
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0,
              "route_intents with explicit exit parses (wc_load)");
        check((cfg.route_intents & T7B_ROUTE_EXIT) != 0, "explicit exit sets the exit bit");
        check((cfg.route_intents & (T7B_ROUTE_VOLUME | T7B_ROUTE_TIME)) ==
              (T7B_ROUTE_VOLUME | T7B_ROUTE_TIME), "other bits kept alongside exit");

        /* 4b：all 现在包含 exit 位 */
        memset(&cfg, 0, sizeof(cfg));
        write_text(conf_path(), "route_intents=all\n");
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0,
              "route_intents=all parses");
        checkf(cfg.route_intents == T7B_ROUTE_ALL,
               "all covers every bit including exit (0x%02x)", (unsigned)cfg.route_intents);
        check((cfg.route_intents & T7B_ROUTE_EXIT) != 0, "all includes exit bit");

        /* 4c：旧配置串（不含 exit）完全兼容 */
        memset(&cfg, 0, sizeof(cfg));
        write_text(conf_path(), "route_intents=volume,weather,screen_off,time\n");
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0,
              "legacy list parses");
        check(cfg.route_intents == (T7B_ROUTE_VOLUME | T7B_ROUTE_WEATHER |
                                    T7B_ROUTE_SCREEN_OFF | T7B_ROUTE_TIME),
              "legacy list yields exactly the legacy bits (no exit)");
        check((cfg.route_intents & T7B_ROUTE_EXIT) == 0, "legacy list has no exit bit");

        /* 4d：worker_conf 的 route_intents 只认名字列表（无数字掩码路径）。
         * 数字串是"不认识的名字"，按前向兼容规则被忽略 -> mask=0，
         * 整份配置仍有效（空值 = 一个都不路由，与 wc_load 的既有语义一致）。 */
        memset(&cfg, 0, sizeof(cfg));
        write_text(conf_path(), "route_intents=255\n");
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0,
              "numeric token in route_intents is tolerated (forward compat)");
        check(cfg.route_intents == 0, "unknown numeric token yields no bits (mask=0)");
        check(applied == 1, "the key itself still counts as applied");

        /* 4e：写回文件包含 exit（wc_write -> wc_load 往返）。
         * wc_write 写**全量**配置；为了 reload 能通过各数值字段的合法范围校验，
         * 先填一套可回读的合法默认值（与 t7_conv_context 测试同一手法）。 */
        memset(&cfg, 0, sizeof(cfg));
        write_text(conf_path(), "route_intents=volume,exit\n");
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0, "4e load");
        cfg.deepseek.max_tokens = 512;
        cfg.deepseek.temperature = 0.7;
        cfg.context_max_messages = 8;
        cfg.session.enabled = 1;
        cfg.session.timeout_ms = 12000;
        check(wc_write(&cfg, conf_path(), err, sizeof(err)) == 0, "4e write-back");
        {
            char buf[2048];
            size_t len = 0;
            check(wu_read_file(conf_path(), buf, sizeof(buf), &len) == 0, "4e readable");
            check(strstr(buf, "exit") != NULL, "written conf contains exit");
        }
        memset(&cfg, 0, sizeof(cfg));
        check(wc_load(&cfg, conf_path(), &applied, err, sizeof(err)) == 0, "4e reload");
        checkf(cfg.route_intents == (T7B_ROUTE_VOLUME | T7B_ROUTE_EXIT),
               "round trip preserves volume+exit (0x%02x)", (unsigned)cfg.route_intents);
    }

    /* ---------------- [5] 映射完整性 ---------------- */
    printf("\n[5] 映射完整性\n");
    check(strcmp(ir_intent_name(IR_EXIT), "exit") == 0, "intent name exit");
    check(ir_intent_from_name("exit") == IR_EXIT, "intent from name exit");
    check(ir_intent_from_name("volume") == IR_VOLUME, "intent from name volume still ok");
    check(ir_intent_from_name("stop") == IR_STOP, "intent from name stop still ok");
    check(ir_intent_from_name("media") == IR_MEDIA, "intent from name media still ok");
    check(ir_intent_from_name("nope") == IR_NONE, "intent from name unknown");
    {
        /* 每个意图的 name/route_bit/from_name 三映射一致 */
        ir_intent all[] = { IR_VOLUME, IR_WEATHER, IR_SCREEN_OFF, IR_TIME,
                            IR_SCREEN_ON, IR_MEDIA, IR_STOP, IR_EXIT };
        int i;
        for (i = 0; i < (int)(sizeof(all) / sizeof(all[0])); i++) {
            const char *nm = ir_intent_name(all[i]);
            checkf(ir_intent_from_name(nm) == (int)all[i], "roundtrip from_name(%s)", nm);
            checkf(ir_route_bit(all[i]) != 0, "route bit nonzero for %s", nm);
        }
    }

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
