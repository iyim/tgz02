# T6-01 独立 Native Injector + Hook Agent（第一版）

**状态：代码与主机测试完成；真机注入与真机 ASR 联调未执行（设备在开发期间失去可用 ADB shell），不宣称完成。**

| 项 | 结果 |
|---|---|
| ARM32 编译（Injector + Hook Agent） | **通过**：0 warning / 0 error，ELF32/ARM，动态链接 |
| 主机单测（wire 兼容性，与已验收桥接端字节对拍） | **通过**：46 断言 0 失败 |
| 真机注入（B 组验收） | **未执行**（设备侧 adbd 无法派生子进程，见 §6） |
| 真机 ASR 联调（C 组验收） | **未执行**（同上） |
| 依赖 Frida / Magisk 模块 / 改分区 | **没有**：纯 C、只用 ptrace + 目标进程自己的 `dlopen` |

---

## 1. 先读取的现有实现（只读，不重新调查）

| 文件 | 用来确认的事实 |
|---|---|
| `my-doc/06_t5_bridge/frida/t505b_asr_bridge_sender.js` | 已验收的 Hook 点、UDS 协议、event_id 契约、ACK 语义、队列/退避行为 |
| `my-doc/06_t5/t5_04_asr_text_interception_report.md` | 目标进程、模块归属、H1 偏移、`isFinished` 语义、文本编码 |
| `my-doc/06_t5_bridge/android/tgb_proto.{h,c}` | 16 B 帧头、`TGB1` magic、FNV-1a32、511 字节文本上限 |
| `my-doc/06_t5_bridge/android/tgb_event.{h,c}`、`tgb_server.c` | body 字段与严格校验、ACK 的 `status` 取值（stored/duplicate/rejected/error） |
| `my-doc/07_ai_bridge/android/ai_worker.c`、`run_ai_worker.sh` | Worker 只消费 `events.jsonl`，协议不改；CLI 参数 |
| `my-doc/07_ai_bridge/android/build.ps1`、`build_tts_exec.ps1` | NDK r21e 路径、`armv7a-linux-androideabi26-clang`、`-O2 -Wall -Wextra` 基线 |

## 2. 从代码与设备确认的事实（无一条来自猜测）

| 事实 | 值 | 证据 |
|---|---|---|
| 目标进程 | `com.alibaba.ailabs.genie.smartapp:core` | `ps -A -o PID,NAME`，`/proc/<pid>/cmdline` 精确匹配 |
| 目标 ABI | ELF32 / EM_ARM（armeabi-v7a），uid 1000 (`system`)，SDK 27 | `/proc/<pid>/exe` ELF 头、`/proc/<pid>/status` |
| 目标模块 | `/system/app/smartapp/lib/arm/libsmartbox.so` | `/proc/<pid>/maps`；文件 sha256 `f6e3c3543ff6da5b59bf60b884b6ce4332897c75aa6b89b8dccc0c266df80940`（与 T5-04 记录一致） |
| Hook 符号 | `_ZN9AliAiLabs4AGUI14SessionManager8onStreamEiPKchhhh`，`st_value = 0x11353c`，`FUNC GLOBAL`，size 716 | `arm-linux-androideabi-readelf -sW libsmartbox.so` |
| 调用约定 | **ARM 模式**（符号值为偶数，反汇编非 Thumb） | `llvm-objdump -d --start-address=0x11353c` |
| 序言 | `0x11353c: E92D4FF0 push {r4-r11,lr}` / `0x113540: E28DB01C add r11,sp,#28` | 同上；两条都与 PC 无关，可原样搬迁 |
| 参数 | r0=this, r1=sid(int), r2=text(char const* UTF-8), r3=isFinished(u_char) | 符号签名 `EiPKchhhh` + T5-04 实测（0=partial, 1=final） |
| 运行期地址 | `base + 0x11353c`（本次实测 base = `0x94c00000` → `0x94d1353c`） | maps 里 `94c00000-94d13000 r-xp` 段；`0x113000` 段实测 `rwxp` |
| UDS | `AF_UNIX` 抽象名 `tgz2_asr_bridge`，`SOCK_STREAM` | `tgb_server.c`（`--sock` 默认值） |
| 帧 | 16 B 头：magic `TGB1`、ver=1、type=1(REQ)/2(ACK)、hdr_len=16、body_len、FNV-1a32(body) | `tgb_proto.h` |
| body | `{"version":1,"event_id","event_type":"asr_final","pid","session_id","text","is_final":true,"received_at_ms"}`；text ≤ 511 UTF-8 字节；控制字符拒收 | `tgb_event.c` 校验 + `t5_06b`/`t5_05b` 证据 |
| ACK | `{"version":1,"ack":"<id>","status":"stored|duplicate|rejected|error","code":...}` | `tgb_server.c`（`ack_body`） |
| 目标线程数 | 84（注入前实测） | `/proc/<pid>/task` |

