# 设备实验记录：iot 禁用尝试（rev5.4 / 2026-11-21 10:22–10:27）

对象：`com.alibaba.ailabs.genie.iot`（智能家居，`app/GenieIoT`，16.88 MB）
目的：执行第一项单包禁用验证（用户已授权“开始禁用第一个”）。
**结果：未能完成禁用——本固件的 `pm` 被裁剪，缺少包状态命令；已完整回滚，设备状态与实验前一致。**

## 1. 基线（禁用前，只读）

| 项 | 值 |
|---|---|
| uptime | 303,239.64 s |
| MemTotal / MemFree / MemAvailable | 1,008,628 / 61,536 / 339,544 kB |
| dumpsys Used RAM / Free RAM / Lost | 968,891K / 250,448K / 48,976K |
| iot 进程 | **`com.alibaba.ailabs.genie.iot:service`，pid 28831**（主进程未运行，只有 `:service` 子进程） |
| 该进程 PSS（`dumpsys meminfo 28831`） | **24,266 kB**（SWAP PSS 6,560 kB） |
| 引用它的 ServiceRecord | 23 条（smartapp 绑定） |
| alarm / wakelock 命中 | 0 / 0 |
| `pm list packages -d` | 0 条（无已禁用包） |

## 2. 尝试与结果

| # | 命令 | 结果 |
|---|---|---|
| 1 | `pm disable-user --user 0 com.alibaba.ailabs.genie.iot` | ❌ `Error: unknown command 'disable-user'`（打印了 usage，其中却列着该命令） |
| 2 | `pm disable-user com.alibaba.ailabs.genie.iot` | ❌ 同上 |
| 3 | `pm disable com.alibaba.ailabs.genie.iot` | ❌ `Error: unknown command 'disable'` |
| 4 | `pm hide` / `pm suspend` / `pm block` | ❌ 均为 `unknown command` |
| 5 | `app_process /system/bin com.android.commands.pm.Pm disable-user …` | ❌ app_process 崩溃：`ClassNotFoundException: com.android.commands.pm.Pm`（漏了 `CLASSPATH=/system/framework/pm.jar`，是我的命令错误，与被测应用无关） |
| 6 | `pm disable-user` **以 root 执行**（`su -c`，uid=0，context `u:r:magisk:s0`） | ❌ 仍 `unknown command` → 说明是 **`pm.jar` 被厂商裁剪**，不是权限问题 |
| 7 | `cmd package suspend --user 0 …`（shell） | ❌ `SecurityException: 需要 MANAGE_USERS` |
| 8 | `cmd package suspend --user 0 …`（root） | ✅ 返回 `new suspended state: true`；但 **`iot:service` 进程在 47 秒后重新出现**（pid 5020），说明对该系统应用“挂起”并未阻止其被拉起 |

结论：**本固件没有可用的包级禁用通道**（`pm` 命令集被裁剪；`cmd package` 只有 suspend/unsuspend；
suspend 对系统绑定服务无效）。

## 3. 回滚

```
su -c 'cmd package unsuspend --user 0 com.alibaba.ailabs.genie.iot'
→ Package com.alibaba.ailabs.genie.iot new suspended state: false
dumpsys package: suspended=false  enabled=0   （与实验前一致）
```

设备未重启（zygote/system_server 的 ELAPSED 均为 2d13:57，未变化）；未卸载、未清数据、未改镜像。

## 4. 副作用与诚实说明

- 一次 `app_process` 崩溃（pid 3779），原因是我漏了 CLASSPATH；已记录在
  `iot_suspend_crash.txt`，不影响系统。
- 挂起期间 `iot:service` 被系统重新拉起，**没有可用的“禁用后”内存数据**，因此本轮
  **不给出任何 RAM 收益结论**。
- 期间内存数字（Free RAM 250,448K → 235,945K）是噪声，不可作为收益证据。

## 5. 后续可选路径（均需你确认）

| 路径 | 做法 | 可逆性 | 代价 |
|---|---|---|---|
| A | root 下直接修改 `/data/system/users/0/package-restrictions.xml`，把该包标记为 disabled，然后重启 | 改回并重启即恢复 | 属于“改设备数据”，非 `pm` 官方路径 |
| B | root 下用 `service call package` 调 `setEnabledSetting`（需探测事务码） | 可逆（再调一次 ENABLED） | 事务码与版本强相关，失败可能无效果 |
| C | 放弃“禁用验证”，改做**离线镜像删除验证**（改 `system.img` 副本、刷入） | 需回刷 | 风险最高，且超出本轮“不动镜像”的边界 |
| D | 只做**组件级禁用**（若固件支持 `pm disable pkg/cls`，但同样被裁剪 → 不可用） | — | 不可用 |

## 6. 原始数据

- `experiments/iot_baseline_*.txt`：uptime / meminfo / 进程
- `experiments/iot_refs_*.txt`：services/alarm/power 命中数
- `experiments/iot_pss_*.txt`：`iot:service` PSS = 24,266 kB
- `experiments/iot_disable_*.txt`：失败的 disable 尝试与 usage 输出
- `experiments/iot_suspend_crash.txt`：app_process 崩溃日志（我的命令错误）
- `experiments/iot_revert_*.txt`：unsuspend 回滚输出
