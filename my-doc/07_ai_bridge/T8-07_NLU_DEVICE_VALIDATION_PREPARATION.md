# T8-07 NLU Hook 真机验证前置检查与分阶段验证准备

状态：**只读核查完成，未部署、未注入、未安装/卸载 Hook、未开启接管、未改任何配置**。
本轮只做三件事：核对源码、核对 Injector 命令、整理真机只读检查与阶段 B/C 方案。

设备侧只执行了两类操作：
1. 纯 shell 读取（`ps`、`cat /proc/<pid>/maps`、`ls`、`sha256sum`、`od`、`tail`、`cat *.json`）；
2. `adb pull` 把两个已部署文件拉到主机 `_analysis/tmp/`，用 `nm`/`strings` 离线看符号。

未 attach 目标进程，未写目标内存，未改任何设备文件。核查时间：2026-11-22 19:28–19:32。

基线原始记录：[evidence/t8_07_readonly_baseline.txt](../evidence/t8_07_readonly_baseline.txt)

---

## 一、当前源码核对结果（任务 A）

### A.1 结论表

| 编号 | 检查项 | 结论 | 依据 |
|---|---|---|---|
| 1 | NLU Hook 安装 与 接管开关 是否真正独立 | **是**，两条状态互不推导 | `libtg_hook.c:1103 tg_nlu_install()` 只做补丁事务，不碰 `nls`（唯一例外见 A.2），成功时日志明确写 `takeover=%d (unchanged: installing never enables takeover)`（`libtg_hook.c:1166`）；`libtg_hook.c:1250 tg_nlu_takeover_set()` 拒绝在未安装时开启（`NLS_E_UNSAFE` → `TG_E_NOT_INSTALLED`） |
| 2 | 默认状态是否不接管 | **是** | `nls_state` 由 `nls_init()` 置 0（`nlu_switch.c:16-29`），两个位都不置；`nlu_switch.c:127 nls_mode()` 无 `TAKEOVER` 位即返回 `NLS_PASS` |
| 3 | 关闭接管是否立即恢复原厂处理 | **是**，热路径无锁无缓存 | `libtg_hook.c:820 tg_nlp_cb()` 每次进来先 `nlu_mode_now()`（一次原子读）；`PASS` 时 `return 0` → stub 走 trampoline 重放原厂两条序言，原厂函数完整执行 |
| 4 | 初始化失败 / 锁失败 / 会话缺失 是否 fail-closed | **是**（三处，逐条见 A.3） | `nlu_switch.c:136-143`、`libtg_hook.c:660 nlu_ctl_lock()`、`libtg_hook.c:833-836`、`nlu_takeover.h:105-122` |
| 5 | 安装/卸载失败能否正确报告 | **是**（分层错误码，非零出口） | `nlu_patch.h:55-66`（`NP_E_*`）、`libtg_hook.c:1103/1184` 返回 `TG_E_*`、Injector 出口 22/23（`tg_injector.c:19`） |
| 6 | T6 ASR Hook / Bridge / Worker / TTS Guard 是否保持原行为 | **是**（本轮零改动） | 本轮没有任何 `.c/.h` 变更；T8-06.2 只改了 `patch_entry()`/`tg_hook_uninstall()`/`build_nlu_stub_page()`，T6 安装/卸载路径的对外语义（返回 0 / `g_patched` / sender 复用）由 T8-06.2 的 126 条行为断言+336 条回归锁定 |
| 7 | T8-06.2 是否已在 main | **是** | `git log -1` = `6af9b2a4 fix(ai-bridge): T8-06.2 ...`，已推送 `8c155c0e..6af9b2a4` |

### A.2 唯一一处"安装路径碰开关"的地方（设计使然）

`tg_nlu_install()` 在补丁事务返回 `NP_E_REPROTECT`（入口写成功但页面保护没恢复）时，会把接管**强制压成关闭**再返回失败——
RWX 页面不允许进入接管状态。这不是"安装顺手开接管"，方向相反：只在失败时**关**。
代码：`libtg_hook.c:1103` 起，`NP_E_REPROTECT` 分支。

### A.3 fail-closed 的三个入口（逐条）

1. **状态不可用**：`nls_mode()` 要求 `TAKEOVER` 与 `INSTALLED` 两位同在，否则 `PASS`；`ready==0`（会话表 mutex 未初始化）返回 `NLS_FAILCLOSED`（`nlu_switch.c:127-144`）。
   → `tg_nlp_cb()` 在 `FAILCLOSED` 时 `return 1`（**丢弃 NLU 结果**，不放行原厂），并计 `nlp_failclosed`。
