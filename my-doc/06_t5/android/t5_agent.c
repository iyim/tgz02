/*
 * t5_agent.c -- T5 ASR 管线进程（Mock 阶段）
 *
 * 链路：T4 输出的 WAV -> 文件发现 -> 完整性校验 -> Job -> MockASR -> JSONL 落库
 *
 * 单线程、轮询目录（T4 没有 ACK/通知接口，任务书已说明），不读 T4 以外的目录，
 * 不写 T4 目录，不联网。用法见 usage()。
 */
#if !defined(_WIN32) && !defined(_POSIX_C_SOURCE)
/* nanosleep / clock_gettime 需要 POSIX.1-2008 声明（NDK 默认按 C99 解析头文件） */
#  define _POSIX_C_SOURCE 200809L
#endif

#include "t5_engine.h"
#include "t5_provider.h"
#include "t5_util.h"

#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#ifdef _WIN32
#  include <windows.h>
#  define t5_sleep_ms(ms) Sleep((DWORD)(ms))
#else
#  include <sys/select.h>
/* 用 select 当毫秒睡眠：bionic 在 -std=c99 下对 nanosleep 的 POSIX 门限比较挑剔，
 * select 的声明无条件可见，行为等价（可被信号打断，正好配合停止标志）。 */
static void t5_sleep_ms(long ms)
{
    struct timeval tv;
    if (ms <= 0) return;
    tv.tv_sec = ms / 1000;
    tv.tv_usec = (ms % 1000) * 1000L;
    (void)select(0, NULL, NULL, NULL, &tv);
}
#endif

static volatile sig_atomic_t g_stop = 0;

static void on_signal(int sig)
{
    (void)sig;
    g_stop = 1;
}

static void usage(const char *argv0)
{
    printf(
"t5_agent -- T5 ASR 管线（Mock 阶段）\n"
"\n"
"用法: %s [选项]\n"
"\n"
"  --watch-dir DIR             监视 T4 的 WAV 目录（默认 /data/local/tmp/t4/segments）\n"
"  --work-dir DIR              T5 自己的状态/结果目录（默认 /data/local/tmp/t5）\n"
"  --provider NAME             ASR Provider（只有 mock）\n"
"  --scan-interval-ms N        扫描周期（默认 1000）\n"
"  --stable-ms N               文件大小需稳定多久才判定写完（默认 500）\n"
"  --incomplete-timeout-ms N   一直写不完的超时，超时判失败（默认 120000）\n"
"  --retry-delay-ms N          临时失败后的重试间隔（默认 1000）\n"
"  --max-jobs N                内存中最多保留多少任务（默认 4096）\n"
"  --max-retries N             临时失败最多重试几次（默认 3）\n"
"  --once                      只跑一轮（扫描 + 处理就绪任务）后退出\n"
"  --verbose                   打印每个任务的细节\n"
"  --help                      显示本帮助\n"
"\n"
"说明：本阶段的 Provider 是 mock，识别文本固定带 [MOCK] 前缀，不是真实识别结果。\n",
        argv0);
}

static int parse_long(const char *s, long *out)
{
    char *end = NULL;
    long v;
    if (s == NULL || out == NULL) return -1;
    errno = 0;
    v = strtol(s, &end, 10);
    if (errno != 0 || end == s || *end != '\0') return -1;
    *out = v;
    return 0;
}

static void print_stats(const t5_engine *e)
{
    const t5_stats *s = t5_engine_stats(e);
    if (s == NULL) return;
    printf("{\"t\":\"t5_stats\",\"scans\":%lu,\"files_seen\":%lu,\"new_jobs\":%lu,"
           "\"dup_skips\":%lu,\"incomplete_skips\":%lu,\"invalid\":%lu,"
           "\"succeeded\":%lu,\"failed\":%lu,\"retried\":%lu,\"queue_full\":%lu,"
           "\"evicted\":%lu,\"recovered\":%lu,\"bad_lines\":%lu,"
           "\"provider_errors\":%lu,\"store_errors\":%lu,\"jobs_tracked\":%lu,"
           "\"replay_lines\":%lu}\n",
           s->scans, s->files_seen, s->new_jobs, s->dup_skips, s->incomplete_skips,
           s->invalid, s->succeeded, s->failed, s->retried, s->queue_full,
           s->evicted, s->recovered, s->bad_lines, s->provider_errors,
           s->store_errors, s->jobs_tracked, s->replay_lines);
    fflush(stdout);
}

