/*
 * worker_status.c -- 见 worker_status.h
 *
 * 状态文件的价值在于"外部可观测"：Worker 出问题时不用连 Frida、不用看内核日志，
 * 一条 cat 就能回答"读到哪了、处理了几条、跳过几条、最近一次错误是什么"。
 * 因此这里的字段只增不减，命名一旦定下就不要再改（脚本和报告都依赖它）。
 */
#include "worker_status.h"
#include "worker_util.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

void t6b_status_init(t6b_status *st)
{
    if (st == NULL) return;
    memset(st, 0, sizeof(*st));
    st->version = 1;
    snprintf(st->state, sizeof(st->state), "starting");
    st->file_size = -1;
    st->provider[0] = '\0';
}

void t6b_status_note_error(t6b_status *st, const char *fmt, ...)
{
    va_list ap;

    if (st == NULL || fmt == NULL) return;
    va_start(ap, fmt);
    vsnprintf(st->last_error, sizeof(st->last_error), fmt, ap);
    va_end(ap);
    wu_time_str(st->updated_at, sizeof(st->updated_at));
    st->updated_at_ms = wu_wall_ms();
}

int t6b_status_write(const t6b_status *st, const char *path, char *err, size_t errlen)
{
    static char buf[12288];
    char esc_events[T6B_PATH_MAX * 2];
    char esc_state[T6B_PATH_MAX * 2];
    char esc_invalid[T6B_PROVIDER_MSG_MAX * 2];
    char esc_error[sizeof(((t6b_status *)0)->last_error) * 2];
    char esc_pending[(T6B_ID_MAX + 1) * 2];
    char esc_dl_event[(T6B_ID_MAX + 1) * 2];
    char esc_model[sizeof(((t6b_status *)0)->model) * 2];
    char esc_class[sizeof(((t6b_status *)0)->last_error_class) * 2];
    char esc_ttsq[T6B_PATH_MAX * 2];
    char esc_ctxfile[T6B_PATH_MAX * 2];
    char esc_echo_state[T6B_PATH_MAX * 2];
    char esc_echo_reason[96];
    char esc_echo_detail[224];
    /* T7-04 */
    char esc_route_last[224];
    char esc_route_file[T6B_PATH_MAX * 2];
    char esc_publish_err[288];
    char esc_gate_detail[352];
    char esc_gate_file[T6B_PATH_MAX * 2];
    char esc_session_state[48];
    char esc_session_detail[352];
    char esc_sc_state[48];
    char esc_sc_session[288];
    char esc_sc_request[288];
    char esc_sc_last_final_event[288];
    char esc_sc_last_transition[448];
    /* T8-14.1：技能调度的短标签（skill 名 / 结果码，均无用户正文） */
    char esc_sk_skill[96];
    char esc_sk_result[112];
    /* T8-15：连续对话结束原因 / tap 文件路径与最近会话 id（均无用户正文） */
    char esc_sc_end_reason[400];
    char esc_tap_file[T6B_PATH_MAX + 8];
    char esc_tap_last_session[160];
    char tmp[T6B_PATH_MAX + 8];
    char dir[T6B_PATH_MAX];
    int n;
    int fd;

    if (st == NULL || path == NULL) return -1;

    /* 路径与错误信息必须转义：Windows 主机测试的路径里有反斜杠，
     * 不转义会把状态文件写成非法 JSON（设备上的 /data/... 看不出来这个问题）。 */
    wu_json_escape(esc_events, sizeof(esc_events), st->events_file);
    wu_json_escape(esc_state, sizeof(esc_state), st->state_file);
    wu_json_escape(esc_invalid, sizeof(esc_invalid), st->last_invalid);
    wu_json_escape(esc_error, sizeof(esc_error), st->last_error);
    wu_json_escape(esc_pending, sizeof(esc_pending), st->pending_event_id);
    wu_json_escape(esc_dl_event, sizeof(esc_dl_event), st->dl_event_id);
    wu_json_escape(esc_model, sizeof(esc_model), st->model);
    wu_json_escape(esc_class, sizeof(esc_class), st->last_error_class);
    wu_json_escape(esc_ttsq, sizeof(esc_ttsq), st->tts_queue);
    wu_json_escape(esc_ctxfile, sizeof(esc_ctxfile), st->context_file);
    wu_json_escape(esc_echo_state, sizeof(esc_echo_state), st->echo_state_file);
    wu_json_escape(esc_echo_reason, sizeof(esc_echo_reason), st->echo_last_reason);
    wu_json_escape(esc_echo_detail, sizeof(esc_echo_detail), st->echo_last_detail);
    wu_json_escape(esc_route_last, sizeof(esc_route_last), st->route_last);
    wu_json_escape(esc_route_file, sizeof(esc_route_file), st->route_publish_file);
    wu_json_escape(esc_publish_err, sizeof(esc_publish_err), st->route_publish_err);
    wu_json_escape(esc_gate_detail, sizeof(esc_gate_detail), st->gate_last_detail);
    wu_json_escape(esc_gate_file, sizeof(esc_gate_file), st->gate_hold_file);
    wu_json_escape(esc_session_state, sizeof(esc_session_state), st->session_state);
    wu_json_escape(esc_session_detail, sizeof(esc_session_detail), st->session_detail);
    wu_json_escape(esc_sc_state, sizeof(esc_sc_state), st->sc_state);
    wu_json_escape(esc_sc_session, sizeof(esc_sc_session), st->sc_session);
    wu_json_escape(esc_sc_request, sizeof(esc_sc_request), st->sc_request);
    wu_json_escape(esc_sc_last_final_event, sizeof(esc_sc_last_final_event),
                   st->sc_last_final_event);
    wu_json_escape(esc_sc_last_transition, sizeof(esc_sc_last_transition),
                   st->sc_last_transition);
    wu_json_escape(esc_sk_skill, sizeof(esc_sk_skill), st->sk_last_skill);
    wu_json_escape(esc_sk_result, sizeof(esc_sk_result), st->sk_last_result);
    wu_json_escape(esc_sc_end_reason, sizeof(esc_sc_end_reason), st->sc_end_reason);
    wu_json_escape(esc_tap_file, sizeof(esc_tap_file), st->tap_file);
    wu_json_escape(esc_tap_last_session, sizeof(esc_tap_last_session), st->tap_last_session_str);

    n = snprintf(buf, sizeof(buf),
        "{\"version\":%d,\"state\":\"%s\",\"pid\":%lld,"
        "\"started_at\":\"%s\",\"updated_at\":\"%s\","
        "\"started_at_ms\":%lld,\"updated_at_ms\":%lld,"
        "\"events_file\":\"%s\",\"state_file\":\"%s\",\"offset\":%lld,\"file_size\":%lld,"
        "\"dev\":%llu,\"ino\":%llu,\"prefix_hash\":\"%016llx\",\"prefix_hash_valid\":%d,"
        "\"provider\":\"%s\",\"mock_calls\":%llu,"
        "\"provider_mock\":%d,\"model\":\"%s\",\"last_http_status\":%d,\"last_curl_code\":%d,"
        "\"last_provider_latency_ms\":%lld,\"last_resp_bytes\":%llu,\"last_error_class\":\"%s\","
        "\"counters\":{\"lines_read\":%llu,\"events_accepted\":%llu,\"events_processed\":%llu,"
        "\"duplicates\":%llu,\"invalid_lines\":%llu,\"oversize_lines\":%llu,"
        "\"io_errors\":%llu,\"truncations\":%llu,\"replacements\":%llu,"
        "\"identity_resets\":%llu,\"legacy_rescans\":%llu,"
        "\"gaps\":%llu,\"gap_missing_total\":%llu,\"seq_resets\":%llu,\"seq_unknown_start\":%llu,"
        "\"state_saves\":%llu,\"state_errors\":%llu,"
        "\"provider_ok\":%llu,\"provider_err\":%llu,\"provider_timeout\":%llu,"
        "\"provider_retries\":%llu,\"stuck_attempts\":%llu,"
        "\"provider_stuck\":%d,\"state_persist_failed\":%d,"
        "\"tts_queued\":%llu,\"tts_skipped\":%llu,\"tts_enqueue_failed\":%llu,"
        /* T7-06-R2：死信条数（被跳过的事件数），triage 直接可读 */
        "\"dead_letters\":%llu},"
        /* T7-09：死信回滚失败现场（只在 dead_letter_failed=1 时有意义） */
        "\"dead_letter\":{\"failed\":%d,\"event_id\":\"%s\",\"io_stage\":%d,\"io_errno\":%d,"
        "\"rollback_stage\":%d,\"rollback_errno\":%d,\"pre_len\":%lld,\"cur_len\":%lld,"
        "\"cur_len_valid\":%d,"
        /* T7-10：标记状态（2 = 跨重启保护未建立，现场必须先处理再重启） */
        "\"marker_state\":%d,\"marker_stage\":%d,\"marker_errno\":%d},"
        "\"tts_queue\":\"%s\","
        "\"context\":{\"enabled\":%d,\"max_messages\":%d,\"messages\":%d,\"turns\":%d,"
        "\"load_state\":%d,\"saves\":%llu,\"save_errors\":%llu,\"evicted\":%llu,"
        "\"file\":\"%s\"},"
        "\"echo\":{\"enabled\":%d,\"no_command\":%d,\"seen\":%llu,\"dropped_echo\":%llu,"
        "\"dropped_nocmd\":%llu,\"kept\":%llu,\"kept_in_window\":%llu,\"window_hits\":%llu,"
        "\"state_errors\":%llu,\"last_reason\":\"%s\",\"last_detail\":\"%s\","
        "\"state_file\":\"%s\"},"
        "\"last_seq\":%lu,\"last_event_id\":\"%s\",\"last_event_at\":\"%s\","
        "\"last_gap_from\":%lu,\"last_gap_to\":%lu,"
        "\"route\":{\"enabled\":%d,\"intents\":%d,\"native\":%llu,\"ai\":%llu,"
        "\"volume\":%llu,\"weather\":%llu,\"screen_off\":%llu,\"time\":%llu,"
        "\"screen_on\":%llu,\"media\":%llu,\"stop\":%llu,\"interrupts\":%llu,"
        "\"publish_ok\":%llu,\"publish_fail\":%llu,\"fallback_ai\":%llu,"
        "\"publish_retry\":%llu,\"seq\":%lld,\"dup_dropped\":%llu,\"incomplete_ai\":%llu,\"publish_err\":\"%s\","
        "\"dup_same_event\":%llu,\"dup_same_report\":%llu,\"same_text_new_event\":%llu,"
        "\"last\":\"%s\",\"publish_file\":\"%s\"},"
        "\"gate\":{\"enabled\":%d,\"debounce_ms\":%d,\"max_hold_ms\":%d,"
        "\"cross_session\":%d,\"seen\":%llu,\"held\":%llu,\"released\":%llu,"
        "\"merged\":%llu,\"cross_merged\":%llu,\"dropped_dup\":%llu,\"restored\":%llu,"
        "\"fast_released\":%llu,\"last_detail\":\"%s\",\"hold_file\":\"%s\"},"
        "\"session\":{\"enabled\":%d,\"timeout_ms\":%d,\"state\":\"%s\","
        "\"turns\":%d,\"followups\":%d,\"opened\":%lu,\"closed\":%lu,"
        "\"detail\":\"%s\"},"
        "\"session_ctrl\":{\"enabled\":%d,\"state\":\"%s\",\"session\":\"%s\","
        "\"request\":\"%s\",\"request_active\":%d,\"last_wake_ms\":%lld,"
        "\"last_final_ms\":%lld,\"last_final_event\":\"%s\","
        "\"last_transition\":\"%s\",\"transitions\":%lu,\"opens\":%lu,"
        "\"stale_callbacks\":%lu,\"duplicate_events\":%lu,\"timeouts\":%lu,"
        "\"interrupts\":%lu,\"closes\":%lu,"
        "\"continuous\":%d,\"relisten_ms\":%d,\"max_rounds\":%d,"
        "\"round\":%d,\"max_round_seen\":%d,\"relisten_armed\":%d,"
        "\"ctx_valid\":%d,\"device_listening\":%d,"
        "\"followup_rounds\":%lu,\"rounds_total\":%lu,\"session_ends\":%lu,"
        "\"round_cap_hits\":%lu,\"wake_events\":%lu,\"talk_stops\":%lu,"
        "\"listen_starts\":%lu,\"exit_talks\":%lu,\"end_reason\":\"%s\"},"
        "\"talk_tap\":{\"enabled\":%d,\"file\":\"%s\",\"lines\":%lu,\"recognized\":%lu,"
        "\"wakes\":%lu,\"listen_starts\":%lu,\"talk_stops\":%lu,\"listen_stops\":%lu,"
        "\"ignored\":%lu,\"malformed\":%lu,\"resets\":%lu,\"exit_talks\":%lu,\"last_session\":\"%s\"},"
        "\"skill_dispatch\":{\"enabled\":%d,\"device_status\":%d,\"calls\":%lu,\"ok\":%lu,"
        "\"fail\":%lu,"
        "\"noimpl\":%lu,\"claimed\":%lu,\"dedup\":%lu,"
        "\"last_skill\":\"%s\",\"last_result\":\"%s\"},"
        "\"pending_event_id\":\"%s\","
        "\"last_invalid\":\"%s\",\"last_error\":\"%s\",\"exit_reason\":\"%s\"}\n",
        st->version, st->state, st->pid,
        st->started_at, st->updated_at,
        st->started_at_ms, st->updated_at_ms,
        esc_events, esc_state, st->offset, st->file_size,
        st->dev, st->ino, st->prefix_hash, st->prefix_hash_valid,
        st->provider, st->mock_calls,
        st->provider_mock, esc_model, st->last_http_status, st->last_curl_code,
        st->last_provider_latency_ms, st->last_resp_bytes, esc_class,
        st->lines_read, st->events_accepted, st->events_processed,
        st->duplicates, st->invalid_lines, st->oversize_lines,
        st->io_errors, st->truncations, st->replacements,
        st->identity_resets, st->legacy_rescans,
        st->gaps, st->gap_missing_total, st->seq_resets, st->seq_unknown_start,
        st->state_saves, st->state_errors,
        st->provider_ok, st->provider_err, st->provider_timeout,
        st->provider_retries, st->stuck_attempts,
        st->provider_stuck, st->state_persist_failed,
        st->tts_queued, st->tts_skipped, st->tts_enqueue_failed,
        st->dead_lettered,
        st->dead_letter_failed, esc_dl_event, st->dl_io_stage, st->dl_io_errno,
        st->dl_rollback_stage, st->dl_rollback_errno, st->dl_pre_len, st->dl_cur_len,
        st->dl_cur_len_valid,
        st->dl_marker_state, st->dl_marker_stage, st->dl_marker_errno,
        esc_ttsq,
        st->context_enabled, st->context_max_messages, st->context_messages,
        st->context_turns, st->context_load_state, st->context_saves,
        st->context_save_errors, st->context_evicted, esc_ctxfile,
        st->echo_enabled, st->echo_no_command, st->echo_seen,
        st->echo_dropped_echo, st->echo_dropped_nocmd, st->echo_kept,
        st->echo_kept_in_window, st->echo_window_hits, st->echo_state_errors,
        esc_echo_reason, esc_echo_detail, esc_echo_state,
        st->last_seq, st->last_event_id, st->last_event_at,
        st->last_gap_from, st->last_gap_to,
        st->route_enabled, st->route_intents, st->route_native, st->route_ai,
        st->route_volume, st->route_weather, st->route_screen_off, st->route_time,
        st->route_screen_on, st->route_media, st->route_stop, st->interrupts,
        st->route_publish_ok, st->route_publish_fail, st->route_fallback_ai,
        st->route_publish_retry, st->route_seq, st->route_dup_dropped, st->route_incomplete_ai,
        esc_publish_err,
        st->route_dup_same_event, st->route_dup_same_report, st->route_same_text_new,
        esc_route_last, esc_route_file,
        st->gate_enabled, st->gate_debounce_ms, st->gate_max_hold_ms,
        st->gate_cross_session, st->gate_seen, st->gate_held, st->gate_released,
        st->gate_merged, st->gate_cross_merged, st->gate_dropped_dup, st->gate_restored,
        st->gate_fast_released, esc_gate_detail, esc_gate_file,
        st->session_enabled, st->session_timeout_ms, esc_session_state,
        st->session_turns, st->session_followups, st->session_opened, st->session_closed,
        esc_session_detail,
        st->sc_enabled, esc_sc_state, esc_sc_session,
        esc_sc_request, st->sc_request_active, st->sc_last_wake_ms,
        st->sc_last_final_ms, esc_sc_last_final_event,
        esc_sc_last_transition, st->sc_transitions, st->sc_opens,
        st->sc_stale_callbacks, st->sc_duplicate_events, st->sc_timeouts,
        st->sc_interrupts, st->sc_closes,
        st->sc_continuous, st->sc_relisten_ms, st->sc_max_rounds,
        st->sc_round, st->sc_max_round_seen, st->sc_relisten_armed,
        st->sc_ctx_valid, st->sc_device_listening,
        st->sc_followup_rounds, st->sc_rounds_total, st->sc_session_ends,
        st->sc_round_cap_hits, st->sc_wake_events, st->sc_talk_stops,
        st->sc_listen_starts, st->sc_exit_talks, esc_sc_end_reason,
        st->tap_enabled, esc_tap_file, st->tap_lines, st->tap_recognized,
        st->tap_wakes, st->tap_listen_starts, st->tap_talk_stops, st->tap_listen_stops,
        st->tap_ignored, st->tap_malformed, st->tap_resets, st->tap_exit_talks, esc_tap_last_session,
        st->sk_enabled, st->sk_device_enabled, st->sk_calls, st->sk_ok, st->sk_fail,
        st->sk_noimpl, st->sk_claimed, st->sk_dedup,
        esc_sk_skill, esc_sk_result,
        esc_pending,
        esc_invalid, esc_error, st->exit_reason);
    if (n < 0 || (size_t)n >= sizeof(buf)) {
        if (err) snprintf(err, errlen, "status buffer too small");
        return -1;
    }

    if (snprintf(tmp, sizeof(tmp), "%s.tmp", path) >= (int)sizeof(tmp)) {
        if (err) snprintf(err, errlen, "status temp path too long");
        return -1;
    }
    wu_dir_name(path, dir, sizeof(dir));

    fd = wu_open_wo(tmp);
    if (fd < 0) {
        if (err) snprintf(err, errlen, "status temp open failed");
        return -1;
    }
    if (wu_write_all(fd, buf, (size_t)n) != 0 || wu_fsync(fd) != 0) {
        if (err) snprintf(err, errlen, "status write/fsync failed");
        wu_close(fd);
        wu_unlink(tmp);
        return -1;
    }
    wu_close(fd);

    if (wu_rename_replace(tmp, path) != 0) {
        if (err) snprintf(err, errlen, "status rename failed");
        wu_unlink(tmp);
        return -1;
    }
    (void)wu_fsync_dir(dir);
    return 0;
}
