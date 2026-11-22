# T8-08 NLU 接管完整回归与 ARM32 部署产物固化

执行时间：2026-11-22 19:44–19:47（主机侧），基线代码 `main` @ `cd450e14`。
本轮**未执行任何设备操作**：未部署、未运行 Injector、未 attach/detach `:core`、未安装/卸载 Hook、
未开关 takeover、未动 Supervisor、未重启/杀 `:core`。全部结论来自**本轮重新编译并运行**的主机测试与 NDK 交叉编译。

---

## 一、五问五答（结论先行）

| # | 问题 | 结论 |
|---|---|---|
| 1 | 当前 NLU Hook 是否通过完整回归？ | **是**。本轮重跑 8 个可运行套件，**1140 条行为断言全绿、0 失败**；另有 runner 级源码断言全通过。唯一例外是 `run_t8_01_host_tests.ps1` 引用的测试源文件已不在仓库（P2-1），其覆盖范围已由 T8-02 承接。 |
| 2 | ARM32 是否成功构建？ | **是**。NDK r21e，`armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra -std=gnu99`，**0 warning / 0 error**，两个产物均为 ELF32 / ARM v7 / EABI5 soft-float。 |
| 3 | 必需导出符号是否全部存在？ | **8/9 精确匹配**。`tg_nlu_installed` 这个**名字不存在**，实际导出名是 `tg_nlu_hook_installed`（注入器正是按这个真名解析，二者匹配）。库共导出 **16 个** `tg_nlu_*`；注入器期望的 **12 个全部存在、0 缺失**。 |
| 4 | 默认关闭与安装/接管分离是否得到测试证明？ | **是**。`t8_05_switch_test` 的 A1–A4 / B1–B4 / C3–C4 / D6–D8 / E1，`t8_06_switch_test` 的 [C]（关闭后立即 PASS）、`t8_04` 的一次性初始化与 fail-closed、`t8_05_patch_test` 的 A7/F7/G3（失败不得报已安装），均为实跑断言。 |
| 5 | 是否已经具备进入真机安装阶段的条件？ | **代码与产物层面具备**：回归全绿、ARM32 产物确定（两次独立构建 sha256 完全一致）、导出齐全、默认关闭有据。**但**真机安装仍受 T8-07.1 §四的部署约束：设备当前映射的是 `/t6/` 旧库，同名新路径无法在不重启 :core 的情况下加载（`RTLD_NOLOAD` + basename 判定），部署 + 重启必须单独立项审批。 |

**没有 P0 / P1 问题。** 本轮未修改任何 `.c/.h`，未新增边缘测试。

---

## 二、完整回归（本轮实跑，不是历史结果）

工作目录：`my-doc/07_ai_bridge/tests`；编译器：`C:\TDM-GCC-64\bin\gcc.exe`（`-O2 -Wall -Wextra -std=gnu99`）。

| # | 套件 | 执行命令 | 被测生产代码 | 断言 | 通过 | 失败 | 日志 |
|---|---|---|---|---|---|---|---|
| 1 | T8-01 | —（**未运行**，见 P2-1） | `nlu_takeover.c` 等 | — | — | — | 无新日志 |
| 2 | T8-02 会话登记/容量/并发 | `powershell -NoProfile -ExecutionPolicy Bypass -File .\run_t8_02_host_tests.ps1` | `nlu_takeover.c` `skill_dispatch.c` `intent_route.c` `echo_filter.c` | 211 | 211 | 0 | `evidence/t8_02_host_test.log` |
| 3 | T8-04 一次性初始化/fail-closed | `... -File .\run_t8_04_host_tests.ps1` | `libtg_hook.c`（boot gate）+ `nlu_takeover.c` | 421 | 421 | 0 | `evidence/t8_04_host_test.log` |
| 4 | T8-05 开关真值表 | `... -File .\run_t8_05_host_tests.ps1` | `nlu_switch.c` | 54 | 54 | 0 | `evidence/t8_05_host_test.log` |
| 5 | T8-05 补丁事务 | 同上 | `nlu_patch.c` | 109 | 109 | 0 | 同上 |
| 6 | T8-06 CAS 开关 | `... -File .\run_t8_06_host_tests.ps1` | `nlu_switch.c` | 39 | 39 | 0 | `evidence/t8_06_host_test.log` |
| 7 | T8-06 保护恢复 | 同上 | `nlu_patch.c` | 61 | 61 | 0 | 同上 |
| 8 | T8-06.1 页面权限查询 | `... -File .\run_t8_061_host_tests.ps1` | `page_prot` / `nlu_pp_unprotect` / `nlu_pp_reprotect`（逐字抽取） | 73 | 73 | 0 | `evidence/t8_061_host_test.log` |
| 9 | T8-06.2 T6 入口页 + NLU stub 页 | `... -File .\run_t8_062_host_tests.ps1` | 8 个 T6/NLU 函数（逐字抽取） | 126 | 126 | 0 | `evidence/t8_062_host_test.log` |
| 10 | T6 wire（T6 原有回归） | `... -File .\run_t6_host_tests.ps1` | `tg_wire.c` + `tgb_proto.c` | 46 | 46 | 0 | `evidence/t6_01_host_test.log` |
| | **合计（去重）** | | | **1140** | **1140** | **0** | |

