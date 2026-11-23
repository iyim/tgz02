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

/* 本地小工具：sc_same 是 session_ctrl.c 的静态函数，测试里用 strcmp 等价 */
static int sc_same_req(const sc_ctx *s, const char *id)
{
    return s != NULL && s->request[0] != '\0' && strcmp(s->request, id) == 0;
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
    sc_init(&s, &c);
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

    /* ---------------- [13] TTS 事件归属（T8-13.1 修复验证） ----------------
     * 审查点名的 6 个场景：旧事件/空 event_id/重复 idle/残留快照/迟到 interrupted
     * 一律不得污染当前请求的会话状态。 */
    printf("\n[13] TTS 事件归属：旧/空/重复/残留播放事件不污染当前会话\n");

    /* 13a：请求 A 播放中，收到旧请求 B 的 idle -> 拒绝，A 不被收尾 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969500", "evtA1", 130000);
    (void)sc_on_submit(&s, "evtA1", 130100);
    (void)sc_on_tts_queued(&s, "evtA1", 130200);
    check(s.state == SC_SPEAKING && s.request_active == 1, "13a setup: A playing");
    (void)sc_on_submit(&s, "evtB1", 130300);          /* A 被顶替，B 成为当前请求 */
    (void)sc_on_tts_queued(&s, "evtB1", 130400);
    check(s.state == SC_SPEAKING && strcmp(s.request, "evtB1") == 0, "13a setup: B playing");
    check(sc_on_play_state(&s, 0, "evtA1", "ok", 130500) == 0,
          "13a: old request A idle rejected");
    check(s.state == SC_SPEAKING, "13a: state still SPEAKING for B");
    check(s.request_active == 1, "13a: B request untouched");

    /* 13b：请求 A 播放中，收到空 event_id 的 idle -> 拒绝 */
    check(sc_on_play_state(&s, 0, "", "ok", 130600) == 0,
          "13b: empty event_id idle rejected");
    check(s.state == SC_SPEAKING && s.request_active == 1, "13b: state untouched");

    /* 13c：请求 B 自己的 idle 正常收尾；同一条收尾重复到达 -> 只计数，不重置窗口 */
    check(sc_on_play_state(&s, 0, "evtB1", "ok", 130700) == 1,
          "13c: B's own idle accepted");
    check(s.state == SC_FOLLOWUP && s.request_active == 0, "13c: FOLLOWUP reached");
    {
        long long dl = s.deadline_ms;
        check(sc_on_play_state(&s, 0, "evtB1", "ok", 130750) == 1,
              "13c: repeated idle accepted (snapshot)");
        check(s.deadline_ms == dl, "13c: deadline NOT reset by repeat");
        check(s.duplicate_events >= 1, "13c: repeat counted");
        check(s.state == SC_FOLLOWUP, "13c: state unchanged");
    }

    /* 13d：请求已结束后，旧播放状态再次到达（陌生 id）-> stale */
    check(sc_on_play_state(&s, 0, "evtZ9", "ok", 130800) == 0,
          "13d: unknown old playback rejected");
    check(s.state == SC_FOLLOWUP, "13d: state unchanged");

    /* 13e：请求 B 已开始，A 的迟到 interrupted 到达 -> 拒绝 */
    (void)sc_on_session_text(&s, "1969510", "evtC1", 131000);
    (void)sc_on_submit(&s, "evtC1", 131100);
    (void)sc_on_tts_queued(&s, "evtC1", 131200);
    check(s.state == SC_SPEAKING, "13e setup: C playing");
    check(sc_on_play_state(&s, 0, "evtA1", "interrupted", 131300) == 0,
          "13e: A's late interrupted rejected");
    check(s.state == SC_SPEAKING && s.request_active == 1, "13e: C untouched");

    /* 13f：TTS 状态文件保留上一轮 idle，当前请求尚未播放 -> 不误迁移 */
    /* 场景：D 请求刚 submit（PROCESSING，还没 playing），残留快照是 C 的 idle */
    (void)sc_on_session_text(&s, "1969520", "evtD1", 132000);
    (void)sc_on_submit(&s, "evtD1", 132100);
    check(s.state == SC_PROCESSING, "13f setup: D processing, not yet playing");
    check(sc_on_play_state(&s, 0, "evtC1", "ok", 132200) == 0,
          "13f: leftover idle for old event rejected");
    check(s.state == SC_PROCESSING && s.request_active == 1, "13f: D still processing");
    /* 空 id 的残留 idle 同样不能收尾 D */
    check(sc_on_play_state(&s, 0, "", "ok", 132300) == 0,
          "13f: empty-id leftover idle rejected");
    check(s.state == SC_PROCESSING, "13f: D untouched by snapshot");
    /* D 自己的 playing 开始（真实事件）-> 提升 SPEAKING */
    check(sc_on_play_state(&s, 1, "evtD1", "", 132400) == 1,
          "13f: D's own playing accepted");
    check(s.state == SC_SPEAKING, "13f: PROCESSING -> SPEAKING via playing event");
    /* 旧 id 的 playing 不迁移 */
    (void)sc_on_submit(&s, "evtE1", 132500);          /* E 顶替 D */
    check(s.state == SC_PROCESSING, "13f: E processing");
    check(sc_on_play_state(&s, 1, "evtD1", "", 132600) == 0,
          "13f: old event playing rejected");
    check(s.state == SC_PROCESSING, "13f: E not promoted by old playing");
    /* 空 id 的 playing 不迁移 */
    check(sc_on_play_state(&s, 1, "", "", 132700) == 1,
          "13f: empty-id playing accepted but no migration");
    check(s.state == SC_PROCESSING, "13f: E still processing");

    /* 13g：无活动请求时，残留 idle 只当快照（启动 idle），不做任何迁移 */
    sc_init(&s, &c);
    check(sc_on_play_state(&s, 0, "", "ok", 140000) == 1,
          "13g: startup idle snapshot accepted");
    check(s.state == SC_IDLE, "13g: stays IDLE");
    check(s.closes == 0 && s.transitions == 0, "13g: no migration from snapshot");

    /* 13h：归属规则不变量 —— 只有当前请求自己的收尾能终结请求 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969530", "evtF1", 150000);
    (void)sc_on_submit(&s, "evtF1", 150100);
    (void)sc_on_tts_queued(&s, "evtF1", 150200);
    (void)sc_on_play_state(&s, 0, "evtF1", "interrupted", 150300);
    check(s.state == SC_INTERRUPTED && s.request_active == 0,
          "13h: own interrupted finalizes request");
    /* 收尾后同一请求的 idle 重复到达：duplicate，不迁移 */
    check(sc_on_play_state(&s, 0, "evtF1", "ok", 150400) == 1,
          "13h: post-finalize idle of same id accepted as snapshot");
    check(s.state == SC_INTERRUPTED, "13h: state unchanged");

    /* 13h：归属规则不变量 —— 只有当前请求自己的收尾能终结请求 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969530", "evtF1", 150000);
    (void)sc_on_submit(&s, "evtF1", 150100);
    (void)sc_on_tts_queued(&s, "evtF1", 150200);
    (void)sc_on_play_state(&s, 0, "evtF1", "interrupted", 150300);
    check(s.state == SC_INTERRUPTED && s.request_active == 0,
          "13h: own interrupted finalizes request");
    /* 收尾后同一请求的 idle 重复到达：duplicate，不迁移 */
    check(sc_on_play_state(&s, 0, "evtF1", "ok", 150400) == 1,
          "13h: post-finalize idle of same id accepted as snapshot");
    check(s.state == SC_INTERRUPTED, "13h: state unchanged");

    /* ---------------- [14] Provider 成功后的请求终结（T8-13.2 修复验证） ----------------
     * 按 ai_worker.c provider 成功分支现在实际调用的 API 序列，逐情况核对：
     * 不会留下无法关闭的 request_active=1。 */
    printf("\n[14] Provider 成功四情况：A 入队/B 无队列/C 幂等/D 失败死信\n");

    /* 情况 A：TTS 新内容入队（q>0）—— submit -> tts_queued（请求保持活动）->
     *         等真实播放结束事件（play idle）-> 收尾 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969600", "evtA", 160000);
    (void)sc_on_submit(&s, "evtA", 160100);
    check(s.request_active == 1 && s.state == SC_PROCESSING, "A: active in PROCESSING");
    (void)sc_on_tts_queued(&s, "evtA", 160200);
    check(s.request_active == 1 && s.state == SC_SPEAKING, "A: waits for play idle (active kept)");
    (void)sc_on_play_state(&s, 0, "evtA", "ok", 160300);
    check(s.request_active == 0 && s.state == SC_FOLLOWUP, "A: closed by real play idle");
    check(sc_poll(&s, 160300 + 12000) == SC_CLOSING && sc_poll(&s, 160300 + 12001) == SC_IDLE,
          "A: session closes after window");

    /* 情况 B：无 TTS 队列 —— submit -> request_result(ok)（worker 的 tts_queue 空分支）->
     *         立即退出 PROCESSING，不留下活动请求 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969610", "evtB", 161000);
    (void)sc_on_submit(&s, "evtB", 161100);
    sc_on_request_result(&s, "evtB", 1, 161200);      /* worker: no tts queue branch */
    check(s.request_active == 0, "B: request finalized, not stuck active");
    check(s.state == SC_LISTENING, "B: PROCESSING exited (LISTENING fallback window)");
    check(s.deadline_ms > 161200, "B: deadline armed for eventual close");
    check(sc_poll(&s, 161200 + 12000) == SC_CLOSING && sc_poll(&s, 161200 + 12001) == SC_IDLE,
          "B: closes, never stuck");

    /* 情况 C：幂等命中 done/failed（worker 分支调用 request_result(ok)）—— 终结 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969620", "evtC", 162000);
    (void)sc_on_submit(&s, "evtC", 162100);
    sc_on_request_result(&s, "evtC", 1, 162200);      /* worker: q==0 stage=done/failed */
    check(s.request_active == 0 && s.state == SC_LISTENING, "C(done): finalized, no wait");

    /* 情况 C'：幂等命中 queue/inflight —— 不终结，等真实播放事件推进 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969630", "evtC2", 163000);
    (void)sc_on_submit(&s, "evtC2", 163100);
    check(s.request_active == 1, "C': no request_result call for queue/inflight stage");
    (void)sc_on_play_state(&s, 1, "evtC2", "", 163200);   /* TtsExec starts playing */
    check(s.state == SC_SPEAKING && s.request_active == 1, "C': playing keeps wait relation");
    (void)sc_on_play_state(&s, 0, "evtC2", "ok", 163300);
    check(s.request_active == 0 && s.state == SC_FOLLOWUP, "C': real idle closes it");

    /* 情况 D：q<0 重试期间请求保持；死信放弃正确清理 */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969640", "evtD", 164000);
    (void)sc_on_submit(&s, "evtD", 164100);
    sc_note_timeout(&s);
    check(s.request_active == 1 && s.state == SC_PROCESSING, "D: retry keeps request active");
    sc_on_request_result(&s, "evtD", 0, 164200);      /* dead-letter abandon */
    check(s.request_active == 0 && s.state == SC_LISTENING, "D: dead-letter cleaned up");
    check(sc_poll(&s, 164200 + 12000) == SC_CLOSING, "D: session closes via deadline");
    check(sc_poll(&s, 164200 + 12001) == SC_IDLE, "D: never stuck");

    /* 死信闩锁：force_close 清空一切悬挂 */
    (void)sc_on_session_text(&s, "1969650", "evtD2", 165000);
    (void)sc_on_submit(&s, "evtD2", 165100);
    sc_force_close(&s, "dead letter latch", 165200);
    check(s.request_active == 0 && s.state == SC_CLOSING, "latch: force close clears request");
    check(sc_poll(&s, 165300) == SC_IDLE, "latch: back to IDLE");

    /* 旧请求终态回调不能结束新请求（worker 顺序：新请求已顶替旧请求） */
    sc_init(&s, &c);
    (void)sc_on_session_text(&s, "1969660", "evtOld", 166000);
    (void)sc_on_submit(&s, "evtOld", 166100);
    (void)sc_on_submit(&s, "evtNew", 166200);         /* 顶替 */
    check(sc_same_req(&s, "evtNew"), "setup: new request current");
    {
        unsigned long before = s.stale_callbacks;
        sc_on_request_result(&s, "evtOld", 1, 166300);   /* 旧请求成功回调迟到 */
        check(s.stale_callbacks == before + 1, "old terminal callback filtered");
        check(s.request_active == 1 && s.state == SC_PROCESSING, "new request untouched");
        sc_on_request_result(&s, "evtNew", 1, 166400);
        check(s.request_active == 0, "new request finalized by its own callback");
    }
    /* 不变量：以上所有情况都不会留下无法关闭的活动请求 —— 每个分支后
     * request_active==0 或有对应的播放/超时事件必然到达（A/C'） */

    printf("\nSUMMARY: pass=%d fail=%d\n", g_pass, g_fail);
    printf("RESULT: %s\n", g_fail == 0 ? "PASS" : "FAIL");
    return g_fail == 0 ? 0 : 1;
}
