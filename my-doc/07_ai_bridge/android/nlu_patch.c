/*
 * nlu_patch.c -- T8-05：入口热补丁事务实现（见 nlu_patch.h 的契约说明）
 *
 * 只做内存操作：不解析符号、不 mmap、不 mprotect（去/恢复写保护通过钩子交给调用方，
 * 因为指令页保护属于宿主进程的知识）。这样同一份代码可以在 Windows 主机上被
 * 单元测试直接驱动 —— 测试驱动的是生产实现本身，不是"结构相似的替身"。
 *
 * 计数口径（只有一个地方记账，避免同一件事被记两次）：
 *   installs / install_skips / install_fails   成功 / 已在位跳过 / 其它一切失败
 *   install_refusals                           world_frozen=0 的拒绝（一个字节都没写）
 *   uninstalls / uninstall_fails               成功 / 其它一切失败（not_patched 不算失败）
 *   restores                                   失败后回滚被读回确认的救回次数
 *   restore_fails                              回滚/恢复读回确认失败（入口可能残留补丁）
 *   busy_hits                                  重入被拒次数
 */
#include "nlu_patch.h"

#include <stdarg.h>
#include <stdio.h>
#include <string.h>

#define NP_LOCK(p)   __atomic_exchange_n(&(p)->lock, 1, __ATOMIC_ACQ_REL)
#define NP_UNLOCK(p) __atomic_store_n(&(p)->lock, 0, __ATOMIC_RELEASE)

static void np_seterr(np_patch *p, const char *fmt, ...)
#if defined(__GNUC__)
    __attribute__((format(printf, 2, 3)))
#endif
    ;

static void np_seterr(np_patch *p, const char *fmt, ...)
{
    va_list ap;

    if (p == NULL || fmt == NULL) return;
    va_start(ap, fmt);
    vsnprintf(p->last_error, sizeof(p->last_error), fmt, ap);
    va_end(ap);
}

const char *np_err_name(int e)
{
    switch (e) {
    case NP_OK:            return "ok";
    case NP_E_ARG:         return "arg";
    case NP_E_UNFROZEN:    return "unfrozen";
    case NP_E_ENTRY:       return "entry";
    case NP_E_FREEZE:      return "freeze";
    case NP_E_WRITE:       return "write";
    case NP_E_VERIFY:      return "verify";
    case NP_E_RESTORE:     return "restore";
    case NP_E_NOT_PATCHED: return "not_patched";
    case NP_E_BUSY:        return "busy";
    case NP_E_PROT:        return "prot";
    default:               return "?";
    }
}

const char *np_state_name(int st)
{
    switch (st) {
    case NP_ST_IDLE:    return "idle";
    case NP_ST_PATCHED: return "patched";
    case NP_ST_BROKEN:  return "broken";
    case NP_ST_BUSY:    return "busy";
    default:            return "?";
    }
}

void np_words(const uint32_t *w, int n, char *buf, size_t cap)
{
    size_t used = 0;
    int i;

    if (buf == NULL || cap == 0) return;
    buf[0] = '\0';
    for (i = 0; i < n; i++) {
        int k = snprintf(buf + used, cap - used, (i == 0) ? "%08x" : " %08x",
                         (unsigned)(w != NULL ? w[i] : 0u));
        if (k < 0 || (size_t)k >= cap - used) break;
        used += (size_t)k;
    }
}

int np_sample(np_patch *p)
{
    uint32_t a, b;
    int st;

    if (p == NULL || p->entry == NULL) return NP_ST_BROKEN;
    a = p->entry[0];
    b = p->entry[1];
    p->code_now[0] = a;
    p->code_now[1] = b;
    if (a == p->patch[0] && b == p->patch[1]) st = NP_ST_PATCHED;
    else if (a == p->expect[0] && b == p->expect[1]) st = NP_ST_IDLE;
    else st = NP_ST_BROKEN;
    __atomic_store_n(&p->state, st, __ATOMIC_RELEASE);
    return st;
}

void np_init(np_patch *p, uint32_t *entry, const uint32_t *expect, const uint32_t *patch)
{
    int i;

    if (p == NULL) return;
    memset(p, 0, sizeof(*p));
    p->entry = entry;
    for (i = 0; i < NP_WORDS; i++) {
        p->expect[i] = (expect != NULL) ? expect[i] : 0u;
        p->patch[i] = (patch != NULL) ? patch[i] : 0u;
    }
    (void)np_sample(p);
}

