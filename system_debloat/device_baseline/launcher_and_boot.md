# Launcher 与启动救援信息（rev5.3）

**一句话结论**：默认桌面是**原厂 `GenieLauncher`**（不是当贝）；系统里还有 **4 个**可作 HOME 的组件，
其中**当贝桌面**（受保护）是最可靠的手动备用桌面；`com.android.settings/.FallbackHome` 是最后的系统级兜底。

## 1. 默认 HOME（只读实测）

```
adb shell cmd package resolve-activity --brief -a android.intent.action.MAIN -c android.intent.category.HOME
→ priority=0 preferredOrder=0 match=0x108000 specificIndex=-1 isDefault=true
  com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
```

| 项 | 值 |
|---|---|
| 默认桌面包名 | `com.alibaba.ailabs.genie.launcher` |
| 默认桌面组件 | `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` |
| APK 路径 | `/system/app/GenieLauncher/GenieLauncher.apk` |
| 版本 | 见 `package_inventory.json`（`version_name`） |
| 是否六个保护 App | **否**（保护名单里的“当贝桌面”是另一个包） |
| 是否禁止精简 | **是**（启动关键组件） |

## 2. 全部可作 HOME 的组件（5 个）

| # | 组件 | 归属 | 角色 |
|---|---|---|---|
| 0 | `com.alibaba.ailabs.genie.children/.activity.HomeActivity` | 儿童模式 | 儿童模式下的“桌面”，禁用儿童模式后不再出现 |
| 1 | `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` | GenieLauncher | **当前默认桌面** |
| 2 | `com.alibaba.ailabs.genie.smartapp/…genieboot.activity.BootHomeActivity` | smartapp | **开机引导首页**（开机后先落到它，再进桌面） |
| 3 | `com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity` | 当贝桌面 | **备用桌面（受保护）** |
| 4 | `com.android.settings/.FallbackHome` | 设置（AOSP 兜底） | **系统级兜底**：没有可用 HOME 时由它顶上 |

LAUNCHER 类别共 21 个组件（清单见 `raw/launcher_activities.txt`），含 aicare、camera、cook、cmvideo、
albums、children、iot、settings、smartapp×3、uuid、spkey 等。

## 3. 启动条件与开机链路

| 环节 | 证据 | 说明 |
|---|---|---|
| `BootHomeActivity`（smartapp） | `query-activities -c HOME` 命中 | 开机首屏由 smartapp 提供，之后才进 `AdultHomeActivity` |
| GenieLauncher 的 BOOT 接收器 | manifest 内**无** `BOOT_COMPLETED` 接收器（`manifest_facts.json` 可查） | 桌面靠 HOME intent 被系统拉起，不靠自己监听开机广播 |
| 当贝的 BOOT 接收器 | `com.dangbei.launcher.receiver.BootReceiver`（BOOT_COMPLETED / USER_PRESENT / CONNECTIVITY_CHANGE） | 当贝自带开机自启，是它能当“救援桌面”的原因之一 |
| 全系统 BOOT_COMPLETED 接收器 | **22 个**（清单见 `raw/boot_receivers.txt`） | 包括 osupdate、uuid、smartapp×3、ags×2、packageinstaller、当贝等 |
| `persistent` | GenieLauncher 与当贝 manifest 均 **false** | 都不是常驻进程，靠 Activity 生命周期 |

## 4. 通过 ADB 启动/切换桌面（只读能力已验证命令存在）

```bash
# 启动默认桌面（不改任何配置）
adb shell am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity

# 用 HOME intent 拉起当前默认桌面
adb shell am start -a android.intent.action.MAIN -c android.intent.category.HOME

# 临时切到当贝桌面（系统命令存在：cmd package help 里列有 set-home-activity）
adb shell cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/com.dangbei.launcher.ui.main.MainActivity

# 切回原厂桌面
adb shell cmd package set-home-activity --user 0 com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity
```

> 说明：`set-home-activity` 会**修改系统首选桌面配置**，属于写操作；本轮**未执行**，仅确认命令存在
> （`cmd package help` 列出该子命令）与实际组件名。

## 5. 桌面无法启动时怎么恢复（按可靠性排序）

| 顺序 | 手段 | 前提 | 风险 |
|---|---|---|---|
| 1 | `am start -n com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity` | ADB 可用 | 无（只启动一个 Activity） |
| 2 | `cmd package set-home-activity --user 0 com.dangbei1.tvlauncher/...MainActivity` | ADB 可用、当贝未被禁用 | 改首选桌面（可改回） |
| 3 | 系统自动兜底 `com.android.settings/.FallbackHome` | 没有任何可用 HOME 时 | 系统行为，不需干预 |
| 4 | `pm enable <被禁用的桌面包>` | 知道被禁的是谁（本仓库 `restore_last_disabled.ps1` 记录） | 低 |
| 5 | Recovery / 分区回刷 | 见 `recovery_plan.md` | 高 |

## 6. 与六个保护 App 的关系

- 保护名单中的“当贝桌面”= `com.dangbei1.tvlauncher`，**不是默认桌面**，但它是唯一可用的第三方备用桌面
  → 保护它的价值在本轮得到强化：**它是桌面级救援路径**。
- 其余五个（MT 管理器、ES、权限狗、EasyTouch、Magisk）不参与桌面链路；其中 Magisk 提供 root（救援必需）。

## 7. unknown / 未验证

1. `BootHomeActivity` 与 `AdultHomeActivity` 之间的跳转条件（是否有“开机首屏 N 秒”逻辑）：**未确认**。
2. `cmd package set-home-activity` 在本固件是否真的生效：**未执行验证**（命令存在 ≠ 执行成功）。
3. `FallbackHome` 触发条件依赖 AOSP 逻辑，未在本机复现。
4. 当贝桌面被设为 HOME 后原厂桌面的残留行为（是否仍被 BootHome 拉起）：**未验证**。