2. **控制锁失败**：`nlu_ctl_lock(retries)` 用 `pthread_mutex_trylock` + 2 ms 有限重试；`install/uninstall` 传 `retries=0`（世界已冻结，绝不死等）。取不到锁返回 `TG_E_BUSY`，动作不发生、状态不变。
3. **会话缺失 / 容量耗尽**：`t8_to_on_final()` 无 session id → `T8_TO_TAKE_FAILCLOSED` 并开降级窗口；`t8_to_should_drop()` 在降级窗口内对**未登记**会话也返回 1（`nlu_takeover.h:105-122`）。

### A.4 安装/卸载的失败语义（真机阶段要看的四个码）

| 层 | 码 | 含义 |
|---|---|---|
| `nlu_patch` | `NP_E_UNFROZEN (-2)` | 调用方没声明"世界已冻结" → 一个字节都不写 |
| `nlu_patch` | `NP_E_ENTRY (-3)` / `NP_E_VERIFY (-6)` | 入口既非原厂也非补丁 / 写后读回不符 → 回滚并读回确认 |
| `nlu_patch` | `NP_E_REPROTECT (-11)` | 入口机器码正确但页面保护恢复失败（T8-06/T8-06.1 引入） |
| `libtg_hook` | `TG_E_UNSAFE (-11)` / `TG_E_PATCH (-12)` / `TG_E_BUSY (-13)` / `TG_E_NOT_READY (-14)` | 未冻结 / 事务失败 / 重入 / 接管开了但会话表不可用 |
| Injector | 出口 `22` = 补丁事务失败或未确认；`23` = 开关未生效 | `tg_injector.c:19` 的退出码表 |

### A.5 T8-06.2 修复是否已在当前 main（核对结论）

- `patch_entry()`：先 `entry_begin_write()`（查不到原始权限就拒绝）→ 写两字 → `g_patched=1` → 带检查的 `entry_restore_prot()`。
- `tg_hook_uninstall()`：入口恢复成功 ≠ 保护恢复成功，失败返回非零且 `g_patched=0`（如实）；已恢复但仍有欠账时再调用会**只重试保护恢复**。
- `tg_hook_install()`：幂等条件是 `g_patched && g_thread_started && !g_prot_dirty`。
- `build_nlu_stub_page()`：`mmap(RW)` → 填充 → 刷 icache → 首选 RX → 明确失败才降级 RWX（记 `g_nlu_page_degraded`）→ 两者皆失败则 `munmap` + 返回 `TG_E_PROT`。

以上四点与 `6af9b2a4` 的提交内容一致，`git log` 确认在 `main`。

### A.6 本轮新发现（不影响结论，但影响阶段 B 的前置条件）

**设备上部署的两个二进制都还是 T6 时代的构建**（详见 §三 C.0）：

| 文件 | 设备大小 / sha256 | 属性 |
|---|---|---|
| `/data/local/tmp/t6/libtg_hook.so` | 27 384 B / `b838a731…` | `nm` 只有 `tg_hook_*`，**没有任何 `tg_nlu_*` 导出** |
| `/data/local/tmp/t6/tg_injector` | 71 884 B / `4d13af84…` | `strings` 显示 usage 里**没有 `--nlu-*`** |

推论（重要）：现在设备上**根本无法执行 NLU 接管** —— 库没有导出、注入器没有参数。
`--nlu-status` 之类命令连解析都不会发生（`usage` 直接退出 10）。
也就是说：当前 :core 里只有 T6 的 onStream Hook 和 TTS Guard，NLU 入口从未被碰过。
→ 阶段 B 的前置动作是"部署新构建"，那是**另一个需要单独批准的步骤**（见 §八 第 1 行）。

---

## 二、Injector 准确命令（任务 B，源码位置逐条给）

源码：`android/injector/tg_injector.c`（967 行）。参数解析在 `main()` 的 `tg_injector.c:479-503`，子命令实现在 `nlu_do()`（`tg_injector.c:296-447`）。

### B.1 语法骨架

```
tg_injector [--pid N | --name PROC] --so /path/libtg_hook.so
            [--check | --uninstall]
            [--nlu-status | --nlu-install | --nlu-uninstall | --nlu-on | --nlu-off]
            [--fault NAME] [--verbose]
```

- `--name` 默认值 `com.alibaba.ailabs.genie.smartapp:core`（`tg_injector.c:39`）。
- `--so` **必填**：`main()` 在 `tg_injector.c:505-524` 校验；缺 `--so` → usage，退出码 10。
- `--nlu-*` 不能与 `--check` / `--uninstall` 组合（`tg_injector.c:520` 明确报错）。

### B.2 命令对照表（严格按源码，不臆造）

