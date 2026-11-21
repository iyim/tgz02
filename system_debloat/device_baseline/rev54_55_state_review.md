# rev5.4 / rev5.5 设备操作复核（2026-11-21 11:04，只读）

范围：只审查 `system_debloat/experiments/` 内与本机操作相关的记录，并用只读 ADB 查询核对当前状态。
本轮**没有**做任何写入、禁用、清数据或重启。

## 1. 做过什么（据仓库记录）

| 时间 | 动作 | 结果 |
|---|---|---|
| 10:22 | 记录 iot 基线（uptime 303,239 s、`iot:service` pid 28831、PSS 24,266 kB、23 条 ServiceRecord） | 只读 |
| 10:23 | 尝试 `pm disable-user` / `pm disable` / `pm hide` / `pm suspend` / `pm block` | 全部 `unknown command`（固件裁剪），**未改变状态** |
| 10:23 | 一次 `app_process` 直调 `Pm` | app_process 自身崩溃（漏 CLASSPATH），与目标包无关 |
| 10:25 | `cmd package suspend --user 0 com.alibaba.ailabs.genie.iot`（root） | 成功 `suspended=true`，但 `:service` 进程 47 s 后被重新拉起 |
| 10:25 | `cmd package unsuspend` | **已回滚**，`suspended=false` |
| 10:34 | 写入整文件 `package-restrictions.xml`（iot 加 `enabled="3"`） | 写入成功（6637 B / `4f5c6763…`） |
| 10:36 | 复查 | **被 system_server 覆写回原样**（6522 B / `295c3978…`） |
| 10:37 | 在设备放置 `iot_disable_apply.sh` / `iot_disable_revert.sh`（写入即重启） | 仅放置，**从未执行** |

## 2. 当前状态（只读实测）

| 项 | 当前值 | 判定 |
|---|---|---|
| iot `enabled` | `enabled=0`（DEFAULT） | **已恢复为启用** |
| iot `suspended` | `suspended=false` | **已回滚** |
| iot 进程 | `com.alibaba.ailabs.genie.iot:service`，pid 5020 在运行 | 正常（与基线一致，仅 pid 变化） |
| `pm list packages -d` | 空 | 没有任何包处于禁用状态 |
| `package-restrictions.xml` | 6487 B，sha256 `7f7208f7…`，`enabled=` 属性 2 个（rtc、aicare），iot 元素**无** `enabled` 属性 | **语义上等于原始状态**（见 §3） |
| 设备 uptime | 连续（未重启） | 本轮未重启 |
| 六个保护 App | 见 `summary_stats.json:user_protection` | 未被改动 |

## 3. 重要发现：文件字节与备份不同，但语义相同

| 文件 | 字节 | sha256 | 包元素 | 带 `enabled` 属性的包 |
|---|---|---|---|---|
| 10:34 备份 `pr_orig.xml` | 6522 | `295c3978…` | 68 | rtc、aicare |
| 11:04 现状 `pr_now.xml` | **6487** | **`7f7208f7…`** | 68 | rtc、aicare |

- 两次内容**包集合完全一致**，iot 两处都写作 `<pkg name="com.alibaba.ailabs.genie.iot" ceDataInode="-4294959387" />`。
- 结论：**PMS 会重写该文件（空行/顺序/缩进变化）**，所以“文件哈希一致”不能作为恢复成功判据；
  必须用 `dumpsys package <pkg>` 的 `enabled=`/`suspended=` 判定。

## 4. 设备上仍存在的临时文件（**未删除，属于潜在风险**）

| 路径 | 大小 | 风险 |
|---|---|---|
| `/data/local/tmp/pr_orig.xml` | 6522 | 整文件备份——被任何脚本覆盖写回就会连带改写 68 个包的状态 |
| `/data/local/tmp/pr_new.xml` | 6637 | 整文件“已禁用版” |
| `/data/local/tmp/pr_backup_before_edit.xml` | 6522 | 同上 |
| `/data/local/tmp/pr_now.xml` | 6487 | 本轮只读拉取用的副本 |
| `/data/local/tmp/iot_disable_apply.sh` | 936 | **写入即重启**，整文件覆盖 |
| `/data/local/tmp/iot_disable_revert.sh` | 749 | 写入即重启，整文件覆盖 |
| `/data/local/tmp/collect_dumpsys.sh`、`collect_sizes.sh` | 174 / 339 | 只读采集脚本，无副作用 |

**待办（需要你授权才做，本轮只读）**：删除上表中的 `pr_*.xml` 与两个 `iot_disable_*.sh`。
仓库里的同名脚本已在 rev5.6 改成“只拒绝、不改设备”的桩。

## 5. 是否有未完成的设备操作

| 检查 | 结果 |
|---|---|
| 有待执行的重启？ | **无**（没有 pending reboot；脚本从未运行过） |
| 有正在运行的禁用流程？ | **无**（`pm list packages -d` 为空，无相关进程） |
| 有未回滚的挂起状态？ | **无**（`suspended=false`） |
| 有未完成的分区写操作？ | **无**（本轮及此前均未刷写） |

## 6. 结论

- rev5.4/rev5.5 的所有改动**已完全回滚**，设备 PackageManager 状态与实验前一致。
- 唯一遗留是**临时文件与两个危险脚本仍留在 `/data/local/tmp`**，建议清理（需你授权）。
- 本轮的 `iot` 进程 pid 从 28831 变为 5020，属于正常重启进程，不是状态残留。
