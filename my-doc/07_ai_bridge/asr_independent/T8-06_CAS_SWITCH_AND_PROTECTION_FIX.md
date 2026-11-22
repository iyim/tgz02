# T8-06 按给定代码修复两个 P1（CAS 单一状态字 + 代码页保护恢复）

本轮**不做自设计**：`nlu_switch.h` / `nlu_switch.c` 按给定内容原样替换，
`tg_nlu_takeover_set()` / `tg_nlu_uninstall()` 按指定要求修改，代码页保护恢复按 §4 修改。
与当前文件未出现实际冲突（无行号级冲突需要上报）。

## 1. `nlu_switch` 改为单一原子状态字（原样替换）

* `nls_state` 只剩 `volatile unsigned int state` + 诊断计数，两位定义在同一个字上：
  `NLS_BIT_INSTALLED (1u<<0)`、`NLS_BIT_TAKEOVER (1u<<1)`。
* 所有状态变更走 `__atomic_compare_exchange_n` 循环（CAS），只有 `nls_init` 用 store。
* 卸载 = 单次 CAS `oldv & ~(INSTALLED|TAKEOVER)`：不存在 `installed=0 && takeover=1` 的中间态。
* 开启 = CAS 时先检查 `INSTALLED`，未安装则 `refused_on++` 并返回 `NLS_E_UNSAFE`。
* `nls_mode()` 一次读取完整状态，且加了防御性检查：`TAKEOVER` 有而 `INSTALLED` 没有时返回
  `NLS_PASS`，绝不让非法组合进入 `DECIDE`。

## 2. 控制互斥锁与两个函数

### 2.1 定义与初始化（`libtg_hook.c`）

```c
static pthread_mutex_t g_nlu_ctl_lock = PTHREAD_MUTEX_INITIALIZER;
static volatile int    g_nlu_ctl_held;          /* 当前持锁者数量（诊断用） */
static volatile unsigned long g_nlu_ctl_locks;  /* 成功取锁次数 */
static volatile unsigned long g_nlu_ctl_busy;   /* 重试耗尽次数 */
static volatile unsigned long g_nlu_ctl_fail;   /* trylock 硬失败次数 */

static int nlu_ctl_lock(int retries)   /* retries=0: 只试一次；否则 2 ms 间隔重试 */
static void nlu_ctl_unlock(void);
```

要点：
* 静态初始化（`PTHREAD_MUTEX_INITIALIZER`）：没有初始化失败分支，也不会与 T8-04 的
  `pthread_once` 闸门互相干扰（不存在"重复 init 毁掉已持有的锁"）。
* **不进回调热路径**：`tg_nlp_cb` / `nlu_note_final` 只做 `nls_mode()` 的原子读。
* 用 `trylock` + 有限重试而不是死等：install/uninstall 是在"目标进程全部线程已冻结"
  的前提下执行的，若另一个控制操作正持锁且已被冻结方停住，死等会永久阻塞。重试耗尽后
  明确返回 `TG_E_BUSY`（on/off 重试 50×2 ms，install/uninstall 只试一次），绝不假装成功。

### 2.2 `tg_nlu_takeover_set()`（完整）

```c
int tg_nlu_takeover_set(int on)
{
    int rc;
    int sw;
    int tbl;

    nlu_boot_ensure();
    if (nlu_ctl_lock(50) != 0) {
        nlu_err_set("nlu takeover=%d: another control operation is in progress (busy); switch unchanged",
                    on ? 1 : 0);
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    rc = nls_set_takeover(&g_nlu_sw, on ? 1 : 0);
    if (rc != NLS_OK) {
        nlu_err_set("nlu takeover on refused: entry patch is not installed (installed=%d)",
                    nls_installed(&g_nlu_sw));
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    if (on) {
        if (t8_to_enabled_set(&g_to, 1) != 0) {
            g_nlu_init_failed = 1;
            nls_note_init_failure(&g_nlu_sw, 1);
            sw = nls_takeover(&g_nlu_sw);
            tbl = t8_to_enabled(&g_to);
            nlu_err_set("nlu takeover=1 NOT READY: session table unavailable (ready=%d) "
                        "-> fail-closed, callbacks drop (sw=%d table=%d)",
                        g_to.mutex_ready, sw, tbl);
            slog("%s", g_nlu_err);
            nlu_ctl_unlock();
            return TG_E_NOT_READY;          /* T8-06 新增：-14，不是"正常开启" */
        }
    } else {
        (void)t8_to_enabled_set(&g_to, 0);
    }

    sw = nls_takeover(&g_nlu_sw);
    tbl = t8_to_enabled(&g_to);
    if (sw != tbl || sw != (on ? 1 : 0)) {
        INC(g_nlu_ctl_fail);
        nlu_err_set("nlu takeover=%d inconsistent after update: switch=%d table=%d",
                    on ? 1 : 0, sw, tbl);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_E_PATCH;
    }

    nlu_err_set("nlu takeover=%d installed=%d ready=%d mode=%s",
                on ? 1 : 0, nls_installed(&g_nlu_sw), g_to.mutex_ready ? 1 : 0,
                nls_mode_name(nls_mode(&g_nlu_sw, g_to.mutex_ready)));
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return TG_OK;
}
```