| 目标 | 准确命令 | 源码位置 | 只读？ | 写目标内存？ | 可能影响原厂语音？ |
|---|---|---|---|---|---|
| NLU 状态查询 | `--nlu-status` | `tg_injector.c:498`、`329-346` | **否**（attach + 写 scratch + 调 prepare/entry_code/stats） | 是（scratch 缓冲、符号名） | 否（不改补丁、不改开关；但会 `dlopen` 未加载的库） |
| NLU Hook 安装 | `--nlu-install` | `490`、`348-409` | 否 | **是**（暂停全部线程后写入口两字） | **是**（入口变跳转；接管仍关闭 → 行为等同原厂） |
| NLU Hook 卸载 | `--nlu-uninstall` | `492`、同上 | 否 | **是**（写回原厂两条序言） | **是**（恢复原厂入口） |
| 开启接管 | `--nlu-on` | `494`、`411-446` | 否 | 是（原子状态字 + 会话表 enabled） | **是**（AI 会话的 NLU 结果被丢弃，CDM 不执行） |
| 关闭接管 | `--nlu-off` | `496`、同上 | 否 | 是（同上，清位） | **是**（立刻恢复原厂） |
| NLU 统计信息 | **无独立命令**；`--nlu-status` 的输出行 `nlu stats=` 就是它 | `338-343` | 否 | 是 | 否 |
| Hook 页面权限状态查询 | **无注入器命令**；库里有 `tg_nlu_prot_state()` / `tg_nlu_prot_text()`，但 `nlu_syms`（`tg_injector.c:771-784`）**没有解析这两个符号**。`--nlu-status` 输出的 `stats=` 里含 `prot_state=` 字段（`libtg_hook.c:1503`），可用但只能间接看 | `libtg_hook.c:1383/1395`、`1476` | 否 | 是 | 否 |
| Hook 页面权限恢复 | **无注入器命令**；库导出 `tg_nlu_prot_restore()`（`libtg_hook.c:1420`），未接线到 Injector | `libtg_hook.c:1420` | 否 | 否（只 `mprotect`，不写指令） | 否 |

**结论（写进阶段方案的前提）**：注入器目前**没有任何只读命令**。
哪怕 `--nlu-status` 也要 `rc_attach` + `rc_prepare` + `rc_write`（写 scratch），并且当 `libtg_hook.so` 未映射时
`already=0` → `dlopen` 真正加载库（`tg_injector.c:676`，`flags = RTLD_NOW | (already ? RTLD_NOLOAD : 0)`）。
所以"不注入的只读检查"只能用 shell（§三 的 A 组），不能用注入器。
`--check` 是唯一"库没映射就什么都不做"的分支（`tg_injector.c:592-595`：`check_only && !already` → 直接 `return 0`，不 attach）。

### B.3 页保护恢复的另一条路（不需要注入器）

`tg_nlu_prot_restore()` 属于"库内函数"，除了注入器接线之外没有对外接口。
当前可用的**人工**手段只有：`--nlu-uninstall`（会顺带重试恢复，见 `tg_hook_uninstall` 的 retry 分支）或重启 :core（不推荐）。
→ 缺口记录：**"页面权限恢复"缺少一个不写入口的注入器命令**（T8-06.1 就留了这个口子，本轮只登记，不改代码）。

---

## 三、任务 C：真机阶段 A 只读检查（已全部实际执行，均为只读）

### C.0 复现命令与今日实测结果

> 以下每条都**已在本机执行**，输出在 `evidence/t8_07_readonly_baseline.txt`。
> 但凡需要读 :core 内部（`/proc/8342/maps`）的，都以 `su -c` 只读方式读取。

