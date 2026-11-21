# T6-01 独立 Native Injector + Hook Agent（第一版）

**状态：ARM32 编译通过、主机兼容性单测通过、真机注入与真实 ASR 联调通过（44 项断言 0 失败）。**

不需要 Frida、不需要 Magisk 模块、不改 boot.img / system / vendor、不改原厂 APK 与 native 库、不改 AI Worker 与 UDS 协议。

| 项 | 结果 |
|---|---|
| ARM32 编译（Injector + Hook Agent） | 通过：0 warning / 0 error，ELF32/ARM |
| 主机单测（与 T5-05A 桥接端逐字节对拍） | 46 断言 / 0 失败 |
| 真机注入（B 组验收） | 通过：44 断言 / 0 失败（`evidence/t6_01_device_verify.log`） |
| 真机 ASR 联调（C 组验收） | 通过：真实唤醒 → 原厂 ASR → 原生 Hook → 现有 UDS → 桥接端 → AI Worker |
| 卸载回滚 | 通过：`--uninstall` 恢复原厂序言，原厂识别/播报继续正常 |

---

## 1. 先读取的现有实现（只读，不重新调查）

| 文件 | 用来确认的事实 |
|---|---|
| `my-doc/06_t5_bridge/frida/t505b_asr_bridge_sender.js` | 已验收的 Hook 点、UDS 协议、event_id 契约、ACK 语义、队列/退避行为 |
| `my-doc/06_t5/t5_04_asr_text_interception_report.md` | 目标进程、模块归属、H1 偏移、`isFinished` 语义、文本编码 |
| `my-doc/06_t5_bridge/android/tgb_proto.{h,c}` | 16 B 帧头、`TGB1` magic、FNV-1a32、511 字节文本上限 |
| `my-doc/06_t5_bridge/android/tgb_event.{h,c}`、`tgb_server.c` | body 字段与严格校验、ACK 的 `status` 取值 |
| `my-doc/07_ai_bridge/android/ai_worker.c`、`run_ai_worker.sh` | Worker 只消费 `events.jsonl`；`--events-file` 只收文件名 |
| `my-doc/07_ai_bridge/android/build.ps1` | NDK r21e、`armv7a-linux-androideabi26-clang`、`-O2 -Wall -Wextra` 基线 |

## 2. 从代码与设备确认的事实（无一条来自猜测）

| 事实 | 值 | 证据 |
|---|---|---|
| 目标进程 | `com.alibaba.ailabs.genie.smartapp:core`（uid 1000 system） | `ps -A`、`/proc/<pid>/cmdline` |
| 目标 ABI | ELF32 / EM_ARM（armeabi-v7a），SDK 27 | `/proc/<pid>/exe` ELF 头 |
| 目标模块 | `/system/app/smartapp/lib/arm/libsmartbox.so` | `/proc/<pid>/maps`，sha256 `f6e3c354…` |
| Hook 符号 | `_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh`，`st_value=0x11353c`，FUNC GLOBAL，716 B | `readelf -sW` |
| 调用约定 | **ARM 模式**（符号值偶数） | `llvm-objdump -d --start-address=0x11353c` |
| 序言 | `E92D4FF0 push {r4-r11,lr}` / `E28DB01C add r11,sp,#28` | 同上 |
| 参数 | r0=this, r1=sid(int), r2=text(UTF-8), r3=isFinished(=1 为最终结果) | 符号签名 `EiPKchhhh` + T5-04 实测 |
| UDS | `AF_UNIX` 抽象名 `tgz2_asr_bridge`，`SOCK_STREAM` | `tgb_server.c` |
| 帧/body/ACK | `TGB1` 头 + FNV-1a32；body 字段与 511 字节上限；ACK `stored/duplicate/rejected/error` | `tgb_proto.h`、`tgb_event.c`、`tgb_server.c` |
| libc 导出 | `mmap`（另有 `mmap64`）、`DT_HASH` + `DT_GNU_HASH` | `readelf -sW /system/lib/libc.so` |
| libdl 导出 | `dlopen/dlsym/dlerror`（`@@LIBC`） | `readelf -sW /system/lib/libdl.so` |

## 3. Injector 工作原理（`android/injector/`）

