/*
 * t8_02_nlu_takeover_unit_test.c -- T8-02 host 单测（含 T8-01 的 70 条断言）
 *
 * A) 接管判定：真机抓到的 4 条文本 + 参数不完整 + 意图未启用 + 全禁用
 * B) 丢弃语义：登记/幂等/未登记/TTL/会话结束/会话复用
 * C) 技能接口：意图->技能请求映射、音量示例、参数拒绝、NOIMPL、时间示例
 * D) 端到端：onStream -> onNlpResult 的分流（本地指令原厂执行，AI 指令原厂 0 次）
 * E) 容量：64 槽位占满后**不覆盖**有效登记；overflow 计数；fail-closed 降级窗口；窗口结束恢复
 * F) 并发：多线程同时登记/查询/清理/TTL 回收；重复登记去重；计数一致
 *
 * 只跑 host 纯函数，不碰设备、不调用原厂接口。
 */
#include "intent_route.h"
#include "skill_dispatch.h"
#include "nlu_takeover.h"

#include <pthread.h>
#include <stdarg.h>
#include <stdio.h>
#include <string.h>

static int g_pass;
static int g_fail;

static void check(int cond, const char *fmt, ...)
{
    va_list ap;

    if (cond) { g_pass++; return; }
    g_fail++;
    printf("  FAIL ");
    va_start(ap, fmt);
    vprintf(fmt, ap);
    va_end(ap);
    printf("\n");
}