```bash
# 1) 设备与 SELinux
adb shell "getprop ro.product.model; getprop ro.build.version.release; getprop ro.build.version.sdk; getenforce"
#   AILABS_S1L / 6.1.8-RS-20221104.1459 / 27 / Permissive

# 2) :core / worker / 两个 supervisor
adb shell "ps -A -o PID,PPID,ARGS | grep -E 'genie.smartapp|ai_worker|tg_supervisor|tts_supervisor' | grep -v grep"
#   279   tg_supervisor (T6, --log /data/local/tmp/t6/supervisor.log)
#   913   com.alibaba.ailabs.genie.smartapp
#   1237  com.alibaba.ailabs.genie.smartapp:business
#   3468  ai_worker --work-dir /data/local/tmp/t5_bridge/work ...
#   4685  tg_supervisor --so /data/local/tmp/t7/libtg_ttsguard.so --name ...:core
#   8342  com.alibaba.ailabs.genie.smartapp:core      <-- 目标进程
#   17253 sh /data/local/tmp/t5_bridge/tts_supervisor.sh

# 3) :core 的模块映射（只读；SELinux permissive + root 才可读别人的 maps）
adb shell "su -c 'cat /proc/8342/maps' | grep -E 'libsmartbox|libtg_hook|libtg_ttsguard'"
#   938f6000  r-xp  /data/local/tmp/t7/libtg_ttsguard.so      <- TTS Guard 在
#   9655e000  r-xp  /data/local/tmp/t6/libtg_hook.so          <- T6 Hook Agent 在（旧构建）
#   97d05000  r-xp  /system/app/smartapp/lib/arm/libsmartbox.so  <- 原厂库 base

# 4) 原厂入口机器码（**不碰进程**：直接读磁盘上的 .so，p_offset == p_vaddr，见下方 C.1）
adb shell "su -c 'dd if=/system/app/smartapp/lib/arm/libsmartbox.so bs=1 skip=1127740 count=8 2>/dev/null | od -An -tx4'"
#     e92d4ff0  e28db01c   <- onNlpResult @0x118ebc
adb shell "su -c 'dd if=/system/app/smartapp/lib/arm/libsmartbox.so bs=1 skip=1150652 count=8 2>/dev/null | od -An -tx4'"
#     e92d4ff0  e28db01c   <- onStream   @0x11353c

# 5) 已部署产物与哈希
adb shell "su -c 'ls -l /data/local/tmp/t6/libtg_hook.so /data/local/tmp/t6/tg_injector /data/local/tmp/t7/libtg_ttsguard.so'"
adb shell "su -c 'sha256sum /data/local/tmp/t6/libtg_hook.so /data/local/tmp/t6/tg_injector /data/local/tmp/t7/libtg_ttsguard.so'"

# 6) Bridge / Worker 健康（两个 JSON 每隔几秒自己刷新）
adb shell "cat /data/local/tmp/t5_bridge/work/bridge_status.json"
#   {"state":"running","pid":2586,"events_stored":47,"frames":47,"clients":1, ... "updated_at":"2026-11-22T19:30:44"}
adb shell "su -c 'cat /data/local/tmp/t5_bridge/ai_worker/ai_worker_status.json'"
#   {"state":"running","pid":3468, "provider":"deepseek","last_http_status":200,"last_error_class":"ok",
#    "counters":{"lines_read":24,"events_processed":8,...}, "route":{...}, "gate":{...}}

# 7) 最近一次注入 / 最近一次 --check 的记录（supervisor 日志，只读 tail）
adb shell "su -c 'tail -3 /data/local/tmp/t6/supervisor.log'"
#   2026-11-22 13:24:27.041 sup: inject end: pid=8342 exit=0 hooked=1 elapsed=211ms ok
adb shell "su -c 'tail -3 /data/local/tmp/t7/ttsguard.sup.log'"
#   2026-11-22 17:15:46.903 sup: check done: pid=8342 exit=0 hooked=1 state=hooked
```

### C.1 "原厂入口机器码"为什么读磁盘而不是读进程

试过 `dd if=/proc/8342/mem bs=1 skip=… count=8`：**`I/O error`**（0+0 records）。
读别人的代码字节需要 `PTRACE_MODE_ATTACH`，属于 attach 行为，本轮不许做。

替代方法（完全只读、零接触）：`libsmartbox.so` 的每个映射段都满足 `p_offset == p_vaddr`
（maps 里依次是 `97d05000` 段 offset `00000000`、`97e18000` 段 offset `00113000`、
`97e19000` 段 offset `00114000`、`97e24000` 段 offset `0011f000`、`97e25000` 段 offset `00120000`，
虚拟地址与文件偏移逐个对齐），所以 **文件偏移 == 虚拟地址**：
`onNlpResult 0x118ebc = 1150652`、`onStream 0x11353c = 1127740`。
磁盘字节与加载后字节一致（RX 映射是文件直映射），两组 `e92d4ff0 e28db01c` 与代码里的
`TG_NLU_PRO_W0/W1`、`TG_PRO_W0/W1` 完全相同 → **原厂序言未被替换成任何跳转**（就磁盘样本而言）。

⚠️ 这条只能证明"磁盘上的原厂库没被改"，**不能**证明"进程里的入口没被补丁"。
"入口当前是否是补丁"必须 attach 读取（`--check` / `--nlu-status`），属于非只读动作，留给阶段 B 的 B0 步。

### C.2 阶段 A 的判定标准（只读）

