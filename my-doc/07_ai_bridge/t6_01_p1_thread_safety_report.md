# T6-01-P1 Native Hook 安装/卸载并发安全修复

**结论：安装与卸载都改为"先暂停目标进程全部其它线程 → 检查 PC 是否落在补丁窗口 → 写补丁 → 恢复"，真机 50 项断言 0 失败，20 轮安装/卸载（持续语音期间）全部通过。**

| 项 | 结果 |
|---|---|
| ARM32 编译 | 0 warning / 0 error（`tg_injector` + `libtg_hook.so`） |
| 真机安装/卸载并发保护 | 20 轮 × 2 次切换 = 40 次，每轮 PID/线程数/TracerPid/hooked 全部正常 |
| 暂停规模 | 单次暂停 77–99 个线程（264 次暂停操作，均值 87.9） |
| 故障路径 | `abort-after-pause` / `pause-fail:3` / `pc-busy:1` 三种注入全部按预期中止并恢复 |
| 补丁期间 ASR | 20 轮切换期间仍新增 4 条 `t6-` 事件（249 → 253 行） |
| 收尾 | 卸载后原厂 NLU/TTS 日志正常，不再产生 `t6-` 事件 |

---

## 1. 问题

T6-01 的安装只暂停了"用于远程调用的那一个线程"，其余线程仍在跑：

- 补丁写入是 `func+4`（字面量）与 `func+0`（`ldr pc,[pc,#-4]`）两次写；
- 任何线程只要在这期间取指到 `[func, func+8)`，就可能执行到"半条新指令 + 半条旧指令"；
- 卸载把两条原厂指令写回时同理。

## 2. 实现

### 2.1 暂停全部其它线程（`rc_pause_all`）

1. 枚举 `/proc/<pid>/task`；
2. 对执行线程以外的每个 TID 执行 `PTRACE_ATTACH` + `waitpid(__WALL)`，确认进入 stop；
3. **线程集合稳定化**：本轮没有新增线程后，再枚举一次任务目录，确认没有"未在集合里"的 TID；否则继续下一轮，最多 8 轮；
4. 任何一个线程 attach 失败 / 没有进入 stop → 立刻 `PTRACE_DETACH` 所有已暂停线程并返回 `RC_E_PAUSE`（绝不"停一半就装"）；
5. 线程恰好在枚举期间退出（`ESRCH`）→ 跳过，不算失败。

### 2.2 补丁窗口检查（`rc_pc_in_range`）

- Hook Agent 新增只读接口 `tg_hook_prepare()`（定位模块/符号/校验序言，不写指令）、`tg_hook_patch_lo()`、`tg_hook_patch_hi()`；
- Injector 先 `prepare` 拿到 `[func, func+8)`，再对**全部已暂停线程 + 执行线程**读 `ARM_pc`；
- 有线程落在区间内 → 返回该 TID，调用方恢复全部线程、等 20 ms 重试，最多 12 次；超限则中止（`RC_E_UNSAFE`，退出码 19）。

### 2.3 安装 / 卸载同一套保护

```
prepare → 取 range → pause_all → pc_in_range → （安全）写补丁 → 恢复线程 → 查状态
                                          ↘（不安全）恢复线程 → 20 ms → 重试
卸载：prepare → 取 range → pause_all → pc_in_range → tg_hook_uninstall() → 恢复线程
```

- 安装语义调整：`already_mapped` 只表示"库已加载"，是否安装以 `hooked` 状态为准，
  因此 `--uninstall` 之后同一个实例可以再次 `--install`（幂等，`hooked=1` 时跳过）；
- 卸载时若实例未 `prepare` 过，会先 `prepare` 再取区间，保证卸载也做 PC 检查。

### 2.4 清理

- 所有错误路径统一走 `detach:` 标签：先 `rc_resume_all()`，再 `rc_detach()`；
- `SIGINT/SIGTERM/SIGHUP` 处理器同样先恢复暂停集合再 detach；
- 执行线程在两次远程调用之间保持 ptrace-stop，最终一次 `PTRACE_DETACH` 恢复；
- 若注入器被 `SIGKILL`，由内核在 tracer 退出时自动 detach 被跟踪线程（未做专项测试，见 §5）。

### 2.5 故障注入（仅用于验证清理路径）

| 开关 | 作用 |
|---|---|
| `--fault abort-after-pause` | 全部线程暂停且检查通过后**故意不打补丁**，恢复线程并退出 21 |
| `--fault pause-fail:N` | 暂停到第 N 个线程时返回失败，验证"部分暂停 → 全部恢复" |
| `--fault pc-busy:N` | 前 N 次 PC 检查假装"有线程在窗口里"，验证恢复 → 重试路径 |

## 3. 代码改动

