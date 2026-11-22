/*
 * t8_01_nlu_takeover_unit_test.c -- T8-01 host 单测
 *
 * 覆盖三件事：
 *   A) 接管判定：真机抓到的 4 条文本 + 参数不完整 + 意图未启用 + 全禁用；
 *   B) 丢弃语义：登记/幂等/未登记/TTL/会话结束/会话复用/槽位回收；
 *   C) 技能接口：意图->技能请求映射、音量示例（合法/非法/相对量/静音/无 ctx）、
 *      未注册技能必须明确 NOIMPL；
 *   D) 端到端模拟：同一条会话走完 onStream -> onNlpResult，验证"我方会话的技能执行 0 次、
 *      原厂会话照常执行"，并给出原厂 CDM 是否被绕过的可复现判据。
 *
 * 只用 host 上的纯函数，不碰设备、不调用原厂接口。
 */
#include "intent_route.h"
#include "skill_dispatch.h"
#include "nlu_takeover.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static int g_pass;
static int g_fail;

static void check(int cond, const char *fmt, ...)
{
    va_list ap;

    if (cond) {
        g_pass++;
        return;
    }
    g_fail++;
    printf("  FAIL ");
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    printf("\n");
}

/* ---- D 用的原厂 CDM 桩：记录"原厂技能被执行"的次数 ---- */
typedef struct {
    int factory_skill_runs;   /* 模拟 SessionDispatch::onNlpResult 往下真正执行技能 */
    int our_replies;          /* 模拟我方 TTS 队列被写入 */
    int apply_calls;
    int last_percent;
    int last_mute;
} sim_ctx;

static int stub_volume_apply(int percent, int mute, void *user)
{
    sim_ctx *c = (sim_ctx *)user;
    c->apply_calls++;
    c->last_percent = percent;
    c->last_mute = mute;
    return 0;
}

/*
 * 一次完整会话的模拟：
 *   onStream(isFinished=1) -> t8_to_on_final
 *   onNlpResult(sessionId) -> t8_to_should_drop
 *   丢弃 = 原厂 CDM 不执行（factory_skill_runs 不变）；放行 = 原厂执行一次
 */
static t8_to_decision simulate_session(t8_to_state *st, sim_ctx *sim, t8_skill_registry *reg,
                                       const char *session, const char *text, long long now_ms,
                                       int route_mask, int *dropped)
{
    t8_to_why why = T8_TO_WHY_NONE;
    t8_to_decision d;

    d = t8_to_on_final(st, session, text, now_ms, route_mask, &why);
    if (d == T8_TO_TAKE) {
        sim->our_replies++;
        if (reg != NULL) {
            ir_result ir;
            t8_skill_req req;
            t8_skill_result res;
            memset(&ir, 0, sizeof(ir));
            if (ir_classify(text, &ir) && ir.complete &&
                t8_skill_from_intent((int)ir.intent, ir.arg, session, &req)) {
                (void)t8_skill_execute(reg, &req, &res);
            }
        }
    }
    *dropped = t8_to_should_drop(st, session, now_ms + 2000);
    if (!*dropped) sim->factory_skill_runs++;
    return d;
}

