/* tg_req_seq.h -- T8-15.5 / T8-15.5R 续听请求（worker 写 / native 守卫读）的序号契约
 *
 * 为什么把它抽成独立头文件：这份契约有几个坑，两侧必须实现同一套规则，
 * 而且每个坑都能在 host 上验证（tests/t8_155_req_seq_unit_test.c）。
 *
 *   坑 1（读侧）：旧版 worker 用 fopen(..., "w") 写请求文件 —— 会先把文件截断，再写内容。
 *     守卫如果正好在"截断后、写入前"读到，fgets 失败 -> seq 保持 -1 ->
 *     旧判定 `(last_seq - seq) > 60000` 成立 -> 把 -1 当成一次新请求 -> 没有用户
 *     指令也会开麦。所以读侧必须先"校验完整合法"，再参与比较：空文件、半截数字、
 *     负数、尾巴带脏数据一律算无效，本次忽略，且**绝不更新基线**。
 *
 *   坑 2（写侧）：改成"同目录临时文件 + rename"原子替换，读侧永远只会看到
 *     完整的旧值或完整的新值，不会看到空文件/半截内容。
 *
 *   坑 3（T8-15.5R，审查发现）：曾经允许"大幅倒退 + 下一拍读到不小于候选的值"就当成
 *     "换了计时基准"受理 —— 于是同一个异常旧值连续出现两次就会开麦。重复读到相同内容
 *     什么也证明不了。现在**彻底取消自动基准重置**：
 *       - 只接受时间上说得通的序号（同一 CLOCK_MONOTONIC，[now-120 s, now+1.5 s]）；
 *       - 倒退一律静默重设基线，绝不触发。
 *     开麦只剩两种来源："没有基线" 或 "序号比基线大且时间说得通"。
 */
#ifndef TG_REQ_SEQ_H
#define TG_REQ_SEQ_H

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define TG_REQ_BUF              64
#define TG_REQ_MIN_SEQ          1000LL     /* 小于它的一定是半截数字/脏数据，不是真序号 */
/* T8-15.5R：不再有"计时基准重置"这条受理路径。判定依据换成"这个序号像不像刚发出的请求"：
 * 双方都用 CLOCK_MONOTONIC 毫秒，一个真实请求从写入到被守卫读到只有 ~120 ms，
 * 所以序号必须落在 [now - STALE, now + SLACK] 内。 */
#define TG_REQ_CLOCK_SLACK_MS   1500LL     /* 允许对端比守卫"快"这么一点（取整/调度抖动） */
#define TG_REQ_CLOCK_STALE_MS  120000LL    /* 比这更旧的值不可能是"刚发出的请求" */

/* tg_req_accept 的判定结果（调用方据此打日志/计数，测试据此断言"没触发"的确切原因） */
#define TG_REQ_R_NONE     0     /* 空指针 */
#define TG_REQ_R_FIRST    1     /* 没有基线（守卫启动时文件是空的）-> 受理 */
#define TG_REQ_R_NEW      2     /* 严格递增 -> 受理 */
#define TG_REQ_R_REPEAT   3     /* 与基线相同：重复值 */
#define TG_REQ_R_BELOW    4     /* 低于基线：静默重设基线，绝不触发 */
#define TG_REQ_R_TOO_OLD  5     /* 太旧：不是刚发出的请求 */
#define TG_REQ_R_FUTURE   6     /* 在未来：脏数据 */
#define TG_REQ_R_TINY     7     /* 小于 TG_REQ_MIN_SEQ：半截数字 */

#if defined(__ANDROID__) || defined(__linux__)
#define TG_REQ_FSYNC(fd) fsync(fd)
#define TG_REQ_REPLACE(a, b) rename((a), (b))      /* POSIX：原子覆盖 */
#else
#define TG_REQ_FSYNC(fd) ((void)(fd), 0)   /* host 单测在 Windows/minGW 上跑，没有 fsync */
#include <windows.h>
/* Windows 的 rename() 在目标存在时失败，语义和 POSIX 不同；host 单测要复现
 * "原子替换"这个语义，所以这里用 MoveFileEx(REPLACE_EXISTING)。设备侧永远走 POSIX。 */
#define TG_REQ_REPLACE(a, b) \
    (MoveFileExA((a), (b), MOVEFILE_REPLACE_EXISTING) ? 0 : -1)
#endif

typedef struct {
    long long last_seq;    /* 已受理的最大合法序号；-1 = 还没有基线 */
    int       last_code;   /* 上一次 tg_req_accept 的判定结果（TG_REQ_R_*） */
} tg_req_state;

static inline void tg_req_state_init(tg_req_state *st)
{
    if (st == NULL) return;
    st->last_seq = -1;
    st->last_code = TG_REQ_R_NONE;
}

/* 读请求文件。返回 0 = 拿到完整、合法、非负的序号；-1 = 不存在/为空/半截/脏数据。
 * 只有返回 0 的值才允许参与比较 —— 这就是 T8-15.5 的核心修复。
 *
 * 拆出 tg_req_parse 是为了让压测能按"打开失败 / 内容是空 / 内容半截"分类统计：
 * 三种情况对守卫来说都不触发，但只有后两种是这次要根除的竞态产物。 */