去重说明：`run_t8_06`、`run_t8_061`、`run_t8_062` 会各自**重跑**更早的套件（06→05 两套、061→4 套、062→5 套）。
这些重复执行在日志里都能看到（例如 `t8_062_host_test.log` 里 73/39/61/54/109 各出现一次），
**未计入 1140**，只作为"跨套件无回归"的交叉证据。

各日志的编译结果均为 `(no compiler output: 0 warning, 0 error)`；`grep '^FAIL '` 在全部日志中为 0 行。

runner 级源码断言（不是行为测试的替代，只作补充）逐套件全 PASS，所在日志的 `PASS ` 行数：
`t8_04`=6、`t8_05`=32（其中 16 条 hook + 12 条 injector，其余为套件/构建汇总行）、`t8_06`=34、`t8_061`=10、`t8_062`=17（均含套件汇总行，故不并入 1140）。

### 2.1 关于 T8-01（P2-1，不阻塞）

`run_t8_01_host_tests.ps1:33` 仍把 `tests/t8_01_nlu_takeover_unit_test.c` 列进 `$Src`，该文件**已不在仓库**：

```
Test-Path my-doc/07_ai_bridge/tests/t8_01_nlu_takeover_unit_test.c  ->  False
git log --all -- '*t8_01_nlu_takeover_unit_test.c'
  b7d87b3d  T8-02 ...          <- 该提交里还有
  ddb81839  T8-01 ...          <- 首次引入
```

T8-02 把它换成了 `t8_02_nlu_takeover_unit_test.c`（211 断言，本轮已跑绿）。
为避免覆盖历史证据 `evidence/t8_01_host_test.log`（该 runner 在构建失败时会重写日志），本轮**没有运行它**，
而是在这里如实登记：这是**陈旧脚本**，不是功能缺陷。处置建议（本轮不改）：删除该 runner 或改指向 t8_02。

---

## 三、ARM32 正式构建（本轮实跑）

```powershell
cd my-doc\07_ai_bridge\android
powershell -NoProfile -ExecutionPolicy Bypass -File .\build_t6.ps1 -LogName t8_08_ndk_build.log
```

- 工具链：`D:\tgz02\OS\_analysis\tools\android-ndk-r21e\...\armv7a-linux-androideabi26-clang.cmd`
- 参数：`-O2 -Wall -Wextra -std=gnu99`（`tg_injector` 另加 `-fPIE -pie`，`libtg_hook.so` 另加 `-fPIC -shared`）
- **未**添加任何 `-Wno-*`，脚本对 `warning:` 行是硬失败
- 日志：`evidence/t8_08_ndk_build.log`
- 结果行：`# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)`

| 产物 | 路径 | 大小 | SHA256 |
|---|---|---|---|
| Injector | `android/out/tg_injector` | 80 780 B | `add2c25d6bdd47824c4a9276c1eb81cfd3c71c79cbd06c3adefdc8e0a3412f24` |
| Hook Agent | `android/out/libtg_hook.so` | 120 608 B | `5be226901fb11d3ab5ff81410f43d834b72b7f9243d1ded58550bb0ac8138f85` |

ELF 属性（`readelf -h` / `-A`，两个产物一致）：

```
Class:      ELF32
Type:       DYN (Shared object file)      # tg_injector 为 PIE，同样显示 DYN
Machine:    ARM
Flags:      0x5000200, Version5 EABI, soft-float ABI
Tag_CPU_name:  "ARM v7"
Tag_CPU_arch:  v7
Tag_CPU_arch_profile: Application
Tag_ABI_align_needed: 8-byte
```

`libtg_hook.so` 的 `DT_NEEDED`：`liblog.so` / `libdl.so` / `libc.so`（无 soname，符合 dlopen 用法）。

**可复现性**：与 T8-06.2 的构建（`evidence/t8_062_ndk_build.log`）**逐字节相同**（两个 sha256 完全一致），
说明源码、工具链与编译参数稳定。

---

## 四、导出符号核对（`readelf --dyn-syms`）

任务书要求的 9 个符号：