| 项 | 通过条件 | 今天实测 |
|---|---|---|
| :core 存在且 PID 稳定 | `ps` 有 `...:core`；两次采样 PID 不变 | 8342 ✔ |
| `libsmartbox.so` 已加载 | maps 里出现且 base 与 `0x118ebc`/`0x11353c` 落在同一 RX 段 | 97d05000 ✔ |
| `libtg_hook.so` 已加载 | maps 有记录 | 9655e000 ✔（旧构建） |
| `libtg_ttsguard.so` 已加载 | maps 有记录 | 938f6000 ✔ |
| Worker / Bridge 在跑 | `ai_worker_status.json.state=running` 且 `updated_at` 在 60 s 内；`bridge_status.json.state=running` | ✔（19:30:44 / 19:30:17） |
| 原厂入口机器码 | 磁盘 8 字节 == `e92d4ff0 e28db01c`（两个入口各一组） | ✔✔ |
| NLU Hook 安装状态 | **只读不可得**（见 C.1）；当前库没有 `tg_nlu_*`，可断定"未安装过" | 未安装（推断，依据 §A.6） |
| NLU takeover 状态 | 同上：`nls_state` 在库内，只读不可得；库未加载新构建 → 恒为 0 | 0（推断） |
| 页面权限状态 | 同上；`stats` 里的 `prot_state` 只能通过 `--nlu-status` 取 | 不可得 |
| NLU 统计 | 同上 | 不可得 |

结论：**阶段 A 的"只读可得"部分是 6/10 项；另外 4 项（7/8/9/10）在原理上必须 attach。**
这不是缺陷，是设计边界 —— 它们被放进阶段 B 的 B0（见 §五）。

---

## 四、阶段 B：只安装 Hook，不开启接管

前提：新构建（`libtg_hook.so` 120 608 B / `tg_injector` 80 780 B，见 `evidence/t8_062_ndk_build.log`）
已部署到设备（**另一个需要单独批准的步骤**，本轮不做）。

### B.0 前置（只读，确认起点）

1. 重跑 §三 C.0 的 1/2/3/6 组命令，记录 PID、maps、两个 JSON。
2. `adb shell su -c 'sha256sum /data/local/tmp/t6/libtg_hook.so'` 应等于新构建 sha（否则停）。

### B.1 安装（唯一写操作）

```bash
# 用 --check 先看"当前入口状态"，它不会写补丁
adb shell su -c "/data/local/tmp/t6/tg_injector --name com.alibaba.ailabs.genie.smartapp:core \
  --so /data/local/tmp/t6/libtg_hook.so --check"
# 记录：hook_status / hooked / stats（hooked=1 表示 T6 onStream 补丁在）
```

```bash
# 只装 NLU 入口补丁，不碰开关
adb shell su -c "/data/local/tmp/t6/tg_injector --name com.alibaba.ailabs.genie.smartapp:core \
  --so /data/local/tmp/t6/libtg_hook.so --nlu-install"
# 期望："[inject] nlu world frozen (N threads)" → "tg_nlu_install(1) = 0"
#       → "nlu installed_after=1 takeover=0 entry_code=np{...}"
#       → "RESULT nlu-install ok installed=1 takeover=0"
# 退出码 22 = 事务失败/未确认（此时必须立刻按 §七 R2 回滚）
```

### B.2 安装后核对（只读 + 一次 attach 查询）

```bash
adb shell su -c "/data/local/tmp/t6/tg_injector --name ...:core --so /data/local/tmp/t6/libtg_hook.so --nlu-status"
```

必须逐项核对输出：

| 字段 | 期望 | 说明 |
|---|---|---|
| `hook_installed` | 1 | NLU 入口补丁在 |
| `takeover` | **0** | 阶段 B 绝不允许是 1 |
| `state_ready` | 1 | 会话表可用（否则 fail-closed，见 B.4） |
| `entry_code=` | `np{state=patched … now=[e51ff004 <stub>]}` | `np_snapshot()` 的输出格式（`nlu_patch.c`） |
| `stats=` 里 `prot_state` | **0**（不可写） | 1 = 页面仍 RWX → 立刻 R4 |
| `stats=` 里 `np_refused / np_ifail / np_rfail` | 0 | 非 0 说明事务拒绝/失败过 |
| `stats=` 里 `mode=pass` | 是 | 接管关 → pass |

### B.3 用户体验验证（阶段 B 的关键：装上但行为必须与原厂一致）

