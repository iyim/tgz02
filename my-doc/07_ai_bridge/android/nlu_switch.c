/*
 * nlu_switch.c -- T8-05：接管开关与安装状态的判定实现（无锁、纯原子读写）
 *
 * 编译环境两处共用：ARM32（Android 8.1 / clang）与 Windows 主机（TDM-GCC），
 * 所以这里只依赖 <stddef.h> 与 __atomic_* 内建，不用 pthread、不用 stdio。
 */
#include "nlu_switch.h"

#define ALOAD(p)      __atomic_load_n((p), __ATOMIC_ACQUIRE)
#define ASTORE(p, v)  __atomic_store_n((p), (v), __ATOMIC_RELEASE)
#define ARLOAD(p)     __atomic_load_n((p), __ATOMIC_RELAXED)
#define ARSTORE(p, v) __atomic_store_n((p), (v), __ATOMIC_RELAXED)
#define AINC(p)       __atomic_fetch_add((p), 1UL, __ATOMIC_RELAXED)

void nls_init(nls_state *s)
{
    if (s == NULL) return;
    ARSTORE(&s->installed, 0);
    ARSTORE(&s->takeover, 0);
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
    return (s != NULL) ? ALOAD(&s->installed) : 0;
}

int nls_takeover(const nls_state *s)
{
    if (s == NULL) return 0;
    AINC(&((nls_state *)s)->reads);      /* 诊断计数：切换确实被读到过 */
    return ALOAD(&s->takeover);
}

int nls_set_installed(nls_state *s, int installed)
{
    if (s == NULL) return NLS_E_ARG;
    if (installed) {
        AINC(&s->install_marks);
        ASTORE(&s->installed, 1);
    } else {
        AINC(&s->uninstall_marks);
        /* 先关接管再标未安装：任何时刻读到的组合都不会是"没补丁却在接管" */
        ASTORE(&s->takeover, 0);
        ASTORE(&s->installed, 0);
    }
    return NLS_OK;
}

int nls_set_takeover(nls_state *s, int on)
{
    if (s == NULL) return NLS_E_ARG;
    if (!on) {
        AINC(&s->sets_off);
        ASTORE(&s->takeover, 0);
        return NLS_OK;
    }
    if (!ALOAD(&s->installed)) {
        /* 没有入口补丁就没有回调：此时"开启"只能是假象，明确拒绝并保持关闭 */
        AINC(&s->refused_on);
        ASTORE(&s->takeover, 0);
        return NLS_E_UNSAFE;
    }
    AINC(&s->sets_on);
    ASTORE(&s->takeover, 1);
    return NLS_OK;
}

void nls_note_init_failure(nls_state *s, int failed)
{
    if (s == NULL) return;
    ASTORE(&s->init_failed, failed ? 1 : 0);
}

int nls_mode(const nls_state *s, int ready)
{
    if (s == NULL) return NLS_PASS;
    if (!ALOAD(&s->takeover)) return NLS_PASS;
    /* 接管开着但会话表不可用：绝不放行（fail-closed），也不去碰那张表 */
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
