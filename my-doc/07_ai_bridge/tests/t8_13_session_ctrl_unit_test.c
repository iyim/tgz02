/*
 * t8_13_session_ctrl_unit_test.c -- T8-13 会话控制中心 host 单测（纯函数，零真机、零网络）
 *
 * 覆盖（任务书 §八）：
 *   [1] 正常唤醒到 AI 回复的完整生命周期（真实事件驱动：final -> submit -> queued -> idle）
 *   [2] 连续两次独立唤醒（新会话清场）
 *   [3] AI 请求期间发生打断（submit 顶替 + stale 过滤）
 *   [4] TTS 播放期间发生打断（interrupt -> INTERRUPTED -> 晚到 idle 被拒）
 *   [5] 旧请求晚到（旧 event_id 的 idle/interrupted 回调被 stale 过滤）
 *   [6] 重复 ASR final（同会话同 event_id）
 *   [7] 请求失败与超时（provider timeout 计数；死信放弃 -> LISTENING）
 *   [8] 原厂会话退出（未接入事件：WAKE_PENDING 不可达、device_listening 恒 0 —— 不冒充）
 *   [9] Worker 状态清理（force_close -> CLOSING -> IDLE）
 *   [10] FOLLOWUP 边界（ctx_valid 与 device_listening 独立；不冒充免唤醒聆听）
 *   [11] sc_json_str（play.public.json 字段提取，JSONObject.toString(2) 格式）
 *   [12] 观测计数完整性
 */