int np_installed(const np_patch *p)
{
    if (p == NULL) return 0;
    return (__atomic_load_n(&p->state, __ATOMIC_ACQUIRE) == NP_ST_PATCHED) ? 1 : 0;
}

int np_state(const np_patch *p)
{
    if (p == NULL) return NP_ST_BROKEN;
    return __atomic_load_n(&p->state, __ATOMIC_ACQUIRE);
}

/* 写一个 32 位指令字 + 刷指令缓存。write 钩子存在时由钩子决定写不写（故障注入用） */
static int np_write_word(np_patch *p, int idx, uint32_t w, char *err, size_t cap)
{
    if (p->write != NULL) {
        if (p->write(p->ud, p->entry, idx, w) != 0) {
            snprintf(err, cap, "write hook rejected instruction word %d (0x%08x)", idx, (unsigned)w);
            return -1;
        }
    } else {
        p->entry[idx] = w;
    }
    if (p->flush != NULL) p->flush(p->ud, p->entry, NP_WORDS);
    return 0;
}

/* tail_first=1：先写字面量（entry+4）再写跳转（entry+0） */
static int np_write_pair(np_patch *p, const uint32_t *w, int tail_first, char *err, size_t cap)
{
    if (tail_first) {
        if (np_write_word(p, 1, w[1], err, cap) != 0) return -1;
        if (np_write_word(p, 0, w[0], err, cap) != 0) return -1;
    } else {
        if (np_write_word(p, 0, w[0], err, cap) != 0) return -1;
        if (np_write_word(p, 1, w[1], err, cap) != 0) return -1;
    }
    return 0;
}