| 用例 | 操作 | 通过标准 |
|---|---|---|
| 本地指令 | 说"音量调到 40" | 与原厂一致执行（`ai_worker_status.json.route.native` +1、`intent=volume`、`publish_ok` +1） |
| AI 对话 | 说一句知识型问题（如"今天适合跑步吗"） | AI 正常回答且有 TTS；`route.ai` +1；`ai_worker_status.last_http_status=200` |
| 连续对话 | 两轮追问 | 上下文生效（`context.turns` 增长）、无重复回复 |
| TTS Guard | 每条 TTS 正常播报、无截断/重复 | `ttsguard.sup.log` 无 error；`tts_queue` 计数与 `tts_queued` 一致 |
| 原厂 CDM 未被拦 | 本地指令后原厂反馈存在 | `stats=` 里 `nlp_calls` **保持 0**、`nlp_skip=0`、`nlp_pass=0`（PASS 分支在计数之前就 `return 0`，见注） |

> 注：`tg_nlp_cb()` 在 `NLS_PASS` 时**先 return 0、再计数**（`libtg_hook.c:830-832`），所以阶段 B 里
> `nlp_calls` **不会**增长 —— 这本身就是"接管没生效"的正向证据。若阶段 B 看到 `nlp_calls` 增长，
> 说明 `mode` 不是 pass，必须立刻停并查 §七 R1。

### B.4 失败判据（任一命中即失败，立即回滚）

1. `--nlu-install` 退出码非 0（含 22）。
2. `--nlu-status` 里 `hook_installed != 1`，或 `takeover != 0`。
3. `entry_code` 显示入口既不是原厂序言也不是 `e51ff004 <stub>`。
4. `stats` 里 `prot_state = 1`（页面仍可写）或 `np_rfail > 0`。
5. 出现"本地指令不执行""AI 无回复""TTS 无声/重复"任一现象（阶段 B 不允许任何可感知变化）。
6. `ai_worker_status.json` 的 `last_error_class` 不再是 `ok`，或 `events_processed` 停止增长。
7. `:core` 崩溃/重启（PID 变化）。

---

## 五、阶段 C：开启接管

前提：阶段 B 全部通过（`installed=1 takeover=0`，行为与原厂无差异）。

### C.1 开启

```bash
adb shell su -c "/data/local/tmp/t6/tg_injector --name ...:core --so /data/local/tmp/t6/libtg_hook.so --nlu-on"
# 期望：tg_nlu_takeover_set(1) = 0; readback=1 installed=1 state_ready=1
#       RESULT nlu-on ok takeover=1 installed=1 state_ready=1
# 若打印 WARN nlu takeover=1 but state_ready=0 → fail-closed 生效（回调全丢弃），视为失败，走 R1
# 退出码 23 = 开关未生效
```

### C.2 验证矩阵（四条链路都要看）

| 编号 | 用例 | 期望 | 判据来源 |
|---|---|---|---|
| C-1 | AI 指令（知识问答） | 进入 NLU Hook 并被丢弃：`stats` 的 `nlp_calls` +1、`nlp_skip` +1；会话 `dropped` +1 | `--nlu-status` 的 `stats=` |
| C-2 | AI 指令不能被原厂 CDM 执行 | 原厂技能不触发（无原厂 TTS、无原厂动作）；AI 回答由 Worker/TTS 播放 | 现象 + `route.ai` |
| C-3 | 本地指令（音量/媒体等已启用意图） | 继续放行原厂 CDM：`nlp_pass` +1、`dropped` 不增；原厂执行成功 | `stats=` + `route.native` |
| C-4 | 会话语义 | `onStream(final)` 登记 → `onNlpResult` 命中同一 session：`marked` +1、`active` 在 TTL 内为 1、`expired` 不异常增长 | `stats=` 的 `active/marked/expired/unknown` |
| C-5 | 连续对话 | 第二轮仍被接管（不是"只有第一轮生效"）：连续两条 AI 指令 `nlp_skip` 各 +1 | `stats=` |
| C-6 | 关闭后立即恢复 | `--nlu-off` 后同一条 AI 指令 `nlp_calls` **不增长**、原厂 CDM 照常执行 | 现象 + `stats=` |
| C-7 | 降级/溢出 | `overflow=0`、`degraded=0`、`failclosed=0`；`fc_events` 若 >0 必须解释得通 | `stats=` |

### C.3 失败判据（任一命中：立刻 `--nlu-off`，必要时按 §七 全退）

1. AI 指令的原厂 CDM 仍然执行（C-2 不成立）→ 接管等于没生效，且可能双重回复。
2. 本地指令被拦（C-3 不成立）→ 用户可感知的功能丢失，优先级最高。
3. `overflow_events > 0` 或 `degraded=1`（登记溢出/降级窗口被触发）。
4. `active` 长时间 > 1（会话泄漏），或 `expired` 持续增长而正常对话无明显过期。
5. `nlp_failclosed` 增长（会话表不可用却开着接管）。
6. `:core` 崩溃、PID 变化、`supervisor.log` 出现 fault/abort。
7. `prot_state = 1` 或 `np_rfail` 增长。
8. AI 回复出现重复/空白/串话（会话关联错误）。

