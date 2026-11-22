/* wake_store.c -- 见 wake_store.h。决策只看 uid/mode/存在性，便于主机单测。 */
#include "wake_store.h"

#include <stddef.h>

ws_action ws_plan_dir(const ws_stat *st, int my_uid)
{
    int mine;

    if (st == NULL) return WS_ACT_NONE;
    if (!st->exists) return WS_ACT_CREATE;

    mine = (st->uid == my_uid);
    if (mine && st->mode == WS_DIR_MODE) return WS_ACT_NONE;
    if (mine) return WS_ACT_CHMOD;
    /* 别人的目录：chmod 一定失败（EPERM），只能让开 */
    return WS_ACT_MOVE_ASIDE;
}

ws_action ws_plan_file(const ws_stat *st, int my_uid)
{
    int mine;

    if (st == NULL) return WS_ACT_NONE;
    if (!st->exists) return WS_ACT_CREATE;

    mine = (st->uid == my_uid);
    if (mine && st->mode == WS_FILE_MODE) return WS_ACT_NONE;
    if (mine) return WS_ACT_CHMOD;
    /* 别人的文件可能是 root 之前留下的：权限过宽就归档让开，不能继续写 */
    return WS_ACT_MOVE_ASIDE;
}
