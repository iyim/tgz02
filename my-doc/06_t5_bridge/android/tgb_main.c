/*
 * tgb_main.c -- T5-05A 本机 AI Bridge 接收端进程入口
 *
 *   ASR final 事件（模拟）--AF_UNIX SOCK_STREAM--> 本进程
 *     -> 帧校验 -> 消息校验 -> 幂等去重 -> JSONL 追加 + fsync -> ACK
 *
 * 不联网、不接模型、不做 TTS、不改原厂任何东西；只写 --work-dir。
 */
#include "tgb_server.h"
#include "tgb_store.h"
#include "t5_util.h"

#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static void on_signal(int sig)
{
    (void)sig;
    tgb_server_request_stop();
}

static void usage(const char *argv0)
{
    printf(
"tgb_bridge -- T5-05A 本机 ASR 事件桥接接收端\n"
"\n"
"用法: %s [选项]\n"
"\n"
"  --sock NAME                 AF_UNIX 抽象命名空间名字（默认 tgz2_asr_bridge）\n"
"  --sock-path PATH            改用文件系统 socket 路径（Windows 主机测试用）\n"
"  --work-dir DIR              状态与事件目录（默认 /data/local/tmp/t5_bridge/work）\n"
"  --max-clients N             同时连接数上限（默认 8，最大 %d）\n"
"  --dedup-cap N               去重表容量（默认 8192，最小 64）\n"
"  --fault-after-writes N      测试注入：成功写入 N 条后强制落盘失败（默认关闭）\n"
"  --status-interval-ms N      状态文件刷新周期（默认 1000，0 = 不刷）\n"
"  --verbose                   每条事件/拒收原因打到 stderr\n"
"  --help                      本帮助\n"
"\n"
"产物（全部在 --work-dir 下）：\n"
"  events.jsonl           一行一条 asr_final 事件（写满并 fsync 之后才回 ACK）\n"
"  bridge_status.json     运行状态（start/status/stop 脚本会读它）\n",
        argv0, TGB_MAX_CLIENTS_LIMIT);
}

int main(int argc, char **argv)
{
    tgb_config cfg;
    tgb_stats st;
    char err[256];
    int i;
    int rc;

    tgb_config_defaults(&cfg);

    for (i = 1; i < argc; i++) {
        const char *a = argv[i];
        const char *v = (i + 1 < argc) ? argv[i + 1] : NULL;

        if (!strcmp(a, "--help") || !strcmp(a, "-h")) { usage(argv[0]); return 0; }
        else if (!strcmp(a, "--verbose")) { cfg.verbose = 1; }
        else if (!strcmp(a, "--sock") && v) {
            snprintf(cfg.sock_name, sizeof(cfg.sock_name), "%s", v);
            cfg.sock_path[0] = '\0';
            i++;
        } else if (!strcmp(a, "--sock-path") && v) {
            snprintf(cfg.sock_path, sizeof(cfg.sock_path), "%s", v);
            cfg.sock_name[0] = '\0';
            i++;
        } else if (!strcmp(a, "--work-dir") && v) {
            snprintf(cfg.work_dir, sizeof(cfg.work_dir), "%s", v);
            i++;
        } else if (!strcmp(a, "--max-clients") && v) {
            cfg.max_clients = atoi(v);
            i++;
        } else if (!strcmp(a, "--dedup-cap") && v) {
            cfg.dedup_cap = atoi(v);
            i++;
        } else if (!strcmp(a, "--fault-after-writes") && v) {
            cfg.fault_after_writes = atoll(v);
            i++;
        } else if (!strcmp(a, "--status-interval-ms") && v) {
            cfg.status_interval_ms = atoi(v);
            i++;
        } else {
            fprintf(stderr, "[tgb] unknown argument: %s\n", a);
            usage(argv[0]);
            return 2;
        }
    }

    if (tgb_config_check(&cfg, err, sizeof(err)) != 0) {
        fprintf(stderr, "[tgb] %s\n", err);
        return 2;
    }

    signal(SIGINT, on_signal);
#ifdef SIGTERM
    signal(SIGTERM, on_signal);
#endif
#ifdef SIGBREAK
    /* Windows 控制台没有 SIGTERM：主机测试用 CTRL_BREAK 做"优雅停止" */
    signal(SIGBREAK, on_signal);
#endif
#ifndef _WIN32
    signal(SIGPIPE, SIG_IGN);          /* 对端先关时不要在 send() 里被 SIGPIPE 打死 */
#endif

    rc = tgb_server_run(&cfg, &st);
    if (rc != 0) return 1;
    return 0;
}