---

## 六、每阶段成功标准汇总（可直接抄成检查表）

| 阶段 | 成功标准 | 失败即回滚到 |
|---|---|---|
| A（只读） | §C.2 六项全绿 | —（不改任何东西，无需回滚） |
| B（只装不开） | 退出码 0；`installed=1 takeover=0 state_ready=1`；`prot_state=0`；`np_*fail=0`；本地/AI/TTS 三类用例与原厂一致；`:core` PID 不变 | R2（卸 NLU 补丁） |
| C（开接管） | C-1..C-7 全绿；无 overflow/degraded/failclosed 增长；PID 不变 | R1 → 必要时 R2 |

---

## 七、分级回滚（从小到大，都要能一条命令执行）

| 级 | 动作 | 命令 | 影响 | 何时用 |
|---|---|---|---|---|
| **R1** | 关接管（保留补丁） | `tg_injector --nlu-off` | 立刻回原厂 CDM；补丁仍在（`hooked=1`，PASS 分支直接放行） | 阶段 C 任何功能异常的第一反应 |
| **R2** | 卸 NLU 补丁 | `tg_injector --nlu-uninstall` | 入口写回原厂序言；若页面保护恢复失败会返回 22 并提示再调用一次 | R1 之后仍有异常，或 B 阶段失败 |
| **R3** | 卸 T6 onStream 补丁 | `tg_injector --uninstall` | 断掉 ASR 事件来源 → AI 对话停摆（Bridge 无输入）。**只在确认 T6 也要停时用** | 怀疑 T6 Hook 本身有问题 |
| **R4** | 停 supervisor + 还原旧库 | `sh /data/local/tmp/t6/run_supervisor.sh stop`（脚本自带 stop 分支）或恢复 `libtg_hook.so.bak` 后重启 supervisor | 需重新注入；`hooked` 由 supervisor 决定 | R1–R3 都无效，需要回到部署前状态 |
| **R5** | 重启 :core | 不在本项目常规手段内（会丢 ASR 会话与 TTS 队列） | 用户可感知中断 | 仅当入口残留非法机器码且 R2 无法恢复时，与用户确认后执行 |

回滚判定要点：
- R2 的退出码 22 表示"入口写回成功但页面保护没恢复"，**不要**再重复 `--nlu-uninstall` 强行写；
  先用 `--nlu-status` 看 `prot_state`，若为 1 则说明需要 T8-06.1 的 `tg_nlu_prot_restore()`（当前无注入器命令，缺口见 §B.3）。
- 每一级回滚之后都必须重跑 §三 C.0 的只读检查，确认 maps / PID / 原厂入口字节没有漂移。

---

## 八、所有可能影响 :core 的操作清单（本轮**未执行**其中任何一条）

| # | 操作 | 性质 | 影响面 | 本轮状态 |
|---|---|---|---|---|
| 1 | 把新 `libtg_hook.so` / `tg_injector` 推到 `/data/local/tmp/t6/` | 改设备文件 | 下次 supervisor 注入的库版本 | **未做**（需单独批准） |
| 2 | `tg_injector --check` | attach + 读状态 | 线程短暂暂停（ms 级） | 未做 |
| 3 | `tg_injector --nlu-status` | attach + 调库 + 写 scratch | 同上；库未加载时会 `dlopen` | 未做 |
| 4 | `tg_injector --nlu-install` | 暂停全部线程 + 写入口两字 | 入口变跳转（接管关时行为=原厂） | 未做 |
| 5 | `tg_injector --nlu-uninstall` | 同上（写回原厂） | 入口恢复 | 未做 |
| 6 | `tg_injector --nlu-on` | 原子改状态字 + 会话表 enabled | 接管生效，AI 会话 NLU 被丢弃 | 未做 |
| 7 | `tg_injector --nlu-off` | 同上（清位） | 立刻回原厂 | 未做 |
| 8 | `tg_injector`（默认，无 `--nlu-*`） | 安装 T6 onStream 补丁 + 起 sender | AI 事件来源接通 | 未做（13:24 已由 supervisor 做过一次，非本轮） |
| 9 | `tg_injector --uninstall` | 卸 T6 补丁 | AI 对话断源 | 未做 |
| 10 | `run_supervisor.sh stop/start` | 停/起注入守护 | 会重复注入；PID 不变但补丁状态可能变 | 未做 |
| 11 | 重启 :core / 重启应用 | 进程重建 | 全部内存状态清空（含 TTS Guard 与 T6 Hook） | 未做 |
| 12 | 改 `/data/local/tmp/t5_bridge/ai_worker/worker.conf` 或 `intent_route` 表 | 改配置 | **路由语义变化 → 接管判定用的 `route_mask` 变化** | 未做 |
| 13 | 清/改 `events.jsonl`、`supervisor.log`、`ttsguard.sup.log` | 改证据 | 基线不可比 | 未做（本轮只 `tail`/`wc -l`） |

