/*
 * t7_05_native_marker_unit_test.c -- T7-05 放行标记的解析与判定（含失败注入）
 *
 * 任务书 二.8 要求：证明标记失败时"原厂和 AI 两条路径都不会一起丢掉"。
 * 判定层面的证明在这里（放行/不放行的每一种组合都钉死）；
 * Worker 侧的"发布失败 -> 回退 AI"在 t7_05_marker_fault_inject.ps1 里跑真机。
 */
#include <stdio.h>
#include <string.h>

#include "native_marker.h"

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

static const char *V2 =
    "{\"version\":2,\"seq\":7,\"wall_ms\":1000,\"exp_ms\":3000,"
    "\"session\":\"1969141\",\"event_id\":\"ev-9\",\"intent\":\"volume\","
    "\"rule\":\"volume.set\"}\n";

int main(void)
{
    nm_marker m;
    nm_stats st;
    int by_session = 0;

    printf("=== T7-05 native marker unit test ===\n");

    printf("\n[1] parse a normal marker\n");
    check(nm_parse(V2, strlen(V2), &m) == 0, "parse ok");
    check(m.valid == 1, "valid");
    check(m.version == 2, "version 2");
    check(m.seq == 7, "seq 7");
    check(m.exp_ms == 3000, "exp_ms 3000");
    check(m.have_session == 1 && m.session == 1969141LL, "session parsed");
    check(strcmp(m.intent, "volume") == 0, "intent parsed");
    check(strcmp(m.event_id, "ev-9") == 0, "event_id parsed");

    printf("\n[2] session match allows, session mismatch does not\n");
    memset(&st, 0, sizeof(st));
    check(nm_decide(&m, 1969141, 2000, &st, &by_session) == 1, "same session -> allow");
    check(by_session == 1, "by_session = 1");
    check(st.hit_session == 1, "hit_session counted");
    memset(&st, 0, sizeof(st));
    check(nm_decide(&m, 1969200, 2000, &st, &by_session) == 0,
          "different session inside the window -> deny");
    check(by_session == 0, "by_session = 0");
    check(st.miss_session == 1, "miss_session counted");

    printf("\n[3] expiry\n");
    memset(&st, 0, sizeof(st));
    check(nm_decide(&m, 1969141, 3001, &st, &by_session) == 0, "expired -> deny");
    check(st.expired == 1, "expired counted");
    check(nm_decide(&m, 1969141, 3000, &st, &by_session) == 1, "boundary now == exp -> allow");

    printf("\n[4] unknown onTtsStart id (<=0) never matches by session\n");
    memset(&st, 0, sizeof(st));
    check(nm_decide(&m, 0, 2000, &st, &by_session) == 0, "id 0 with marker session -> deny");
    check(nm_decide(&m, -1, 2000, &st, &by_session) == 0, "id -1 -> deny");

    printf("\n[5] marker without session: window fallback only\n");
    {
        /* 真正"没有 session 字段"的老格式才走窗口兜底；
         * "session":"" 属于"字段存在但为空"，见 [8]，必须判无效。 */
        const char *nosess =
            "{\"version\":1,\"seq\":3,\"wall_ms\":1000,\"exp_ms\":3000,"
            "\"event_id\":\"e\",\"intent\":\"time\"}\n";

        check(nm_parse(nosess, strlen(nosess), &m) == 0, "parse ok");
        check(m.have_session == 0, "no session");
        memset(&st, 0, sizeof(st));
        check(nm_decide(&m, 424242, 2000, &st, &by_session) == 1, "window fallback allows");
        check(st.hit_window == 1, "hit_window counted");
        check(by_session == 0, "not by session");
        check(nm_decide(&m, 424242, 3500, &st, &by_session) == 0, "window expires");
    }

    printf("\n[6] failure injection: broken markers never allow\n");
    {
        nm_marker bad;
        const char *garbage = "not json at all";
        const char *noexp =
            "{\"version\":2,\"seq\":1,\"session\":\"1969141\",\"intent\":\"volume\"}\n";
        const char *blank = "";

        check(nm_parse(garbage, strlen(garbage), &bad) == -1, "garbage rejected");
        check(bad.valid == 0, "garbage not valid");
        memset(&st, 0, sizeof(st));
        check(nm_decide(&bad, 1969141, 2000, &st, &by_session) == 0,
              "garbage marker -> factory answer dropped, not leaked");
        check(st.bad_marker == 1, "bad_marker counted");

        check(nm_parse(noexp, strlen(noexp), &bad) == -1, "missing exp_ms rejected");
        memset(&st, 0, sizeof(st));
        check(nm_decide(&bad, 1969141, 2000, &st, &by_session) == 0, "no exp -> deny");

        check(nm_parse(blank, 0, &bad) == -1, "empty rejected");
        check(nm_decide(NULL, 1969141, 2000, &st, &by_session) == 0, "NULL marker -> deny");
    }

    printf("\n[7] consecutive markers: seq distinguishes them\n");
    {
        const char *a =
            "{\"version\":2,\"seq\":1,\"wall_ms\":1000,\"exp_ms\":3000,"
            "\"session\":\"111\",\"event_id\":\"a\",\"intent\":\"volume\"}\n";
        const char *b =
            "{\"version\":2,\"seq\":2,\"wall_ms\":1100,\"exp_ms\":3100,"
            "\"session\":\"222\",\"event_id\":\"b\",\"intent\":\"time\"}\n";
        nm_marker ma, mb;

        check(nm_parse(a, strlen(a), &ma) == 0, "first parse");
        check(nm_parse(b, strlen(b), &mb) == 0, "second parse");
        check(nm_decide(&ma, 111, 1200, NULL, &by_session) == 1, "first answer allowed");
        check(nm_decide(&mb, 222, 1200, NULL, &by_session) == 1, "second answer allowed");
        check(nm_decide(&ma, 222, 1200, NULL, &by_session) == 0,
              "stale marker never allows the next answer");
        check(mb.seq == ma.seq + 1, "seq monotonic");
    }

    printf("\n[8] session field present but malformed -> marker invalid (no window fallback)\n");
    {
        static const char *const bad[] = {
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"\",\"intent\":\"time\"}\n",
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"abc\",\"intent\":\"time\"}\n",
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"1969141x\",\"intent\":\"time\"}\n",
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"-5\",\"intent\":\"time\"}\n",
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"0\",\"intent\":\"time\"}\n",
            "{\"version\":2,\"seq\":1,\"exp_ms\":3000,\"session\":\"999999999999999999999999\",\"intent\":\"time\"}\n",
            NULL
        };
        int k;

        for (k = 0; bad[k] != NULL; k++) {
            nm_marker bm;

            check(nm_parse(bad[k], strlen(bad[k]), &bm) == -1, "malformed session rejected");
            memset(&st, 0, sizeof(st));
            check(nm_decide(&bm, 424242, 2000, &st, &by_session) == 0,
                  "malformed session never falls back to the window");
            check(by_session == 0, "not by session");
            check(st.hit_window == 0, "window fallback not used");
        }
        /* 没有任何 session 字段的老格式：仍然按窗口兼容 */
        {
            const char *old =
                "{\"version\":1,\"seq\":1,\"wall_ms\":1000,\"exp_ms\":3000,"
                "\"event_id\":\"e\",\"intent\":\"time\"}\n";
            nm_marker om;

            check(nm_parse(old, strlen(old), &om) == 0, "old format without session parses");
            check(om.have_session == 0, "old format has no session");
            memset(&st, 0, sizeof(st));
            check(nm_decide(&om, 424242, 2000, &st, &by_session) == 1,
                  "old format still allowed inside the window");
            check(st.hit_window == 1, "window fallback counted");
        }
    }
    printf("\n=== total: pass=%d fail=%d ===\n", g_pass, g_fail);
    return (g_fail == 0) ? 0 : 1;
}