1. **找进程**：`--pid` 或 `/proc/<pid>/cmdline` 精确匹配；
2. **校验 ABI**：`/proc/<pid>/exe` 必须 `ELFCLASS32`+`EM_ARM`，否则拒绝；
3. **查重**：按"本次要加载的文件名"查 `/proc/<pid>/maps`；已映射则用 `RTLD_NOLOAD` 只取句柄查询状态，不重复加载；
4. **选线程**：遍历 `/proc/<pid>/task`，逐个 ATTACH→GETREGS→用 maps 判定 pc 所在映射：libc=3（最优），其它=1，**linker/libdl/libsmartbox/libtg_hook=0 直接跳过**；
5. **建远程环境**：远程 `mmap(64 KB)`：数据区（+0x100 路径、+0x180 符号名）、远程栈（顶 +0x8000）、沙袋（+0xF000 写 `UDF #0`）、返程垫片（libc 里的 `pop {pc}`，见 §7.2）；
6. **解析远端符号**：`/proc/<pid>/maps` 基址 + 磁盘 ELF 的 `PT_DYNAMIC`/`DT_HASH`/`DT_GNU_HASH` 查 `mmap/dlopen/dlsym/dlerror`；**绝不复用本进程地址**；
7. **远程调用**：`pc=fn`（bit0→CPSR.T）、`lr=沙袋`、`sp=远程栈`、r0–r3 + 栈参数（AAPCS，sp 8 字节对齐）；`PTRACE_CONT`+`waitpid`；命中沙袋的 SIGILL 后 `r0` 即返回值；无关信号原样转发；每次调用后 `SETREGS` 恢复；
8. **注入**：`dlopen(RTLD_NOW)` → `dlsym("tg_hook_install")` → 调用 → 读 `status/hooked/stats`；
9. **收尾**：所有错误路径与 SIGINT/TERM/HUP 都 `PTRACE_DETACH`；`--check` 只查状态，`--uninstall` 恢复原厂序言。

退出码即阶段：`0 ok / 10 usage / 11 find_pid / 12 abi / 13 attach / 14 prepare / 15 resolve_sym / 16 write / 17 dlopen / 18 dlsym / 19 install / 20 status`。

## 4. Hook Agent 工作原理（`android/hook_agent/`）

- **定位与校验**：`dl_iterate_phdr` 找 `libsmartbox.so` → 内存 dynsym 找 onStream → 偏移必须 `0x11353c`、前 8 字节必须 `E92D4FF0 E28DB01C`，任一不符即拒绝；
- **8 字节 ARM 补丁**：`ldr pc,[pc,#-4]` → stub（保存 r0-r3/lr → 调 C 回调 → 原样恢复 → 跳 trampoline）；trampoline 重放原厂两条指令后跳 `func+8`，原厂行为完全不变；
- **回调**只做：计数、判 `isFinished==1`、≤511 B 有界拷贝、UTF-8 校验、控制字符过滤、入 32 槽有界队列、唤醒发送线程；
- **发送线程**：抽象 UDS `tgz2_asr_bridge`，TGB1 帧，按 `stored/duplicate/rejected/error` 处理，失败退避重连最多 5 次；
- **幂等**：`g_patched/g_state` 保证重复 `install` 不二次打补丁；`uninstall` 后可以再次 `install`（发送线程复用）。

## 5. 编译结果（`build_t6.ps1`，证据 `evidence/t6_01_ndk_build.log`）

| 产物 | 大小 | sha256 | 类型 | NEEDED | 警告 |
|---|---|---|---|---|---|
| `out/tg_injector` | 62 736 B | `7b2ce4aa60a1f059c2361515cb30df42d4e118dadc5207347ff2d15664a81086` | ELF32/ARM/PIE | libdl, libc | 0 |
| `out/libtg_hook.so` | 23 028 B | `bb3af7ff2c8d6fceafade3ace866348d1542d7d25c8d2a373d5835904a062a45` | ELF32/ARM/DYN | liblog, libdl, libc | 0 |

设备上 `sha256sum` 与上表逐字节一致（`/data/local/tmp/t6/`）。

## 6. 主机测试（`tests/run_t6_host_tests.ps1`，证据 `evidence/t6_01_host_test.log`）