对四条要求的落实：
1. 专用控制锁：`g_nlu_ctl_lock` 只被控制操作使用。
2. 串行：on/off/install/uninstall 全部走 `nlu_ctl_lock()`。
3. 不再不一致：`nls` 位与会话表 `enabled` 在同一临界区内更新，并在锁内做一致性自检
   （`sw != tbl` 直接报 `TG_E_PATCH`）。
4. 回调仍以 `nls_mode()` 为总开关（未改）。
5. `t8_to_enabled_set()` 失败 → 返回 `TG_E_NOT_READY`，开关保持"要接管"但判定是
   `NLS_FAILCLOSED`（不放行），不误报正常开启。

### 2.3 `tg_nlu_uninstall()`（完整）

```c
int tg_nlu_uninstall(int world_frozen)
{
    int rc;

    nlu_boot_ensure();
    if (nlu_ctl_lock(0) != 0) {
        nlu_err_set("nlu uninstall: another control operation is in progress (busy); entry untouched");
        slog("%s", g_nlu_err);
        return TG_E_BUSY;
    }

    if (g_nlu_func == 0 || !g_nlu_pp_ready) {
        nlu_err_set("nlu uninstall: no patch was ever installed in this process");
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    /* 1) 先关接管：这一步之后回调就已经全部放行原厂了 */
    (void)nls_set_takeover(&g_nlu_sw, 0);
    (void)t8_to_enabled_set(&g_to, 0);

    /* 2) 再恢复入口 */
    rc = np_uninstall(&g_nlu_pp, world_frozen);
    g_nlu_patched = np_installed(&g_nlu_pp);

    if (rc == NP_OK) {
        /* 3) 入口确认恢复成原厂序言之后，才标记未安装 */
        (void)nls_set_installed(&g_nlu_sw, 0);
        g_nlu_state = TG_OK;
        nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
        slog("%s", g_nlu_err);
        nlu_ctl_unlock();
        return TG_OK;
    }

    if (rc == NP_E_NOT_PATCHED) {
        (void)nls_set_installed(&g_nlu_sw, 0);
        g_nlu_state = TG_E_NOT_INSTALLED;
        nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
        nlu_ctl_unlock();
        return TG_E_NOT_INSTALLED;
    }

    (void)nls_set_installed(&g_nlu_sw, g_nlu_patched);
    g_nlu_state = (rc == NP_E_UNFROZEN)  ? TG_E_UNSAFE :
                  (rc == NP_E_ENTRY)     ? TG_E_PROLOGUE :
                  (rc == NP_E_REPROTECT) ? TG_E_PATCH :
                  (rc == NP_E_BUSY)      ? TG_E_BUSY : TG_E_PATCH;
    nlu_err_set("nlu uninstall: %s", g_nlu_pp.last_error);
    slog("%s", g_nlu_err);
    nlu_ctl_unlock();
    return g_nlu_state;
}
```

顺序即要求：关接管 → 恢复入口 → 成功后才标记未安装。ARM32 实测调用序列
（`evidence/t8_06_disasm_check.txt` §5）：
`trylock → nls_set_takeover → t8_to_enabled_set → np_uninstall → np_installed → nls_set_installed → unlock`。

`tg_nlu_install()` 同样取控制锁；若事务返回 `NP_E_REPROTECT`，显式把接管压回关闭
（可写页面不允许进入接管状态）。

## 3. 代码页保护恢复不再被吞

### 3.1 接口

```c
/* nlu_patch.h */
int  (*reprotect)(void *ud, char *err, size_t cap);   /* 0 = 成功 */
#define NP_E_REPROTECT   (-11)
```

`np_err_name()` 增加 `case NP_E_REPROTECT: return "reprotect";`。

### 3.2 `nlu_pp_reprotect()`（完整，按给定代码替换）

```c
static int nlu_pp_reprotect(void *ud, char *err, size_t cap)
{
    uintptr_t page = (uintptr_t)g_nlu_func & ~(uintptr_t)0xFFF;
    int prot;

    (void)ud;

    if (!g_nlu_prot_valid) {
        if (err && cap)
            snprintf(err, cap, "original page protection is unknown");
        return -1;
    }

    prot = g_nlu_orig_prot;

    if (mprotect((void *)page, 4096, prot) != 0) {
        if (err && cap) {
            snprintf(err, cap,
                     "mprotect restore failed page=0x%08x prot=%d errno=%d",
                     (unsigned)page, prot, errno);
        }
        return -1;
    }

    return 0;
}
```

### 3.3 事务结束处理（`np_install` / `np_uninstall`）