## 3. Injector 实际工作原理（`android/injector/`）

### 3.1 流程

1. **找进程**：`--pid N` 手动指定，或按 `/proc/<pid>/cmdline` 精确匹配（默认 `...smartapp:core`）；
2. **校验 ABI**：读 `/proc/<pid>/exe` 的 ELF 头，必须是 `ELFCLASS32` + `EM_ARM`，否则拒绝注入（退出码 12）；
3. **查重**：`/proc/<pid>/maps` 里已有 `libtg_hook.so` → 只查询状态，不再 dlopen（`RTLD_NOLOAD`），避免重复注入；
4. **选线程**：遍历 `/proc/<pid>/task`，逐个 `PTRACE_ATTACH` → `GETREGS` → 用 `/proc/<pid>/maps` 判断 pc 落在哪个映射，按评分挑：
   `libc.so` = 3（最优：正常系统调用/锁等待），其他用户态映射 = 1，
   **`linker` / `libdl.so` / `libsmartbox.so` / `libtg_hook.so` 一律 0 = 跳过**
   （不劫持正在跑被 Hook 代码的线程，也不劫持持有链接器锁的线程）；
5. **建远程环境**：远程调 `mmap(NULL, 64 KB, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0)`，
   把这块页当作：数据区（+0x100 放 .so 路径、+0x180 放符号名）、远程栈（顶 `+0x8000`，对齐 8）、
   沙袋（`+0xF000` 写一条 `UDF #0` = `0xE7F000F0`）；
6. **解析远端符号**：以 `/proc/<pid>/maps` 的模块基址 + 磁盘 ELF 的 `PT_DYNAMIC`/`DT_HASH`/`DT_GNU_HASH` 查找
   `mmap`、`dlopen`、`dlsym`、`dlerror`（先 `libdl.so` 再 `libc.so`）。**不使用本进程 dlopen 得到的地址**；
7. **远程调用**：`pc = fn`（bit0 置位则同时置 CPSR.T）、`lr = 沙袋`、`sp = 远程栈`、r0–r3 传参、
   第 5/6 个参数按 AAPCS 写栈，`PTRACE_CONT` 后 `waitpid`；收到 `SIGILL/SIGSEGV/SIGTRAP` 且 pc 落在沙袋内 → `r0` 即返回值；
   期间到达的无关信号**原样转发**，不吞不改；
8. **注入**：`dlopen(path, RTLD_NOW)` → `dlsym("tg_hook_install")` → 调用 → `tg_hook_status()` / `tg_hook_hooked()` / `tg_hook_stats()`；
9. **收尾**：每次调用后 `SETREGS` 恢复原始寄存器；`PTRACE_DETACH` 让线程继续；所有错误路径与 `SIGINT/SIGTERM/SIGHUP` 都会 detach。

### 3.2 错误阶段与退出码（脚本可直接判定）

| 退出码 | 阶段 |
|---|---|
| 0 | ok |
| 10 | usage |
| 11 | find_pid / .so 不存在 |
| 12 | abi（目标不是 armeabi-v7a） |
| 13 | attach |
| 14 | prepare（远程 mmap / scratch 自检） |
| 15 | resolve_sym（mmap/dlopen/dlsym） |
| 16 | write（路径写入/回读校验） |
| 17 | dlopen（含 `dlerror` 文本） |
| 18 | dlsym（Hook Agent 导出函数） |
| 19 | install（`tg_hook_install` 返回值 + `tg_hook_last_error`） |
| 20 | status / verify（`hooked != 1`） |