int main(void)
{
    t8_to_state st;
    t8_to_why why;
    ir_result ir;
    int mask = T7B_ROUTE_ALL;
    int i;

    printf("=== T8-01 NLU/CDM takeover + skill dispatch unit test ===\n");

    /* ---------------- A) 接管判定 ---------------- */
    printf("\n[A] 判定（真机 2026-11-22 17:52 抓到的真实文本）\n");
    {
        struct { const char *text; int expect_pass; const char *label; } cases[] = {
            { "天猫精灵现在几点",        1, "本地指令 time" },
            { "天猫精灵音量调到五",      1, "本地指令 volume.set" },
            { "天猫精灵暂停",            1, "本地指令 stop" },
            { "天猫精灵给我讲一个笑话",  0, "AI 聊天" }
        };
        for (i = 0; i < (int)(sizeof(cases)/sizeof(cases[0])); i++) {
            t8_to_init(&st);
            memset(&ir, 0, sizeof(ir));
            (void)ir_classify(cases[i].text, &ir);
            why = T8_TO_WHY_NONE;
            {
                t8_to_decision d = t8_to_on_final(&st, "s-1", cases[i].text, 1000, mask, &why);
                printf("  %-26s -> %s (why=%s intent=%s rule=%s arg=%s complete=%d)\n",
                       cases[i].text,
                       (d == T8_TO_TAKE) ? "TAKE" : "PASS",
                       t8_to_why_name(why), ir_intent_name(ir.intent), ir.rule, ir.arg, ir.complete);
                check((d == T8_TO_PASS) == (cases[i].expect_pass != 0),
                      "%s: unexpected decision", cases[i].label);
                check(st.marked == (cases[i].expect_pass ? 0UL : 1UL),
                      "%s: marked counter = %lu", cases[i].label, st.marked);
                check(st.passed == (cases[i].expect_pass ? 1UL : 0UL),
                      "%s: passed counter = %lu", cases[i].label, st.passed);
            }
        }
    }

    printf("\n[A2] 参数不完整 / 意图未启用 / 全禁用\n");
    {
        t8_to_init(&st);
        memset(&ir, 0, sizeof(ir));
        (void)ir_classify("天猫精灵音量调到百分之", &ir);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-inc", "天猫精灵音量调到百分之", 1000, mask, &why);
            printf("  音量调到百分之 -> %s (intent=%s complete=%d note=%s)\n",
                   (d == T8_TO_TAKE) ? "TAKE" : "PASS", ir_intent_name(ir.intent), ir.complete, ir.note);
            check(d == T8_TO_TAKE, "incomplete volume must be taken over by us");
            check(why == T8_TO_WHY_AI_INCOMPLETE, "why should be ai-incomplete, got %s", t8_to_why_name(why));
        }

        t8_to_init(&st);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-off", "天猫精灵现在几点", 1000,
                                              T7B_ROUTE_VOLUME, &why);
            check(d == T8_TO_TAKE, "time intent disabled in route_mask -> must be taken over");
            check(why == T8_TO_WHY_AI_INTENT_OFF, "why should be ai-intent-off, got %s", t8_to_why_name(why));
        }

        t8_to_init(&st);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-nomask", "天猫精灵音量调到五", 1000, 0, &why);
            check(d == T8_TO_TAKE, "route_mask=0 -> nothing is local, must be taken over");
        }
    }

    /* ---------------- B) 丢弃语义 ---------------- */
    printf("\n[B] 丢弃语义\n");
    {
        t8_to_init(&st);
        (void)t8_to_on_final(&st, "s-ai", "天猫精灵给我讲一个笑话", 1000, mask, NULL);
        check(t8_to_should_drop(&st, "s-ai", 1500) == 1, "marked session must be dropped");
        check(t8_to_should_drop(&st, "s-ai", 1800) == 1, "drop must be idempotent (second NLU result)");
        check(st.dropped == 2UL, "dropped counter = %lu", st.dropped);
        check(t8_to_should_drop(&st, "s-other", 1800) == 0, "unknown session must pass");
        check(st.unknown == 1UL, "unknown counter = %lu", st.unknown);
        check(t8_to_should_drop(&st, "s-ai", 1000 + T8_TO_TTL_MS + 1) == 0,
              "expired mark must not drop");
        check(st.expired >= 1UL, "expired counter = %lu", st.expired);
        check(t8_to_should_drop(&st, "s-ai", 1000 + T8_TO_TTL_MS + 2) == 0,
              "after expiry the same session stays pass-through");
    }
    {
        t8_to_init(&st);
        (void)t8_to_on_final(&st, "s-end", "天猫精灵讲个笑话", 1000, mask, NULL);
        t8_to_on_session_end(&st, "s-end");
        check(t8_to_should_drop(&st, "s-end", 1200) == 0, "session end must clear the mark");
        check(t8_to_active(&st, 1200) == 0, "active should be 0 after session end");
    }
    {
        t8_to_init(&st);
        (void)t8_to_on_final(&st, "s-reuse", "天猫精灵讲个笑话", 1000, mask, NULL);
        check(t8_to_active(&st, 1100) == 1, "one active mark expected");
        {
            t8_to_decision d = t8_to_on_final(&st, "s-reuse", "天猫精灵音量调到五", 1200, mask, NULL);
            check(d == T8_TO_PASS, "same session reused by a local command must pass");
        }
        check(t8_to_should_drop(&st, "s-reuse", 1300) == 0,
              "reused session must not be dropped any more");
        check(t8_to_active(&st, 1300) == 0, "active should be 0 after reuse by a local command");
    }
    {
        char sid[16];
        t8_to_init(&st);
        for (i = 0; i < T8_TO_SLOTS + 3; i++) {
            snprintf(sid, sizeof(sid), "slot-%d", i);
            (void)t8_to_on_final(&st, sid, "天猫精灵讲个笑话", 1000 + i, mask, NULL);
        }
        check(t8_to_active(&st, 2000) == T8_TO_SLOTS, "slot table must stay bounded (%d), got %d",
              T8_TO_SLOTS, t8_to_active(&st, 2000));
        snprintf(sid, sizeof(sid), "slot-%d", T8_TO_SLOTS + 2);
        check(t8_to_should_drop(&st, sid, 2000) == 1, "newest session must still be tracked");
        check(t8_to_should_drop(&st, "slot-0", 2000) == 0, "oldest slot must have been recycled");
    }

    /* ---------------- C) 技能接口 ---------------- */
    printf("\n[C] 技能接口\n");
    {
        t8_skill_req req;
        t8_skill_result res;
        t8_skill_registry reg;
        t8_vol_ctx vc;
        sim_ctx sim;

        check(t8_skill_from_intent((int)IR_VOLUME, "set:30", "s", &req) == 1, "volume set mapping");
        check(req.id == T8_SK_VOLUME_SET && req.argc == 1 && strcmp(req.argv[0], "30") == 0,
              "volume set argv");
        check(t8_skill_from_intent((int)IR_VOLUME, "up", "s", &req) == 1 && req.id == T8_SK_VOLUME_STEP,
              "volume up mapping");
        check(t8_skill_from_intent((int)IR_VOLUME, "mute", "s", &req) == 1 && req.id == T8_SK_VOLUME_MUTE,
              "volume mute mapping");
        check(t8_skill_from_intent((int)IR_TIME, "", "s", &req) == 1 && req.id == T8_SK_TIME_QUERY,
              "time mapping");
        check(t8_skill_from_intent((int)IR_STOP, "", "s", &req) == 1 && req.id == T8_SK_MEDIA_STOP,
              "stop mapping");
        check(t8_skill_from_intent((int)IR_SCREEN_OFF, "", "s", &req) == 1 && req.id == T8_SK_SCREEN_OFF,
              "screen off mapping");
        check(t8_skill_from_intent((int)IR_WEATHER, "", "s", &req) == 0,
              "weather has no local skill yet (must fall back, not fake success)");

        memset(&sim, 0, sizeof(sim));
        vc.apply = stub_volume_apply;
        vc.user = &sim;
        vc.step = 10;
        t8_skill_registry_init(&reg);
        check(t8_skill_register(&reg, T8_SK_VOLUME_SET, t8_skill_volume_exec, &vc) == T8_SK_OK, "register volume.set");
        check(t8_skill_register(&reg, T8_SK_VOLUME_STEP, t8_skill_volume_exec, &vc) == T8_SK_OK, "register volume.step");
        check(t8_skill_register(&reg, T8_SK_VOLUME_MUTE, t8_skill_volume_exec, &vc) == T8_SK_OK, "register volume.mute");
        check(t8_skill_register(&reg, T8_SK_TIME_QUERY, t8_skill_time_exec, NULL) == T8_SK_OK, "register time");
        check(t8_skill_register(&reg, T8_SK_MAX, t8_skill_time_exec, NULL) == T8_SK_E_ARG, "register invalid id");

        t8_skill_req_init(&req, T8_SK_VOLUME_SET, "s");
        (void)t8_skill_req_arg(&req, "30");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_OK, "volume set 30 executes");
        check(sim.apply_calls == 1 && sim.last_percent == 30 && sim.last_mute == 0,
              "apply got percent=30 mute=0 (calls=%d pct=%d)", sim.apply_calls, sim.last_percent);

        t8_skill_req_init(&req, T8_SK_VOLUME_SET, "s");
        (void)t8_skill_req_arg(&req, "abc");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_E_ARG, "bad percent rejected");
        check(sim.apply_calls == 1, "bad percent must not reach the device (calls=%d)", sim.apply_calls);

        t8_skill_req_init(&req, T8_SK_VOLUME_SET, "s");
        (void)t8_skill_req_arg(&req, "130");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_E_ARG, "out-of-range percent rejected");

        t8_skill_req_init(&req, T8_SK_VOLUME_STEP, "s");
        (void)t8_skill_req_arg(&req, "up");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_OK, "volume up executes");
        check(sim.last_percent == 10, "volume up applied +step (got %d)", sim.last_percent);

        t8_skill_req_init(&req, T8_SK_VOLUME_MUTE, "s");
        (void)t8_skill_req_arg(&req, "on");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_OK, "volume mute executes");
        check(sim.last_mute == 1, "mute flag delivered (got %d)", sim.last_mute);

        t8_skill_req_init(&req, T8_SK_VOLUME_SET, "s");
        (void)t8_skill_req_arg(&req, "10");
        {
            t8_skill_registry reg2;
            t8_skill_registry_init(&reg2);
            (void)t8_skill_register(&reg2, T8_SK_VOLUME_SET, t8_skill_volume_exec, NULL);
            check(t8_skill_execute(&reg2, &req, &res) == T8_SK_E_CTX, "no ctx -> E_CTX");
        }

        t8_skill_req_init(&req, T8_SK_MEDIA_PLAY, "s");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_E_NOIMPL,
              "unimplemented skill must report NOIMPL, not fake success");

        t8_skill_req_init(&req, T8_SK_TIME_QUERY, "s");
        check(t8_skill_execute(&reg, &req, &res) == T8_SK_OK, "time query executes");
        check(strchr(res.message, ':') != NULL, "time message looks like HH:MM (%s)", res.message);
        check(reg.ok >= 4UL && reg.noimpl >= 1UL, "registry counters ok=%lu noimpl=%lu", reg.ok, reg.noimpl);
    }

    /* ---------------- D) 端到端分流模拟 ---------------- */
    printf("\n[D] 端到端：onStream -> onNlpResult 的分流\n");
    {
        t8_skill_registry reg;
        t8_vol_ctx vc;
        sim_ctx sim;
        int dropped = 0;
        long long now = 5000;

        memset(&sim, 0, sizeof(sim));
        vc.apply = stub_volume_apply;
        vc.user = &sim;
        vc.step = 10;
        t8_skill_registry_init(&reg);
        (void)t8_skill_register(&reg, T8_SK_VOLUME_SET, t8_skill_volume_exec, &vc);
        (void)t8_skill_register(&reg, T8_SK_TIME_QUERY, t8_skill_time_exec, NULL);

        t8_to_init(&st);

        /* ① 本地指令：原厂 CDM 必须照常执行（技能副作用由原厂做） */
        (void)simulate_session(&st, &sim, &reg, "1968466", "天猫精灵现在几点", now, mask, &dropped);
        check(dropped == 0, "local command must NOT be dropped");
        check(sim.factory_skill_runs == 1, "factory CDM must run for a local command");
        check(sim.apply_calls == 0, "we must not double-execute a local command");

        /* ② AI 指令：原厂 CDM 必须被完全跳过，我方技能不越权 */
        (void)simulate_session(&st, &sim, &reg, "1968484", "天猫精灵给我讲一个笑话", now + 100, mask, &dropped);
        check(dropped == 1, "AI command must be dropped at the CDM entry");
        check(sim.factory_skill_runs == 1, "factory CDM must NOT run for an AI command (runs=%d)",
              sim.factory_skill_runs);
        check(sim.our_replies == 1, "our side took the AI session (replies=%d)", sim.our_replies);

        /* ③ 原厂本地技能由我们执行时的形态（接管后）：音量真的落到回调一次 */
        (void)t8_to_on_final(&st, "1968470", "天猫精灵音量调到五", now + 200, mask, NULL);
        {
            ir_result ir2;
            t8_skill_req req;
            t8_skill_result res;
            memset(&ir2, 0, sizeof(ir2));
            (void)ir_classify("天猫精灵音量调到五", &ir2);
            check(t8_skill_from_intent((int)ir2.intent, ir2.arg, "1968470", &req) == 1,
                  "volume command maps to a skill request (arg=%s)", ir2.arg);
            check(t8_skill_execute(&reg, &req, &res) == T8_SK_OK, "volume skill executes");
            check(sim.apply_calls == 1 && sim.last_percent == 5,
                  "volume skill applied 5 once (calls=%d pct=%d)", sim.apply_calls, sim.last_percent);
        }

        printf("  summary: factory_runs=%d our_replies=%d our_apply=%d dropped_nlu=%lu\n",
               sim.factory_skill_runs, sim.our_replies, sim.apply_calls, st.dropped);
    }

    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