int main(int argc, char **argv)
{
    t5_config cfg;
    t5_engine *e;
    char err[T5_MAX_ERR];
    int once = 0;
    int i;

    t5_config_defaults(&cfg);

    for (i = 1; i < argc; i++) {
        const char *a = argv[i];
        long v;
        if (strcmp(a, "--help") == 0 || strcmp(a, "-h") == 0) { usage(argv[0]); return 0; }
        else if (strcmp(a, "--once") == 0) once = 1;
        else if (strcmp(a, "--verbose") == 0) cfg.verbose = 1;
        else if (strcmp(a, "--watch-dir") == 0 && i + 1 < argc) {
            snprintf(cfg.watch_dir, sizeof(cfg.watch_dir), "%s", argv[++i]);
        } else if (strcmp(a, "--work-dir") == 0 && i + 1 < argc) {
            snprintf(cfg.work_dir, sizeof(cfg.work_dir), "%s", argv[++i]);
        } else if (strcmp(a, "--provider") == 0 && i + 1 < argc) {
            cfg.provider_name = argv[++i];
        } else if (strcmp(a, "--scan-interval-ms") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 10) { fprintf(stderr, "bad --scan-interval-ms\n"); return 2; }
            cfg.scan_interval_ms = v;
        } else if (strcmp(a, "--stable-ms") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 0) { fprintf(stderr, "bad --stable-ms\n"); return 2; }
            cfg.stable_ms = v;
        } else if (strcmp(a, "--incomplete-timeout-ms") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 0) { fprintf(stderr, "bad --incomplete-timeout-ms\n"); return 2; }
            cfg.incomplete_timeout_ms = v;
        } else if (strcmp(a, "--retry-delay-ms") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 0) { fprintf(stderr, "bad --retry-delay-ms\n"); return 2; }
            cfg.retry_delay_ms = v;
        } else if (strcmp(a, "--max-jobs") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 4) { fprintf(stderr, "bad --max-jobs\n"); return 2; }
            cfg.max_jobs = (int)v;
        } else if (strcmp(a, "--max-retries") == 0 && i + 1 < argc) {
            if (parse_long(argv[++i], &v) != 0 || v < 0) { fprintf(stderr, "bad --max-retries\n"); return 2; }
            cfg.max_retries = (int)v;
        } else {
            fprintf(stderr, "unknown option: %s (试 --help)\n", a);
            return 2;
        }
    }

    signal(SIGINT, on_signal);
    signal(SIGTERM, on_signal);

    e = t5_engine_open(&cfg, err, sizeof(err));
    if (e == NULL) {
        printf("{\"t\":\"t5_error\",\"msg\":\"engine-open:%s\"}\n", err);
        fflush(stdout);
        fprintf(stderr, "[!] engine open failed: %s\n", err);
        return 1;
    }

    printf("{\"t\":\"t5_start\",\"watch\":\"%s\",\"work\":\"%s\",\"provider\":\"%s\","
           "\"provider_type\":\"mock\",\"scan_interval_ms\":%ld,\"stable_ms\":%ld,"
           "\"max_jobs\":%d,\"max_retries\":%d,\"once\":%d}\n",
           cfg.watch_dir, cfg.work_dir, cfg.provider_name,
           cfg.scan_interval_ms, cfg.stable_ms, cfg.max_jobs,
           cfg.max_retries, once);
    fflush(stdout);

    if (!t5_is_dir(cfg.watch_dir)) {
        /* 目录还不存在（T4 未跑过）：不退出，等它出现 */
        printf("{\"t\":\"t5_warn\",\"msg\":\"watch-dir-missing:%s\"}\n", cfg.watch_dir);
        fflush(stdout);
    }

    if (once) {
        /* --once：发现"完成文件"至少要两个采样点（见 t5_engine.c 的稳定性判定），
         * 所以最多扫 4 轮、每轮之间等 stable_ms；某轮开始不再有新增就收工。 */
        int round, total = 0, last = 0, done;
        for (round = 0; round < 4; round++) {
            last = t5_engine_scan(e);
            total += last;
            if (round > 0 && last == 0) break;
            if (round < 3) t5_sleep_ms(cfg.stable_ms + 50);
        }
        done = t5_engine_process_ready(e, 0);
        if (cfg.verbose) {
            fprintf(stderr, "[t5] once: rounds=%d added=%d processed=%d\n",
                    round + 1, total, done);
        }
        print_stats(e);
        t5_engine_close(e);
        return 0;
    }

    while (!g_stop) {
        long slept = 0;
        int added = t5_engine_scan(e);
        int done = t5_engine_process_ready(e, 0);

        if (added < 0 && cfg.verbose) {
            fprintf(stderr, "[t5] scan failed: %s\n", t5_engine_last_error(e));
        }
        if ((added > 0 || done > 0) && cfg.verbose) {
            fprintf(stderr, "[t5] scan: +%d job(s), processed %d\n", added, done);
        }
        if (added > 0 || done > 0) print_stats(e);

        while (slept < cfg.scan_interval_ms && !g_stop) {
            long chunk = 50;
            if (cfg.scan_interval_ms - slept < chunk) chunk = cfg.scan_interval_ms - slept;
            t5_sleep_ms(chunk);
            slept += chunk;
        }
    }

    fprintf(stderr, "[t5] stop requested; draining lightweight state\n");
    print_stats(e);
    t5_engine_close(e);
    return 0;
}