额外支持 `--check`（只查询）、`--uninstall`（调用 `tg_hook_uninstall()` 把原厂两条指令写回）。

## 4. Hook Agent 实际工作原理（`android/hook_agent/`）

### 4.1 定位与校验

- `dl_iterate_phdr` 找 basename 为 `libsmartbox.so` 的模块 → `dlpi_addr`；
- 在**内存镜像**里解析 `PT_DYNAMIC` → `DT_SYMTAB/DT_STRTAB/DT_HASH|DT_GNU_HASH` → 找 onStream；
- 双重校验：符号偏移必须 **等于 `0x11353c`**，函数前 8 字节必须是 `E92D4FF0 E28DB01C`；
  任一不符 → `tg_hook_status()` 返回 `-4`/`-5`，**拒绝 Hook**（不猜地址、不降级）。

### 4.2 补丁布局（ARM，8 字节）

```
func+0 : E51FF004   ldr pc, [pc, #-4]     ; 读 func+4 里的地址
func+4 : <stub>                           ; 我们分配的页
stub(+0x00) E92D401F push {r0-r3,r4,lr}
stub(+0x04) E59F4008 ldr  r4, [pc,#8]     ; r4 = +0x14 = 回调地址
stub(+0x08) E12FFF34 blx  r4              ; 调 C 回调（r0-r3 就是原厂参数）
stub(+0x0C) E8BD401F pop  {r0-r3,r4,lr}   ; 原样恢复
stub(+0x10) E59FF000 ldr  pc, [pc,#0]     ; 跳 +0x18
stub(+0x14) <tg_onstream_cb>
stub(+0x18) <trampoline>
tramp(+0x00) E92D4FF0 push {r4-r11,lr}    ; 原厂第 1 条
tramp(+0x04) E28DB01C add  r11,sp,#28     ; 原厂第 2 条
tramp(+0x08) E51FF004 ldr  pc,[pc,#-4]    ; 跳 func+8
tramp(+0x0C) <func+8>
```

因此原厂函数的栈帧、返回值、后续执行完全不变；`r0-r3/lr` 在回调前后逐字恢复。

### 4.3 回调里只做这些

`计数 → 判 isFinished==1 → 有界读取（≤512 B）→ UTF-8 校验 → 控制字符过滤 → 填入有界队列 → 唤醒发送线程`。
**没有 socket / send / 文件 / sleep / 日志**（日志只在安装阶段和发送线程里写，tag `tgl`，只写 event_id 与计数，不写识别文本）。

### 4.4 发送线程

- 抽象命名空间 UDS 连接 `tgz2_asr_bridge`（非阻塞 connect + poll 超时）；
- 帧 = T6 自己的 `tg_wire.c`（与 `tgb_proto.c` 逐字节一致，见 §5）；
- ACK 语义：`stored` / `duplicate` → 结束；`rejected` → 记一次即丢弃（重发同样会被拒）；`error`/超时/断链 → 退避重连，最多 5 次；
- 队列满时丢最老的并计数（与 T5-05B 行为一致）。
- 幂等：`g_patched`/`g_state` 保证重复调用 `tg_hook_install()` 不会二次打补丁。

### 4.5 导出接口

| 符号 | 作用 |
|---|---|
| `tg_hook_install()` | 安装 Hook + 启动发送线程，返回 0 或负错误码 |
| `tg_hook_uninstall()` | 写回原厂序言（`hooked=0`） |
| `tg_hook_status()` / `tg_hook_is_initialized()` / `tg_hook_hooked()` | 状态查询 |
| `tg_hook_last_error()` / `tg_hook_stats()` | 错误文本 / 计数字符串（Injector 通过 ptrace 读回） |

## 5. 编译结果（主机，`build_t6.ps1`，证据 `evidence/t6_01_ndk_build.log`）

