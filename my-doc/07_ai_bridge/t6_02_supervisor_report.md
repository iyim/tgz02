# T6-02 独立 Native Supervisor 交付报告

- 目标：在 T6-01 Injector + Hook Agent 之上加一个独立常驻的 Native Supervisor，
  自动发现原厂核心进程并注入，进程换 PID 后自动重新注入，自身重启后能认出已注入状态。
- 设备：CCH `AILABS_S1L`，Android 8.1（SDK 27），ARM32 `armeabi-v7a`，`192.168.1.9:5555`
- 目标进程：`com.alibaba.ailabs.genie.smartapp:core`（cmdline 精确匹配）
- 产物：`android/out/tg_supervisor`（60 904 B，sha256 `17dec6e0…c646c2fa0`，ELF32/ARM，0 warning）
- 真机证据：`evidence/t6_02_supervisor_device.log`（**78 ASSERT OK / 0 ASSERT FAIL**）
  与 `evidence/t6_02_ndk_build.log`（`# result: OK (0 warning, 0 error, ELF32/ARM, dynamically linked)`）

本轮没有修改 T6-01 的 Injector / Hook Agent，也没有引入 Frida、Zygisk、Magisk 模块、
service.sh、init.rc、boot.img/system/vendor 改动；Supervisor 只用到 `/proc`、`fork/exec`、
`flock`、信号。

## 1. 设计

```
tg_supervisor (常驻, 单实例)
   │  每 500ms 扫 /proc/*/cmdline（精确 == com.alibaba.ailabs.genie.smartapp:core）
   │  读 /proc/<pid>/stat 第 22 字段 starttime（防 PID 复用）
   │  读 /proc/<pid>/maps 等 libsmartbox.so 就绪
   │
   ├─ fork/exec  /data/local/tmp/t6/tg_injector --so libtg_hook.so --pid <PID> [--check]
   │     把 injector 输出逐行以 "inj| " 写进日志，读退出码，解析 hooked=0/1
   │
   └─ 状态机: 发现 → (check) → install → 已注入 ; 失败 → 指数退避重试 ; PID 变 → 重置
```

关键决定：

| 决定 | 原因 |
|---|---|
| `execv` 直接执行 Injector，不经过 shell | 不需要拼命令串，参数不可被解释；退出码直接可用 |
| 精确匹配 cmdline 第一个字段 | 主进程 `…smartapp` 与 `…smartapp:business` 都不会命中；`argv_extra=1` 只是记录，不影响判定 |
| 用 starttime 区分 PID 复用 | PID 会被回收，单看数字会把"新进程"当成"老进程已注入" |
| 新 PID 先等 `libsmartbox.so` 出现在 maps | 刚 fork 的进程还没加载原厂库，此时 `tg_hook_prepare()` 必然返回 `module libsmartbox.so is not loaded`；等它就绪再注入，避免每次重启都先失败一次 |
| 对当前 PID 先跑 `--check` 再决定 | 满足"自身重启后识别已注入、不重复打补丁"；`hooked=1` 就跳过 install |
| `hooked=-1`（注入器读不到状态）当作"未注入"继续 install | Injector 的安装分支自己会先查 hooked，hooked=1 幂等跳过，不会重复打补丁；比"因为读不到就永远不动"更安全 |
| 失败退避 2 s → ×2 → 上限 60 s | 满足"有限间隔重试、不能高速循环" |
| `flock` 单实例 + PID 文件只做展示 | 进程崩溃时内核自动释放锁，不会留下"永久残留锁" |
| 目标进程不在只打日志、不退出 | 满足"不得因目标进程暂时不存在而退出" |

日志语法（测试靠它断言，代码里就是这些字符串）：

```
sup: target found: pid=… starttime=… argv_extra=… cmdline=…
sup: target ready: pid=… libsmartbox.so is mapped
sup: waiting: pid=… has not loaded libsmartbox.so yet
sup: check done: pid=… exit=… hooked=… state=hooked|not-hooked|unknown
sup: already hooked: pid=… (state=1); skip install
sup: inject begin: pid=… attempt=…
sup: inject end: pid=… exit=… hooked=1 elapsed=…ms ok
sup: inject failed: pid=… exit=… hooked=… attempt=… backoff=…ms why=…
sup: target gone / target changed / stop requested: signal=N / exit: pid=N
```

## 2. 新增文件

| 文件 | 说明 |
|---|---|
| `android/supervisor/tg_supervisor.c` | Supervisor 源码（单文件，无第三方依赖） |
| `android/supervisor/run_supervisor.sh` | 设备端 `start|stop|status` 包装（Magisk su 只接受单条命令） |
| `android/supervisor/README.md` | 设计、参数、日志语法、已知限制 |
| `android/build_t6_02.ps1` | 只构建 Supervisor 的交叉编译脚本（不动 T6-01 产物） |
| `android/out/tg_supervisor` | 产物 |
| `tests/t6_02_supervisor_device.ps1` | 真机增量验收（P0–P7） |
| `evidence/t6_02_supervisor_device.log` | 本次真机日志（78/0） |
| `evidence/t6_02_ndk_build.log` | 构建记录 |

## 3. 真机验收结果（78 / 0）

`tests/t6_02_supervisor_device.ps1` 每次运行**重写**日志，脚本开头先按 sha256 校验设备上的
`tg_supervisor / tg_injector / libtg_hook.so` 与本地 `out/` 逐字节一致，再开始测试。

