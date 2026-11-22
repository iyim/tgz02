/*
 * t7_04_session_unit_test.c -- T7-04 会话状态机 host 单测
 *
 * 覆盖：IDLE->ACTIVE->PROCESSING->SPEAKING->WAIT_NEXT->CLOSED 的迁移、
 *       追问计数、"播报没开始就空闲"的兜底、超时时间可配、关闭开关后不动状态。
 */
#include <stdio.h>
#include <string.h>

#include "conv_session.h"

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
    cs_config c;
    cs_ctx s;
    long long t = 1000;

    printf("=== T7-04 conversation session unit test ===\n");

    cs_defaults(&c);
    cs_init(&s, &c);
    check(s.state == CS_IDLE, "initial state IDLE");

    printf("\n[1] normal turn lifecycle\n");
    check(cs_on_asr(&s, "1969141", t) == CS_ACTIVE, "asr -> ACTIVE");
    check(s.opened == 1, "session opened once");
    check(cs_on_submit(&s, t + 100) == CS_PROCESSING, "submit -> PROCESSING");
    check(cs_on_queued(&s, t + 200) == CS_SPEAKING, "queued -> SPEAKING");
    check(cs_on_play_idle(&s, t + 3000) == CS_WAIT_NEXT, "playback idle -> WAIT_NEXT");
    check(s.deadline_ms == t + 3000 + c.timeout_ms, "deadline = now + timeout");

    printf("\n[2] follow-up inside the window\n");
    check(cs_is_followup(&s) == 1, "WAIT_NEXT allows follow-up");
    check(cs_on_asr(&s, "1969142", t + 4000) == CS_ACTIVE, "follow-up -> ACTIVE");
    check(s.followups == 1, "follow-up counted");
    check(s.turns == 2, "turn counter");
    check(s.opened == 1, "same conversation still, not reopened");

    printf("\n[3] timeout closes the session\n");
    (void)cs_on_submit(&s, t + 4100);
    (void)cs_on_queued(&s, t + 4200);
    (void)cs_on_play_idle(&s, t + 5000);
    check(s.state == CS_WAIT_NEXT, "waiting again");
    check(cs_poll(&s, t + 5000 + c.timeout_ms - 1) == CS_WAIT_NEXT, "not closed yet");
    check(cs_poll(&s, t + 5000 + c.timeout_ms) == CS_CLOSED, "closed on timeout");
    check(s.closed_by_timeout == 1, "closed counter");
    check(cs_poll(&s, t + 5000 + c.timeout_ms + 1) == CS_IDLE, "back to standby");

    printf("\n[4] new wake after close opens a new session\n");
    check(cs_on_asr(&s, "1969200", t + 40000) == CS_ACTIVE, "ACTIVE again");
    check(s.opened == 2, "opened twice");
    check(s.followups == 0, "followup counter reset for the new session");

    printf("\n[5] playback idle without queued TTS still settles\n");
    cs_init(&s, &c);
    (void)cs_on_asr(&s, "1", t);
    (void)cs_on_submit(&s, t + 10);
    check(cs_on_play_idle(&s, t + 20) == CS_WAIT_NEXT, "PROCESSING -> WAIT_NEXT fallback");

    printf("\n[6] disabled session keeps state untouched\n");
    {
        cs_config off;
        cs_ctx s2;

        cs_defaults(&off);
        off.enabled = 0;
        cs_init(&s2, &off);
        check(cs_on_asr(&s2, "1", t) == CS_IDLE, "no transition when disabled");
        check(cs_poll(&s2, t + 999999) == CS_IDLE, "no timeout when disabled");
    }

    printf("\n[7] timeout is configurable\n");
    {
        cs_config c2;
        cs_ctx s3;

        cs_defaults(&c2);
        c2.timeout_ms = 3000;
        cs_init(&s3, &c2);
        (void)cs_on_asr(&s3, "1", t);
        (void)cs_on_submit(&s3, t + 10);
        (void)cs_on_queued(&s3, t + 20);
        (void)cs_on_play_idle(&s3, t + 1000);
        check(cs_poll(&s3, t + 3999) == CS_WAIT_NEXT, "custom timeout not yet");
        check(cs_poll(&s3, t + 4000) == CS_CLOSED, "custom timeout closes");
    }

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
