# T8-05 安装开关/接管开关拆分 + 运行时开关 + 入口热补丁线程安全

本轮只解决 T8-04 审查提出的三个 P1，不做新的静态调查，不部署、不注入、不开启接管。

| P1 | 问题 | 本轮结论 |
|---|---|---|
| 1 | `tg_nlu_install()` 依赖 `nlu_want_enabled()`，"接管关闭时装 Hook"做不到 | 拆成两个正交状态（`nls_state`），安装不再看开关 |
| 2 | 靠 supervisor 的 `getenv()` 控制 `:core` 内的行为，且不能即时生效 | 复用 Injector 已有控制通道（ptrace + 目标进程内 `dlsym` + `rc_call`），运行时原子改写 |
| 3 | 入口 8 字节直接两句赋值，无冻结/无回滚/无读回确认 | `nlu_patch.c` 事务：校验序言 → 声明式冻结 → 写 → 读回 → 失败回滚并读回确认 |

代码：`android/nlu_switch.h/.c`（新增）、`android/nlu_patch.h/.c`（新增）、
`android/hook_agent/libtg_hook.c`（改 NLU 段）、`android/injector/tg_injector.c`（加控制子命令）。
测试：`tests/t8_05_switch_test.c`、`tests/t8_05_patch_test.c`、`tests/run_t8_05_host_tests.ps1`。

---

## 1. P1-1：安装状态与接管开关正交

### 1.1 两个状态

```
nls_state (nlu_switch.c)
  installed : 入口补丁在不在        <- 只由 nlu_patch 事务的结果驱动
  takeover  : 回调要不要跳过原厂    <- 只由 Injector --nlu-on/--nlu-off 驱动
```

`tg_nlu_install()`/`tg_nlu_prepare()` 里的 `if (!nlu_want_enabled()) return TG_E_DISABLED;`
已经删除（`TG_E_DISABLED` 这个码不再产生）。四行真值表现在由 `nls_mode()` 一处判定：

| installed | takeover | ready | `nls_mode` | 行为 |
|---|---|---|---|---|
| 0 | 0 | * | `NLS_PASS` | 完全原厂（补丁不在，回调不会被调到） |
| 1 | 0 | * | `NLS_PASS` | 回调始终返回 0，原厂 `onNlpResult` 完整执行 |
| 1 | 1 | 1 | `NLS_DECIDE` | 按会话登记结果放行/拦截 |
| 1 | 1 | 0 | `NLS_FAILCLOSED` | 会话表不可用：不放行、不碰表（fail-closed） |

`ready` = `g_to.mutex_ready`，与 T8-03 的 fail-closed 规则一致，未做任何弱化。

### 1.2 不允许的组合

`nls_set_takeover(s, 1)` 在 `installed == 0` 时返回 `NLS_E_UNSAFE`，**开关保持 0**：
没有入口补丁就没有回调，此刻"开启成功"只能是假象。Injector 侧对应返回 `TG_E_NOT_INSTALLED`。

`nls_set_installed(s, 0)`（卸载成功）会**先**把 `takeover` 清零再清 `installed`，
所以任何时刻都不可能读到 `installed=0 && takeover=1` 这种自相矛盾的状态。

### 1.3 环境变量

`TG_NLU_TAKEOVER` 不再能开启接管：`nlu_boot_once()` 只在"入口补丁此刻已经在位"时接受它，
而真实启动路径（supervisor → injector → dlopen → 装补丁）永远不满足该条件，
于是它只被记成 `env_ignored=1` 供诊断。这同时满足"装 Hook 不隐式开接管"和
"不依赖修改 `:core` 进程环境"两条要求。

`nlu_boot_once()` 现在**无条件** `t8_to_init(&g_to)`（T8-04 只在 env=1 时初始化，
导致运行时开关根本没有可用的会话表）。`pthread_once` 仍是唯一闸门，T8-04 修的竞态不变。

### 1.4 T6 / Worker 不受影响

`tg_onstream_cb` 的文本转发路径一行未动；`nlu_note_final()` 只在 `mode != NLS_PASS` 时才登记，
关闭状态下连计数器都不加，等价于"这段代码不存在"。Worker 路由、本地/AI 分流、TTS Guard
（`TtsManager::playTts`）均未触碰。

---

## 2. P1-2：真正作用于 `:core` 的运行时开关

### 2.1 复用已有控制通道（不新造 IPC）

```
tg_injector (root)
  └── ptrace attach 到 :core 的一个线程        <- remote_call.c（T6-01 已有）
        ├── dlopen("libtg_hook.so", RTLD_NOLOAD) 取句柄
        ├── dlsym(handle, "tg_nlu_takeover_set")  <- 目标进程自己的链接器
        └── rc_call(目标内执行) → 直接改 :core 里的原子变量 → 读回
```

没有 socket、没有文件、没有环境变量、没有第二个 daemon。权限条件与现有注入完全一致：
root（或与目标同 uid）+ 允许 ptrace（本机 SELinux Permissive，已在 T6/T7 多轮验证）。

### 2.2 新子命令

