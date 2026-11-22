/*
 * t7_06r1_wake_store_unit_test.c -- T7-06-R1 采集落点权限决策的主机测试
 *
 * 生产代码是 android/hook_wake/wake_store.c：拿 stat 结果决定"建 / 收紧 / 归档让开"。
 * 这里穷举 uid 与 mode 的组合，确保**任何**宽松权限都不会被继承：
 *   - 目录必须是 0700 且属于本进程；
 *   - 文件必须是 0600 且属于本进程；
 *   - 别人的旧文件（root 留下来的 0666）必须归档让开，而不是继续写。
 */
#include "wake_store.h"

#include <stdio.h>

static int g_pass;
static int g_fail;

static void ok(int cond, const char *what)
{
    if (cond) g_pass++;
    else { g_fail++; printf("FAIL %s\n", what); }
}

#define ME 1000

int main(void)
{
    ws_stat st;

    /* ---- 目录 ---- */
    st.exists = 0; st.uid = 0; st.mode = 0; st.can_chmod = 0;
    ok(ws_plan_dir(&st, ME) == WS_ACT_CREATE, "dir: missing -> create");

    st.exists = 1; st.uid = ME; st.mode = 0700;
    ok(ws_plan_dir(&st, ME) == WS_ACT_NONE, "dir: mine 0700 -> nothing to do");

    st.uid = ME; st.mode = 0755;
    ok(ws_plan_dir(&st, ME) == WS_ACT_CHMOD, "dir: mine 0755 -> tighten");

    st.uid = ME; st.mode = 0777;
    ok(ws_plan_dir(&st, ME) == WS_ACT_CHMOD, "dir: mine 0777 -> tighten");

    st.uid = 0; st.mode = 0700;
    ok(ws_plan_dir(&st, ME) == WS_ACT_MOVE_ASIDE, "dir: root-owned -> move aside (cannot chown)");

    st.uid = 0; st.mode = 0777;
    ok(ws_plan_dir(&st, ME) == WS_ACT_MOVE_ASIDE, "dir: root 0777 -> move aside");

    /* ---- 文件 ---- */
    st.exists = 0; st.uid = 0; st.mode = 0;
    ok(ws_plan_file(&st, ME) == WS_ACT_CREATE, "file: missing -> create");

    st.exists = 1; st.uid = ME; st.mode = 0600;
    ok(ws_plan_file(&st, ME) == WS_ACT_NONE, "file: mine 0600 -> nothing");

    st.uid = ME; st.mode = 0644;
    ok(ws_plan_file(&st, ME) == WS_ACT_CHMOD, "file: mine 0644 -> tighten");

    st.uid = ME; st.mode = 0666;
    ok(ws_plan_file(&st, ME) == WS_ACT_CHMOD, "file: mine 0666 -> tighten");

    st.uid = 0; st.mode = 0666;
    ok(ws_plan_file(&st, ME) == WS_ACT_MOVE_ASIDE, "file: root 0666 -> move aside");

    st.uid = 0; st.mode = 0644;
    ok(ws_plan_file(&st, ME) == WS_ACT_MOVE_ASIDE, "file: root 0644 -> move aside");

    /* 期望权限常量本身也要对 */
    ok(WS_DIR_MODE == 0700, "const: dir mode is 0700");
    ok(WS_FILE_MODE == 0600, "const: file mode is 0600");

    printf("t7_06r1_wake_store: pass=%d fail=%d\n", g_pass, g_fail);
    return g_fail == 0 ? 0 : 1;
}
