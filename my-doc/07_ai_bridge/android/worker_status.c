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
    static char buf[4096];
    char esc_events[T6B_PATH_MAX * 2];
    char esc_state[T6B_PATH_MAX * 2];
    char esc_invalid[T6B_PROVIDER_MSG_MAX * 2];
    char esc_error[sizeof(((t6b_status *)0)->last_error) * 2];
    char esc_pending[(T6B_ID_MAX + 1) * 2];
    char esc_model[sizeof(((t6b_status *)0)->model) * 2];
    char esc_class[sizeof(((t6b_status *)0)->last_error_class) * 2];
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
    wu_json_escape(esc_model, sizeof(esc_model), st->model);
    wu_json_escape(esc_class, sizeof(esc_class), st->last_error_class);

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
        "\"provider_stuck\":%d,\"state_persist_failed\":%d},"
        "\"last_seq\":%lu,\"last_event_id\":\"%s\",\"last_event_at\":\"%s\","
        "\"last_gap_from\":%lu,\"last_gap_to\":%lu,"
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
        st->last_seq, st->last_event_id, st->last_event_at,
        st->last_gap_from, st->last_gap_to,
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