| # | 符号 | 结果 | 说明 |
|---|---|---|---|
| 1 | `tg_nlu_prepare` | ✔ 存在 | `0x3a9c`，516 B |
| 2 | `tg_nlu_install` | ✔ 存在 | `0x3cd0`，1992 B |
| 3 | `tg_nlu_uninstall` | ✔ 存在 | `0x44e4`，836 B |
| 4 | `tg_nlu_takeover_set` | ✔ 存在 | `0x4828`，1020 B |
| 5 | `tg_nlu_takeover_get` | ✔ 存在 | `0x4c24`，56 B |
| 6 | `tg_nlu_installed` | ✘ **名字不存在** | 实际导出名是 **`tg_nlu_hook_installed`**（`0x4cd4`，172 B）。注入器 `tg_injector.c:779` 解析的就是真名，因此**接口匹配、功能不缺**。这是命名差异，不是缺失（P2-2）。 |
| 7 | `tg_nlu_entry_code` | ✔ 存在 | `0x54dc`，104 B |
| 8 | `tg_nlu_stats` | ✔ 存在 | `0x5544`，1068 B |
| 9 | `tg_nlu_last_error` | ✔ 存在 | `0x4d80`，16 B |

库共 16 个 `tg_nlu_*` 导出，另外 7 个是：
`tg_nlu_is_enabled`（旧别名）、`tg_nlu_patch_lo/hi`（区间查询）、`tg_nlu_state_ready`（会话表就绪）、
`tg_nlu_prot_state` / `tg_nlu_prot_text` / `tg_nlu_prot_restore`（页面权限查询/文本/恢复）。

### 4.1 Injector 期望 vs 库导出（脚本比对）

从 `tg_injector.c` 的 `nsyms[]` 表（`tg_injector.c:771-784`）提取 12 个符号与 `.so` 动态符号表逐一比对：

```
injector expects: tg_nlu_entry_code, tg_nlu_hook_installed, tg_nlu_install, tg_nlu_last_error,
                  tg_nlu_patch_hi, tg_nlu_patch_lo, tg_nlu_prepare, tg_nlu_state_ready,
                  tg_nlu_stats, tg_nlu_takeover_get, tg_nlu_takeover_set, tg_nlu_uninstall
missing in .so : (none)
exported but unused by injector: tg_nlu_is_enabled, tg_nlu_prot_restore, tg_nlu_prot_state, tg_nlu_prot_text
```

命令行参数（`llvm-strings tg_injector | grep '^--nlu'`）：
`--nlu-install`、`--nlu-uninstall`、`--nlu-on`、`--nlu-off`、`--nlu-status` ——
与 `tg_injector.c:490-499` 的解析分支一一对应。

**结论：导出与调用侧完全对齐；唯一"缺失"是任务书里的缩写名 `tg_nlu_installed`（真名带 `hook_`）。**
按规则未改任何接口名。

---

## 五、默认关闭与安装/接管分离（逐条落到断言）

| 要求 | 证据（本轮实跑的断言标签） | 结果 |
|---|---|---|
| 新库初始化后默认 `takeover=0` | `t8_05_switch_test` **A1** `nls_installed==0`、**A2** `nls_takeover==0`、**A3/A4** `nls_mode==PASS`（ready=1 与 ready=0 都是 PASS）；库侧 `nlu_boot_ensure()` = `pthread_once(&g_nlu_once, nlu_boot_once)`，`t8_04` 证明它只跑一次 | 通过 |
| `tg_nlu_install()` 不隐式开接管 | `t8_05_switch_test` **C3** "installing does NOT enable takeover"、**C4** installed+off → PASS、**C5** 只记一次 install mark；`t8_05` 源码断言 "no TG_E_DISABLED gate left: install is independent of the switch"、"runtime switch is written through nls_set_takeover"；`libtg_hook.c:1166` 的日志字面量 `unchanged: installing never enables takeover` | 通过 |
| `tg_nlu_takeover_set(0)` 立即关闭 | **D6** `set_takeover(0)==NLS_OK`（任何时候都允许）、**D7** "the very next read is already 0 (immediate)"、**D8** 关闭后 mode 立刻 PASS；`t8_06_switch_test` **[C]** "disable -> callback decision is PASS again"（含并发写者） | 通过 |
| 接管关闭时原厂 NLU 放行 | `t8_05_switch_test` **A3/C4/D8** → `NLS_PASS`；`t8_05` 源码断言 "callback returns 0 (factory passthrough) whenever the switch is off"；`libtg_hook.c:831` 的 `if (mode == NLS_PASS) return 0;`（在计数之前返回）；`t8_02` **[D]** 端到端：`T8_TO_PASS` 时 `factory_skill_runs` 递增，`TAKE` 时跳过 | 通过 |
| 接管开启但会话表不可用 → fail-closed | **E1** `nls_mode(ready=0)==NLS_FAILCLOSED`、**E2** ready=1 才是 DECIDE；`t8_04` 的 `[C] init failure stays fail-closed (no retry, no silent pass)`（100×2 次调用全部 fail-closed）；`t8_06` 源码断言 "table-init failure returns TG_E_NOT_READY (not a normal enable)"；注入器侧 `tg_injector.c:439-442` 打印 WARN | 通过 |
| 安装失败不留下"错误的已安装"状态 | `t8_05_patch_test` **A7** "still reported as not installed"（未冻结拒绝后）、**F7** "reported as not installed"（部分写回+回滚成功）、**G3** "not reported as installed"（回滚失败）；`t8_06_reprotect_test` **B3/B4/B5**（入口是补丁 → 状态如实 PATCHED，但 `installs==0`、`install_fails==1`）、**H11** "still reported as installed (truthful)"（卸载中途失败）；`libtg_hook.c:1132` `g_nlu_patched = np_installed(&g_nlu_pp)` 镜像取实测值 | 通过 |
| 不允许因测试改默认设计 | 本轮零代码修改；`git status` 仅新增本报告 | 满足 |