46 断言 / 0 失败：FNV-1a 与桥接端同值；帧字节与 `tgb_proto` 逐字节相同；Hook Agent 生成的 body 被桥接端严格解析器判为 `TGB_E_OK`（含引号/反斜杠转义、511/512 字节边界、控制字符拒收）；UTF-8 拒收超长编码/代理区/截断/超范围；ACK 头与 `ack/status/code` 字段解析；REQ 帧被 ACK 解码器拒绝。

## 7. 真机验证（`tests/t6_injector_device.ps1`，证据 `evidence/t6_01_device_verify.log`）

**44 断言 / 0 失败**（2026-11-21 14:18:36 起，单次完整跑完 P0–P7）。

| 阶段 | 结果 |
|---|---|
| P0 前置 | 设备在线、`su` = uid 0、model `AILABS_S1L`、SDK 27、core 与桥接端在跑；检测到旧映射后重启 app 换干净进程（9764 → **22718**） |
| P1 推送 | `tg_injector` 0755、`libtg_hook.so` 0644（目标 uid 1000 可读） |
| P2 注入 | `abi=ELF32/ARM`、`already_mapped=0`、attach tid=22718（pc 在 libc）、scratch=0xa1e6f000（stub=0xa88a8000）、`dlopen ok handle=0xac4277a3`、`tg_hook_install()=0`、`hook_status=0 hooked=1`、`RESULT ok`、正常 detach；设备无 frida 进程 |
| P3 完整性 | core pid 不变（22718）、`TracerPid: 0`、线程 80 → 81、maps 里 3 段 `libtg_hook.so`；logcat `tgl`：`hook installed: func=0x8d4d453c symbol_offset=0x11353c stub=0xa88a8000`、`sender thread up` |
| P4 重复注入 | 第二次运行 `already_mapped=1`，`dlopen flags=0x6`（RTLD_NOW\|RTLD_NOLOAD），状态仍 `hooked=1`，不重复安装 |
| P5 真实语音 | 唤醒+指令播放 → `events.jsonl` 205 → 206，新增 `{"event_id":"t6-22718-1966782-g1","text":"天猫精灵您现在几点了","text_bytes":30,"text_chars":10,"is_final":true}`；Hook 计数 `seen=7 final=1 queued=1 sent=1 acked=1` |
| P6 Worker 消费 | 用生产 state 的副本（offset 34119）继续消费到文件末尾 63260，`processed=95 duplicates=111`，说明现有 AI Worker 正常吃到了新事件 |
| P7 卸载 | `tg_hook_uninstall()=0`、`hooked=0`、进程存活；再次播放后事件数不变（Hook 已摘除），原厂 NLU/TTS 流程照常（logcat `GenieAssistantUIManager: onNotify … needTts=true`） |

补充复现（同一份产物、不同进程）：`t6-1131-1967361-g2`、`t6-29392-1967988-g1` 两条同样来自真实语音，文本分别为“天猫精灵您现在几点了”/“天猫精灵您现在几点了”，证明链路可重复。

### 7.1 真机发现并已修复的问题

| # | 现象 | 根因 | 修复 |
|---|---|---|---|
| 1 | `symbol mmap not found (… walk=8192 last='atexit')` | `DT_HASH` 查找把"链里的值"当成了"桶下标"，第二轮起绕圈 | 第一跳读桶、之后只走链（`remote_call.c`） |
| 2 | `dlopen failed: … is not accessible for the namespace "(anonymous)"` | bionic 用 `__builtin_return_address(0)` 判调用者命名空间，返回地址落在匿名映射 → 匿名命名空间拒绝 `/data/local/tmp` 绝对路径 | 新增 `rc_call_ns()`：返回地址改成 libc 里的 `pop {pc}` 垫片（默认命名空间、非 isolated），由它再跳到沙袋（`remote_call.c`） |
| 3 | 改名后的 `.so` 被判定"已注入" | 查重写死 `libtg_hook.so` | 改成按本次请求的 basename 查（`tg_injector.c`） |
| 4 | 卸载后再 `install` 什么都不做 | `uninstall` 没把状态退回未安装 | `uninstall` 重置 `g_state`，`install` 复用已有发送线程（`libtg_hook.c`） |
| 5 | 桥接端不在时事件被丢弃 | 发送端 5 次重连失败即丢（设计如此） | 记录 `dropped` 计数；桥接端恢复后新事件正常投递 |