```c
if (p->reprotect != NULL && (unprotected || p->prot_dirty)) {
    char perr[96], keep[320];
    int base = rc;
    ...
    if (p->reprotect(p->ud, perr, sizeof(perr)) != 0) {
        p->reprotect_fails++;
        p->prot_dirty = 1;
        rc = NP_E_REPROTECT;
        np_seterr(p, "%s; page protection restore FAILED: %s "
                     "(entry ... machine code %08x %08x, page may still be RWX)", ...);
    } else {
        p->reprotect_ok++;
        p->prot_dirty = 0;
    }
}
```

* 恢复成功才返回原有结果；失败一律 `NP_E_REPROTECT`。
* 错误信息保留**原操作结果 + 真实入口机器码 + mprotect 失败原因（page/prot/errno）**。
* 卸载路径额外区分 `entry IS restored to the original prologue` /
  `entry is NOT the original prologue`，不会把"入口已恢复、保护失败"混进卸载成功。
* **不重复写入口、不强行回滚**：恢复失败时只保留真实机器码状态并上报 RWX 风险。
* `prot_dirty`：上一次事务保护恢复未确认时，下一次事务（含幂等跳过、已是原厂）会再试一次
  恢复，避免"下一次安装成功"把旧的 RWX 风险掩盖掉。
* `last_error` 扩到 320 字节：原来 192 字节会把 `RWX` 那半句截掉（T8-06 测试 B12 抓到的）。

### 3.4 单独的保护恢复查询/重试导出（供 Injector，无需重启 `:core`）

| 导出 | 语义 |
|---|---|
| `int tg_nlu_prot_state(void)` | `0`=页已不可写；`1`=仍可写（RWX 风险）；`-1`=无法确定 |
| `int tg_nlu_prot_restore(void)` | 重试恢复：`0` 成功（并复测权限），非 0 明确失败 |
| `void tg_nlu_prot_text(char *buf, size_t cap)` | `prot{page orig now valid risk ok fails retries retry_fails}` |

三者都只读/只调 mprotect，不写指令、不改补丁与接管状态。

## 4. 测试（只跑本轮受影响的部分）

`tests/run_t8_06_host_tests.ps1`，四个套件直接编译生产源文件：

| 套件 | 驱动对象 | 断言 | 覆盖 |
|---|---|---|---|
| `t8_06_switch_test` | `nlu_switch.c` | 39 | 8 线程 install/uninstall/on/off 混跑 6 万轮 ×2 观察者；不变式（同一原子读）零违反；uninstall-vs-enable CAS 2 万轮；关闭后 `PASS`；非法位组合 → `PASS` |
| `t8_06_reprotect_test` | `nlu_patch.c` | 61 | 正常恢复 / 首次失败 / 重试成功 / 连续失败 / 安装成功但恢复失败 / 卸载后入口已恢复但恢复失败 / 全覆盖扫描：某次事务里恢复失败则必不返回 `NP_OK` |
| `t8_05_switch_test` | `nlu_switch.c` | 54 | T8-05 fail-closed 回归（仍全过） |
| `t8_05_patch_test` | `nlu_patch.c` | 109 | T8-05 事务回归（reprotect 钩子签名随本轮更新） |

合计 **263 条断言、0 失败**；另有 32 条源码契约断言（单一状态字、CAS、防御性 mode、
控制锁定义/trylock/取放配对、卸载三段顺序、`TG_E_NOT_READY`、一致性自检、
`reprotect` 签名与 `NP_E_REPROTECT`、`prot_dirty`、三个 prot 导出）。

测试过程中抓到并修掉两个真实缺陷：
1. `last_error` 192 字节不足以同时容纳"原操作结果 + 机器码 + 恢复失败原因"（`RWX` 被截断）；
2. `np_patch` 原本只在 `unprotected` 时尝试恢复，导致"上一次保护没恢复"会被下一次幂等
   安装静默掩盖 → 引入 `prot_dirty` 后下一次事务会重试并如实上报。

并发不变式的判定方式也修正为"对同一次原子读判定"，避免把两次读之间的正常状态变化
误计为违反（首轮 76 次"违反"全部是测量假象，修正后为 0）。

## 5. ARM32

`evidence/t8_06_ndk_build.log`：`armv7a-linux-androideabi26-clang -O2 -Wall -Wextra`，
`tg_injector` 80 780 B、`libtg_hook.so` 116 100 B（sha256 `50e53362…`），
**0 warning / 0 error**，ELF32/ARM、动态链接。
`evidence/t8_06_disasm_check.txt`：三个新导出、`pthread_mutex_trylock` 导入、
`nls_*` 的 `ldrex/strex` CAS、`np_install`/`np_uninstall` 的 `mvn #10`（= -11 `NP_E_REPROTECT`）、
`tg_nlu_uninstall` 的调用顺序。

## 6. 边界

未部署、未注入、未开启接管、未重启 `:core`、未改 Worker/Bridge/TTS Guard/ASR/路由。
