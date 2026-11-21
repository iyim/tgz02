# T6-02 Native Supervisor（tg_supervisor）

独立的后台监管程序：盯着原厂核心进程 `com.alibaba.ailabs.genie.smartapp:core`，
它出现/换 PID 时调用现有 T6-01 Injector 完成注入，自身重启后能认出"已经打过补丁"。

Supervisor、Injector、Hook Agent 是三个独立程序，Supervisor 不实现任何注入逻辑，
只做「发现 → fork/exec Injector → 读退出码 → 记录状态 → 有限退避重试」。

```
tg_supervisor ──fork/exec──> tg_injector --so libtg_hook.so --pid <PID>
                                    │
                                    └── ptrace/dlopen ──> 目标进程里的 libtg_hook.so
```

## 约束

- ARM32 / Android 8.1（API 26），NDK r21e 交叉编译，`-O2 -Wall -Wextra`，0 warning。
- 不依赖 Frida / Zygisk / Magisk Module / service.sh；不调用 Magisk 专属接口；
  不修改 boot.img、system、vendor、init.rc、原厂 APK、原厂 Native 库。
- 不引入额外部件；只用 `/proc`、`fork/exec`、`flock`、信号。

## 行为

1. **进程发现**：每 `--interval`（默认 500 ms）扫描 `/proc/*/cmdline`，**精确匹配**
   第一个 NUL 结尾字段 `com.alibaba.ailabs.genie.smartapp:core`。
   主进程 `com.alibaba.ailabs.genie.smartapp`、`:business` 都不会命中；
   同时读 `/proc/<pid>/stat` 第 22 字段（starttime）区分 PID 复用。
2. **就绪门控**：新 PID 出现后先看 `/proc/<pid>/maps` 里有没有 `libsmartbox.so`。
   刚 fork 出来的进程还没加载原厂库，此时注入必然失败，所以先等它就绪
   （这只是在读 maps，不是注入）。
3. **自动注入**：`fork` + `execv` 直接执行 Injector（不经过 shell、不拼命令串），
   参数严格是 `--so <路径> --pid <PID>`；父进程读它的 stdout/stderr（带超时），
   等待退出码，并从中解析 `hooked=0/1`。
4. **不重复注入**：同一 PID 一旦确认 `hooked=1` 就不再调用 install；
   PID 变化（或 starttime 变化）才会重置状态并允许重新注入。
5. **失败重试**：失败后按 `--retry-ms`（默认 2000 ms）指数退避到
   `--max-backoff-ms`（默认 60 s），不会高速循环。
6. **自身恢复**：启动时对当前 PID 先跑一次 `--check`：
   `hooked=1` → 记 `already hooked ... skip install`；否则才安装。
   目标进程暂时不存在时只打日志，不退出。
7. **单实例**：对 PID 文件 `flock(LOCK_EX|LOCK_NB)`；第二个实例立即退出并打印
   正在运行的 PID。进程崩溃时内核自动释放锁，不会留下"永远起不来"的痕迹。
8. **退出**：收到 SIGTERM/SIGINT/SIGHUP 打 `stop requested: signal=N` 与 `exit: pid=N`，
   删除 PID 文件后以 0 退出。

## 用法

```sh
# 前台运行（调试时直接看 stdout）
tg_supervisor

# 后台运行（设备上一条命令完成，见 run_supervisor.sh）
su -c "/data/local/tmp/t6/run_supervisor.sh start"
su -c "/data/local/tmp/t6/run_supervisor.sh status"
su -c "/data/local/tmp/t6/run_supervisor.sh stop"

# 只扫一轮（排障用）
tg_supervisor --once
```

参数：

| 参数 | 默认值 | 说明 |
|---|---|---|
| `--injector PATH` | `/data/local/tmp/t6/tg_injector` | 现有 T6-01 Injector |
| `--so PATH` | `/data/local/tmp/t6/libtg_hook.so` | Hook Agent |
| `--name PROC` | `com.alibaba.ailabs.genie.smartapp:core` | 目标 cmdline（精确匹配） |
| `--interval MS` | 500 | 扫描周期（下限 50） |
| `--retry-ms MS` | 2000 | 首次失败后的等待（下限 200） |
| `--max-backoff-ms MS` | 60000 | 退避上限 |
| `--pidfile PATH` | `/data/local/tmp/t6/tg_supervisor.pid` | 单实例锁 + 记录 PID |
| `--log PATH` | `/data/local/tmp/t6/supervisor.log` | 追加写；同时仍打 stdout |
| `--once` | 关 | 扫一轮就退出（测试/排障） |

退出码：`0` 正常退出；`1` 参数错误或已有实例在跑；`2`（保留）运行时致命错误。

## 日志语法（测试靠它断言）

```
sup: start pid=… target=… injector=… agent=… interval=…ms retry=…ms max=…ms
sup: pidfile=… acquired (single instance)
sup: another supervisor is already running (pid=…, pidfile=…)
sup: target found: pid=… starttime=… argv_extra=… cmdline=…
sup: target ready: pid=… libsmartbox.so is mapped
sup: waiting: pid=… has not loaded libsmartbox.so yet
sup: check done: pid=… exit=… hooked=… state=hooked|not-hooked|unknown
sup: already hooked: pid=… (state=1); skip install
sup: inject begin: pid=… attempt=…
sup: inject end: pid=… exit=… hooked=1 elapsed=…ms ok
sup: inject failed: pid=… exit=… hooked=… attempt=… backoff=…ms why=…
sup: target gone: pid=… starttime=…
sup: target changed: old pid=… starttime=… -> new pid=… starttime=…
sup: stop requested: signal=…
sup: exit: pid=…
```

Injector 自己的输出逐行以 `inj| ` 前缀落进同一个日志，便于对照"哪一次注入对应哪一行"。
日志里不写任何密钥/凭据。

## 构建 / 测试

```powershell
powershell -File android\build_t6_02.ps1          # -> android/out/tg_supervisor, evidence/t6_02_ndk_build.log
powershell -File tests\t6_02_supervisor_device.ps1 # -> evidence/t6_02_supervisor_device.log
```

## 已知限制

- 本阶段是**手动启动**的常驻进程；设备开机自启（接入 init.rc）留到下一阶段。
- Supervisor 自己被杀后没有 watchdog 拉起；下一阶段的 init.rc/服务托管负责这件事。
- 只在单目标进程上工作（`:core`），不处理多实例/多用户。
- 每次注入仍会在目标进程里 mmap 64 KB scratch 不回收（沿用 T6-01 Injector 行为，本任务未改）。
- 日志只追加、不轮转，长时间运行需要外部清理。
