# REPORT T8-05 — NLU Hook 独立安装、运行时开关与安全补丁闭环

分支：`main`（直接提交，无分支/PR，未重写历史）
范围：只做代码 / 测试 / 安装方案 / 回滚方案；**未部署、未注入、未开启接管**。

## 一、六问直答

**1. Hook 是否能在接管关闭时独立安装？**
能。`tg_nlu_install()`/`tg_nlu_prepare()` 里的 `if (!nlu_want_enabled()) return TG_E_DISABLED;`
已删除，安装只看"入口序言是否原厂 + 是否声明了世界已冻结"。
`nls_state` 把 `installed` 与 `takeover` 拆成两个原子字段，`--nlu-install` 完成后
`installed=1 takeover=0`，回调 `nls_mode → NLS_PASS` 恒放行原厂 `onNlpResult`。
断言：`t8_05_switch_test` C1–C4。

**2. 是否能从 Injector 真正控制 `:core` 内的接管开关？**
能，且没有新造 IPC：复用 T6 的 ptrace 控制通道——
`attach → dlsym(handle,"tg_nlu_takeover_set") → rc_call` 在目标进程内执行，
直接改 `:core` 里的原子开关并读回。与环境变量无关，与 `pthread_once` 无关
（`pthread_once` 只负责"初始化一次"，开关是独立运行时变量）。
断言：`t8_05_switch_test` D 组；Injector 源码契约断言（五个子命令 + 读回核对）。

**3. 关闭接管是否立即恢复原厂 NLU 处理？**
立即。`tg_nlp_cb` 每次进入都 `__atomic_load_n` 实地读开关，不做缓存；
`--nlu-off` 返回后的下一次 NLU 回调即 `NLS_PASS → return 0`，原厂 CDM 完整执行。
断言：D6–D9（关闭后"下一次读就是 0"）。

**4. 入口补丁是否具备线程安全的安装和卸载机制？**
具备，且安全前提是**机器可检查的**：`world_frozen=0` 时 `np_install` 返回
`NP_E_UNFROZEN`，不写、不 mprotect、不 flush。Injector 必须先
`rc_pause_all()`（全线程 stop + 线程集合稳定）→ `rc_pc_in_range(lo,hi)`（无线程
取指在补丁 8 字节内）→ 才调用 `tg_nlu_install(1)` → 返回后 `rc_resume_all()`。
事务内还有：冻结后复验序言、写后读回、失败两字回滚并读回确认、卸载读回确认。
ARM32 指令级顺序已核对（`evidence/t8_05_disasm_check.txt` §13）。
残余风险如实记录：冻结完成到首条写入之间若新线程被创建并立刻调用该入口，
现有"线程集合稳定"判据覆盖不到（微秒级窗口，需 group-stop 才能彻底消除，本轮不做）。

**5. 是否有直接覆盖生产实现的测试？**
有。两个套件直接编译生产文件：`t8_05_switch_test` 驱动 `nlu_switch.c`（54 条），
`t8_05_patch_test` 驱动 `nlu_patch.c`（109 条），入口是普通内存里的 8 字节，
mprotect/icache 通过钩子注入，故障用"第 N 次写失败/全部写失败/重入/冻结失败"注入，
覆盖半截补丁回滚、回滚未确认、卸载未确认等真实失败路径。共 **163 条全过**。
不能上 host 的两处（`libtg_hook.c` 的接线、`tg_injector.c` 的控制流）用 28 条源码契约断言
锁定，并附 ARM32 反汇编核对。

**6. 是否已经具备默认关闭状态下的真机 Hook 安装验证条件？**
具备（但**尚未执行**，等批准）。步骤：正常注入 → `--nlu-status`（应 `installed=0 takeover=0`）
→ `--nlu-install`（应 `installed=1 takeover=0`，机器码 `e51ff004 + stub`）
→ 原厂行为观测 → `--nlu-uninstall`（机器码回 `e92d4ff0 e28db01c`）。
任一步不符即按 R1–R4 回滚，不需要重启 `:core`。