| 产物 | 大小 | sha256 | ELF | NEEDED | 警告 |
|---|---|---|---|---|---|
| `android/out/tg_injector` | 62 620 B | `699f49531ea6e51639041246a0eadece4beccd9ed1b208bf9c9eef874a32d6b8` | ELF32 / ARM / DYN(PIE) | `libdl.so`, `libc.so` | 0 |
| `android/out/libtg_hook.so` | 23 028 B | `a513dd215af6c882fd9d5d0bd8a2bdf866a4ab6ece85174843c490f2c43a3cce` | ELF32 / ARM / DYN | `liblog.so`, `libdl.so`, `libc.so` | 0 |

构建命令：`powershell -File android\build_t6.ps1`（NDK r21e，`armv7a-linux-androideabi26-clang`，`-O2 -Wall -Wextra`，脚本内 0 warning 门禁）。
`Makefile` 为 POSIX 主机等价物（本机无 GNU make 的 NDK 包装，实际使用 `build_t6.ps1`）。

## 6. 真机验证：**未执行**（设备不可用）

### 6.1 时间线（全部为本机实测）

| 时间 | 事件 |
|---|---|
| 12:33–12:38 | 设备正常：`su`、`ps`、`/proc/<pid>/maps`、`adb pull libsmartbox.so`(2 047 772 B) 全部成功 |
| 12:38 起 | `adb shell` → `error: closed`；`adb pull` → `protocol fault: failed to read stat response` |
| 12:41–12:45 | `adb kill-server/start-server`、重新 `connect`、`adb root`、`adb tcpip 5556` 全部无效 |
| 12:52 | `adb forward tcp:19999 tcp:5555` **成功**（说明 adbd 进程内服务正常、fork 类服务失败） |
| 12:53 / 13:03 / 13:12 | 三次 `adb reboot` 均被接受；5555 端口关闭 23 s 后重开（确有重启） |
| 13:05–13:12 | 重启后仍然：`shell:`/`exec:`/`shell,v2,raw:`/`abb:` 立即 CLSE；`sync:` 收到 OKAY 后首个请求即 CLSE |
| 13:12:38 | 旁路主机 adb server、直连 adbd 的原始客户端：握手成功（banner `full_ailabs_s1l` / `features=stat_v2,cmd,shell_v2`），`OPEN("shell:...")` 立即 `CLSE` → **故障在设备侧** |

证据文件：[t6_01_device_blocked.log](evidence/t6_01_device_blocked.log)

### 6.2 已排除的原因

- **不是主机 adb server**：kill-server/start-server、独立 server、全新 connect 均无效；自写原始客户端直连 adbd 同样失败；
- **不是权限/鉴权**：`adb devices -l` 正常显示 `device`，banner 正常，`forward` 等进程内服务可用；
- **不是 USB 通道问题**：`adb devices` 只有 TCP 记录（与 rev5.6 记录一致）；
- **不是一次偶发**：跨三次重启仍然复现，且**首次失败发生在任何注入类写入之前**（此前只向 `/data/local/tmp` 推送了一个只读 recon 脚本、读取了 `/proc` 与 `/system/app/smartapp/lib/arm/libsmartbox.so`，没有执行注入、禁用、清数据或刷写）。

### 6.3 由此明确未验证的项（逐条）

1. Injector 真机附加（`PTRACE_ATTACH` 在 Android 8.1 + Magisk root 下是否被拒绝）；
2. 远程 `mmap`/`dlopen`/`dlsym` 真机返回与错误码；
3. `libtg_hook.so` 能否被目标进程 `dlopen`（Android 8 命名空间/绝对路径限制）；
4. 8 字节补丁在原厂进程里是否成功、序言校验是否命中；
5. 原厂进程注入后是否崩溃/被永久暂停（`TracerPid`、线程数、唤醒/识别/TTS 是否正常）；
6. Hook Agent 是否真的捕获到 `isFinished=1` 文本；
7. UDS 帧是否被桥接端接受（ACK=stored）、`event_id` 是否带 `t6-` 前缀；
8. AI Worker 是否消费到该事件；
9. `--uninstall` 是否能让原厂序言恢复且链路继续正常。