| 文件 | 改动 |
|---|---|
| `android/injector/remote_call.h` | 新增 `rc_thread_set`、`rc_pause_all`、`rc_resume_all`、`rc_pc_in_range`、`RC_E_PAUSE/RC_E_UNSAFE`、故障注入字段 |
| `android/injector/remote_call.c` | 线程枚举（含稳定化）、批量 attach/detach、PC 区间检查、故障注入点；`rc_attach` 保留调用方设置的故障开关 |
| `android/injector/tg_injector.c` | `pause_and_check()`（暂停+检查+重试）、安装/卸载共用；`--fault` 解析；信号与统一清理路径；按 `hooked` 决定是否安装 |
| `android/hook_agent/libtg_hook.c` | 拆出 `tg_hook_prepare()`、新增 `tg_hook_patch_lo/hi()`；`install` 复用已分配的 stub 页；卸载后状态复位可重装 |
| `android/t6_01_p1/run_inject.sh` | 设备端包装：把 injector 退出码回显成 `EXIT=<rc>`（Magisk `su -c` 对多命令字符串会降权，必须单命令调用） |
| `tests/t6_01_p1_threadsafety_device.ps1` | 真机验收 P0–P6（含 P3/P3b/P4 故障注入、20 轮并发） |

未改动：原厂 APK/native、AI Worker、T5-05A Bridge、UDS 协议、T5 已验收模块。

## 4. 真机结果（`evidence/t6_01_p1_threadsafety.log`，50 断言 0 失败）

### 4.1 单次安装

```
[inject] patch_range=[0x8d09853c,0x8d098544)
[inject] paused 86 other threads (exec tid=29006); [0x8d09853c,0x8d098544) is clear
[inject] tg_hook_install() = 0 (threads resumed)
[inject] hook_status=0 hooked=1
```

### 4.2 20 轮安装/卸载（持续语音期间）

| 轮 | uninstall | install | PID | TracerPid | 线程数 |
|---|---|---|---|---|---|
| 1–10 | 0 | 0 | 不变 | 0 | 83–90 |
| 11–20 | 0 | 0 | 不变 | 0 | 83–98 |

每轮两次暂停+检查（安装一次、卸载一次），共 264 次 `paused ... is clear`，单次暂停线程数 77–99。
期间 `events.jsonl` 249 → 253（新增 4 条真实 ASR final），说明补丁切换没有打断原厂识别链路。

### 4.3 故障注入

| 场景 | 结果 |
|---|---|
| `abort-after-pause` | 退出 21，`threads resumed, no patch written`，TracerPid=0，线程数不变，已有补丁不受影响，随后仍能产生 ASR 事件 |
| `pause-fail:3` | 退出 19，`stage=install_pause`，`injected pause failure after 3 thread(s)`，**已暂停的 3 个线程全部恢复**（TracerPid=0，线程数不变），未写补丁 |
| `pc-busy:1` | `attempt 1: tid=… sits inside [0x…,0x…)` → `resuming all, retrying` → 第二次 `is clear` → 安装成功 `hooked=1`，TracerPid=0 |

### 4.4 收尾

卸载后播放语音：事件数不变（不再产生 `t6-` 事件），原厂 `SessionManager/WakeupEngine/GenieAssistantUIManager` 日志 10 行，`GenieAssistantUIManager: onNotify ... needTts=true` 说明 NLU/TTS 正常；结束时 PID 不变、TracerPid=0。

## 5. 已验证 / 未验证

**已验证**

- 安装、卸载都在"全部其它线程已暂停"之后才写指令（日志逐次打印暂停数量）；
- 暂停集合稳定化（重复枚举直到没有新 TID）；
- PC 落在补丁窗口时的"恢复→重试"路径（用 `pc-busy` 注入触发）；
- 暂停中途失败、暂停后主动中止两条清理路径；
- 20 轮切换期间 PID/线程数/TracerPid/hooked 全部正常，ASR 未中断；
- 每轮结束后 `TracerPid=0`，没有遗留 ptrace-stop。

**未验证 / 限制**

1. **自然触发 0 次**：20 轮里没有一次真的抓到线程停在 `[func, func+8)`（8 字节窗口、每次只有微秒级机会），
   该分支靠 `pc-busy` 故障注入验证；真实命中概率与"重试 12 次是否足够"没有统计意义的数据；
2. **暂停窗口对音频链路的影响未量化**：只验证了"ASR 仍能出结果"，没有测丢帧/断音；
3. **SIGKILL 场景**：依赖内核在 tracer 退出时自动 detach 被跟踪线程，未做专项测试；
4. **线程数在 77–99 间波动**（原厂线程池自己创建/销毁），暂停集合以枚举那一刻为准；
5. 每次注入仍会 mmap 64 KB scratch（进程退出才回收），本次未改。

## 6. 复现

```powershell
# 编译（0 warning 门禁）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\android\build_t6.ps1
# 真机验收（P0–P6，约 6 分钟，含 20 轮并发与三处故障注入）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\t6_01_p1_threadsafety_device.ps1 -Rounds 20
```

## 7. 后续（R1）

审计发现的三处问题（PC 检查未 fail-closed、卸载后重装状态机、故障注入与证据可信度）已在 R1 修掉，
详见 [t6_01_p1_r1_report.md](t6_01_p1_r1_report.md)，真机证据见 evidence/t6_01_p1_r1.log（273 ASSERT OK / 0 ASSERT FAIL）。
