#include "nlu_switch.h"

#define ALOAD(p) \
    __atomic_load_n((p), __ATOMIC_ACQUIRE)

#define ACAS(p, oldv, newv) \
    __atomic_compare_exchange_n((p), &(oldv), (newv), 0, \
                                __ATOMIC_ACQ_REL, __ATOMIC_ACQUIRE)

#define ARSTORE(p, v) \
    __atomic_store_n((p), (v), __ATOMIC_RELAXED)

#define AINC(p) \
    __atomic_fetch_add((p), 1UL, __ATOMIC_RELAXED)

void nls_init(nls_state *s)
{
    if (s == NULL) return;

    __atomic_store_n(&s->state, 0u, __ATOMIC_RELEASE);
    ARSTORE(&s->init_failed, 0);

    ARSTORE(&s->sets_on, 0UL);
    ARSTORE(&s->sets_off, 0UL);
    ARSTORE(&s->refused_on, 0UL);
    ARSTORE(&s->install_marks, 0UL);
    ARSTORE(&s->uninstall_marks, 0UL);
    ARSTORE(&s->reads, 0UL);
}

int nls_installed(const nls_state *s)
{
    if (s == NULL) return 0;

    return (ALOAD(&s->state) & NLS_BIT_INSTALLED) ? 1 : 0;
}

int nls_takeover(const nls_state *s)
{
    if (s == NULL) return 0;

    AINC(&((nls_state *)s)->reads);

    return (ALOAD(&s->state) & NLS_BIT_TAKEOVER) ? 1 : 0;
}

/*
 * 安装：
 * 只设置 INSTALLED 位，不得隐式开启 TAKEOVER。
 *
 * 卸载：
 * 单次 CAS 同时清除 INSTALLED 和 TAKEOVER。
 * 不存在 installed=0 && takeover=1 的中间状态。
 */
int nls_set_installed(nls_state *s, int installed)
{
    unsigned int oldv;
    unsigned int newv;

    if (s == NULL) return NLS_E_ARG;

    oldv = ALOAD(&s->state);

    for (;;) {
        if (installed) {
            newv = oldv | NLS_BIT_INSTALLED;
        } else {
            newv = oldv & ~(NLS_BIT_INSTALLED | NLS_BIT_TAKEOVER);
        }

        if (ACAS(&s->state, oldv, newv)) break;
    }

    if (installed) AINC(&s->install_marks);
    else AINC(&s->uninstall_marks);

    return NLS_OK;
}

/*
 * 开启：
 * CAS 时同时检查 INSTALLED。
 *
 * 关闭：
 * CAS 清除 TAKEOVER。
 *
 * 并发 install/uninstall/on/off 全部通过同一个状态字线性化。
 */
int nls_set_takeover(nls_state *s, int on)
{
    unsigned int oldv;
    unsigned int newv;

    if (s == NULL) return NLS_E_ARG;

    oldv = ALOAD(&s->state);

    for (;;) {
        if (on) {
            if (!(oldv & NLS_BIT_INSTALLED)) {
                AINC(&s->refused_on);
                return NLS_E_UNSAFE;
            }

            newv = oldv | NLS_BIT_TAKEOVER;
        } else {
            newv = oldv & ~NLS_BIT_TAKEOVER;
        }

        if (ACAS(&s->state, oldv, newv)) break;
    }

    if (on) AINC(&s->sets_on);
    else AINC(&s->sets_off);

    return NLS_OK;
}

void nls_note_init_failure(nls_state *s, int failed)
{
    if (s == NULL) return;

    __atomic_store_n(&s->init_failed, failed ? 1 : 0,
                     __ATOMIC_RELEASE);
}

int nls_mode(const nls_state *s, int ready)
{
    unsigned int state;

    if (s == NULL) return NLS_PASS;

    /* 一次读取完整状态，禁止分两次读取 installed/takeover */
    state = ALOAD(&s->state);

    if (!(state & NLS_BIT_TAKEOVER)) return NLS_PASS;

    /* 防御性检查：不允许非法组合进入 DECIDE */
    if (!(state & NLS_BIT_INSTALLED)) return NLS_PASS;

    if (!ready) return NLS_FAILCLOSED;

    return NLS_DECIDE;
}

const char *nls_mode_name(int m)
{
    switch (m) {
    case NLS_PASS:       return "pass";
    case NLS_DECIDE:     return "decide";
    case NLS_FAILCLOSED: return "failclosed";
    default:             return "?";
    }
}