---

## 九、当前仍然存在的风险

1. **部署状态与源码不一致**：设备上的库/注入器是 T6 构建（无 `tg_nlu_*`、无 `--nlu-*`）。
   阶段 B 之前必须先部署，而部署本身就是"改变下次注入行为"的动作 —— 属于第 1 号风险点，
   需要在有明确批准和回滚预案（旧文件备份 + sha 比对）时执行。
2. **页面保护恢复没有独立入口**：`tg_nlu_prot_restore()` 未接线到 Injector（§B.3）。
   一旦 R2 报 `NP_E_REPROTECT`，只能再调一次 `--nlu-uninstall` 或重启进程。
   T6 侧同理（`g_prot_dirty` 只能靠再调一次 `tg_hook_uninstall()`）。
3. **RWX 窗口**：补丁写入到保护恢复之间页面可写（`mprotect(RWX)`）。窗口 ~ 微秒级，
   但别的线程此刻写这一页会破坏机器码。T6/T8 两条路径都有，未消除。
4. **基线只读一次**：页面权限基线缓存在库内（`g_entry_orig_prot` / `g_nlu_orig_prot`），
   外部若改过权限不会被发现；只有 `prot_state` 能看出"当前是否可写"。
5. **只读手段的边界**：NLU 安装态/开关态/统计**在原理上**无法只读获取，
   必须 attach（会短暂暂停线程并写 scratch）。阶段 B0 因此不是"零接触"。
6. **容量与降级**：`T8_TO_SLOTS=64`、TTL 30 s、降级窗口 5 s。真机并发实测为 1，
   但连续快速对话 + 慢 NLU 仍可能堆登记；`overflow_events > 0` 就必须停。
7. **T6 与 T8 的入口相邻风险**：两个 Hook 点在不同页（0x11353c / 0x118ebc），不共享补丁；
   但 T6 卸载会断 AI 事件来源，导致 NLU 接管"看不见会话"→ fail-closed 全丢，表现为"AI 不说话"。
   这是 R3 的副作用，回滚顺序必须是 R1 → R2 →（最后才）R3。
8. **`route_mask` 与配置耦合**：接管判定用 worker.conf 的本地意图位掩码。
   改配置会改变"哪些话该接管"，属于隐性风险，阶段 C 前后都不许改。
9. **未验证项**：本轮所有结论都是源码 + 只读观测；真机上 `mprotect(RWX)` 是否被允许、
   `dlopen` 后 `__clear_cache` 是否足够、注入器 `rc_call` 在 :core 上的稳定性，
   都要在阶段 B 才第一次被真机检验。

---

## 十、T8-06.2 P2 记录（非阻断）

**P2-1**：`build_nlu_stub_page()` 在 RX 与 RWX 都失败时，`munmap()` 的返回值被 `(void)` 丢弃
（`libtg_hook.c` 该函数的第 5 步）。若 `munmap` 失败，`g_nlu_page` 被置 NULL 但页仍映射，
下次 `prepare` 会重新 `mmap` 一页 —— 旧页泄漏一页 RW 内存（不改变正确性，失败已如实返回 `TG_E_PROT`）。
处置：登记，不修，不阻断真机准备。

**P2-2**（顺带记录，本轮不改）：`tg_nlu_prot_state()` / `tg_nlu_prot_restore()` 未接线到 Injector，
见 §B.3 —— 这是阶段 B/C 运维上的实际缺口，建议在真机阶段之后单独一轮补上"只读 prot 查询 + 恢复"两个子命令。

---

## 十一、本轮未执行的操作（明确声明）

- 未部署任何文件到设备（仅 `adb pull` 两个已有文件到主机做离线符号检查）。
- 未执行 `tg_injector` 的任何子命令（包括 `--check` / `--nlu-status`）。
- 未 attach / detach 目标进程，未写目标内存，未暂停任何线程。
- 未安装或卸载 Hook，未开启或关闭接管，未重启 `:core`，未改原厂配置。
- 未改 Bridge / Worker / TTS Guard / 路由配置，未修改任何 `.c/.h`。
- 未删除或覆盖任何既有真机证据；新增的只有本文件和一个只读基线记录。

阶段 B / C 的任何命令都**没有**在本轮跑过，文中"期望输出"均来自源码（`tg_injector.c` 的 `out()` 字面量），
不是实测结果。
