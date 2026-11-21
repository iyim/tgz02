/*
 * tg_supervisor.c -- T6-02 独立 Native Supervisor（ARM32 / Android 8.1）
 *
 * 职责（只做这三件事）：
 *   1) 用 /proc 扫描精确找出原厂核心进程 com.alibaba.ailabs.genie.smartapp:core；
 *   2) 发现新 PID 后 fork/exec 现有 T6-01 Injector（tg_injector）完成注入；
 *   3) 进程退出/换 PID 时清理状态并允许对新 PID 重新注入；自身重启后先用
 *      --check 探一次已注入状态，避免重复打补丁。
 *
 * 明确不做的事：不改 boot.img / system / vendor / init.rc，不写 Magisk 模块，
 * 不调用 Magisk 专属接口，自身不实现注入逻辑（注入全部交给 tg_injector）。
 *
 * 单实例：flock(PID 文件) + 文件里的 PID 只做展示；持锁进程死亡时内核自动释放，
 * 所以不存在"崩溃后留下陈旧锁、再也起不来"的情况。
 *
 * 日志：同时写 stdout 与 --log 指定的文件（默认 /data/local/tmp/t6/supervisor.log），
 * 不记录任何密钥/凭据；injector 的输出按行加 "inj| " 前缀原样落进日志。
 *
 * 退出码：0 = 收到 SIGTERM/SIGINT 正常退出；1 = 参数错误或已有实例在跑；
 *         2 = 运行时致命错误（PID 文件不可写等）。
 */

#define _GNU_SOURCE 1

#include <ctype.h>
#include <dirent.h>
#include <errno.h>
#include <fcntl.h>
#include <poll.h>
#include <signal.h>
#include <stdarg.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/file.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>

#define DEF_TARGET    "com.alibaba.ailabs.genie.smartapp:core"
#define DEF_INJECTOR  "/data/local/tmp/t6/tg_injector"
#define DEF_SO        "/data/local/tmp/t6/libtg_hook.so"
#define DEF_PIDFILE   "/data/local/tmp/t6/tg_supervisor.pid"
#define DEF_LOGFILE   "/data/local/tmp/t6/supervisor.log"

#define SCAN_INTERVAL_MS   500      /* 扫描周期 */
#define SLICE_MS           100      /* 睡眠切片：保证信号能被及时处理 */
#define BACKOFF_BASE_MS    2000     /* 首次失败后的等待 */
#define BACKOFF_MAX_MS     60000    /* 退避上限 */
#define INJECT_TIMEOUT_MS  30000    /* 单次 Injector 最长运行时间 */
#define CMDLINE_CAP        512
#define LOG_LINE_CAP       512

typedef struct {
    pid_t              pid;
    unsigned long long starttime;   /* /proc/<pid>/stat 第 22 字段：区分 PID 复用 */
    int                ready;       /* 1 = 目标进程已映射 libsmartbox.so（注入前提就绪） */
    int                waited_logged;
    int                injected;    /* 1 = 本 PID 已确认 hooked=1 */
    int                checked;     /* 1 = 已经为本 PID 跑过 --check */
    int                attempts;    /* 本 PID 注入失败次数 */
    long long          next_try_ms; /* 下一次允许尝试的单调时钟毫秒 */
} target_state;

static volatile sig_atomic_t g_stop;
static volatile sig_atomic_t g_stop_sig;
static FILE                 *g_logfile;
static int                   g_pidfd = -1;
static const char           *g_injector = DEF_INJECTOR;
static const char           *g_so = DEF_SO;
static const char           *g_target = DEF_TARGET;
static long long             g_interval_ms = SCAN_INTERVAL_MS;
static long long             g_backoff_base = BACKOFF_BASE_MS;
static long long             g_backoff_max = BACKOFF_MAX_MS;

/* ------------------------------------------------------------------ 日志 */

static long long mono_ms(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000LL + (long long)(ts.tv_nsec / 1000000L);
}

static void emit(const char *fmt, ...) __attribute__((format(printf, 1, 2)));