## 二、改了什么

| 文件 | 变更 |
|---|---|
| `android/nlu_switch.h/.c` | 新增：`installed`/`takeover` 两个正交原子状态 + 三态判定 `nls_mode`（含 fail-closed） |
| `android/nlu_patch.h/.c` | 新增：入口补丁事务（序言校验、冻结契约、写、读回、回滚确认、机器码记录） |
| `android/hook_agent/libtg_hook.c` | NLU 段重写：安装与开关解耦；`world_frozen` 参数；新导出 `tg_nlu_takeover_set/get`、`tg_nlu_hook_installed`、`tg_nlu_entry_code`、`tg_nlu_state_ready`、`tg_nlu_last_error`；`tg_nlu_stats` 分列安装/开关状态；boot 无条件 `t8_to_init`；env 只记录不生效 |
| `android/injector/tg_injector.c` | 新增 `--nlu-status/install/uninstall/on/off`，冻结→调用→恢复→读回，exit 22/23 |
| `android/nlu_takeover.c` | `enabled`/`init_error` 改为 `__atomic_*`（切换开关不再有非原子读写） |
| `android/hook_agent/Makefile`、`android/build_t6.ps1` | 加入 `nlu_switch.c`、`nlu_patch.c` |
| `tests/t8_05_switch_test.c`、`tests/t8_05_patch_test.c`、`tests/run_t8_05_host_tests.ps1` | 新增（只跑本轮） |
| `asr_independent/T8-05_INSTALL_SWITCH_AND_PATCH_SAFETY.md` | 设计与契约文档 |

## 三、证据

| 类别 | 文件 | 结论 |
|---|---|---|
| 主机测试 | `evidence/t8_05_host_test.log` | 54 + 109 = 163 断言，0 失败；28 条源码契约断言全过 |
| ARM32 编译 | `evidence/t8_05_ndk_build.log` | `tg_injector` 80 780 B、`libtg_hook.so` 111 368 B（`19d5cf69…`），0 warning / 0 error，ELF32/ARM 动态链接 |
| 反汇编核对 | `evidence/t8_05_disasm_check.txt` | 13 节：导出表、导入表、`tg_nlu_install` 取 `world_frozen`、`tg_nlu_takeover_set → nls_set_takeover + t8_to_enabled_set`、`np_install` 的 `ldrex/strex` 事务锁与 13 处间接钩子调用、`nls_mode` 三态、Injector 冻结→`args[0]=1`→`rc_call`→`rc_resume_all` |

证据分级遵守既有约定：主机测试 / ARM32 编译 / 反汇编核对，都不冒充"真机行为"。

## 四、设备状态（本轮未触碰）

`:core` pid 8342、`ai_worker` pid 3468、TTS Guard supervisor 4685 全部保持原样；
`/data/local/tmp/t6/` 下的库仍是 T6-02 版本（`tg_nlu_*` 新导出只在主机产物里）；
未向设备推送任何文件，未 `kill`、未重启、未改 `worker.conf`。

## 五、下一步（等批准）

1. **阶段 A**：推送新 `libtg_hook.so` + `tg_injector` → 正常注入 → `--nlu-status`
   确认 `installed=0 takeover=0` → 观测一次本地指令 + 一次 AI 对话，确认与原厂一致。
2. **阶段 B**：`--nlu-install` → 核对 `installed=1 takeover=0` 与入口机器码 →
   同样的两条语音，确认行为未变（仍走原厂 CDM）。
3. **阶段 C**（需**再次单独批准**）：`--nlu-on` → 本地指令接管、AI 会话放行；
   `--nlu-off` 立即恢复。

阶段 A 的每一步都有 `entry_code` 机器码与 `np{...}` 计数可对照，回滚不需要重启 `:core`。