| 命令 | 作用 | 失败语义 |
|---|---|---|
| `--nlu-status` | 打印 `installed/takeover/state_ready` + 四组机器码 + 全部计数 | 读失败 exit 19 |
| `--nlu-install` | 暂停全部线程 → 核对 PC 区间 → `tg_nlu_install(1)` → 恢复 → 读回 | 未确认 exit 22 |
| `--nlu-uninstall` | 同上，写回原厂两条指令 | 未确认 exit 22 |
| `--nlu-on` | `tg_nlu_takeover_set(1)` + 读回 | 未生效/被拒 exit 23 |
| `--nlu-off` | `tg_nlu_takeover_set(0)` + 读回 | 未生效 exit 23 |

`--nlu-*` 与 `--check`/`--uninstall` 互斥（写操作混用会互相掩盖，直接 usage 拒绝）。

### 2.3 "立即生效"与"明确确认"

- 关闭立即生效：`tg_nlp_cb` 每次进入都实地读 `nls_takeover()`（`__atomic_load_n`，acquire），
  不做任何缓存，所以 `--nlu-off` 返回之后的下一次 NLU 回调就是放行。
- 开启必须确认：`tg_nlu_takeover_set(1)` 写完立刻读回；读回不等于期望返回 `TG_E_PATCH`。
  Injector 再独立读一次 `tg_nlu_takeover_get()` 并核对，不一致就 exit 23。
- `state_ready=0` 时仍然允许"开"，但会打印
  `WARN nlu takeover=1 but state_ready=0: callbacks are fail-closed (drop)` ——
  这是诚实报告（开关确实开了，生效方式是 fail-closed），不是成功假象。

---

## 3. P1-3：入口热补丁的线程安全

### 3.1 冻结是调用方必须**显式声明**的前提

`tg_nlu_install(int world_frozen)` / `tg_nlu_uninstall(int world_frozen)`：
`world_frozen == 0` 时 `np_install` 直接返回 `NP_E_UNFROZEN`（库侧 `TG_E_UNSAFE = -11`），
**一个字节都不写**，连 `mprotect` 和指令缓存刷新都不会发生。
这样"安全前提"不依赖调用方记得、也不依赖注释。

### 3.2 Injector 侧的冻结序列（现有能力，未新造）

```
pause_and_check(lo, hi)
  = rc_pause_all()        # PTRACE_ATTACH 每个线程 + waitpid 确认 stop，枚举到线程集合稳定
  + rc_pc_in_range(lo,hi) # 任何线程 PC 落在补丁 8 字节内就全部放开、20 ms 后重试（最多 12 次）
  → 只有在"所有线程已停 + 区间为空"时才返回 RC_OK
```
然后才 `rc_call(tg_nlu_install, {1})`，调用返回后 `rc_resume_all()`。
ARM32 二进制里的顺序已经核对（见 `evidence/t8_05_disasm_check.txt` §13：
`str r1(=1)` 写 args[0] → `bl rc_call` → `bl rc_resume_all`）。

### 3.3 事务本体（`nlu_patch.c`）

```
a. 读入口 → 必须是原厂序言（否则 NP_E_ENTRY，不写）
b. freeze 钩子（生产为 NULL：冻结已由 Injector 完成）
c. 冻结后再读一次入口（暂停窗口里被人改过就不继续）
d. mprotect(page, RWX)
e. 写 entry+4（字面量）→ flush → 写 entry+0（跳转）→ flush
f. 读回 → 必须等于补丁机器码，否则 NP_E_VERIFY
g. 失败：两个字都写回原厂机器码 → 读回确认
     确认成功 → 返回原始错误码 + restores++（"已回滚"）
     确认失败 → NP_E_RESTORE（"入口可能残留半截补丁，需人工介入"），绝不返回成功
h. 恢复页保护 → thaw → 记录 code_before / code_after / code_now
```

卸载同构：期望值换成补丁码，写回原厂序言，读回确认 `NP_ST_IDLE`；
写失败会**重试一次**整对写回，仍不就绪则 `NP_E_RESTORE`。
`NP_E_NOT_PATCHED`（本来就没装）单独区分，不当作失败也不宣称"已恢复"。

### 3.4 为什么不能只靠写序

两个 32 位指令字无法原子写入，且 `ldr pc,[pc,#-4]` 与字面量必须成对生效：
先写字面量时入口是 `(push, stub地址)`，先写跳转时入口是 `(跳转, 原厂add)`，
两种半截状态都会让恰好取指到这里的线程执行到非法指令。
所以正确性只能由"全局冻结 + PC 区间核对"提供，写序只影响半截状态的形态。
残余风险（如实记录）：冻结完成到写第一条指令之间若**新创建**了一个线程并立刻调用该入口，
现有 `rc_pause_all()` 的"线程集合稳定"判据覆盖不到；这个窗口在微秒级，
彻底消除需要 group-stop（`SIGSTOP`）语义，属于后续轮次可选项，本轮不做。

---

## 4. 测试（只针对本轮改动）

`tests/run_t8_05_host_tests.ps1`：两个套件直接编译**生产源文件**，不是替身。