/* 一行日志：带本地时间与毫秒，同时写 stdout 和日志文件 */
static void emit(const char *fmt, ...)
{
    char body[LOG_LINE_CAP];
    char line[LOG_LINE_CAP + 64];
    struct timespec ts;
    struct tm tm;
    va_list ap;
    int n;

    va_start(ap, fmt);
    vsnprintf(body, sizeof(body), fmt, ap);
    va_end(ap);

    clock_gettime(CLOCK_REALTIME, &ts);
    localtime_r(&ts.tv_sec, &tm);
    n = snprintf(line, sizeof(line), "%04d-%02d-%02d %02d:%02d:%02d.%03ld sup: %s",
                 tm.tm_year + 1900, tm.tm_mon + 1, tm.tm_mday,
                 tm.tm_hour, tm.tm_min, tm.tm_sec, ts.tv_nsec / 1000000L, body);
    if (n < 0) return;

    printf("%s\n", line);
    fflush(stdout);
    if (g_logfile != NULL) {
        fprintf(g_logfile, "%s\n", line);
        fflush(g_logfile);
    }
}

/* ------------------------------------------------------------------ 进程发现 */

static int read_cmdline(pid_t pid, char *buf, size_t cap, int *len_out)
{
    char path[64];
    ssize_t n;
    int fd;

    snprintf(path, sizeof(path), "/proc/%d/cmdline", (int)pid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return -1;
    n = read(fd, buf, cap - 1);
    close(fd);
    if (n <= 0) return -1;              /* 僵尸进程的 cmdline 是空的：按"不存在"处理 */
    buf[n] = '\0';
    *len_out = (int)n;
    return 0;
}

/*
 * 精确匹配：cmdline 的第一个 NUL 结尾字段必须与目标字符串逐字节相同。
 * 因此 com.alibaba.ailabs.genie.smartapp（主进程）不会被 :core 命中，
 * 反过来 :core 也不会命中主进程；带额外启动参数的进程仍然算命中（*extra_args=1）。
 */
static int cmdline_matches(const char *buf, int len, const char *target, int *extra_args)
{
    size_t tl = strlen(target);

    if (extra_args != NULL) *extra_args = 0;
    if (len < (int)tl + 1) return 0;
    if (memcmp(buf, target, tl) != 0) return 0;
    if (buf[tl] != '\0') return 0;
    if (extra_args != NULL && len > (int)tl + 1) *extra_args = 1;
    return 1;
}

static int read_starttime(pid_t pid, unsigned long long *out)
{
    char path[64];
    char buf[1024];
    ssize_t n;
    int fd;
    char *p, *tok;
    int field = 2;

    snprintf(path, sizeof(path), "/proc/%d/stat", (int)pid);
    fd = open(path, O_RDONLY | O_CLOEXEC);
    if (fd < 0) return -1;
    n = read(fd, buf, sizeof(buf) - 1);
    close(fd);
    if (n <= 0) return -1;
    buf[n] = '\0';

    /* comm 里可能有空格和括号：从最后一个 ')' 之后再切字段 */
    p = strrchr(buf, ')');
    if (p == NULL) return -1;
    p++;

    for (tok = strtok(p, " "); tok != NULL; tok = strtok(NULL, " ")) {
        field++;
        if (field == 22) {
            *out = strtoull(tok, NULL, 10);
            return 0;
        }
    }
    return -1;
}

static int process_alive(pid_t pid)
{
    if (pid <= 1) return 0;
    if (kill(pid, 0) == 0) return 1;
    return (errno == EPERM) ? 1 : 0;
}

/*
 * 目标进程是否已经把原厂 libsmartbox.so 映射进来。
 *
 * 刚 fork 出来的 :core 进程会先出现在 /proc 里，几百毫秒之后才加载这个模块。
 * 在这个窗口里调 Injector 一定失败（prepare 会报 "module libsmartbox.so is not
 * loaded in this process"），所以先等它就绪再动手——这不是注入，只是读 maps。
 */
static int target_has_module(pid_t pid)
{
    char path[64];
    char line[512];
    FILE *f;
    int hit = 0;

    snprintf(path, sizeof(path), "/proc/%d/maps", (int)pid);
    f = fopen(path, "r");
    if (f == NULL) return 0;
    while (fgets(line, sizeof(line), f) != NULL) {
        if (strstr(line, "libsmartbox.so") != NULL) {
            hit = 1;
            break;
        }
    }
    fclose(f);
    return hit;
}

/* 扫描 /proc，返回第一个精确匹配的 PID（0 = 没有） */
static pid_t find_target(unsigned long long *starttime_out, char *cmd_out, size_t cmd_cap,
                         int *extra_out)
{
    DIR *d;
    struct dirent *de;
    pid_t found = 0;

    if (extra_out != NULL) *extra_out = 0;
    d = opendir("/proc");
    if (d == NULL) {
        emit("scan failed: open /proc errno=%d", errno);
        return 0;
    }
    while ((de = readdir(d)) != NULL) {
        char buf[CMDLINE_CAP];
        int len = 0, extra = 0;
        pid_t pid;
        char *endp = NULL;
        long v;

        if (!isdigit((unsigned char)de->d_name[0])) continue;
        v = strtol(de->d_name, &endp, 10);
        if (endp == NULL || *endp != '\0' || v <= 1) continue;
        pid = (pid_t)v;

        if (read_cmdline(pid, buf, sizeof(buf), &len) != 0) continue;
        if (!cmdline_matches(buf, len, g_target, &extra)) continue;

        {
            unsigned long long st = 0;

            if (read_starttime(pid, &st) != 0) continue;   /* 刚退出：不作为目标 */
            if (starttime_out != NULL) *starttime_out = st;
        }
        if (cmd_out != NULL && cmd_cap > 0) {
            snprintf(cmd_out, cmd_cap, "%s", buf);
        }
        if (extra_out != NULL) *extra_out = extra;
        found = pid;
        break;
    }
    closedir(d);
    return found;
}

/* ------------------------------------------------------------------ Injector */

static void log_injector_line(const char *line)
{
    printf("inj| %s\n", line);
    fflush(stdout);
    if (g_logfile != NULL) {
        fprintf(g_logfile, "inj| %s\n", line);
        fflush(g_logfile);
    }
}

/*
 * fork/exec 现有 Injector（不经过 shell，不拼命令串），把它的输出逐行写进日志，
 * 并从输出里解析 hooked=0/1。check=1 时加 --check。
 *
 * 返回 0 = 已拿到退出码（*rc_out）；-1 = 连 injector 都没跑起来。
 */
static int run_injector(pid_t pid, int check, int *rc_out, int *hooked_out,
                        char *why, size_t whycap)
{
    int fds[2];
    pid_t child;
    char pidbuf[16];
    char line[LOG_LINE_CAP];
    size_t ln = 0;
    int hooked = -1;
    int rc = -1;
    long long deadline;
    int status = 0;
    int eof = 0;

    *rc_out = -1;
    *hooked_out = -1;
    if (why != NULL && whycap > 0) why[0] = '\0';

    if (pipe(fds) != 0) {
        if (why != NULL) snprintf(why, whycap, "pipe failed errno=%d", errno);
        return -1;
    }
    child = fork();
    if (child < 0) {
        if (why != NULL) snprintf(why, whycap, "fork failed errno=%d", errno);
        close(fds[0]);
        close(fds[1]);
        return -1;
    }
    if (child == 0) {
        const char *argv[8];
        int n = 0;

        snprintf(pidbuf, sizeof(pidbuf), "%d", (int)pid);
        argv[n++] = g_injector;
        argv[n++] = "--so";
        argv[n++] = g_so;
        argv[n++] = "--pid";
        argv[n++] = pidbuf;
        if (check) argv[n++] = "--check";
        argv[n] = NULL;

        close(fds[0]);
        if (dup2(fds[1], STDOUT_FILENO) < 0 || dup2(fds[1], STDERR_FILENO) < 0) _exit(126);
        if (fds[1] > STDERR_FILENO) close(fds[1]);
        execv(g_injector, (char *const *)(void *)argv);
        _exit(127);
    }

    close(fds[1]);
    {
        int flags = fcntl(fds[0], F_GETFL, 0);
        if (flags >= 0) (void)fcntl(fds[0], F_SETFL, flags | O_NONBLOCK);
    }
    deadline = mono_ms() + INJECT_TIMEOUT_MS;

    while (!eof) {
        struct pollfd pfd;
        char chunk[512];
        ssize_t r;
        int pr;
        long long wait_ms = deadline - mono_ms();

        if (wait_ms <= 0) {
            if (why != NULL) snprintf(why, whycap, "injector timed out after %d ms", INJECT_TIMEOUT_MS);
            (void)kill(child, SIGKILL);
            break;
        }
        pfd.fd = fds[0];
        pfd.events = POLLIN;
        pfd.revents = 0;
        pr = poll(&pfd, 1, (int)((wait_ms > 200) ? 200 : wait_ms));
        if (pr < 0) {
            if (errno == EINTR) continue;
            break;
        }
        if (pr == 0) continue;
        r = read(fds[0], chunk, sizeof(chunk));
        if (r == 0) { eof = 1; break; }
        if (r < 0) {
            if (errno == EINTR || errno == EAGAIN) continue;
            break;
        }
        {
            ssize_t i;

            for (i = 0; i < r; i++) {
                if (chunk[i] == '\n' || chunk[i] == '\r') {
                    if (ln > 0) {
                        const char *h;

                        line[ln] = '\0';
                        log_injector_line(line);
                        h = strstr(line, "hooked=");
                        if (h != NULL) {
                            h += 7;
                            if (*h == '1') hooked = 1;
                            else if (*h == '0') hooked = 0;
                        }
                        ln = 0;
                    }
                } else if (ln + 1 < sizeof(line)) {
                    line[ln++] = chunk[i];
                }
            }
        }
    }
    if (ln > 0) {
        const char *h;

        line[ln] = '\0';
        log_injector_line(line);
        h = strstr(line, "hooked=");
        if (h != NULL) {
            h += 7;
            if (*h == '1') hooked = 1;
            else if (*h == '0') hooked = 0;
        }
    }
    close(fds[0]);

    if (waitpid(child, &status, 0) < 0) {
        if (errno != EINTR) {
            if (why != NULL) snprintf(why, whycap, "waitpid failed errno=%d", errno);
            return -1;
        }
    }
    if (WIFEXITED(status)) rc = WEXITSTATUS(status);
    else if (WIFSIGNALED(status)) rc = 128 + WTERMSIG(status);

    *rc_out = rc;
    *hooked_out = hooked;
    if (why != NULL && whycap > 0 && why[0] == '\0') {
        snprintf(why, whycap, "exit=%d%s", rc,
                 (hooked < 0) ? " (no hooked= in output)" : "");
    }
    return 0;
}

/* ------------------------------------------------------------------ 单实例 */

static int acquire_single_instance(const char *pidfile)
{
    char buf[64];
    int fd;
    int n;

    fd = open(pidfile, O_RDWR | O_CREAT | O_CLOEXEC, 0644);
    if (fd < 0) {
        emit("fatal: cannot open pidfile %s errno=%d", pidfile, errno);
        return -2;
    }
    if (flock(fd, LOCK_EX | LOCK_NB) != 0) {
        int other = 0;

        n = (int)read(fd, buf, sizeof(buf) - 1);
        if (n > 0) {
            buf[n] = '\0';
            other = atoi(buf);
        }
        emit("another supervisor is already running (pid=%d, pidfile=%s)", other, pidfile);
        close(fd);
        return -1;
    }
    if (ftruncate(fd, 0) != 0) {
        /* 不致命：锁已经拿到，PID 文件内容只用于展示 */
        emit("warning: ftruncate(%s) failed errno=%d", pidfile, errno);
    }
    n = snprintf(buf, sizeof(buf), "%d\n", (int)getpid());
    if (write(fd, buf, (size_t)n) != n) emit("warning: write pidfile failed errno=%d", errno);
    (void)fsync(fd);

    g_pidfd = fd;   /* 一直持有：进程活着就占着锁 */
    return 0;
}

/* ------------------------------------------------------------------ 信号 */

static void on_signal(int sig)
{
    g_stop_sig = sig;
    g_stop = 1;
}

static void install_signals(void)
{
    struct sigaction sa;

    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = on_signal;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;            /* 不用 SA_RESTART：让 poll/nanosleep 立刻返回 */
    sigaction(SIGTERM, &sa, NULL);
    sigaction(SIGINT, &sa, NULL);
    sigaction(SIGHUP, &sa, NULL);
    signal(SIGPIPE, SIG_IGN);
}

static void sleep_slice(long long ms)
{
    long long left = ms;

    while (left > 0 && !g_stop) {
        struct timespec ts;
        long long chunk = (left > SLICE_MS) ? SLICE_MS : left;

        ts.tv_sec = (time_t)(chunk / 1000);
        ts.tv_nsec = (long)((chunk % 1000) * 1000000L);
        (void)nanosleep(&ts, NULL);
        left -= chunk;
    }
}

/* ------------------------------------------------------------------ 主循环 */

static void reset_state(target_state *t)
{
    memset(t, 0, sizeof(*t));
    t->pid = 0;
}

static long long backoff_for(int attempts)
{
    long long wait = g_backoff_base;
    int i;

    for (i = 1; i < attempts && wait < g_backoff_max; i++) wait *= 2;
    if (wait > g_backoff_max) wait = g_backoff_max;
    return wait;
}

static void usage(void)
{
    printf("usage: tg_supervisor [--injector PATH] [--so PATH] [--name PROC]\n"
           "                     [--interval MS] [--retry-ms MS] [--max-backoff-ms MS]\n"
           "                     [--pidfile PATH] [--log PATH] [--once]\n"
           "\n"
           "  default target : %s\n"
           "  default injector: %s\n"
           "  default agent   : %s\n"
           "  default pidfile : %s\n"
           "  default logfile : %s\n",
           DEF_TARGET, DEF_INJECTOR, DEF_SO, DEF_PIDFILE, DEF_LOGFILE);
}

int main(int argc, char **argv)
{
    const char *pidfile = DEF_PIDFILE;
    const char *logfile = DEF_LOGFILE;
    int once = 0;
    int i;
    int rc;
    target_state t;

    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "--injector") == 0 && i + 1 < argc) g_injector = argv[++i];
        else if (strcmp(argv[i], "--so") == 0 && i + 1 < argc) g_so = argv[++i];
        else if (strcmp(argv[i], "--name") == 0 && i + 1 < argc) g_target = argv[++i];
        else if (strcmp(argv[i], "--interval") == 0 && i + 1 < argc) g_interval_ms = atoll(argv[++i]);
        else if (strcmp(argv[i], "--retry-ms") == 0 && i + 1 < argc) g_backoff_base = atoll(argv[++i]);
        else if (strcmp(argv[i], "--max-backoff-ms") == 0 && i + 1 < argc) g_backoff_max = atoll(argv[++i]);
        else if (strcmp(argv[i], "--pidfile") == 0 && i + 1 < argc) pidfile = argv[++i];
        else if (strcmp(argv[i], "--log") == 0 && i + 1 < argc) logfile = argv[++i];
        else if (strcmp(argv[i], "--once") == 0) once = 1;
        else if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-h") == 0) { usage(); return 0; }
        else {
            fprintf(stderr, "unknown argument: %s\n", argv[i]);
            usage();
            return 1;
        }
    }
    if (g_interval_ms < 50) g_interval_ms = 50;
    if (g_backoff_base < 200) g_backoff_base = 200;
    if (g_backoff_max < g_backoff_base) g_backoff_max = g_backoff_base;

    g_logfile = fopen(logfile, "a");
    if (g_logfile == NULL) {
        fprintf(stderr, "warning: cannot open log %s errno=%d (stdout only)\n", logfile, errno);
    }

    install_signals();

    emit("start pid=%d target=%s injector=%s agent=%s interval=%lldms retry=%lldms max=%lldms%s",
         (int)getpid(), g_target, g_injector, g_so,
         g_interval_ms, g_backoff_base, g_backoff_max, once ? " once=1" : "");

    rc = acquire_single_instance(pidfile);
    if (rc != 0) {
        emit("exit: single-instance check failed rc=%d", rc);
        if (g_logfile != NULL) fclose(g_logfile);
        return 1;
    }
    emit("pidfile=%s acquired (single instance)", pidfile);

    reset_state(&t);

    while (!g_stop) {
        char cmd[CMDLINE_CAP];
        unsigned long long starttime = 0;
        pid_t pid;
        int extra = 0;

        cmd[0] = '\0';
        pid = find_target(&starttime, cmd, sizeof(cmd), &extra);

        if (pid > 0) {
            if (pid != t.pid || starttime != t.starttime) {
                if (t.pid > 0) {
                    emit("target changed: old pid=%d starttime=%llu -> new pid=%d starttime=%llu",
                         (int)t.pid, t.starttime, (int)pid, starttime);
                }
                reset_state(&t);
                t.pid = pid;
                t.starttime = starttime;
                emit("target found: pid=%d starttime=%llu argv_extra=%d cmdline=%s",
                     (int)pid, starttime, extra, cmd);
            }
        } else if (t.pid > 0) {
            emit("target gone: pid=%d starttime=%llu", (int)t.pid, t.starttime);
            reset_state(&t);
        }

        if (t.pid > 0 && !t.ready) {
            if (target_has_module(t.pid)) {
                t.ready = 1;
                emit("target ready: pid=%d libsmartbox.so is mapped", (int)t.pid);
            } else if (!t.waited_logged) {
                t.waited_logged = 1;
                emit("waiting: pid=%d has not loaded libsmartbox.so yet", (int)t.pid);
            }
        }

        if (t.pid > 0 && t.ready && !t.injected && mono_ms() >= t.next_try_ms) {
            int irc = -1;
            int hooked = -1;
            char why[192];

            if (!t.checked) {
                t.checked = 1;
                why[0] = '\0';
                if (run_injector(t.pid, 1, &irc, &hooked, why, sizeof(why)) == 0) {
                    /*
                     * hooked=-1 表示 Injector 连"状态"都读不到（最常见：Hook Agent 还没被
                     * 加载进这个进程，--check 只回一句 "nothing to query"）。这时不能假设
                     * 已经打过补丁，交给 install 处理是安全的：tg_injector 的安装分支自己
                     * 会先查 hooked，hooked=1 就幂等跳过，不会重复打补丁。
                     */
                    emit("check done: pid=%d exit=%d hooked=%d state=%s",
                         (int)t.pid, irc, hooked,
                         (hooked == 1) ? "hooked" : ((hooked == 0) ? "not-hooked" : "unknown"));
                    if (irc == 0 && hooked == 1) {
                        t.injected = 1;
                        emit("already hooked: pid=%d (state=1); skip install", (int)t.pid);
                    }
                } else {
                    emit("check failed: pid=%d why=%s", (int)t.pid, why);
                }
            }

            if (!t.injected) {
                long long t0 = mono_ms();

                emit("inject begin: pid=%d attempt=%d injector=%s", (int)t.pid, t.attempts + 1, g_injector);
                why[0] = '\0';
                if (run_injector(t.pid, 0, &irc, &hooked, why, sizeof(why)) != 0) {
                    hooked = -1;
                }
                if (irc == 0 && hooked == 1 && process_alive(t.pid)) {
                    t.injected = 1;
                    t.attempts = 0;
                    emit("inject end: pid=%d exit=%d hooked=1 elapsed=%lldms ok",
                         (int)t.pid, irc, mono_ms() - t0);
                } else {
                    long long wait;

                    t.attempts++;
                    wait = backoff_for(t.attempts);
                    t.next_try_ms = mono_ms() + wait;
                    emit("inject failed: pid=%d exit=%d hooked=%d attempt=%d backoff=%lldms why=%s",
                         (int)t.pid, irc, hooked, t.attempts, wait,
                         why[0] != '\0' ? why : "state not confirmed");
                }
            }
        }

        if (once) break;
        sleep_slice(g_interval_ms);
    }

    if (g_stop) emit("stop requested: signal=%d", (int)g_stop_sig);
    emit("exit: pid=%d%s", (int)getpid(), g_stop ? "" : " (once)");

    if (g_pidfd >= 0) {
        (void)flock(g_pidfd, LOCK_UN);
        close(g_pidfd);
        g_pidfd = -1;
        (void)unlink(pidfile);
    }
    if (g_logfile != NULL) {
        fclose(g_logfile);
        g_logfile = NULL;
    }
    return 0;
}
