/*
 * t8_14_1_skill_registry_unit_test.c -- T8-14.1 技能注册表契约（纯 host，零设备）
 *
 * 覆盖任务书 §五 中需要"在注册表层核对"的两条：
 *   - 未注册技能必须返回 NOIMPL，且不得计入 ok（不假装执行成功）；
 *   - 注册后执行成功才把 ok 计数推进，message 是可播报文本。
 * 另外核对 intent -> t8_skill_req 的翻译与非法请求的拒绝语义。
 *
 * 说明：路由接线（开关关闭走原厂 / 开启走技能 / TTS 入队与偏移顺序）在
 * tests/run_t8_14_1_skill_tests.ps1 里用真实 ai_worker.exe 端到端验证。
 */
#include "skill_dispatch.h"
#include "intent_route.h"

#include <stdio.h>
#include <string.h>

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

int main(void)
{
    t8_skill_registry r;
    t8_skill_req req;
    t8_skill_result res;
    int rc;

    printf("=== T8-14.1 skill registry unit test ===\n");

    /* ---------------- [1] 未注册技能 -> NOIMPL，不得假装成功 ---------------- */
    printf("\n[1] 未注册技能返回 NOIMPL（不假装执行成功）\n");
    t8_skill_registry_init(&r);
    t8_skill_req_init(&req, T8_SK_APP_LAUNCH, "1969001");
    memset(&res, 0, sizeof(res));
    rc = t8_skill_execute(&r, &req, &res);
    check(rc == T8_SK_E_NOIMPL, "unregistered id -> T8_SK_E_NOIMPL");
    check(res.code == T8_SK_E_NOIMPL, "result.code == NOIMPL");
    check(res.message[0] != '\0', "result.message explains the failure");
    check(strstr(res.message, "app.launch") != NULL, "message names the skill");
    check(r.calls == 1, "calls counted once");
    check(r.noimpl == 1, "noimpl counted");
    check(r.ok == 0 && r.fail == 0, "noimpl is not counted as ok/fail");

    /* ---------------- [2] 注册后执行成功 ---------------- */
    printf("\n[2] 注册 time.query 后执行成功，message 可播报\n");
    t8_skill_registry_init(&r);
    check(t8_skill_register(&r, T8_SK_TIME_QUERY, t8_skill_time_exec, NULL) == T8_SK_OK,
          "register time.query");
    t8_skill_req_init(&req, T8_SK_TIME_QUERY, "1969002");
    memset(&res, 0, sizeof(res));
    rc = t8_skill_execute(&r, &req, &res);
    check(rc == T8_SK_OK, "time.query -> OK");
    check(r.ok == 1 && r.fail == 0 && r.noimpl == 0, "ok counted, no fail/noimpl");
    {
        int hh = -1, mm = -1;
        check(sscanf(res.message, "now %2d:%2d", &hh, &mm) == 2,
              "message format is 'now HH:MM'");
        check(hh >= 0 && hh <= 23, "hour in range");
        check(mm >= 0 && mm <= 59, "minute in range");
    }

    /* ---------------- [3] 非法注册与非法请求 ---------------- */
    printf("\n[3] 非法输入被拒绝（不执行任何回调）\n");
    check(t8_skill_register(&r, T8_SK_NONE, t8_skill_time_exec, NULL) == T8_SK_E_ARG,
          "register id=0 rejected");
    check(t8_skill_register(&r, T8_SK_MAX, t8_skill_time_exec, NULL) == T8_SK_E_ARG,
          "register id=MAX rejected");
    check(t8_skill_register(&r, T8_SK_TIME_QUERY, NULL, NULL) == T8_SK_E_ARG,
          "register NULL fn rejected");
    t8_skill_req_init(&req, T8_SK_NONE, "x");
    memset(&res, 0, sizeof(res));
    {
        unsigned long calls_before = r.calls;
        check(t8_skill_execute(&r, &req, &res) == T8_SK_E_ARG, "execute id=0 -> E_ARG");
        check(r.calls == calls_before, "invalid request does not count as a call");
        check(t8_skill_execute(&r, NULL, &res) == T8_SK_E_ARG, "execute NULL req -> E_ARG");
        check(r.calls == calls_before, "NULL request does not count as a call");
    }

    /* ---------------- [4] intent -> 技能请求翻译（复用已有分类） ---------------- */
    printf("\n[4] intent -> t8_skill_req 翻译（time/volume/media/screen）\n");
    check(t8_skill_from_intent(IR_TIME, "", "s1", &req) == 1, "IR_TIME mapped");
    check(req.id == T8_SK_TIME_QUERY, "IR_TIME -> time.query");
    check(strcmp(req.session, "s1") == 0, "session carried into request");

    check(t8_skill_from_intent(IR_VOLUME, "set:30", "s1", &req) == 1, "volume set mapped");
    check(req.id == T8_SK_VOLUME_SET && req.argc == 1 && strcmp(req.argv[0], "30") == 0,
          "volume set:30 -> volume.set argv[0]=30");
    check(t8_skill_from_intent(IR_VOLUME, "up", "s1", &req) == 1 &&
          req.id == T8_SK_VOLUME_STEP && strcmp(req.argv[0], "up") == 0,
          "volume up -> volume.step up");
    check(t8_skill_from_intent(IR_VOLUME, "mute", "s1", &req) == 1 &&
          req.id == T8_SK_VOLUME_MUTE && strcmp(req.argv[0], "on") == 0,
          "volume mute -> volume.mute on");
    check(t8_skill_from_intent(IR_MEDIA, "", "s1", &req) == 1 &&
          req.id == T8_SK_MEDIA_PLAY, "IR_MEDIA -> media.play");
    check(t8_skill_from_intent(IR_STOP, "", "s1", &req) == 1 &&
          req.id == T8_SK_MEDIA_STOP, "IR_STOP -> media.stop");
    check(t8_skill_from_intent(IR_SCREEN_OFF, "", "s1", &req) == 1 &&
          req.id == T8_SK_SCREEN_OFF, "IR_SCREEN_OFF -> screen.off");
    /* 没有本地技能的意图必须返回 0（调用方回落原厂/AI），不能硬凑一个技能 */
    check(t8_skill_from_intent(IR_WEATHER, "", "s1", &req) == 0, "IR_WEATHER -> no skill (0)");
    check(t8_skill_from_intent(IR_EXIT, "", "s1", &req) == 0, "IR_EXIT -> no skill (0)");
    check(t8_skill_from_intent(IR_NONE, "", "s1", &req) == 0, "IR_NONE -> no skill (0)");

    /* ---------------- [5] 名称与计数不变量 ---------------- */
    printf("\n[5] 技能名与计数不变量\n");
    check(strcmp(t8_skill_name(T8_SK_TIME_QUERY), "time.query") == 0, "name time.query");
    check(strcmp(t8_skill_name(T8_SK_NONE), "none") == 0, "name none");
    check(strcmp(t8_skill_name(T8_SK_MAX), "none") == 0, "unknown id -> none");
    t8_skill_registry_init(&r);
    check(r.calls == 0 && r.ok == 0 && r.fail == 0 && r.noimpl == 0,
          "init clears all counters and entries");
    check(r.entry[T8_SK_TIME_QUERY].exec == NULL, "init clears entries");

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