static inline int tg_req_parse(const char *buf, size_t n, long long *out)
{
    char tmp[TG_REQ_BUF];
    size_t i, digits = 0;
    char *end = NULL;
    long long v;

    if (buf == NULL || out == NULL) return -1;
    if (n == 0 || n >= sizeof(tmp)) return -1;   /* 空 / 比任何合法序号都长 */
    memcpy(tmp, buf, n);
    tmp[n] = '\0';
    for (i = 0; i < n; i++) {
        unsigned char c = (unsigned char)tmp[i];

        if (c >= '0' && c <= '9') { digits++; continue; }
        /* 数字之后只允许"一直到最后都是空白"（正常就是结尾一个 \n）。
         * 中间冒出非数字 = 半截内容或脏数据，整条作废。 */
        if (i > 0 && (c == ' ' || c == '\t' || c == '\r' || c == '\n')) {
            size_t j = i;

            while (j < n && (tmp[j] == ' ' || tmp[j] == '\t' ||
                             tmp[j] == '\r' || tmp[j] == '\n')) {
                j++;
            }
            if (j == n) {
                tmp[i] = '\0';
                break;
            }
        }
        return -1;
    }
    if (digits == 0 || digits > 19) return -1;   /* 空 / 超过 long long 表达能力 */
    errno = 0;
    v = strtoll(tmp, &end, 10);
    if (errno == ERANGE || end == NULL || end == tmp || *end != '\0') return -1;
    if (v < 0) return -1;
    *out = v;
    return 0;
}

static inline int tg_req_read(const char *path, long long *out)
{
    char buf[TG_REQ_BUF];
    size_t n;
    int rc;
    FILE *f;

    if (path == NULL || out == NULL) return -1;
    f = fopen(path, "r");
    if (f == NULL) return -1;
    n = fread(buf, 1, sizeof(buf) - 1, f);
    fclose(f);
    rc = tg_req_parse(buf, n, out);
    return rc;
}

/* 原子写：同目录临时文件 + rename。返回 0 = 已替换完成，-1 = 失败（临时文件已清理）。 */
static inline int tg_req_write_atomic(const char *path, long long seq)
{
    char tmp[192];
    char buf[32];
    int n;
    FILE *f;

    if (path == NULL) return -1;
    n = snprintf(tmp, sizeof(tmp), "%s.tmp", path);
    if (n <= 0 || (size_t)n >= sizeof(tmp)) return -1;
    f = fopen(tmp, "w");
    if (f == NULL) return -1;
    n = snprintf(buf, sizeof(buf), "%lld\n", seq);
    if (n <= 0 || fwrite(buf, 1, (size_t)n, f) != (size_t)n || fflush(f) != 0) {
        fclose(f);
        (void)remove(tmp);
        return -1;
    }
    (void)TG_REQ_FSYNC(fileno(f));
    if (fclose(f) != 0) {
        (void)remove(tmp);
        return -1;
    }
    (void)chmod(tmp, 0666);      /* 守卫跑在 :core 域里，别让权限挡住它读 */
    if (TG_REQ_REPLACE(tmp, path) != 0) {
        (void)remove(tmp);
        return -1;
    }
    return 0;
}

/* 受理判定：返回受理原因（用于日志），NULL = 本次不触发。
 *   "first" = 还没有基线（守卫启动时请求文件是空的），这条是真正的新请求
 *   "new"   = 序号严格递增
 *
 * T8-15.5R：**取消"计时基准重置"自动受理**。上一版允许"大幅倒退 + 下一拍读到不小于它的值"
 * 就开麦，结果是"同一个异常旧值连续出现两次"就能触发一次开麦 —— 重复读到相同内容不能证明
 * 它是一个新请求。现在改成两条更硬的规则：
 *
 *   1) 先看这个序号像不像"刚发出的请求"：双方都用 CLOCK_MONOTONIC 毫秒，真实请求从写入到
 *      被读到只有 ~120 ms，所以只接受 [now - 120 s, now + 1.5 s] 区间内的值。
 *      未来值（例如手工写进去的 epoch 秒/毫秒）、太旧的值一律不触发、也不动基线。
 *   2) 倒退一律**静默重设基线**，绝不触发：这样"文件里残留一个合法格式的旧序号"最多只丢掉
 *      一条请求，不会在没有用户指令时开麦；而基线被历史脏值抬高过的情况也能自愈
 *      （第一条真请求静默落地，第二条开始正常触发）。
 *
 * 于是"开麦"只剩两种来源：没有基线，或者序号比基线大且时间上说得通。 */
static inline const char *tg_req_accept(tg_req_state *st, long long seq, long long now_ms)
{
    if (st == NULL) return NULL;
    if (seq < TG_REQ_MIN_SEQ) {
        st->last_code = TG_REQ_R_TINY;          /* 半截数字（"1"/"1525"） */
        return NULL;
    }
    if (seq > now_ms + TG_REQ_CLOCK_SLACK_MS) {
        st->last_code = TG_REQ_R_FUTURE;        /* epoch 秒/毫秒之类的脏数据 */
        return NULL;
    }
    if (seq + TG_REQ_CLOCK_STALE_MS < now_ms) {
        st->last_code = TG_REQ_R_TOO_OLD;       /* 不可能是一个"刚发出"的请求 */
        return NULL;
    }
    if (st->last_seq < 0) {
        st->last_seq = seq;
        st->last_code = TG_REQ_R_FIRST;
        return "first";
    }
    if (seq > st->last_seq) {
        st->last_seq = seq;
        st->last_code = TG_REQ_R_NEW;
        return "new";
    }
    if (seq == st->last_seq) {
        st->last_code = TG_REQ_R_REPEAT;        /* 同一个值再读一万次也不会开麦 */
        return NULL;
    }
    /* 低于基线：静默重设基线，本拍不触发 */
    st->last_seq = seq;
    st->last_code = TG_REQ_R_BELOW;
    return NULL;
}

#endif /* TG_REQ_SEQ_H */