### 7.2 已知限制（如实保留）

1. **补丁竞态窗口**：8 字节分两步写入（先字面量、后跳转指令），窗口纳秒级；若恰有线程停在这两条指令之间，该次调用可能异常（Frida inline hook 有同类窗口）。本次真机连续 5 次安装/卸载未触发；
2. **scratch 页不释放**：每次注入 mmap 64 KB，进程退出才回收；
3. **Hook 不跨进程重启**：原厂 app 重启后需重新运行 Injector（本任务不含 init.rc/Daemon，符合范围）；
4. **文本上限 511 字节**、控制字符丢弃（与桥接端规则一致）；
5. **至少一次投递**：ACK 丢失时会重发（`duplicate` 由桥接端去重）；
6. **注入会短暂停住一个线程**（毫秒级），本次未观察到原厂链路异常。

## 8. 设备可用性说明（与本次代码无关，但影响过程）

开发中途（12:38）设备 adb 的 `shell/sync` 服务开始整体失败，`forward` 等进程内服务正常；之后三次 `adb reboot` 均生效但复现，用自写的最小 ADB 客户端直连 adbd（绕过主机 adb server）复现同样结果（握手成功、`OPEN("shell:…")` 立即 `CLSE`）。13:53 设备恢复后继续；14:12 在 crash buffer 里看到 `adbd` 自身在 `minijail_enter` 崩溃的记录，与上述现象一致。详见 `evidence/t6_01_device_blocked.log`。

## 9. 新增文件

| 文件 | 说明 |
|---|---|
| `android/injector/tg_injector.c` | Injector 主程序（找进程/ABI/注入/查询/卸载/退出码） |
| `android/injector/remote_call.c` `remote_call.h` | ptrace 附加、线程选择、远程调用（含命名空间垫片）、远程 mmap、maps+dynsym 符号解析 |
| `android/injector/Makefile` | POSIX 主机交叉编译（等价于 `build_t6.ps1`） |
| `android/hook_agent/libtg_hook.c` | Hook Agent：模块/符号/序言校验、inline hook、回调、UDS 发送线程 |
| `android/hook_agent/tg_wire.c` `tg_wire.h` | 与 `tgb_proto`/`tgb_event` 字节一致的帧/转义/UTF-8 |
| `android/hook_agent/Makefile` | 同上 |
| `android/build_t6.ps1` | 实际构建脚本（0 warning 门禁 + readelf 校验） |
| `tests/t6_wire_unit_test.c`、`tests/run_t6_host_tests.ps1` | 主机兼容性单测（链接已验收的桥接端源码做对拍） |
| `tests/t6_injector_device.ps1` | 真机验收驱动 P0–P7（44 断言，自带 app 重启、唤醒重试、state 副本） |
| `evidence/t6_01_ndk_build.log` | 编译证据 |
| `evidence/t6_01_host_test.log` | 主机单测证据 |
| `evidence/t6_01_device_verify.log` | 真机验收证据（44 断言 0 失败） |
| `evidence/t6_01_device_blocked.log` | 设备 adb 失效期间的排障证据（旁路客户端原始结果） |

未改动：`ai_worker.c`、`tgb_*` 桥接端、`tts_exec`、原厂 APK/native、`system_debloat/`、`my-doc/05_t4/acceptance/*`。

## 10. 复现命令

```powershell
# 编译
powershell -ExecutionPolicy Bypass -File D:\tgz02\OS\system\my-doc\07_ai_bridge\android\build_t6.ps1
# 主机单测
powershell -ExecutionPolicy Bypass -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\run_t6_host_tests.ps1
# 真机验收（P0–P7，约 3 分钟，含两次语音播放）
powershell -ExecutionPolicy Bypass -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\t6_injector_device.ps1
# 单跑某一阶段（例如只看注入 + 完整性）
powershell -ExecutionPolicy Bypass -File ...\tests\t6_injector_device.ps1 -Only P2,P3
```