补充（页面保护恢复的重试，与 T8-07.1 结论一致）：`t8_06_reprotect_test` **E10–E13**
（第二次卸载返回 `NP_E_NOT_PATCHED`，但 `prot_dirty` 被重试清除、`reprotect_ok==2`、入口未被触碰）
—— 说明**库内**会重试保护恢复；而**注入器**在 `installed==0` 时会提前返回、根本调用不到库
（T8-07.1 §8.2 已按代码写明）。两者不矛盾，属于不同层。

---

## 六、部署产物固化

| 项 | 值 |
|---|---|
| 产物路径 | `my-doc/07_ai_bridge/android/out/tg_injector`、`.../out/libtg_hook.so` |
| 大小 | 80 780 B / 120 608 B |
| SHA256 | `add2c25d…12f24` / `5be22690…38f85`（完整值见 §三） |
| ELF | ELF32 / ARM / EABI5 soft-float / ARM v7（armeabi-v7a） |
| ABI | `armv7a-linux-androideabi26`（API 26） |
| 导出核对 | 16 个 `tg_nlu_*`；注入器期望的 12 个全在 |
| 构建日志 | `evidence/t8_08_ndk_build.log` |
| 回归日志 | `evidence/t8_02|t8_04|t8_05|t8_06|t8_061|t8_062|t6_01_host_test.log` |

说明：`android/out/` 与 `tests/out/` 在 `.gitignore` 内（构建产物不入库，历史约定如此），
所以本轮提交的是**产物身份记录**（大小 + sha256 + ELF 属性 + 符号表结论）而不是二进制本身；
可复现性由"两次独立构建 sha256 完全一致"保证。

**未覆盖设备上的任何文件**：`/data/local/tmp/t6/libtg_hook.so`（27 384 B / `b838a731…`）与
`/data/local/tmp/t6/tg_injector`（71 884 B / `4d13af84…`）保持原样；T8 产物**未部署**。

---

## 七、问题清单

| 级别 | 编号 | 问题 | 处置 |
|---|---|---|---|
| P2 | P2-1 | `run_t8_01_host_tests.ps1` 编译的 `t8_01_nlu_takeover_unit_test.c` 已不在仓库（T8-02 时被替换），该 runner 无法运行 | 登记；覆盖已由 T8-02（211 断言）承接；建议后续删除或改指向，本轮不改 |
| P2 | P2-2 | 任务书列的 `tg_nlu_installed` 实际导出名为 `tg_nlu_hook_installed`；注入器按真名解析，功能不缺 | 登记，不改接口名（按"不要自行重新设计接口"的要求） |
| P2 | P2-3 | `tg_nlu_prot_state` / `tg_nlu_prot_text` / `tg_nlu_prot_restore` 仍未接线到 Injector（T8-07.1 §B.3 已登记） | 登记，不阻断 |
| P2 | P2-4 | `build_nlu_stub_page()` 在 RX/RWX 皆失败时忽略 `munmap()` 返回值（T8-06.2 已登记） | 登记，不阻断 |
| P2 | P2-5 | 4 个导出未被注入器使用（`tg_nlu_is_enabled` 旧别名 + 三个 prot 接口） | 说明性记录 |
| — | — | **无 P0 / P1** | — |

---

## 八、本轮未执行的操作（声明）

- 未部署任何文件到设备，未覆盖 `/data/local/tmp/t6/` 下的任何文件。
- 未执行 `tg_injector`（含 `--check` / `--nlu-*`），未 attach/detach `:core`。
- 未安装或卸载 Hook，未开启或关闭 takeover，未停 Supervisor，未重启或杀死 `:core`。
- 未修改任何 `.c/.h`、未改 Worker/Bridge/TTS Guard/路由/原厂配置、未改 T8-07 文档。
- 未新增边缘测试；未使用历史测试结果代替本轮执行（所有数字均来自 19:44–19:47 的新日志）。