/* ---- D 用的原厂 CDM 桩 ---- */
typedef struct {
    int factory_skill_runs;
    int our_replies;
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

/* 大多数用例都在"接管开启"的前提下跑；关闭态与初始化失败单独在 [G] 里验证 */
static void init_on(t8_to_state *st)
{
    (void)t8_to_init(st);
    (void)t8_to_enabled_set(st, 1);
}

static t8_to_decision simulate_session(t8_to_state *st, sim_ctx *sim, t8_skill_registry *reg,
                                       const char *session, const char *text, long long now_ms,
                                       int route_mask, int *dropped)
{
    t8_to_why why = T8_TO_WHY_NONE;
    t8_to_decision d;

    d = t8_to_on_final(st, session, text, now_ms, route_mask, &why);
    if (d != T8_TO_PASS) {
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

/* ---------------- F 用：并发工作量 ---------------- */

typedef struct {
    t8_to_state *st;
    int          tid;
    int          iters;
    int          errors;
    long long    base_ms;
} worker_arg;

static void *worker_mixed(void *p)
{
    worker_arg *a = (worker_arg *)p;
    char sid[32];
    int i;

    for (i = 0; i < a->iters; i++) {
        snprintf(sid, sizeof(sid), "t%d-%d", a->tid, i);
        (void)t8_to_on_final(a->st, sid, "天猫精灵给我讲一个笑话", a->base_ms + i, T7B_ROUTE_ALL, NULL);
        if (t8_to_should_drop(a->st, sid, a->base_ms + i + 10) != 1) a->errors++;
        (void)t8_to_active(a->st, a->base_ms + i + 10);
        t8_to_on_session_end(a->st, sid);
        if (t8_to_should_drop(a->st, sid, a->base_ms + i + 20) != 0) a->errors++;
        if ((i % 25) == 0) (void)t8_to_purge(a->st, a->base_ms + i);
    }
    return NULL;
}

typedef struct {
    t8_to_state *st;
    const char  *sid;
    int          iters;
    long long    base_ms;
} dup_arg;

static void *worker_dup(void *p)
{
    dup_arg *a = (dup_arg *)p;
    int i;

    for (i = 0; i < a->iters; i++) {
        (void)t8_to_on_final(a->st, a->sid, "天猫精灵讲个笑话", a->base_ms + i, T7B_ROUTE_ALL, NULL);
    }
    return NULL;
}

int main(void)
{
    t8_to_state st;
    t8_to_why why;
    ir_result ir;
    int mask = T7B_ROUTE_ALL;
    int i;
    int init_rc;

    printf("=== T8-02 NLU/CDM takeover unit test (capacity + concurrency) ===\n");
    printf("slots=%d ttl_ms=%d degraded_ms=%d\n", T8_TO_SLOTS, T8_TO_TTL_MS, T8_TO_DEGRADED_MS);

    /* ---------------- A) 接管判定（T8-01 的断言，保持通过） ---------------- */
    printf("\n[A] 判定（真机 2026-11-22 17:52 的真实文本）\n");
    {
        struct { const char *text; int expect_pass; const char *label; } cases[] = {
            { "天猫精灵现在几点",        1, "本地指令 time" },
            { "天猫精灵音量调到五",      1, "本地指令 volume.set" },
            { "天猫精灵暂停",            1, "本地指令 stop" },
            { "天猫精灵给我讲一个笑话",  0, "AI 聊天" }
        };
        for (i = 0; i < (int)(sizeof(cases)/sizeof(cases[0])); i++) {
            init_rc = t8_to_init(&st);
            check(init_rc == 0, "t8_to_init must succeed");
            check(t8_to_enabled_set(&st, 1) == 0, "enabling takeover must succeed");
            memset(&ir, 0, sizeof(ir));
            (void)ir_classify(cases[i].text, &ir);
            why = T8_TO_WHY_NONE;
            {
                t8_to_decision d = t8_to_on_final(&st, "s-1", cases[i].text, 1000, mask, &why);
                printf("  %-26s -> %s (why=%s intent=%s rule=%s arg=%s complete=%d)\n",
                       cases[i].text,
                       (d == T8_TO_PASS) ? "PASS" : ((d == T8_TO_TAKE) ? "TAKE" : "TAKE-UNREG"),
                       t8_to_why_name(why), ir_intent_name(ir.intent), ir.rule, ir.arg, ir.complete);
                check((d == T8_TO_PASS) == (cases[i].expect_pass != 0),
                      "%s: unexpected decision", cases[i].label);
                check(st.marked == (cases[i].expect_pass ? 0UL : 1UL),
                      "%s: marked counter = %lu", cases[i].label, st.marked);
                check(st.passed == (cases[i].expect_pass ? 1UL : 0UL),
                      "%s: passed counter = %lu", cases[i].label, st.passed);
            }
            t8_to_destroy(&st);
        }
    }

    printf("\n[A2] 参数不完整 / 意图未启用 / 全禁用\n");
    {
        init_on(&st);
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
        t8_to_destroy(&st);

        init_on(&st);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-off", "天猫精灵现在几点", 1000,
                                              T7B_ROUTE_VOLUME, &why);
            check(d == T8_TO_TAKE, "time intent disabled in route_mask -> must be taken over");
            check(why == T8_TO_WHY_AI_INTENT_OFF, "why should be ai-intent-off, got %s", t8_to_why_name(why));
        }
        t8_to_destroy(&st);

        init_on(&st);
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "s-nomask", "天猫精灵音量调到五", 1000, 0, &why);
            check(d == T8_TO_TAKE, "route_mask=0 -> nothing is local, must be taken over");
        }
        t8_to_destroy(&st);
    }

    /* ---------------- B) 丢弃语义 ---------------- */
    printf("\n[B] 丢弃语义\n");
    {
        init_on(&st);
        (void)t8_to_on_final(&st, "s-ai", "天猫精灵给我讲一个笑话", 1000, mask, NULL);
        check(t8_to_should_drop(&st, "s-ai", 1500) == 1, "marked session must be dropped");
        check(t8_to_should_drop(&st, "s-ai", 1800) == 1, "drop must be idempotent (second NLU result)");
        check(st.dropped == 2UL, "dropped counter = %lu", st.dropped);
        check(t8_to_should_drop(&st, "s-other", 1800) == 0, "unknown session must pass");
        check(st.unknown == 1UL, "unknown counter = %lu", st.unknown);
        check(t8_to_should_drop(&st, "s-ai", 1000 + T8_TO_TTL_MS + 1) == 0, "expired mark must not drop");
        check(st.expired >= 1UL, "expired counter = %lu", st.expired);
        check(t8_to_should_drop(&st, "s-ai", 1000 + T8_TO_TTL_MS + 2) == 0,
              "after expiry the same session stays pass-through");
        t8_to_destroy(&st);
    }
    {
        init_on(&st);
        (void)t8_to_on_final(&st, "s-end", "天猫精灵讲个笑话", 1000, mask, NULL);
        t8_to_on_session_end(&st, "s-end");
        check(t8_to_should_drop(&st, "s-end", 1200) == 0, "session end must clear the mark");
        check(t8_to_active(&st, 1200) == 0, "active should be 0 after session end");
        t8_to_destroy(&st);
    }
    {
        init_on(&st);
        (void)t8_to_on_final(&st, "s-reuse", "天猫精灵讲个笑话", 1000, mask, NULL);
        check(t8_to_active(&st, 1100) == 1, "one active mark expected");
        {
            t8_to_decision d = t8_to_on_final(&st, "s-reuse", "天猫精灵音量调到五", 1200, mask, NULL);
            check(d == T8_TO_PASS, "same session reused by a local command must pass");
        }
        check(t8_to_should_drop(&st, "s-reuse", 1300) == 0,
              "reused session must not be dropped any more");
        check(t8_to_active(&st, 1300) == 0, "active should be 0 after reuse by a local command");
        t8_to_destroy(&st);
    }
    {
        /* 同一会话重复投递 final：只刷新 TTL，不占新槽位 */
        init_on(&st);
        (void)t8_to_on_final(&st, "s-dup", "天猫精灵讲个笑话", 1000, mask, NULL);
        (void)t8_to_on_final(&st, "s-dup", "天猫精灵讲个笑话", 1100, mask, NULL);
        (void)t8_to_on_final(&st, "s-dup", "天猫精灵讲个笑话", 1200, mask, NULL);
        check(t8_to_active(&st, 1300) == 1, "duplicate finals must not consume extra slots");
        check(st.reentrant_marks == 2UL, "reentrant_marks = %lu", st.reentrant_marks);
        check(st.marked == 3UL, "marked = %lu (each final counted once)", st.marked);
        t8_to_destroy(&st);
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

    /* ---------------- D) 端到端分流 ---------------- */
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

        init_on(&st);

        (void)simulate_session(&st, &sim, &reg, "1968466", "天猫精灵现在几点", now, mask, &dropped);
        check(dropped == 0, "local command must NOT be dropped");
        check(sim.factory_skill_runs == 1, "factory CDM must run for a local command");
        check(sim.apply_calls == 0, "we must not double-execute a local command");

        (void)simulate_session(&st, &sim, &reg, "1968484", "天猫精灵给我讲一个笑话", now + 100, mask, &dropped);
        check(dropped == 1, "AI command must be dropped at the CDM entry");
        check(sim.factory_skill_runs == 1, "factory CDM must NOT run for an AI command (runs=%d)",
              sim.factory_skill_runs);
        check(sim.our_replies == 1, "our side took the AI session (replies=%d)", sim.our_replies);

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
        t8_to_destroy(&st);
    }

    /* ---------------- E) 容量耗尽 ---------------- */
    printf("\n[E] 容量耗尽（不覆盖有效登记 / fail-closed 窗口）\n");
    {
        char sid[32];
        t8_to_snapshot snap;
        long long t0 = 100000;

        init_on(&st);
        for (i = 0; i < T8_TO_SLOTS; i++) {
            snprintf(sid, sizeof(sid), "cap-%d", i);
            check(t8_to_on_final(&st, sid, "天猫精灵给我讲一个笑话", t0 + i, mask, NULL) == T8_TO_TAKE,
                  "slot %d must register", i);
        }
        check(t8_to_active(&st, t0 + 100) == T8_TO_SLOTS, "all %d slots live, active=%d",
              T8_TO_SLOTS, t8_to_active(&st, t0 + 100));

        /* 第 65 条：必须明确报告"没法登记"，不能伪装成正常接管 */
        why = T8_TO_WHY_NONE;
        {
            t8_to_decision d = t8_to_on_final(&st, "cap-over", "天猫精灵给我讲一个笑话",
                                              t0 + 200, mask, &why);
            check(d == T8_TO_TAKE_UNREGISTERED, "overflow must be reported, got %d", (int)d);
            check(why == T8_TO_WHY_OVERFLOW, "why should be overflow, got %s", t8_to_why_name(why));
            check(st.overflow == 1UL, "overflow counter = %lu", st.overflow);
        }

        /* 原有登记必须**没被覆盖**：最早那条仍然拦得住 */
        check(t8_to_should_drop(&st, "cap-0", t0 + 300) == 1,
              "the oldest live registration must NOT be evicted");
        check(t8_to_should_drop(&st, "cap-63", t0 + 300) == 1, "the newest live registration still works");
        check(t8_to_active(&st, t0 + 300) == T8_TO_SLOTS, "active must stay %d (nothing overwritten)",
              T8_TO_SLOTS);

        /* 降级窗口内：未登记会话 fail-closed（不让 AI 会话漏进原厂 CDM） */
        check(t8_to_should_drop(&st, "never-seen", t0 + 300) == 1,
              "unregistered session must be blocked inside the degraded window");
        check(st.degraded_passes == 1UL, "degraded_passes = %lu", st.degraded_passes);
        check(st.unknown == 0UL, "degraded drops must not be counted as normal passes");

        t8_to_snapshot_take(&st, t0 + 400, &snap);
        check(snap.overflow == 1 && snap.degraded == 1, "snapshot must expose overflow/degraded");
        check(snap.active == T8_TO_SLOTS && snap.overflow_events == 1UL,
              "snapshot counts: active=%d overflow=%lu", snap.active, snap.overflow_events);

        /* 窗口结束：未登记会话恢复放行（不会永久 fail-closed） */
        check(t8_to_should_drop(&st, "never-seen", t0 + 200 + T8_TO_DEGRADED_MS + 1) == 0,
              "after the degraded window unknown sessions pass again");
        t8_to_snapshot_take(&st, t0 + 200 + T8_TO_DEGRADED_MS + 2, &snap);
        check(snap.degraded == 0, "snapshot degraded must clear after the window");

        /* TTL 到期后槽位被回收，新的接管又能登记。注意 deadline = 登记时刻 + TTL，
         * 最后一条登记于 t0+T8_TO_SLOTS-1，所以要在那之后再过 TTL 才算全部过期。 */
        check(t8_to_purge(&st, t0 + T8_TO_TTL_MS + T8_TO_SLOTS + 5) == T8_TO_SLOTS,
              "all %d slots must expire", T8_TO_SLOTS);
        check(t8_to_on_final(&st, "cap-after", "天猫精灵讲个笑话",
                             t0 + T8_TO_TTL_MS + T8_TO_SLOTS + 10, mask, NULL) == T8_TO_TAKE,
              "registration must work again after TTL reclaim");
        check(st.overflow == 1UL, "overflow must not grow after reclaim (counter=%lu)", st.overflow);
        t8_to_destroy(&st);
    }

    /* ---------------- F) 并发 ---------------- */
    printf("\n[F] 并发（登记/查询/清理/TTL 回收/重复登记）\n");
    {
        enum { THREADS = 6, ITERS = 400 };
        pthread_t th[THREADS];
        worker_arg args[THREADS];
        long long now;

        init_on(&st);
        for (i = 0; i < THREADS; i++) {
            args[i].st = &st;
            args[i].tid = i;
            args[i].iters = ITERS;
            args[i].errors = 0;
            args[i].base_ms = 1000;
            check(pthread_create(&th[i], NULL, worker_mixed, &args[i]) == 0, "create thread %d", i);
        }
        for (i = 0; i < THREADS; i++) (void)pthread_join(th[i], NULL);

        {
            int errs = 0;
            for (i = 0; i < THREADS; i++) errs += args[i].errors;
            check(errs == 0, "concurrent mixed ops: %d unexpected results", errs);
        }
        check(t8_to_active(&st, 5000) == 0, "all sessions ended -> active must be 0, got %d",
              t8_to_active(&st, 5000));
        check(st.marked == (unsigned long)(THREADS * ITERS), "marked = %lu (expect %d)",
              st.marked, THREADS * ITERS);
        check(st.dropped == (unsigned long)(THREADS * ITERS), "dropped = %lu (expect %d)",
              st.dropped, THREADS * ITERS);
        check(st.unknown == (unsigned long)(THREADS * ITERS), "unknown-after-end = %lu (expect %d)",
              st.unknown, THREADS * ITERS);
        printf("  mixed: threads=%d iters=%d marked=%lu dropped=%lu expired=%lu\n",
               THREADS, ITERS, st.marked, st.dropped, st.expired);

        /* 重复登记：4 个线程同时登记同一个会话，只能占 1 个槽位 */
        {
            dup_arg da;
            pthread_t th2[4];
            init_on(&st);      /* 重新初始化：清空计数与槽位 */
            da.st = &st;
            da.sid = "same-session";
            da.iters = 200;
            da.base_ms = 2000;
            for (i = 0; i < 4; i++) {
                check(pthread_create(&th2[i], NULL, worker_dup, &da) == 0, "create dup thread %d", i);
            }
            for (i = 0; i < 4; i++) (void)pthread_join(th2[i], NULL);
            check(t8_to_active(&st, 2100) == 1, "duplicate concurrent registration must use 1 slot, got %d",
                  t8_to_active(&st, 2100));
            check(st.reentrant_marks == 799UL, "reentrant_marks = %lu (expect 799 = 800-1)",
                  st.reentrant_marks);
            check(st.marked == 800UL, "marked = %lu (expect 800)", st.marked);
            check(st.overflow == 0UL, "no overflow for a single session (got %lu)", st.overflow);
            check(t8_to_should_drop(&st, "same-session", 2200) == 1, "the shared session is still taken over");
        }

        /* 并发 TTL 回收：过期后并发查询不得返回"已登记" */
        {
            init_on(&st);
            (void)t8_to_on_final(&st, "ttl-a", "天猫精灵讲个笑话", 1000, mask, NULL);
            now = 1000 + T8_TO_TTL_MS + 1;
            check(t8_to_purge(&st, now) == 1, "purge must reclaim the expired slot");
            check(t8_to_should_drop(&st, "ttl-a", now) == 0, "expired session must not drop");
            check(t8_to_active(&st, now) == 0, "active must be 0 after TTL reclaim");
        }

        check(t8_to_init(NULL) == -1, "init(NULL) must report failure");
        init_on(&st);
        t8_to_destroy(&st);
        check(st.mutex_ready == 0, "destroy must clear mutex_ready");
        /* 锁不可用时不允许"裸跑"：所有入口必须安全退化 */
        check(t8_to_on_final(&st, "x", "天猫精灵讲个笑话", 1000, mask, NULL) == T8_TO_PASS,
              "without a live mutex the module must not take anything over");
        check(t8_to_should_drop(&st, "x", 1100) == 0, "without a live mutex nothing is dropped");
        check(t8_to_active(&st, 1100) == 0, "without a live mutex active is 0");
        check(t8_to_purge(&st, 1100) == 0, "without a live mutex purge is a no-op");
    }

    /* ---------------- G) 开关 / 初始化失败 / 会话缺失：fail-closed ---------------- */
    printf("\n[G] 开关关闭 / 初始化失败 / 会话缺失\n");
    {
        t8_to_snapshot snap;

        /* G1 开关关闭：行为必须与当前设备完全一致（不写任何状态） */
        (void)t8_to_init(&st);
        check(t8_to_enabled(&st) == 0, "default must be disabled");
        check(t8_to_on_final(&st, "s", "天猫精灵给我讲一个笑话", 1000, mask, NULL) == T8_TO_PASS,
              "disabled: an AI text must pass (factory behaviour unchanged)");
        check(t8_to_should_drop(&st, "s", 1100) == 0, "disabled: nothing is dropped");
        check(st.marked == 0 && st.passed == 0 && st.dropped == 0 && st.unknown == 0,
              "disabled: no state touched (marked=%lu passed=%lu dropped=%lu unknown=%lu)",
              st.marked, st.passed, st.dropped, st.unknown);
        check(t8_to_enabled_set(&st, 1) == 0, "enable on a live mutex succeeds");
        check(t8_to_on_final(&st, "s", "天猫精灵给我讲一个笑话", 1200, mask, NULL) == T8_TO_TAKE,
              "enabled: the same text is taken over");
        t8_to_destroy(&st);

        /* G2 初始化失败但开关打开：必须 fail-closed（不许静默放行） */
        memset(&st, 0, sizeof(st));            /* 模拟 mutex 不可用 */
        check(t8_to_enabled_set(&st, 1) == -1, "enable without a mutex must report failure");
        check(t8_to_enabled(&st) == 1, "switch stays on so the caller can see the failed state");
        why = T8_TO_WHY_NONE;
        check(t8_to_on_final(&st, "s", "天猫精灵给我讲一个笑话", 1000, mask, &why) == T8_TO_TAKE_FAILCLOSED,
              "init failed + enabled: must fail-closed (got %d)",
              (int)t8_to_on_final(&st, "s", "天猫精灵给我讲一个笑话", 1000, mask, NULL));
        check(why == T8_TO_WHY_FAILCLOSED, "why should be failclosed, got %s", t8_to_why_name(why));
        check(t8_to_should_drop(&st, "s", 1100) == 1, "init failed + enabled: known session blocked");
        check(t8_to_should_drop(&st, "unknown", 1100) == 1, "init failed + enabled: unknown session blocked");
        check(t8_to_enabled_set(&st, 0) == 0, "disable always succeeds (rollback path)");
        check(t8_to_on_final(&st, "s", "天猫精灵给我讲一个笑话", 1200, mask, NULL) == T8_TO_PASS,
              "disabled again: pass");
        check(t8_to_should_drop(&st, "s", 1300) == 0, "disabled again: nothing dropped");

        /* G3 会话 id 缺失：开 fail-closed 窗口，不许静默放行 */
        init_on(&st);
        why = T8_TO_WHY_NONE;
        check(t8_to_on_final(&st, "", "天猫精灵给我讲一个笑话", 2000, mask, &why) == T8_TO_TAKE_FAILCLOSED,
              "missing session id must fail-closed");
        check(why == T8_TO_WHY_NO_SESSION, "why should be no-session, got %s", t8_to_why_name(why));
        check(st.failclosed_events == 1UL, "failclosed_events = %lu", st.failclosed_events);
        check(t8_to_should_drop(&st, "some-session", 2100) == 1,
              "inside the fail-closed window even unknown sessions are blocked");
        check(st.failclosed_passes == 1UL, "failclosed_passes = %lu", st.failclosed_passes);
        check(t8_to_should_drop(&st, "some-session", 2000 + T8_TO_DEGRADED_MS + 1) == 0,
              "after the window unknown sessions pass again");
        t8_to_snapshot_take(&st, 2000 + T8_TO_DEGRADED_MS + 2, &snap);
        check(snap.enabled == 1 && snap.failclosed == 0, "snapshot: enabled=%d failclosed=%d",
              snap.enabled, snap.failclosed);
        check(snap.failclosed_events == 1UL, "snapshot failclosed_events = %lu", snap.failclosed_events);
        t8_to_destroy(&st);
    }

    printf("\nRESULT: pass=%d fail=%d\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
