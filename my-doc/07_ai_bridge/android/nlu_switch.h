/*
 * nlu_switch.h -- T8-05：NLU 接管的两个**正交**状态
 *
 * 背景（T8-04 审查结论）：原实现把两件事塞进了一个变量
 *   - "入口补丁在不在"（装没装 Hook）
 *   - "回调要不要按会话登记决定跳过原厂函数"（接管开没开）
 * 结果 tg_nlu_install() 里有一句 if (!nlu_want_enabled()) return TG_E_DISABLED，
 * 于是"接管关闭时安装 Hook"这件事根本做不到，真机验证的第一阶段（装 Hook 但保持
 * 原厂行为）也就无法执行。
 *
 * 本模块只做状态与判定，不碰机器码、不碰会话表、不碰锁：
 *   1) installed：入口补丁状态（由 nlu_patch 事务的结果驱动）；
 *   2) takeover ：接管开关（由 Injector 的 --nlu-on/--nlu-off 驱动）。
 *
 * 四行真值表（与 T8-05 任务书一一对应）：
 *   installed takeover  -> nls_mode(ready=1)  行为
 *       0        0      -> NLS_PASS           完全原厂（补丁不在，回调不会被调到）
 *       1        0      -> NLS_PASS           回调始终放行原厂函数
 *       1        1      -> NLS_DECIDE         按会话登记结果决定放行/拦截
 *       1        0      -> NLS_PASS           （关闭后立即恢复原厂执行）
 *
 * fail-closed：takeover=1 但会话表不可用（ready=0）时 nls_mode 返回 NLS_FAILCLOSED，
 * 调用方必须**不放行**。这条规则不因开关怎么切而改变。
 *
 * 线程安全：所有共享字段只用 __atomic_* 访问；没有锁、没有 I/O，可在回调里直接读。
 * （takeover 在 NLU 回调的每次调用上被读一次，必须是几次原子 load 的量级。）
 */
#ifndef T8_NLU_SWITCH_H
#define T8_NLU_SWITCH_H

#include <stddef.h>

/* nls_mode() 的三种结果 */
#define NLS_PASS         0      /* 放行原厂函数 */
#define NLS_DECIDE       1      /* 按会话登记结果决定（接管生效） */
#define NLS_FAILCLOSED   2      /* 状态不可用：不放行（fail-closed） */

/* 返回值 */
#define NLS_OK           0
#define NLS_E_ARG      (-1)
#define NLS_E_UNSAFE   (-2)     /* 组合不允许：未安装却要开接管 */

typedef struct {
    volatile int installed;
    volatile int takeover;
    volatile int init_failed;       /* 会话表初始化失败（诊断用，不改变 fail-closed 判定） */
    volatile unsigned long sets_on;
    volatile unsigned long sets_off;
    volatile unsigned long refused_on;   /* 未安装时被拒绝的开启请求 */
    volatile unsigned long install_marks;
    volatile unsigned long uninstall_marks;
    volatile unsigned long reads;
} nls_state;

void nls_init(nls_state *s);

int  nls_installed(const nls_state *s);
int  nls_takeover(const nls_state *s);

/*
 * 标记"入口补丁已装/已卸"。
 * 卸下补丁时**强制**把 takeover 清零：没有补丁就没有回调，留着开状态只会让
 * 状态显示自相矛盾（--nlu-status 里 installed=0 takeover=1 是没人能解释的组合）。
 */
int  nls_set_installed(nls_state *s, int installed);

/*
 * 开/关接管。
 *   开：要求 installed==1，否则返回 NLS_E_UNSAFE 且**保持关闭**（不假报成功）；
 *   关：任何时候都允许，立即生效（调用方下一次读就是 0）。
 */
int  nls_set_takeover(nls_state *s, int on);

void nls_note_init_failure(nls_state *s, int failed);

/* 判定：ready = 会话表可用（mutex_ready） */
int  nls_mode(const nls_state *s, int ready);

const char *nls_mode_name(int m);

#endif /* T8_NLU_SWITCH_H */
