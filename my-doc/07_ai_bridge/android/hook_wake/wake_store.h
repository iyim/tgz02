/*
 * wake_store.h -- T7-06-R1 采集落点的权限决策（纯逻辑，可在主机上测试）
 *
 * 背景：T7-06 第一版为了绕开"root 建的目录应用写不进"，把目录放开到 0777、文件 0666。
 * 这不可接受。正确做法是让 hook 以**自己的 UID** 创建 0700 目录、0600 文件；root 因为
 * DAC 豁免仍然能读/归档/清理。旧文件如果是别人建的或者权限过宽，必须先收紧，收不紧就
 * 让开（改名归档）再新建，绝不能继续往宽松文件里写。
 *
 * 这里只做"看 stat 决定动作"，真正的 syscall 在库和测试里执行：
 *   - 目录：缺失 -> 建；不是我们的 或 权限 != 0700 -> 先 chmod，仍不成就改名让开再建
 *   - 文件：缺失 -> 建(0600)；不是我们的 或 权限宽于 0600 -> 先 chmod，仍不成就改名让开
 */
#ifndef WAKE_STORE_H
#define WAKE_STORE_H

/* 期望的权限位（不含文件类型位） */
#define WS_DIR_MODE   0700
#define WS_FILE_MODE  0600

typedef enum {
    WS_ACT_NONE = 0,     /* 已经是我们要的样子 */
    WS_ACT_CREATE,       /* 不存在，按私有权限创建 */
    WS_ACT_CHMOD,        /* 是我们的，但权限不对 -> 收紧 */
    WS_ACT_MOVE_ASIDE    /* 不是我们的（或无权限收紧）-> 改名归档，再新建 */
} ws_action;

typedef struct {
    int      exists;
    int      uid;        /* st_uid */
    unsigned mode;       /* st_mode & 0777 */
    int      can_chmod;  /* 1 = 我们是 owner，chmod 会成功 */
} ws_stat;

ws_action ws_plan_dir(const ws_stat *st, int my_uid);
ws_action ws_plan_file(const ws_stat *st, int my_uid);

#endif /* WAKE_STORE_H */
