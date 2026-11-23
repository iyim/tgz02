/*
 * t8_15_continuous_dialog_unit_test.c -- T8-15 连续对话主链路 host 单测（纯逻辑）
 *
 * 覆盖：
 *   [1] 一次"唤醒"，同 ASR 会话连说 5 轮：轮次/续听窗口/上下文标记全部连续
 *   [2] 每轮原厂都给新 ASR 会话 id（真机更常见的形态）：仍是一个对话，不重置
 *   [3] 旧轮次的迟到 idle 不得收束新一轮（事件归属 + 跨轮隔离）
 *   [4] 同一轮重复 final：只记 duplicate，不涨轮次
 *   [5] 触达 max_rounds：先收束旧对话，再用这一句开新对话
 *   [6] 用户说"停止/退出"：对话收束、ctx_valid 归零、下一句重新开对话
 *   [7] 续听窗口过期：按"relisten window expired"收束，不冒充继续聆听
 *   [8] 窗口边界：deadline-1 仍在窗口内，deadline 到点才收束
 *   [9] 原厂事件接入：onStartTalk/onListenStarted/onStopTalk 只改聆听事实，不改轮次
 *   [10] talk tap 行解析（原厂日志格式宽松匹配）
 *   [11] talk tap 增量读取（半行不消费/追加/截断重置）
 *   [12] continuous=0：回到 T8-13 的"新会话 = 新对话"旧语义
 */
#include "session_ctrl.h"
#include "talk_tap.h"

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

/* 一轮完整交互（与 Worker 真实调用顺序一致）：
 * final -> submit -> tts queued -> playing -> idle */
static void one_round(sc_ctx *s, const char *sess, const char *evt, long long *t)
{
    *t += 1000;
    (void)sc_on_session_text(s, sess, evt, *t);
    *t += 100;
    (void)sc_on_submit(s, evt, *t);
    *t += 100;
    (void)sc_on_tts_queued(s, evt, *t);
    *t += 100;
    (void)sc_on_play_state(s, 1, evt, "ok", *t);
    *t += 600;
    (void)sc_on_play_state(s, 0, evt, "ok", *t);
    *t += 100;
}