**本次不宣称 T6-01 的 B/C 验收通过。**

## 7. 设备恢复后如何继续（一条命令）

```powershell
# 1) 编译（若尚未编译）
powershell -ExecutionPolicy Bypass -File D:\tgz02\OS\system\my-doc\07_ai_bridge\android\build_t6.ps1
# 2) 真机验收（P0 前置 → P1 推送 → P2 注入 → P3 完整性 → P4 幂等 →
#            P5 真实语音 → P6 Worker 消费 → P7 卸载）
powershell -ExecutionPolicy Bypass -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\t6_injector_device.ps1
```

驱动脚本的行内断言即为验收标准（例如 `RESULT ok`、`hook_status=0 hooked=1`、`TracerPid: 0`、
`event_id":"t6-`、`processed=1`、`hooked=0 after uninstall`）。脚本只读 `events.jsonl`，
Worker 消费使用**生产 state 的副本**，不动生产状态。

## 8. 代码层面已知限制（未经真机验证，如实列出）

1. **补丁竞态窗口**：写 8 字节分两步（先字面量、后跳转指令），窗口在纳秒级；若恰有线程停在这两条指令之间，该次调用可能异常（Frida 的 inline hook 有同类窗口）。真机需配合 ASR 复测确认；
2. **`dlopen` 命名空间**：远程调用的 `lr` 落在匿名映射，bionic 会按"默认命名空间"处理；若目标 App 的 isolated namespace 拒绝绝对路径，需要改用链接器内部入口（未验证，脚本会把 `dlerror` 原文打印出来）；
3. **scratch 页不释放**：每次注入 mmap 64 KB，detach 后留在目标进程（进程退出才回收）；如需干净可再加远程 `munmap`；
4. **文本上限 511 字节**：超长文本直接丢弃并计数（与桥接端一一对应）；控制字符同样丢弃（桥接端会拒收，避免反复建连）；
5. **多阶段/失败语义沿用 T5-05B**：至少一次投递，允许重复播报；`failed/` 目录无自动清理；
6. **ptrace 代价**：注入期间借用的线程处于 ptrace-stop（毫秒级），期间它的系统调用会被打断；已通过"只选 libc 里的线程"降低风险，但未在真机上量测对原厂链路的影响。

## 9. 新增文件

| 文件 | 说明 |
|---|---|
| `android/injector/tg_injector.c` | Injector 主程序（找进程/ABI/注入/查询/卸载/退出码） |
| `android/injector/remote_call.c` | ptrace 附加、远程调用、远程 mmap、maps+dynsym 符号解析、线程选择 |
| `android/injector/remote_call.h` | 上述接口与错误码 |
| `android/injector/Makefile` | POSIX 主机交叉编译（等价于 `build_t6.ps1`） |
| `android/hook_agent/libtg_hook.c` | Hook Agent：模块/符号/序言校验、inline hook、回调、发送线程 |
| `android/hook_agent/tg_wire.c` `tg_wire.h` | 与 `tgb_proto`/`tgb_event` 字节一致的帧/转义/UTF-8 实现 |
| `android/hook_agent/Makefile` | 同上 |
| `android/build_t6.ps1` | 本机实际使用的构建脚本（0 warning 门禁 + readelf 校验） |
| `tests/t6_wire_unit_test.c` | 主机兼容性单测（链接已验收的桥接端源码做对拍） |
| `tests/run_t6_host_tests.ps1` | 单测构建+运行，落 `evidence/t6_01_host_test.log` |
| `tests/t6_injector_device.ps1` | 真机验收驱动（P0–P7），**尚未在真机执行** |
| `evidence/t6_01_ndk_build.log` | 编译证据 |
| `evidence/t6_01_host_test.log` | 主机单测证据（46 断言 0 失败） |
| `evidence/t6_01_device_blocked.log` | 设备不可用证据（含旁路客户端原始结果） |

未改动：`ai_worker.c` 及 Worker 逻辑、`tgb_*` 桥接端、`tts_exec`、`system_debloat/`、`my-doc/05_t4/acceptance/*` 等一切与本任务无关的文件。
