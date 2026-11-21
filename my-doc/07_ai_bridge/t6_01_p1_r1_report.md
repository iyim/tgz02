# T6-01-P1-R1 修复报告：PC 检查 fail-closed 与卸载后重装

- 对象：`android/injector/remote_call.c`、`remote_call.h`、`tg_injector.c`、`android/hook_agent/libtg_hook.c`
- 设备：CCH `AILABS_S1L`，Android 8.1（SDK 27），ARM32 `armeabi-v7a`，`192.168.1.9:5555`
- 目标进程：`com.alibaba.ailabs.genie.smartapp:core`（本轮 P0 重启后 pid 9176，全程未变）
- 真机证据：`evidence/t6_01_p1_r1.log`（**273 ASSERT OK / 0 ASSERT FAIL**，传输重试 0 次）
- 构建证据：`evidence/t6_01_ndk_build.log`（`# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)`）

本轮只做审计提出的三项修复 + 增量真机测试，没有重做 Injector，也没重跑 T2–T5，没有引入 init.rc、Magisk 模块或 Daemon。

## 1. PC 检查 fail-closed（`remote_call.c: rc_pc_in_range`）

原实现：

```c
if (ptrace(PTRACE_GETREGS, t, NULL, &regs) != 0) continue;   /* 刚退出 */
```

任何 errno（EPERM / EIO / EACCES / EFAULT…）都会被当成"线程已退出"跳过，等于在不知道线程停在哪里的情况下继续打补丁。

现实现（`fail-closed`）：

1. **执行线程单独处理**：它本来就被 attached，读不到寄存器说明本次注入已经不成立，**连 ESRCH 都不放过**，直接返回 `RC_E_REGS`；
2. **暂停集合逐条读**：只有 `errno == ESRCH`（线程在暂停窗口里被杀死/退出）允许 `continue`；
3. 其它任何错误 → 立即 `return RC_E_REGS`，错误串里带 **具体 TID + errno + errno 名字**，并写明 `refusing to patch`：
   `PC read failed tid=22165 errno=1 EPERM (injected); refusing to patch`；
4. 返回值语义不变：`1` = 有线程在窗口里（`*offender` 给出 TID）、`0` = 干净、`<0` = 读寄存器失败。

调用侧（`tg_injector.c: pause_and_check`）本来就把 `rc < 0` 当致命错误：**先 `rc_resume_all()` 恢复全部已暂停线程，再返回错误码**，安装/卸载分支据此中止，绝不写指令。

## 2. 卸载后重装（`libtg_hook.c`）

三处状态机修正：

| 问题 | 处理 |
|---|---|
| `tg_hook_uninstall()` 把 `g_state` 置成 `TG_E_NOT_INSTALLED`（-1），导致 Injector 的 `--check` 把一次**成功的卸载**读成"状态错误"（exit=20） | 卸载成功后 `g_state = TG_OK`；"是否已安装"只由 `g_patched` 表达，`g_state` 只表示"上一次操作的结果" |
| `g_func != 0` 时 `tg_hook_prepare()` 直接返回，重装不再复核入口 | 新增 `verify_entry_state()`：入口必须仍是 `E92D4FF0 E28DB01C`；若看到自己的跳转却 `g_patched == 0`（状态机被破坏）或入口被别的代码改过，返回 `TG_E_PROLOGUE`，**拒绝安装，绝不把跳转再写一遍** |
| 发送线程只置 `g_thread_started = 1`，退出时不清理：一旦线程退出，后续安装会"复用"死线程（事件再也发不出去） | `sender_main()` 退出前置 `g_thread_started = 0`；`tg_hook_install()` 复用前先 `g_stop = 0`，只有在标志为 1 时才复用，否则新建 |

另外新增计数 `g_sender_spawns`（stats 里 `spawns=`），把"发送线程只创建过一次"从"看 logcat 猜"变成可断言的状态：20 轮后仍是 `sender=1 spawns=1`。

`--check` 语义同时澄清：它只**报告**状态（`hooked=0` 也是合法结果，exit 0），"必须 hooked=1"的校验只保留在安装路径上。

## 3. 故障注入与证据可信度

- `abort-after-pause`、`pause-fail:N` 仍排在安装分支**之前**，不受 `hooked==1` 幂等跳过影响，因此不可能被正常安装逻辑绕过；
- 新增 `pc-readfail[:ERRNO]`（模拟暂停集合里某条线程读寄存器失败，默认 EPERM）与 `pc-readfail-exec`（模拟**执行线程**读失败），走的是真实安装分支，验证 fail-closed；
- `android/t6_01_p1/run_inject.sh` 用 `"$@"` 原样转发参数；测试在 P0 就断言 `check_only=1` 确实传到了 injector，P5d 用 `pc-readfail:5` 断言 `errno=5 EIO`，说明带冒号的参数也完整透传；
- **测试跑的必须是本次构建**：测试脚本部署时先 push 到 `/data/local/tmp`，再 `su cp` 进 `/data/local/tmp/t6`，然后回读 `sha256sum` 与本地 `out/` 比对并断言：

```
device tg_injector: 4d13af84d4c04898f7dd59668e5a38354c4a4b6a202a7b1477ef077323e9f677
device libtg_hook.so: b838a731392938b0038355c3ee42af7870e6db4d4b35ef0c78d2dc36c07e67b6
```

（`tg_injector` 71 884 B，`libtg_hook.so` 27 384 B；本地 `out/` 同名文件 sha256 完全一致。）