int main(void)
{
    sc_ctx s;
    sc_config c;

    printf("=== T8-15 continuous dialog unit test ===\n");

    /* ------------- [1] 一次唤醒 5 轮（同 ASR 会话） ------------- */
    printf("\n[1] one wake -> 5 rounds, same asr session\n");
    sc_defaults(&c);
    sc_init(&s, &c);
    {
        long long t = 100000;
        int i;
        char evt[32];

        for (i = 1; i <= 5; i++) {
            snprintf(evt, sizeof(evt), "evt-r%d", i);
            one_round(&s, "1969300", evt, &t);
            check(s.round == i, "round counter follows the turn");
            check(s.state == SC_FOLLOWUP, "each answered round ends in FOLLOWUP");
            check(sc_is_relisten_armed(&s) == 1, "relisten window armed after playback");
            check(s.request_active == 0, "request finalized before next turn");
            if (i == 1) check(s.opens == 1, "one dialog only");
        }
        check(s.opens == 1, "still one dialog after 5 rounds");
        check(s.followup_rounds == 4, "4 of the 5 rounds were hands-free");
        check(s.rounds_total == 5, "5 rounds accepted in total");
        check(s.max_round_seen == 5, "max round seen = 5");
        check(s.stale_callbacks == 0, "no stale callbacks in the happy path");
        check(strncmp(s.session, "1969300", 7) == 0, "dialog identity kept");
    }

    /* ------------- [2] 每轮新 ASR 会话 id（真机形态） ------------- */
    printf("\n[2] one wake -> 5 rounds, factory opens a new asr session per turn\n");
    sc_init(&s, &c);
    {
        long long t = 200000;
        int i;
        char sess[32];
        char evt[32];

        for (i = 1; i <= 5; i++) {
            snprintf(sess, sizeof(sess), "19694%02d", i);
            snprintf(evt, sizeof(evt), "evt-n%d", i);
            one_round(&s, sess, evt, &t);
            if (i == 1) check(s.opens == 1, "first turn opens the dialog");
            else check(s.opens == 1, "later turns do NOT open a new dialog");
            check(s.round == i, "round follows the turn");
            check(strncmp(s.session, "1969401", 7) == 0, "dialog identity = first turn session");
            check(strncmp(s.asr_session, sess, 7) == 0, "current asr session tracked");
        }
        check(s.followup_rounds == 4, "4 hands-free rounds");
    }

    /* ------------- [3] 旧轮次迟到 idle ------------- */
    printf("\n[3] late idle of round 1 must not end round 2\n");
    sc_init(&s, &c);
    {
        long long t = 300000;
        one_round(&s, "1969500", "evt-a1", &t);            /* round 1 done */
        (void)sc_on_session_text(&s, "1969501", "evt-a2", t + 1000);
        (void)sc_on_submit(&s, "evt-a2", t + 1100);
        (void)sc_on_tts_queued(&s, "evt-a2", t + 1200);
        check(s.round == 2, "round 2 in progress");
        /* 第 1 轮的 idle 又一次到达（执行器快照/重复发布） */
        {
            int acc = sc_on_play_state(&s, 0, "evt-a1", "ok", t + 1300);
            check(acc == 0, "late idle of round 1 rejected");
        }
        check(s.round == 2, "round 2 unchanged");
        check(s.request_active == 1, "round 2 request still active");
        check(s.stale_callbacks == 1, "counted as stale");
        /* 真实收尾照旧 */
        (void)sc_on_play_state(&s, 0, "evt-a2", "ok", t + 2000);
        check(s.state == SC_FOLLOWUP && s.round == 2, "round 2 closed by its own idle");
    }

    /* ------------- [4] 同一轮重复 final ------------- */
    printf("\n[4] duplicate final / revision inside the same turn\n");
    sc_init(&s, &c);
    {
        long long t = 400000;
        (void)sc_on_session_text(&s, "1969600", "evt-d1", t);
        check(s.round == 1, "first final opens round 1");
        check(sc_on_session_text(&s, "1969600", "evt-d1", t + 100) == 0,
              "same event_id rejected");
        check(s.duplicate_events == 1, "duplicate counted");
        check(s.round == 1, "round not incremented");
        /* 同一轮的另一条修订 final（不同 event_id、同 ASR 会话、尚未播报完）不算新轮次 */
        (void)sc_on_session_text(&s, "1969600", "evt-d2", t + 200);
        check(s.round == 1, "revision of the same turn keeps the round");
        check(s.rounds_total == 1, "revision is not a new round");
        (void)sc_on_submit(&s, "evt-d2", t + 300);
        (void)sc_on_tts_queued(&s, "evt-d2", t + 400);
        (void)sc_on_play_state(&s, 0, "evt-d2", "ok", t + 900);
        check(s.state == SC_FOLLOWUP, "turn answered");
        /* 播报结束之后再说一句 = 真正的下一轮（即使原厂仍用同一个 ASR 会话 id） */
        (void)sc_on_session_text(&s, "1969600", "evt-d3", t + 2000);
        check(s.round == 2, "a new utterance after playback is round 2");
        check(s.rounds_total == 2, "rounds_total follows");
    }

    /* ------------- [5] max_rounds 上限 ------------- */
    printf("\n[5] max_rounds reached -> close and reopen\n");
    sc_defaults(&c);
    c.max_rounds = 3;
    sc_init(&s, &c);
    {
        long long t = 500000;
        int i;
        char sess[32];
        char evt[32];

        for (i = 1; i <= 3; i++) {
            snprintf(sess, sizeof(sess), "19697%02d", i);
            snprintf(evt, sizeof(evt), "evt-c%d", i);
            one_round(&s, sess, evt, &t);
        }
        check(s.round == 3 && s.opens == 1, "3 rounds in one dialog");
        /* 第 4 轮到达：旧对话按上限收束，这一句成为新对话的首轮 */
        (void)sc_on_session_text(&s, "1969799", "evt-c4", t + 1000);
        check(s.round_cap_hits == 1, "cap hit counted");
        check(s.session_ends == 1, "previous dialog closed");
        check(s.round == 1, "new dialog starts at round 1");
        check(s.opens == 2, "second dialog opened");
        check(strncmp(s.session, "1969799", 7) == 0, "new dialog identity");
    }

    /* ------------- [6] 用户说停止/退出 ------------- */
    printf("\n[6] user stop ends the dialog\n");
    sc_defaults(&c);
    sc_init(&s, &c);
    {
        long long t = 600000;
        one_round(&s, "1969800", "evt-s1", &t);
        one_round(&s, "1969800", "evt-s2", &t);
        check(s.round == 2, "2 rounds before stop");
        sc_on_session_end(&s, "user stop (route=native stop)", t + 500);
        check(s.state == SC_CLOSING, "stop -> CLOSING (observable)");
        check(s.round == 0, "rounds cleared");
        check(s.relisten_armed == 0, "relisten window closed");
        check(s.ctx_valid == 0, "ctx_valid cleared on close");
        check(strstr(s.end_reason, "user stop") != NULL, "end reason recorded");
        check(s.session_ends >= 1, "dialog end counted");
        check(sc_poll(&s, t + 600) == SC_IDLE, "back to standby");
        /* 下一句必须重新唤醒（新对话） */
        (void)sc_on_session_text(&s, "1969899", "evt-s3", t + 7000);
        check(s.round == 1 && s.opens == 2, "next wake opens a brand new dialog");
    }

    /* ------------- [7] 续听窗口过期 ------------- */
    printf("\n[7] relisten window expiry closes the dialog honestly\n");
    sc_defaults(&c);
    c.relisten_ms = 5000;
    sc_init(&s, &c);
    {
        long long t = 700000;
        unsigned long closes_before;
        one_round(&s, "1969900", "evt-w1", &t);
        check(sc_is_relisten_armed(&s) == 1, "armed");
        closes_before = s.closes;
        check(sc_poll(&s, t + 4000) == SC_FOLLOWUP, "still inside the window");
        check(sc_is_relisten_armed(&s) == 1, "still armed inside the window");
        check(sc_poll(&s, t + 6000) == SC_CLOSING, "expired -> CLOSING");
        check(s.closes == closes_before + 1, "close counted");
        check(strstr(s.end_reason, "relisten window expired") != NULL,
              "expiry reason recorded (no fake listening claim)");
        check(s.session_ends == 1, "dialog end counted");
        check(s.round == 0, "rounds cleared");
        check(sc_poll(&s, t + 6100) == SC_IDLE, "back to standby");
    }

    /* ------------- [8] 窗口边界 ------------- */
    printf("\n[8] window boundary is exact\n");
    sc_defaults(&c);
    c.relisten_ms = 5000;
    sc_init(&s, &c);
    {
        long long t = 800000;
        long long idle_at;
        one_round(&s, "1970000", "evt-b1", &t);
        idle_at = s.deadline_ms - 1;
        check(sc_poll(&s, idle_at) == SC_FOLLOWUP, "deadline-1 still FOLLOWUP");
        check(sc_poll(&s, idle_at + 1) == SC_CLOSING, "deadline reached -> CLOSING");
        check(s.timeouts >= 1, "timeout counted");
    }

    /* ------------- [9] 原厂事件接入 ------------- */
    printf("\n[9] factory events: listening facts only, never turn/round changes\n");
    sc_defaults(&c);
    sc_init(&s, &c);
    {
        long long t = 900000;
        check(s.last_wake_ms == 0 && s.device_listening == 0, "unobserved before tap");
        sc_on_factory_wake(&s, "1970100", t);
        check(s.last_wake_ms == t, "wake timestamp recorded");
        check(s.device_listening == 1, "listening = 1 after onStartTalk");
        check(s.state == SC_WAKE_PENDING, "idle + wake -> WAKE_PENDING");
        check(s.wake_events == 1, "wake counted");
        sc_on_factory_listen_start(&s, t + 100);
        check(s.listen_starts == 1 && s.device_listening == 1, "onListenStarted -> listening");
        (void)sc_on_session_text(&s, "1970100", "evt-f1", t + 200);
        (void)sc_on_submit(&s, "evt-f1", t + 300);
        (void)sc_on_tts_queued(&s, "evt-f1", t + 400);
        (void)sc_on_play_state(&s, 0, "evt-f1", "ok", t + 900);
        check(s.round == 1 && s.state == SC_FOLLOWUP, "round 1 done");
        /* 原厂这一轮 EOU：录音停了，但对话还在续听窗口里 */
        sc_on_factory_talk_stop(&s, t + 1000);
        check(s.device_listening == 0, "EOU -> listening = 0 (真实观察)");
        check(s.talk_stops == 1, "EOU counted");
        check(s.state == SC_FOLLOWUP, "EOU does NOT close the dialog");
        check(s.round == 1, "EOU does NOT change the round");
        check(sc_is_relisten_armed(&s) == 1, "relisten window survives EOU");
        /* 续听窗口里用户又说了一句（原厂续期时会这样发生） */
        (void)sc_on_session_text(&s, "1970101", "evt-f2", t + 2000);
        check(s.round == 2, "follow-up continues the same dialog");
        check(s.opens == 1, "no new dialog");
        /* 对话中又喊唤醒词：接上上下文，不重置轮次 */
        sc_on_factory_wake(&s, "1970102", t + 2100);
        check(s.round == 2, "wake inside a dialog keeps the round");
        check(s.device_listening == 1, "listening again after wake");
        /* 原厂平台会话退出（真机每轮回答后都有）：只清聆听事实，不收束对话 */
        sc_on_factory_exit_talk(&s, t + 2200);
        check(s.exit_talks == 1, "exitTalk counted");
        check(s.device_listening == 0, "exitTalk -> listening = 0");
        check(s.round == 2, "exitTalk does NOT change the round");
        check(s.state != SC_IDLE && s.state != SC_CLOSING, "exitTalk does NOT close our dialog");
    }

    /* ------------- [10] talk tap 行解析 ------------- */
    printf("\n[10] talk tap line parsing\n");
    {
        tt_event ev;
        const char *wake_line =
            "11-23 20:25:30.016 D/SessionManager( 30807): onStartTalk: sessionId = 1969141, "
            "wakeupType = 0, wakeupWord=tian mao jing ling";
        const char *stop_line =
            "11-23 20:25:36.463 D/SessionManager( 30807): onStopTalk: mStopTalkReason = 0, "
            "reason = normal";
        const char *listen_line =
            "11-23 20:25:30.928 D/AGSpeechEngineProxy( 30807): onListenStarted,684";
        const char *stop_listen_line =
            "11-23 20:25:36.470 D/AGSpeechEngineProxy( 30807): onStopListen,701";
        const char *noise =
            "11-23 20:28:59.190 D/SessionManager( 30807): "
            "fullDuplexDialogPageChangeToBlackList:1031 [8342] full duplex dialog";
        /* 真机实测行（T8-15 device probe, 20:39:12）：平台会话退出 */
        const char *exit_line =
            "11-23 20:39:12.307 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:"
            "exitTalk:1176 [30870] exit talk, input session=1969699, real session=1969699 exit=0";

        check(tt_parse_line(wake_line, &ev) == 1 && ev.kind == TT_EV_WAKE, "wake line");
        check(strcmp(ev.session, "1969141") == 0, "wake sessionId");
        check(ev.wake_type == 0, "wake wakeupType");
        check(strcmp(ev.word, "tian mao jing ling") == 0, "wake wakeupWord");

        /* 真机实测行（T8-15 device probe, 20:38:35）：JNI_AILABS 前缀 + 行号 + 额外字段 */
        {
            const char *real_wake =
                "11-23 20:38:35.900 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:"
                "onStartTalk:255 [30906] sessionId = 1969684, wakeupType = 0, "
                "wakeupWord=tian mao jing ling, needLight=0, needVoice=0";
            const char *real_stop =
                "11-23 20:38:38.707 D/SessionManager(30807): JNI_AILABS SessionManager.cpp:"
                "onStopTalk:697 [30906] onStopTalk, mStopTalkReason = 0, reason = normal";

            check(tt_parse_line(real_wake, &ev) == 1 && ev.kind == TT_EV_WAKE, "real device wake line");
            check(strcmp(ev.session, "1969684") == 0, "real wake sessionId");
            check(strcmp(ev.word, "tian mao jing ling") == 0, "real wake word stops at comma");
            check(tt_parse_line(real_stop, &ev) == 1 && ev.kind == TT_EV_TALK_STOP,
                  "real device stop line");
            check(ev.stop_reason == 0, "real stop reason");
        }

        check(tt_parse_line(stop_line, &ev) == 1 && ev.kind == TT_EV_TALK_STOP, "stop talk line");
        check(ev.stop_reason == 0, "stop reason");

        check(tt_parse_line(listen_line, &ev) == 1 && ev.kind == TT_EV_LISTEN_START,
              "listen start line");
        check(tt_parse_line(stop_listen_line, &ev) == 1 && ev.kind == TT_EV_LISTEN_STOP,
              "listen stop line");
        check(tt_parse_line(noise, &ev) == 0, "unrelated factory line ignored");
        check(tt_parse_line(exit_line, &ev) == 1 && ev.kind == TT_EV_EXIT_TALK, "exitTalk line");
        check(tt_parse_line("", &ev) == 0, "empty line ignored");
    }

    /* ------------- [11] talk tap 增量读取 ------------- */
    printf("\n[11] talk tap incremental read (partial line / append / truncation)\n");
    {
        const char *path = "t8_15_tap_probe.log";
        tt_ctx tap;
        tt_event ev[TT_BATCH_MAX];
        char err[128];
        FILE *f;
        int n;

        tt_init(&tap);
        f = fopen(path, "wb");
        check(f != NULL, "probe file created");
        if (f != NULL) {
            fputs("D/SessionManager( 1): onStartTalk: sessionId = 1970200, wakeupType = 0, "
                  "wakeupWord=x\n", f);
            /* 半行：没有换行，本拍不得消费 */
            fputs("D/SessionManager( 1): onStopTalk: mStopTalkRea", f);
            fclose(f);
        }
        n = tt_poll(&tap, path, ev, TT_BATCH_MAX, err, sizeof(err));
        check(n == 1, "only the complete line is consumed");
        check(tap.wakes == 1, "wake counted");
        check(strcmp(tap.last_session, "1970200") == 0, "last session recorded");

        /* 补齐半行 + 追加一行 */
        f = fopen(path, "ab");
        if (f != NULL) {
            fputs("son = 0, reason = normal\n", f);
            fputs("D/AGSpeechEngineProxy( 1): onListenStarted,9\n", f);
            fclose(f);
        }
        n = tt_poll(&tap, path, ev, TT_BATCH_MAX, err, sizeof(err));
        check(n == 2, "two more events after append");
        check(tap.talk_stops == 1 && tap.listen_starts == 1, "counters advanced");
        /* 没新内容：0 条，且不重复消费 */
        n = tt_poll(&tap, path, ev, TT_BATCH_MAX, err, sizeof(err));
        check(n == 0, "idempotent when nothing new");

        /* 截断（logcat 重启）-> offset 回退并重读 */
        f = fopen(path, "wb");
        if (f != NULL) {
            fputs("D/SessionManager( 1): onStopTalk: mStopTalkReason = 3, reason = timeout\n", f);
            fclose(f);
        }
        n = tt_poll(&tap, path, ev, TT_BATCH_MAX, err, sizeof(err));
        check(n == 1, "truncated file re-read from the beginning");
        check(tap.resets == 1, "truncation counted");
        check(tap.talk_stops == 2, "second stop counted after reset");
        check(tt_poll(&tap, "no_such_file.log", ev, TT_BATCH_MAX, err, sizeof(err)) < 0,
              "missing tap file reported (never faked)");
        remove(path);
    }

    /* ------------- [12] continuous=0 旧语义 ------------- */
    printf("\n[12] continuous=0 keeps the T8-13 semantics\n");
    sc_defaults(&c);
    c.continuous = 0;
    sc_init(&s, &c);
    {
        long long t = 1200000;
        one_round(&s, "1970300", "evt-o1", &t);
        check(s.state == SC_FOLLOWUP, "round 1 done");
        (void)sc_on_session_text(&s, "1970301", "evt-o2", t + 500);
        check(s.opens == 2, "different asr session -> new dialog (legacy)");
        check(s.round == 1, "round restarts at 1");
        check(s.followup_rounds == 0, "no hands-free round claimed in legacy mode");
    }

    printf("\n=== pass=%d fail=%d ===\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