| 套件 | 驱动对象 | 断言 |
|---|---|---|
| `t8_05_switch_test` | `nlu_switch.c` | 54 |
| `t8_05_patch_test` | `nlu_patch.c`（入口是普通内存里的 8 字节，mprotect/icache 走钩子） | 109 |

覆盖对照：

| 任务书要求 | 对应断言 |
|---|---|
| 接管关闭时安装 Hook，原厂函数正常执行 | switch B1–B4、C1–C4（装 ≠ 开；`installed+off → PASS`） |
| 接管开启时本地放行、AI 会话拦截 | switch D1–D8 提供 `NLS_DECIDE`；会话级判定沿用 T8-02 已测的 `t8_to_should_drop` |
| 运行时关闭后恢复放行 | switch D6–D9（关闭后下一次读即为 0/PASS） |
| 多线程同时切换无数据竞争 | switch G1–G8：4 切 + 4 读 × 20 万轮，读到的 mode 只可能是 PASS/DECIDE，计数与操作数一致 |
| 安装失败时入口不残留半截补丁 | patch F1–F9（半截写 → 两字回滚 → 读回 IDLE）；G1–G7（回滚也失败 → `NP_E_RESTORE` + "UNCONFIRMED"） |
| 卸载后入口恢复原厂机器码 | patch C1–C9（含 `code_uninstall` 记录）；H9–H13（卸载写不进去时不谎报） |
| 控制接口失败不误报成功 | switch B1–B3（未装拒绝开）、patch H2–H13、runner 源码断言（读回核对、exit 22/23、`no byte written`） |

数据竞争说明：host 上无 TSan（TDM-GCC on Windows）。因此"无竞争"由两条独立证据支撑：
① 生产代码里共享字段只用 `__atomic_*`（`nlu_switch.c` 全文、`nlu_takeover.c` 的
`enabled/init_error` 已改原子）；② 8 线程 160 万次切换/读取的观测量全部合法。
这是可复现的观测证据，不等于形式化证明 —— 记录在此，不含糊。

源码契约断言（同 runner）：安装不再被开关门控、`np_install(&g_nlu_pp, world_frozen)`、
`nls_mode(&g_nlu_sw`、六个新导出、boot 无条件 `t8_to_init`、`pthread_once` 闸门保留、
Injector 五个子命令、`pause_and_check → args[0]=1 → rc_call → rc_resume_all` 的先后、
读回核对、`no byte written` 文案、exit 22/23。共 28 条，全过。

ARM32：`evidence/t8_05_ndk_build.log` —— `tg_injector` 80 780 B、
`libtg_hook.so` 111 368 B（sha256 `19d5cf69…`），**0 warning / 0 error**，
`ELF32/ARM`、动态链接；`pthread_once@plt`、`pthread_mutex_*`、`mprotect`、`mmap` 均正常导入。
反汇编核对：`evidence/t8_05_disasm_check.txt`（导出表、`np_install` 的 `ldrex/strex` 事务锁、
13 个间接钩子调用、`nls_mode` 三态、Injector 冻结→调用→恢复的指令级顺序）。

---

## 5. 对 T8-04 验证计划的修订

T8-04 文档 §5 的 B3 期望（"接管关闭时 `tg_nlu_install()` 返回 -10"）**作废**，
T8-05 起接管关闭时安装返回 0（这正是本轮的目的）。其余 B 阶段条目不变，只是命令改为新子命令：

| 阶段 | 旧做法 | 新做法（T8-05） |
|---|---|---|
| A 装库、保持原厂 | 正常注入（`TG_NLU_TAKEOVER` 不设） | 正常注入 → `--nlu-status` 确认 `installed=0 takeover=0` |
| B 装补丁、不开接管 | `tg_nlu_install()`（旧版会拒绝） | `--nlu-install` → 读回 `installed=1 takeover=0`，机器码 `e51ff004 + stub` |
| B7 复原 | `tg_nlu_uninstall()` | `--nlu-uninstall` → 机器码回 `e92d4ff0 e28db01c` |
| C 真接管（需单独批准） | 环境变量 | `--nlu-on`（读回 1 + `state_ready=1`） |

## 6. 回滚阶梯（不重启 `:core`）

| 级 | 动作 | 效果 |
|---|---|---|
| R1 | `--nlu-off` | 接管立即关闭，回调全部放行原厂；补丁仍在（可在 B 阶段反复用） |
| R2 | `--nlu-uninstall` | 入口机器码回原厂，补丁去掉，库仍加载 |
| R3 | `--uninstall`（T6） | `onStream` 补丁一并复原，事件桥接停 |
| R4 | 备份库 + `run_supervisor.sh` 重启 supervisor | 回到 T8-04 之前的状态（不重启 `:core`） |

`--nlu-*` 的每一步都会打印 `entry_code=np{...before/after/uninst/now...}`，
回滚是否真的生效由机器码说话，不由日志措辞说话。

## 7. 本轮边界（未做，且确认未做）

- 未向设备部署/注入任何东西；未开启真实接管；未改原厂配置；
- 未重启 `:core`/整机；未改 Worker/Bridge/TTS Guard/路由；未加第二个接管点；
- 未重复调查 ASR 与已有调用链（新证据只涉及本轮新增代码）。