## 4. 真机结果（`evidence/t6_01_p1_r1.log`，273 / 0）

审计要求的增量项逐条对应：

| 要求 | 日志证据 |
|---|---|
| ARM32 编译通过、0 warning | `t6_01_ndk_build.log`: `0 warning, 0 error, ELF32/ARM` |
| 首次安装成功 | `paused 76 other threads (exec tid=9176); [0x8d59b53c,0x8d59b544) is clear` → `hook_status=0 hooked=1`，`stats=… sender=1 spawns=1`，`TracerPid: 0` |
| 补丁真的写进内存 | 直接读 `/proc/9176/mem`：入口 `e51ff004 a88a8000` = `ldr pc,[pc,#-4]` + stub 地址 |
| 卸载成功、原厂入口恢复 | `hooked=0 after uninstall`；入口读回 `e92d4ff0 e28db01c`（与原厂序言逐字节相同） |
| 发送线程不重复、不因卸载停摆 | `sender thread up/exit: 1 / 0`；P3 logcat 出现 `hook re-installed … (sender thread reused)`；20 轮后 `spawns=1` |
| 同进程重装成功 | P3：`hook_status=0 hooked=1`，入口再次 `e51ff004 …` |
| 连续 20 轮卸载/安装 | 20 轮逐项断言：两处退出码 0、`hooked` 0→1、入口字节 `e92d4ff0 e28db01c` ↔ `e51ff004 …`、`TracerPid: 0`、PID 不变；**没有出现 exit=20**；传输重试 0 次 |
| `abort-after-pause` 暂停后中止 | exit 21；`paused 74 other threads … is clear` → `stage=install_aborted … no patch written`；入口仍为原厂字节；`TracerPid: 0` |
| `pause-fail:3` 暂停中途失败 | exit 19；`injected pause failure after 3 thread(s) (tid=…)`；`stage=install_pause`；入口仍为原厂字节；`TracerPid: 0` |
| PC 读取失败必须拒绝打补丁 | exit 19；`stage=pc_check rc=-3 err=PC read failed tid=… errno=1 EPERM (injected); refusing to patch`；入口未变；`TracerPid: 0` |
| 同上（另一个 errno，排除"只针对 EPERM 特判"） | `pc-readfail:5` → `errno=5 EIO`，同样拒绝打补丁、线程全恢复 |
| 执行线程这条路径同样 fail-closed | `pc-readfail-exec` → `PC read failed tid=9176 (executor) errno=1 EPERM (injected)`，exit 19，入口未变，`TracerPid: 0` |
| 轮次之后 Hook 仍真的在工作 | P6 重装后播放语音：`events.jsonl` 256 → 257，新事件 `"event_id":"t6-…"`、`"event_type":"asr_final"`、`"is_final":true`，`acked=1` |
| 最终卸载后原厂链路正常 | P7：入口 `e92d4ff0 e28db01c`；播放后事件数 257 → 257（不再产生 `t6-` 事件）；原厂 `SessionManager/WakeupEngine/GenieAssistantUIManager` 日志 66 行；PID 不变、`TracerPid: 0`、发送线程仍存活 |

其它统计：47 次“暂停全部线程”的样本，单次暂停 74–81 条其它线程（合计 3 643 次 attach/resume）；基线线程数 77，故障场景后仍为 75。

## 5. 未验证 / 已知限制

1. **PC 读取失败是注入的，不是自然发生**：以 root 运行（`uid=0`）时几乎拿不到真实的 EPERM/EIO，所以 fail-closed 分支用 `pc-readfail`（paused 线程）与 `pc-readfail-exec`（执行线程）两条注入验证；**真实的 ESRCH（线程在暂停窗口内被杀）没有构造**，代码里它是唯一被放行的 errno，属于"按设计放行但未实测"。
2. **一次传输期抖动（如实记录）**：同一脚本更早的一次运行里，round 13 的卸载在 `stage=prepare` 失败过一次——`remote mmap returned 0xffffffff`，退出码 14，补丁未变、状态未变；该次日志已被本次全新日志覆盖，因此只作为观察记录，不作为证据。为此测试只对 14–17（都在任何补丁写入之前）重试一次并在日志里显式记数；最终这次运行**重试 0 次**。
3. **自然命中补丁窗口 0 次**：8 字节窗口、微秒级机会，20 轮里没有一次线程真的停在 `[func, func+8)`；"恢复→重试"仍靠 `pc-busy` 注入验证（本轮未重复该项，见 P1 报告）。
4. **SIGKILL**：注入器被强杀时依赖内核自动 detach，未做专项测试。
5. **scratch 页仍不回收**：每次注入在目标进程 mmap 64 KB，进程退出才释放；本轮未改（避免在审计范围外动注入器内存布局）。
6. 线程数在 74–81 间波动（原厂线程池自身创建/销毁），暂停集合以枚举那一刻为准。

## 6. 复现

```powershell
# 编译（0 warning 门禁）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\android\build_t6.ps1
# 真机增量验收（P0–P7，约 4 分钟：部署+哈希核对、首次安装、卸载、重装、
# 20 轮切换、四种故障注入、真实语音往返、最终卸载）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\t6_01_p1_r1_device.ps1 -Rounds 20
```

脚本每次运行都会**重写**日志文件（`Set-Content` 清空后追加），因此 `t6_01_p1_r1.log` 里只有一次运行、一个 `################` 头、一个 `SUMMARY` 行，`ASSERT OK / ASSERT FAIL` 计数与 `SUMMARY` 严格一致。