int np_install(np_patch *p, int world_frozen)
{
    char err[96];
    char orig[24];
    int rc = NP_OK;
    int st;
    int frozen = 0;
    int unprotected = 0;
    int skipped = 0;

    if (p == NULL || p->entry == NULL) return NP_E_ARG;
    if (!world_frozen) {
        /* 契约检查：没有冻结就绝不落补丁（一个字节都不写） */
        p->install_refusals++;
        p->error = NP_E_UNFROZEN;
        np_seterr(p, "install refused: target threads are not frozen; nothing written");
        return NP_E_UNFROZEN;
    }
    if (NP_LOCK(p) != 0) {
        p->busy_hits++;
        return NP_E_BUSY;
    }

    err[0] = '\0';
    orig[0] = '\0';
    st = np_sample(p);
    p->code_before[0] = p->code_now[0];
    p->code_before[1] = p->code_now[1];

    if (st == NP_ST_PATCHED) {                 /* 幂等：已经在位，不重写 */
        skipped = 1;
        np_seterr(p, "install skipped: patch already in place (%08x %08x)",
                  (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        goto done;
    }
    if (st != NP_ST_IDLE) {
        rc = NP_E_ENTRY;
        np_seterr(p, "install refused: entry is %s (%08x %08x), expected prologue %08x %08x",
                  np_state_name(st), (unsigned)p->code_now[0], (unsigned)p->code_now[1],
                  (unsigned)p->expect[0], (unsigned)p->expect[1]);
        goto done;
    }

    if (p->freeze != NULL) {
        if (p->freeze(p->ud, err, sizeof(err)) != 0) {
            rc = NP_E_FREEZE;
            np_seterr(p, "install aborted: freeze failed (%s); nothing written",
                      (err[0] != '\0') ? err : "no detail");
            goto done;
        }
        frozen = 1;
    }

    /* 冻结之后必须再读一次：暂停窗口里入口被人改过就不能继续 */
    st = np_sample(p);
    if (st != NP_ST_IDLE) {
        rc = NP_E_ENTRY;
        np_seterr(p, "install aborted: entry changed while freezing (%s: %08x %08x); nothing written",
                  np_state_name(st), (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        goto done;
    }

    if (p->unprotect != NULL) {
        if (p->unprotect(p->ud, "install", err, sizeof(err)) != 0) {
            rc = NP_E_PROT;
            np_seterr(p, "install aborted: %s; nothing written",
                      (err[0] != '\0') ? err : "unprotect failed");
            goto done;
        }
    }
    unprotected = 1;

    if (np_write_pair(p, p->patch, 1, err, sizeof(err)) != 0) {
        rc = NP_E_WRITE;
        np_seterr(p, "install failed: %s", (err[0] != '\0') ? err : "write failed");
        goto rollback;
    }

    /* 读回确认：写成功不等于生效，必须实测 */
    st = np_sample(p);
    p->code_after[0] = p->code_now[0];
    p->code_after[1] = p->code_now[1];
    if (st != NP_ST_PATCHED) {
        rc = NP_E_VERIFY;
        np_seterr(p, "install failed: readback %08x %08x != patch %08x %08x",
                  (unsigned)p->code_now[0], (unsigned)p->code_now[1],
                  (unsigned)p->patch[0], (unsigned)p->patch[1]);
        goto rollback;
    }

    np_seterr(p, "install ok: before %08x %08x -> after %08x %08x",
              (unsigned)p->code_before[0], (unsigned)p->code_before[1],
              (unsigned)p->code_after[0], (unsigned)p->code_after[1]);
    goto done;

rollback:
    /*
     * 失败回滚：不管失败发生在第一个字还是第二个字，都把**两个字**写回原厂机器码，
     * 再读回确认。确认不了就明说"入口可能残留半截补丁"，绝不返回成功。
     */
    {
        char rerr[96];
        int rrc = rc;

        snprintf(orig, sizeof(orig), "%s", np_err_name(rrc));
        rerr[0] = '\0';
        (void)np_write_pair(p, p->expect, 1, rerr, sizeof(rerr));
        (void)np_sample(p);
        p->code_after[0] = p->code_now[0];
        p->code_after[1] = p->code_now[1];
        if (np_state(p) != NP_ST_IDLE) {
            p->restore_fails++;
            rc = NP_E_RESTORE;
            np_seterr(p, "%s; rollback UNCONFIRMED (entry now %08x %08x) -> manual intervention",
                      orig, (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        } else {
            p->restores++;
            rc = rrc;
            np_seterr(p, "%s; rollback confirmed, entry restored to %08x %08x",
                      orig, (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        }
    }

done:
    if (unprotected && p->reprotect != NULL) p->reprotect(p->ud);
    if (frozen && p->thaw != NULL) p->thaw(p->ud);
    if (rc == NP_OK) {
        if (skipped) p->install_skips++;
        else p->installs++;
    } else {
        p->install_fails++;
    }
    p->error = rc;
    NP_UNLOCK(p);
    return rc;
}

int np_uninstall(np_patch *p, int world_frozen)
{
    char err[96];
    int rc = NP_OK;
    int st;
    int frozen = 0;
    int unprotected = 0;
    int write_failed = 0;

    if (p == NULL || p->entry == NULL) return NP_E_ARG;
    if (!world_frozen) {
        p->error = NP_E_UNFROZEN;
        np_seterr(p, "uninstall refused: target threads are not frozen; entry untouched");
        return NP_E_UNFROZEN;
    }
    if (NP_LOCK(p) != 0) {
        p->busy_hits++;
        return NP_E_BUSY;
    }

    err[0] = '\0';
    st = np_sample(p);
    if (st == NP_ST_IDLE) {
        /* 本来就没装：不算失败，也不能说"已恢复"——如实说明入口一直是原厂 */
        rc = NP_E_NOT_PATCHED;
        np_seterr(p, "uninstall: entry is already the original prologue (%08x %08x)",
                  (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        goto done;
    }
    if (st != NP_ST_PATCHED) {
        rc = NP_E_ENTRY;
        np_seterr(p, "uninstall refused: entry is %s (%08x %08x); not touching it",
                  np_state_name(st), (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        goto done;
    }

    if (p->freeze != NULL) {
        if (p->freeze(p->ud, err, sizeof(err)) != 0) {
            rc = NP_E_FREEZE;
            np_seterr(p, "uninstall aborted: freeze failed (%s); entry untouched",
                      (err[0] != '\0') ? err : "no detail");
            goto done;
        }
        frozen = 1;
    }

    if (np_sample(p) != NP_ST_PATCHED) {
        rc = NP_E_ENTRY;
        np_seterr(p, "uninstall aborted: entry changed while freezing (%08x %08x)",
                  (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        goto done;
    }

    if (p->unprotect != NULL) {
        if (p->unprotect(p->ud, "uninstall", err, sizeof(err)) != 0) {
            rc = NP_E_PROT;
            np_seterr(p, "uninstall aborted: %s; entry untouched",
                      (err[0] != '\0') ? err : "unprotect failed");
            goto done;
        }
    }
    unprotected = 1;

    /* 恢复顺序与安装相反：先写入口字（跳转 -> 原厂 push），再写字面量 */
    if (np_write_pair(p, p->expect, 0, err, sizeof(err)) != 0) {
        write_failed = 1;
        rc = NP_E_WRITE;
        np_seterr(p, "uninstall failed mid-write: %s",
                  (err[0] != '\0') ? err : "write failed");
    }

    if (np_sample(p) != NP_ST_IDLE) {
        /* 再试一次完整写回：此时页已可写，重试没有额外代价 */
        char rerr[96];

        rerr[0] = '\0';
        (void)np_write_pair(p, p->expect, 0, rerr, sizeof(rerr));
        (void)np_sample(p);
        if (np_state(p) != NP_ST_IDLE) {
            p->restore_fails++;
            p->code_uninstall[0] = p->code_now[0];
            p->code_uninstall[1] = p->code_now[1];
            np_seterr(p, "uninstall UNCONFIRMED: entry is %s (%08x %08x), original is %08x %08x",
                      np_state_name(np_state(p)),
                      (unsigned)p->code_now[0], (unsigned)p->code_now[1],
                      (unsigned)p->expect[0], (unsigned)p->expect[1]);
            rc = NP_E_RESTORE;
            goto done;
        }
        p->restores++;              /* 首写没生效/失败，重试救回：仍按原错误上报 */
        if (!write_failed) {
            rc = NP_E_VERIFY;       /* 写"成功"但读回不是原厂 -> 报 verify，不报 ok */
            np_seterr(p, "uninstall failed: first readback was not the original prologue; "
                         "second write confirmed %08x %08x",
                      (unsigned)p->code_now[0], (unsigned)p->code_now[1]);
        }
    }

    p->code_uninstall[0] = p->code_now[0];
    p->code_uninstall[1] = p->code_now[1];
    if (rc == NP_OK) {
        np_seterr(p, "uninstall ok: entry restored to %08x %08x",
                  (unsigned)p->code_uninstall[0], (unsigned)p->code_uninstall[1]);
    } else {
        np_seterr(p, "%s; entry re-verified as %08x %08x",
                  np_err_name(rc), (unsigned)p->code_uninstall[0], (unsigned)p->code_uninstall[1]);
    }

done:
    if (unprotected && p->reprotect != NULL) p->reprotect(p->ud);
    if (frozen && p->thaw != NULL) p->thaw(p->ud);
    if (rc == NP_OK) p->uninstalls++;
    else if (rc != NP_E_NOT_PATCHED) p->uninstall_fails++;
    p->error = rc;
    NP_UNLOCK(p);
    return rc;
}

void np_snapshot(np_patch *p, char *buf, size_t cap)
{
    char b4[24], af[24], un[24], nw[24];
    int st;

    if (buf == NULL || cap == 0) return;
    if (p == NULL) {
        snprintf(buf, cap, "np{state=none}");
        return;
    }
    st = np_sample(p);
    np_words(p->code_before, NP_WORDS, b4, sizeof(b4));
    np_words(p->code_after, NP_WORDS, af, sizeof(af));
    np_words(p->code_uninstall, NP_WORDS, un, sizeof(un));
    np_words(p->code_now, NP_WORDS, nw, sizeof(nw));
    snprintf(buf, cap,
             "np{state=%s err=%s installs=%lu skips=%lu install_fails=%lu refusals=%lu "
             "uninstalls=%lu uninstall_fails=%lu restores=%lu restore_fails=%lu busy=%lu "
             "before=[%s] after=[%s] uninst=[%s] now=[%s]}",
             np_state_name(st), np_err_name(__atomic_load_n(&p->error, __ATOMIC_ACQUIRE)),
             p->installs, p->install_skips, p->install_fails, p->install_refusals,
             p->uninstalls, p->uninstall_fails, p->restores, p->restore_fails, p->busy_hits,
             b4, af, un, nw);
}
