/*
 * nlu_patch.h -- T8-05：入口热补丁的事务式安装/卸载（线程安全契约的机器化）
 *
 * 背景（T8-04 审查结论）：原 tg_nlu_install() 直接 p[0]=.. / p[1]=.. 两字写下去，
 * 只有一句注释承认"概率 ns 级窗口"。真实风险有三个：
 *   1) 目标入口只有 8 字节，两个 32 位指令字不可能原子写入；某线程正好取指在
 *      [entry, entry+8) 时，会执行到"半条补丁"，轻则 SIGILL 重则跳到野地址；
 *   2) 失败路径没有回滚：写在第一个字之后出错，入口会永久停在半截状态；
 *   3) 卸载没有读回确认：mprotect 成功就宣布"已恢复"，其实写没写进去没人知道。
 *
 * 本模块把这件事做成一次**事务**，并把"世界已静止"变成调用方必须显式声明的前提：
 *
 *   world_frozen == 0  ->  直接拒绝（NP_E_UNFROZEN），一个字节都不写。
 *                          冻结不是本模块能做的事（ARM32/Android 8.1 上要靠 ptrace），
 *                          所以这里只做契约检查，不做"尽力而为"的猜测。
 *   world_frozen == 1  ->  调用方（Injector）已经：暂停目标进程全部线程 →
 *                          核对没有线程的 PC 落在 [lo,hi) → 才进来。
 *
 * 事务步骤（install）：
 *   a. 读入口 → 必须是"原厂序言"（否则 NP_E_ENTRY，不写）
 *   b. freeze 钩子（可选；生产上为 NULL，因为冻结已由 Injector 完成）
 *   c. 再读一次入口（冻结期间入口不许变）
 *   d. 去掉写保护（mprotect RWX）
 *   e. 先写字面量（entry+4）、再写跳转（entry+0）；每写一个字都 flush 指令缓存
 *   f. 读回 → 必须等于"补丁机器码"，否则 NP_E_VERIFY
 *   g. 任何一步失败：把**两个字**都写回原厂机器码并读回确认
 *      - 回滚确认成功 -> NP_E_*（原始错误）+ restores++
 *      - 回滚确认失败 -> NP_E_RESTORE（"入口可能残留半截补丁"，必须人工介入）
 *   h. 恢复页保护、thaw、记录 before/after 机器码
 *
 * 事务步骤（uninstall）：同构，期望值换成"补丁机器码"，写回"原厂序言"，
 * 读回确认后 state 回到 NP_ST_IDLE；确认失败返回 NP_E_RESTORE，**绝不**报成功。
 *
 * 状态机（np_sample 每次实地读入口得出，不靠记忆）：
 *   NP_ST_IDLE     入口 == 原厂序言
 *   NP_ST_PATCHED  入口 == 补丁机器码
 *   NP_ST_BROKEN   两者都不是（外部改写 / 回滚失败）——之后拒绝一切写入
 *   NP_ST_BUSY     正在事务中（暂态，只在本线程可见）
 */
#ifndef T8_NLU_PATCH_H
#define T8_NLU_PATCH_H

#include <stddef.h>
#include <stdint.h>

#define NP_WORDS 2

/* 状态机 */
#define NP_ST_IDLE     0
#define NP_ST_PATCHED  1
#define NP_ST_BROKEN   2
#define NP_ST_BUSY     3

/* 返回值 */
#define NP_OK              0
#define NP_E_ARG         (-1)
#define NP_E_UNFROZEN    (-2)   /* 调用方没有声明"目标线程已冻结" -> 拒绝写入 */
#define NP_E_ENTRY       (-3)   /* 入口机器码既不是原厂也不是补丁 / 与预期不符 */
#define NP_E_FREEZE      (-4)   /* freeze 钩子失败 */
#define NP_E_WRITE       (-5)   /* 写保护/写入失败 */
#define NP_E_VERIFY      (-6)   /* 写后读回 != 期望 */
#define NP_E_RESTORE     (-7)   /* 回滚后读回仍不是原厂机器码（残留风险） */
#define NP_E_NOT_PATCHED (-8)   /* 卸载时入口本来就是原厂（没什么可恢复） */
#define NP_E_BUSY        (-9)   /* 重入 / 并发事务 */
#define NP_E_PROT        (-10)  /* 去写保护失败 */

typedef struct {
    uint32_t *entry;            /* 目标入口（2 个 32 位指令字） */
    uint32_t  expect[NP_WORDS]; /* 原厂序言 */
    uint32_t  patch[NP_WORDS];  /* 补丁机器码 */

    void *ud;

    /* 可选钩子（生产：flush/unprotect/reprotect 有，freeze/thaw 为 NULL） */
    int  (*freeze)(void *ud, char *err, size_t cap);                  /* 0 = 已静止 */
    void (*thaw)(void *ud);
    void (*flush)(void *ud, uint32_t *p, int nwords);
    int  (*unprotect)(void *ud, const char *what, char *err, size_t cap);  /* 0 = 可写 */
    void (*reprotect)(void *ud);
    /*
     * 测试注入：只写一个字就返回失败，用来证明"失败必须回滚且不能残留半截补丁"。
     * 生产上为 NULL（直接 entry[idx] = w）。
     */
    int  (*write)(void *ud, uint32_t *p, int idx, uint32_t w);

    /* --- 以下由 np_* 维护 --- */
    volatile int state;
    volatile int error;         /* 上一次事务的返回值（NP_OK/NP_E_*） */
    volatile int lock;          /* 事务互斥（重入检测） */
    uint32_t code_before[NP_WORDS];      /* 安装前实测机器码 */
    uint32_t code_after[NP_WORDS];       /* 安装后实测机器码 */
    uint32_t code_uninstall[NP_WORDS];   /* 卸载后实测机器码 */
    uint32_t code_now[NP_WORDS];         /* 最近一次 np_sample 实测机器码 */
    unsigned long installs, install_skips, install_fails, install_refusals;
    unsigned long uninstalls, uninstall_fails;
    unsigned long restores, restore_fails, busy_hits;
    char last_error[192];
} np_patch;

/* 初始化：entry/expect/patch 必须由调用方给出（本模块不解析符号、不分配内存） */
void np_init(np_patch *p, uint32_t *entry, const uint32_t *expect, const uint32_t *patch);

/* 实地读入口，更新 state/code_now。返回 NP_ST_* */
int  np_sample(np_patch *p);

int  np_installed(const np_patch *p);      /* 1 = 入口当前是补丁机器码 */
int  np_state(const np_patch *p);

/* world_frozen：1 = 调用方已冻结目标进程全部线程并核对过 PC 区间 */
int  np_install(np_patch *p, int world_frozen);
int  np_uninstall(np_patch *p, int world_frozen);

const char *np_err_name(int e);
const char *np_state_name(int st);

/* "e92d4ff0 e28db01c" 形式的机器码格式化（buf 至少 20 字节） */
void np_words(const uint32_t *w, int n, char *buf, size_t cap);

/* 一行快照：状态 + 四组机器码 + 全部计数（供注入器打印与事件归档） */
void np_snapshot(np_patch *p, char *buf, size_t cap);

#endif /* T8_NLU_PATCH_H */
