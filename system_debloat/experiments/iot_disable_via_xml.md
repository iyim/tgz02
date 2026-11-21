# iot 禁用（方案 A）执行记录 —— 2026-11-21 10:34–10:38

承接 `iot_disable_attempt.md`：`pm disable-user` 在本固件不可用，改用方案 A（root 改
`/data/system/users/0/package-restrictions.xml`）。用户要求**不自动重启**，由用户手动重启。

## 1. 文件格式与语义（先验证再动手）

| 事实 | 证据 |
|---|---|
| XML 里包级启用状态是 `<pkg name="…" enabled="N" />` 属性 | 原文有 2 个 `enabled="1"`：`com.alibaba.ailabs.genie.rtc`、`com.alibaba.ailabs.genie.aicare` |
| 该属性确实被系统读取 | 两者运行时 `dumpsys package` 均为 `enabled=1`（ENABLED），其余包为 `enabled=0`（DEFAULT） |
| `enabled=3` 的语义 | `COMPONENT_ENABLED_STATE_DISABLED_USER`，即 `pm disable-user` 写入的状态 |

改动只有一处：

```diff
-    <pkg name="com.alibaba.ailabs.genie.iot" ceDataInode="-4294959387" />
+    <pkg name="com.alibaba.ailabs.genie.iot" ceDataInode="-4294959387" enabled="3" />
```

## 2. 第一次尝试：直接改文件（失败，已被系统还原）

| 时间 | 动作 | 结果 |
|---|---|---|
| 10:34 | 备份 → 写入编辑版（6637 B，sha256 `4f5c6763…`）→ `chown system:system` / `chmod 660` / `restorecon` | 写入成功，`grep` 可见 `enabled="3"`，SELinux 上下文 `u:object_r:system_data_file:s0` 正确 |
| 10:34 | 运行时状态 | 仍是 `enabled=0`（符合预期：重启后才生效） |
| 10:36 | **再次检查** | 文件被 **system_server 覆写回原样**：6522 B、`enabled=` 计数回到 2、iot 行恢复为无属性、sha256 变为 `295c3978…` |

结论：**在运行中的系统里直接改这个文件不可行**——`PackageManagerService` 会按内存状态重写它
（任何一次包状态变更都会触发 `writePackageRestrictionsLPr`），改动在 2 分钟内被覆盖。

## 3. 现在的做法：原子「写入 + 立刻重启」

已把两个脚本放到设备（临时目录，不改 system）：

| 路径 | 作用 |
|---|---|
| `/data/local/tmp/pr_orig.xml` | 原始备份（6522 B，sha256 `295c3978…`） |
| `/data/local/tmp/pr_new.xml` | 编辑版（6637 B，sha256 `4f5c6763…`，含 `enabled="3"`） |
| `/data/local/tmp/iot_disable_apply.sh` | 校验备份 → 写入 → 修权限/上下文 → `sync` → 校验属性 → **立即 `reboot`** |
| `/data/local/tmp/iot_disable_revert.sh` | 还原原始备份 → 修权限/上下文 → `sync` → **立即 `reboot`** |

两个脚本都已通过 `sh -n` 语法检查；apply 脚本在写入后会 `grep` 校验，校验失败会自动还原并退出（不会带病重启）。

**为什么必须原子**：写入到重启之间只要有任意一次包状态写入，改动就会被覆盖。用户手动重启时，
请用脚本触发（脚本里带 `reboot`），而不是"先改文件、过一会儿再自己点重启"。

## 4. 用户需要做的（二选一）

```bash
# 方式 1：现在就可以，自己执行（会立刻重启）
adb -s 192.168.1.9:5555 shell su -c 'sh /data/local/tmp/iot_disable_apply.sh'

# 方式 2：告诉我“执行”，我来跑同一条命令（同样会立刻重启）
```

重启后验证（我可以代做）：

```bash
adb shell dumpsys package com.alibaba.ailabs.genie.iot | grep -E 'enabled=|suspended='
adb shell ps -A | grep genie.iot          # 期望：无输出
adb shell pm list packages -d | grep genie # 期望：出现该包
adb shell dumpsys meminfo | grep -E 'Used RAM|Free RAM'
```

回滚（同样立刻重启）：

```bash
adb -s 192.168.1.9:5555 shell su -c 'sh /data/local/tmp/iot_disable_revert.sh'
```

## 5. 当前设备状态（本记录提交时）

| 项 | 值 |
|---|---|
| `package-restrictions.xml` | 原始内容（6522 B），iot 未带 `enabled` 属性 |
| iot 运行时 | 仍启用（`enabled=0`），`iot:service` 进程在跑 |
| 挂起状态 | `suspended=false`（上一轮已回滚） |
| 是否重启过 | 否（uptime 连续） |
| system/boot 分区 | 未改动 |

## 6. 风险提示

1. 这是**改设备数据**（`/data/system/users/0/package-restrictions.xml`），不是官方 `pm` 路径；
   PMS 解析该文件失败时会退回默认状态，最坏结果是"改动不生效"，不会 brick。
2. 生效后 `iot:service` 不应再被拉起；但 smartapp 有 23 条 ServiceRecord 绑定它，
   **可能产生绑定失败日志，甚至部分语音技能报错**——重启后需要看 `logcat`。
3. 回滚不需要刷机：`/data/local/tmp/pr_orig.xml` 一直在，`iot_disable_revert.sh` 一条命令即可。