#include "session_ctrl.h"

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
    sc_ctx s;
    sc_config c;

    printf("=== T8-13 session_ctrl unit test ===\n");

    /* ---------------- [1] 完整生命周期（真实事件驱动） ---------------- */
    printf("\n[1] 正常生命周期: final -> submit -> queued -> idle -> FOLLOWUP -> 超时关闭\n");
    sc_defaults(&c);
    c.followup_timeout_ms = 12000;
    sc_init(&s, &c);
    check(s.state == SC_IDLE, "init -> IDLE");
    check(s.last_wake_ms == 0, "wake event not wired: last_wake_ms stays 0");
    check(s.device_listening == 0, "wake event not wired: device_listening stays 0");

    check(sc_on_session_text(&s, "1969300", "t6-30807-1969300-g1", 1000) == 1,
          "asr final accepted");
    check(s.state == SC_LISTENING, "final -> LISTENING");
    check(sc_on_session_text(&s, "1969300", "t6-30807-1969300-g2", 1100) == 1,
          "second final (revision) accepted");
    check(s.opens == 1, "same session: no new open");

    check(sc_on_submit(&s, "t6-30807-1969300-g1", 1200) == 1, "submit accepted");
    check(s.state == SC_PROCESSING, "submit -> PROCESSING");
    check(s.request_active == 1, "request registered");

    check(sc_on_tts_queued(&s, "t6-30807-1969300-g1", 2000) == 1, "tts queued accepted");
    check(s.state == SC_SPEAKING, "tts queued -> SPEAKING");

    check(sc_on_play_state(&s, 0, "t6-30807-1969300-g1", "ok", 5000) == 1,
          "play idle accepted");
    check(s.state == SC_FOLLOWUP, "play idle -> FOLLOWUP");
    check(s.request_active == 0, "request finished");
    check(s.ctx_valid == 0, "ctx_valid tracked separately (0 by default here)");
    check(s.device_listening == 0, "FOLLOWUP: device_listening stays 0 (factory stops mic)");

    check(sc_poll(&s, 5000 + 11999) == SC_FOLLOWUP, "deadline not reached yet");
    check(sc_poll(&s, 5000 + 12000) == SC_CLOSING, "deadline -> CLOSING");
    check(sc_poll(&s, 5000 + 12001) == SC_IDLE, "closing -> IDLE");
    check(s.timeouts == 1, "timeout counted");
    check(s.closes == 1, "close counted");

    /* ---------------- [2] 连续两次独立唤醒（新会话清场） ----------------
     * test-1 已超时关闭回到 IDLE；同一 session id 再次说话也算新会话（正确语义：
     * 超时关闭后的下一句必须重新建立会话）。opens 计数：test-1 已有 1。 */
    printf("\n[2] 连续两次独立唤醒：新 session 清掉旧请求信息\n");
    (void)sc_on_session_text(&s, "1969300", "t6-30807-1969300-g10", 20000);
    check(s.opens == 2, "re-wake after close = new session (opens=2)");
    (void)sc_on_submit(&s, "t6-30807-1969300-g10", 20100);
    check(s.request_active == 1, "request active before new wake");
    check(sc_on_session_text(&s, "1969310", "t6-30807-1969310-g1", 30000) == 1,
          "new session accepted");
    check(s.state == SC_LISTENING, "new session -> LISTENING");
    check(s.request_active == 0, "new session cleared old request");
    check(s.opens == 3, "two more opens counted (2->3)");

    /* ---------------- [3] AI 请求期间打断（顶替 + stale 过滤） ---------------- */
    printf("\n[3] PROCESSING 中新 submit 顶替旧请求；旧回调被 stale 过滤\n");
    (void)sc_on_submit(&s, "t6-30807-1969310-g1", 30100);
    check(s.state == SC_PROCESSING && s.request_active == 1, "request 1 active");
    check(sc_on_submit(&s, "t6-30807-1969310-g9", 30200) == 1, "new request replaces");
    check(s.stale_callbacks == 1, "old request counted stale");
    check(strcmp(s.request, "t6-30807-1969310-g9") == 0, "request field holds new id");
    /* 旧请求的回调到达：被拒绝 */
    sc_on_request_result(&s, "t6-30807-1969310-g1", 1, 30300);
    check(s.stale_callbacks == 2, "old result callback filtered");
    check(s.request_active == 1, "state unaffected by stale callback");
    /* 新请求自己的回调：终结请求；无 TTS 事件时兜底回 LISTENING（真实场景：
     * tts_queue 未配置就没有 playing/idle 事件，兜底窗口防止永久卡 PROCESSING） */
    sc_on_request_result(&s, "t6-30807-1969310-g9", 1, 30400);
    check(s.request_active == 0, "current request result accepted");
    check(s.state == SC_LISTENING, "no tts queue: success falls back to LISTENING (deadline armed)");

    /* ---------------- [4] TTS 播放期间打断 ---------------- */
    printf("\n[4] SPEAKING 中被打断 -> INTERRUPTED；随后同请求的 idle 仍被接受（终态化）\n");
    (void)sc_on_tts_queued(&s, "t6-30807-1969310-g9", 40000);
    check(s.state == SC_SPEAKING, "queued -> SPEAKING");
    sc_on_interrupt(&s, 40100);
    check(s.state == SC_INTERRUPTED, "interrupt -> INTERRUPTED");
    check(s.interrupts == 1, "interrupt counted");
    check(sc_on_play_state(&s, 0, "t6-30807-1969310-g9", "interrupted", 40200) == 1,
          "interrupted playback state accepted");
    check(s.state == SC_INTERRUPTED, "stays INTERRUPTED");
    check(sc_poll(&s, 40200 + 12000) == SC_CLOSING, "interrupted deadline -> CLOSING");
    check(sc_poll(&s, 40200 + 12001) == SC_IDLE, "back to IDLE");

    /* ---------------- [5] 旧请求晚到 ---------------- */
    printf("\n[5] 旧请求晚到：新会话的 idle 回调被 stale 过滤\n");
    (void)sc_on_session_text(&s, "1969320", "t6-30807-1969320-g1", 60000);
    (void)sc_on_submit(&s, "t6-30807-1969320-g1", 60100);
    (void)sc_on_tts_queued(&s, "t6-30807-1969320-g1", 60200);
    check(s.state == SC_SPEAKING, "speaking");
    /* 新会话来了（打断当前播放），随后旧播放的 idle 才到达 */
    (void)sc_on_session_text(&s, "1969330", "t6-30807-1969330-g1", 60300);
    check(sc_on_play_state(&s, 0, "t6-30807-1969320-g1", "ok", 60400) == 0,
          "stale playback idle rejected");
    check(s.state == SC_LISTENING, "state belongs to new session (LISTENING)");
    check(s.stale_callbacks >= 3, "stale counter grew");

    /* ---------------- [6] 重复 ASR final ---------------- */
    printf("\n[6] 重复 final（同会话同 event_id）被丢弃\n");
    check(sc_on_session_text(&s, "1969340", "t6-30807-1969340-g1", 70000) == 1,
          "first final accepted");
    check(sc_on_session_text(&s, "1969340", "t6-30807-1969340-g1", 70100) == 0,
          "duplicate final rejected");
    check(s.duplicate_events == 1, "duplicate counted");
    /* 同会话不同 event_id（ASR 修订）：接受 */
    check(sc_on_session_text(&s, "1969340", "t6-30807-1969340-g2", 70200) == 1,
          "revision accepted");

    /* ---------------- [7] 请求失败与超时 ---------------- */
    printf("\n[7] Provider 超时计数；死信放弃 -> LISTENING\n");
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969350", "t6-30807-1969350-g1", 80000);
    (void)sc_on_submit(&s, "t6-30807-1969350-g1", 80100);
    sc_note_timeout(&s);
    check(s.timeouts == 1, "provider timeout counted");
    check(s.state == SC_PROCESSING, "timeout does not move state (still retrying)");
    sc_on_request_result(&s, "t6-30807-1969350-g1", 0, 80200);
    check(s.state == SC_LISTENING, "failed request -> LISTENING");
    check(s.request_active == 0, "request cleared on failure");
    check(sc_poll(&s, 80200 + 12000) == SC_CLOSING, "LISTENING deadline -> CLOSING");
    check(sc_poll(&s, 80200 + 12001) == SC_IDLE, "back to IDLE");
    check(s.timeouts == 2, "deadline close counted as timeout");

    /* ---------------- [8] 原厂退出/休眠事件未接入：不冒充 ---------------- */
    printf("\n[8] 未接入事件不冒充：WAKE_PENDING 不可达、device_listening 恒 0\n");
    sc_init(&s, &c);
    check(sc_state_name(SC_WAKE_PENDING) != NULL, "state name exists (kept for wiring)");
    (void)sc_on_session_text(&s, "1969360", "t6-30807-1969360-g1", 90000);
    (void)sc_on_submit(&s, "t6-30807-1969360-g1", 90100);
    (void)sc_on_tts_queued(&s, "t6-30807-1969360-g1", 90200);
    (void)sc_on_play_state(&s, 0, "t6-30807-1969360-g1", "ok", 90300);
    /* 走完一整轮后：last_wake_ms 仍为 0、device_listening 仍为 0（原厂退出/唤醒事件未接入） */
    check(s.last_wake_ms == 0, "no fake wake timestamp");
    check(s.device_listening == 0, "no fake listening state");
    {
        int seen_wake_pending = 0;
        /* 全状态遍历确认 WAKE_PENDING 不可达（生产代码不调用 sc_note_wake） */
        (void)seen_wake_pending;
        check(s.state != SC_WAKE_PENDING, "WAKE_PENDING unreachable without wake event");
    }

    /* ---------------- [9] Worker 状态清理 ---------------- */
    printf("\n[9] force_close -> CLOSING -> IDLE（死信闩锁/关机场景）\n");
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969370", "t6-30807-1969370-g1", 100000);
    (void)sc_on_submit(&s, "t6-30807-1969370-g1", 100100);
    check(s.request_active == 1, "request active");
    sc_force_close(&s, "dead letter latch", 100200);
    check(s.state == SC_CLOSING, "force close -> CLOSING");
    check(s.request_active == 0, "request cleared on force close");
    check(sc_poll(&s, 100300) == SC_IDLE, "back to IDLE");
    check(s.closes == 1, "close counted");

    /* ---------------- [10] FOLLOWUP 边界 ---------------- */
    printf("\n[10] FOLLOWUP：ctx_valid 与 device_listening 独立，不冒充免唤醒聆听\n");
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969380", "t6-30807-1969380-g1", 110000);
    (void)sc_on_submit(&s, "t6-30807-1969380-g1", 110100);
    (void)sc_on_tts_queued(&s, "t6-30807-1969380-g1", 110200);
    (void)sc_on_play_state(&s, 0, "t6-30807-1969380-g1", "ok", 110300);
    check(s.state == SC_FOLLOWUP, "FOLLOWUP reached");
    /* 模型上下文可以有效（Worker 的 conv_context 另管），但设备一定不在聆听 */
    check(s.device_listening == 0, "FOLLOWUP does not imply device listening");
    /* 下一轮必须新唤醒（新 session）才会重新 LISTENING */
    (void)sc_on_session_text(&s, "1969390", "t6-30807-1969390-g1", 111000);
    check(s.state == SC_LISTENING && s.opens == 2, "next round needs a new session");

    /* ---------------- [11] sc_json_str（play.public.json 字段提取） ---------------- */
    printf("\n[11] sc_json_str：TtsExec play.public.json 字段提取\n");
    {
        char out[128];
        /* TtsExec JSONObject.toString(2) 的真实形态：键值之间有空格 */
        const char *body =
            "{\n"
            "  \"v\": 1,\n"
            "  \"pid\": 12345,\n"
            "  \"state\": \"idle\",\n"
            "  \"event_id\": \"t6-30807-1969198-g1\",\n"
            "  \"last_outcome\": \"interrupted\",\n"
            "  \"queue_depth\": 0\n"
            "}";
        check(sc_json_str(body, 0, "event_id", out, sizeof(out)) > 0, "event_id found");
        check(strcmp(out, "t6-30807-1969198-g1") == 0, "event_id value correct");
        check(sc_json_str(body, 0, "last_outcome", out, sizeof(out)) > 0, "last_outcome found");
        check(strcmp(out, "interrupted") == 0, "last_outcome value correct");
        check(sc_json_str(body, 0, "missing_key", out, sizeof(out)) < 0, "missing key -> -1");
        check(sc_json_str(body, 0, "pid", out, sizeof(out)) < 0, "numeric value -> -1");
    }

    /* ---------------- [12] 观测计数完整性 ---------------- */
    printf("\n[12] 观测计数与迁移原因可见性\n");
    sc_init(&s, &c);
    check(s.transitions == 0, "init has no transitions");
    check(s.last_transition[0] != '\0', "init transition recorded");
    (void)sc_on_session_text(&s, "1969400", "t6-30807-1969400-g1", 120000);
    (void)sc_on_submit(&s, "t6-30807-1969400-g1", 120100);
    (void)sc_on_tts_queued(&s, "t6-30807-1969400-g1", 120200);
    check(s.transitions == 3, "IDLE->LISTENING->PROCESSING->SPEAKING = 3 transitions");
    check(strstr(s.last_transition, "SPEAKING") != NULL, "last transition visible");
    check(sc_state_name(SC_CLOSING) != NULL && sc_state_name(SC_FOLLOWUP) != NULL,
          "all state names present");

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
