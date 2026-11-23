/* tg_req_seq.h -- T8-15.5 续听请求（worker 写 / native 守卫读）的序号契约
 *
 * 为什么把它抽成独立头文件：这份契约有两个坑，两侧必须实现同一套规则，
 * 而且这两个坑都能在 host 上验证（tests/t8_155_req_seq_unit_test.c）。
 *
 *   坑 1（读侧，本次修复的主缺陷）：
 *     旧版 worker 用 fopen(..., "w") 写请求文件 —— 会先把文件截断，再写内容。
 *     守卫如果正好在"截断后、写入前"读到，fgets 失败 -> seq 保持 -1 ->
 *     旧判定 `(last_seq - seq) > 60000` 成立 -> 把 -1 当成一次新请求 -> 没有用户
 *     指令也会开麦。所以读侧必须先"校验完整合法"，再参与比较：空文件、半截数字、
 *     负数、尾巴带脏数据一律算无效，本次忽略，且**绝不更新基线**。
 *
 *   坑 2（写侧）：改成"同目录临时文件 + rename"原子替换，读侧永远只会看到
 *     完整的旧值或完整的新值，不会看到空文件/半截内容。
 *
 * 跨计时基准重置仍然要支持（历史上有人手工往请求文件写过 epoch 秒，把基线抬到
 * 1.79e9，之后所有单调毫秒请求都被当成"过期"静默丢弃，原厂指令后不再开麦），
 * 但只接受同时满足下面几条的倒退，避免任何脏数据都能触发一次开麦：
 *   - 序号本身合法（十进制、非负、无脏尾巴）；
 *   - 倒退量 > TG_REQ_RESET_JUMP；
 *   - 新值 >= TG_REQ_MIN_SEQ（worker 用的是 CLOCK_MONOTONIC 毫秒，真序号不可能是个位/
 *     十位数，这条专门挡住"截断后只剩前几位"的半截文件）；
 *   - 3 s 内不重复受理重置（同一份脏数据不会被反复当成新请求）。
 */
#ifndef TG_REQ_SEQ_H
#define TG_REQ_SEQ_H

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <unistd.h>

#define TG_REQ_BUF          64
#define TG_REQ_RESET_JUMP   60000LL   /* 倒退量超过它才可能是换了计时基准 */
#define TG_REQ_MIN_SEQ      1000LL    /* 小于它的一定是半截数字/脏数据，不是真序号 */
#define TG_REQ_RESET_GAP_MS 3000LL    /* 两次"基准重置"受理之间的最小间隔 */
#define TG_REQ_CONFIRM_MS    600LL    /* "基准重置"候选的确认窗口 */

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
    long long cand_seq;    /* 待确认的"计时基准重置"候选值；-1 = 没有候选 */
    long long cand_ms;     /* 候选出现时刻 */
    long long reset_ms;    /* 上一次受理基准重置的时刻（节流） */
} tg_req_state;

static inline void tg_req_state_init(tg_req_state *st)
{
    if (st == NULL) return;
    st->last_seq = -1;
    st->cand_seq = -1;
    st->cand_ms = 0;
    st->reset_ms = 0;
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
 *   "first"            = 还没有基线（守卫启动时请求文件是空的），这条是真正的新请求
 *   "new"              = 序号严格递增
 *   "clock-base reset" = 合法的大幅倒退，且**在下一拍被确认**为换了计时基准
 *
 * 为什么倒退要"两次观测"才受理：只靠"倒退很多 + 数值够大"是挡不住半截文件的 ——
 * "121635016" 被截成 "1216" 仍然 >= 1000、倒退量也很大，只看一次就会被当成换了基准。
 * 所以第一拍只记候选，第二拍（>=120 ms 后）如果读到"不小于候选值"的内容才确认：
 *   - 换基准时对端会一直用新基准写，值会稳定或继续增大 -> 确认；
 *   - 旧写法截断产生的半截内容会立刻被完整内容覆盖（值变大）-> 确认后按真实序号开麦；
 *   - 真正的脏数据（空文件、负数、负号）在读侧就被拒，连候选都不会有。
 * 确认窗口 600 ms 内没确认就作废，且重置动作 3 s 内只放行一次。 */
static inline const char *tg_req_accept(tg_req_state *st, long long seq, long long now_ms)
{
    if (st == NULL) return NULL;
    if (seq < TG_REQ_MIN_SEQ) {
        /* 半截数字（"1"/"12"）连候选资格都没有 */
        if (st->cand_seq >= 0 && now_ms - st->cand_ms > TG_REQ_CONFIRM_MS) st->cand_seq = -1;
        return NULL;
    }
    if (st->cand_seq >= 0) {
        if (now_ms - st->cand_ms > TG_REQ_CONFIRM_MS) {
            st->cand_seq = -1;                    /* 候选过期：半截内容没被完整内容接上 */
        } else if (seq >= st->cand_seq) {
            st->cand_seq = -1;
            st->last_seq = seq;
            st->reset_ms = now_ms;
            return "clock-base reset";
        } else {
            return NULL;                          /* 候选还没确认 */
        }
    }
    if (st->last_seq < 0) {
        st->last_seq = seq;
        return "first";
    }
    if (seq > st->last_seq) {
        st->last_seq = seq;
        return "new";
    }
    if ((st->last_seq - seq) > TG_REQ_RESET_JUMP &&
        (st->reset_ms == 0 || now_ms - st->reset_ms > TG_REQ_RESET_GAP_MS)) {
        st->cand_seq = seq;                       /* 先记候选，下一拍再确认 */
        st->cand_ms = now_ms;
    }
    return NULL;
}

#endif /* TG_REQ_SEQ_H */