| 验收项 | 结果 |
|---|---|
| 1 ARM32 编译、0 warning | `t6_02_ndk_build.log`：`0 warning, 0 error, ELF32/ARM` |
| 2 手动启动 + 单实例 | 启动 pid=29762；第二个实例（29786）打印 `another supervisor is already running (pid=29762, pidfile=…)` 并退出；`pidof tg_supervisor` 始终只有一个 PID |
| 3 核心进程已在运行 → 自动注入 | `target found: pid=29149 … cmdline=…:core` → `target ready` → `inject begin attempt=1` → `inject end: pid=29149 exit=0 hooked=1 elapsed=813ms ok` |
| 4 同一 PID 不重复注入 | 静置 12 s：该区间 `inject begin` 计数 0、`check done` 计数 0；整个会话对 29149 只有 1 次 install |
| 5 强制重启 App，PID 改变 | 29149 → 30057 → 30677 → 31288（每次 `am force-stop` + 重新拉起） |
| 6 自动发现新 PID 并重新注入 | 每个新 PID 都是 `waiting → target ready → inject begin attempt=1 → exit=0 hooked=1` |
| 7 连续 3 次重启均恢复 | 见下表，3 次全部一次成功 |
| 8 重启 Supervisor 后识别已注入 | 停掉 29762 后新实例 pid=1031：`check done: pid=31288 exit=0 hooked=1 state=hooked` → `already hooked … skip install`，该区间 `inject begin` 计数 0 |
| 9 正常停止无残留 | `stop requested: signal=15` + `exit: pid=1031`；`pidof tg_supervisor` 为空、`pidof tg_injector` 为空、PID 文件已删除 |
| 10 原厂 ASR/NLU/TTS 可用 | 播放语音后原厂 `SessionManager/WakeupEngine/GenieAssistantUIManager` 日志 76 行，事件入库 262 → 263，进程未变、`TracerPid: 0` |

另外补充的两条：目标进程消失时 Supervisor **不退出**（P5：`target gone: pid=31288` 后
pid=1031 仍在跑），进程回来后自动注入（`1596`、`2573` 两个新 PID 均注入成功）；
重启后的 Hook 真的在工作（P3 播放语音，桥接端收到带 `t6-` 前缀的 `asr_final`）。

### 核心进程重启明细（来自 `/data/local/tmp/t6/supervisor.log`）

| 事件 | 旧 PID → 新 PID | 关键日志 | 结果 |
|---|---|---|---|
| 首次发现（已在运行） | — → 29149 | `inject end … elapsed=813ms ok` | hooked=1 |
| 重启 1 | 29149 → 30057 | `waiting 519ms` → `ready` → `elapsed=718ms ok` | hooked=1 |
| 重启 2 | 30057 → 30677 | `waiting 513ms` → `ready` → `elapsed=275ms ok` | hooked=1 |
| 重启 3 | 30677 → 31288 | `waiting 532ms` → `ready` → `elapsed=239ms ok` | hooked=1 |
| Supervisor 重启 | 31288 → 31288 | `check … hooked=1 state=hooked` → `skip install` | 未重复打补丁 |
| 目标消失 | 31288 → — | `target gone: pid=31288` | Supervisor 存活 |
| 恢复 | — → 1596 | `elapsed=368ms ok` | hooked=1 |
| 再次恢复（系统又重启一次进程） | 1596 → 2573 | `elapsed=206ms ok` | hooked=1 |
| 停止 | 2573 → — | `stop requested: signal=15` / `exit: pid=1031` | 干净退出 |

整份 supervisor 日志共 249 行，`inject failed` 出现 **0** 次。

## 4. 未验证 / 已知限制

1. **还没有开机自启**：本阶段按任务书要求是手动/前台启动；接入 init.rc 是下一阶段。
2. **Supervisor 自身被杀后没有 watchdog**：它只保证"崩溃不残留锁"，不保证被拉起；
   由下一阶段的 init.rc 服务托管负责。
3. **PID 复用只用 starttime 判定，未做压测**：/proc 里 PID 回绕（本次会话里看到
   29762 → 1031 的回绕，属正常 pid_max=32768）不会误判，但没有专门构造"同号新进程"的压力场景。
4. **就绪门控依赖 `libsmartbox.so` 出现在 maps**：如果某类 :core 进程永远不加载该库，
   Supervisor 会一直等并只打一条 `waiting:` 日志（不注入、不刷屏）。设备上没有这种进程，
   所以这条分支没有被真实触发过。
5. **注入延迟**：扫描 500 ms + 等待库就绪 + 注入，实测 0.2–0.8 s（见上表 elapsed）。
6. **每次注入仍在目标进程 mmap 64 KB scratch 且不回收**：这是 T6-01 Injector 的既有行为，
   本任务按约束未改。
7. **日志不轮转**：`supervisor.log` 只追加，长时间运行需外部清理（未加轮转逻辑）。
8. 一次过程记录（非固化证据）：加入就绪门控之前的那轮运行里，曾对一个刚 fork 出来的
   PID 注入失败（`exit=19 … module libsmartbox.so is not loaded in this process`），
   2 s 退避后第 2 次成功；正是这次观察引出了就绪门控。本轮日志已被覆盖，故只作为设计依据记录，
   不计入通过项。

## 5. 复现

```powershell
# 编译（0 warning 门禁）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\android\build_t6_02.ps1
# 真机增量验收（P0–P7，约 4 分钟）
powershell -File D:\tgz02\OS\system\my-doc\07_ai_bridge\tests\t6_02_supervisor_device.ps1 -Restarts 3
```

设备上手动运行：

```sh
su -c "/data/local/tmp/t6/run_supervisor.sh start"    # 后台常驻，日志 /data/local/tmp/t6/supervisor.log
su -c "/data/local/tmp/t6/run_supervisor.sh status"
su -c "/data/local/tmp/t6/run_supervisor.sh stop"
```
