# B 类候选收益与风险分析（rev4）

本文件只回答一个问题：**剩下的 10 个 B 类候选里，哪些真的值得动、能带来多少可测量收益、会影响什么。**

- 分析范围：`summary_stats.json:executable_lists.B_disable` 的 10 个包（= 上一版 B 类 13 个减去
  3 个受用户保护项），不扩大范围。
- 数据来源：`app_inventory.json`（体积 / persistent / 组件 / BOOT 接收器 / 快照 PSS）、
  `dependency_edges.csv`（app 级入向引用）、framework vdex 字符串扫描（rev3/rev4）、
  设备只读快照 `dumpsys meminfo|cpuinfo|power|alarm|activity services|activity processes`（2026-11-20 16:03）。
- **未做任何设备操作**：没有禁用、卸载、清数据、改镜像。

## 0. 先明确三个不能跨越的红线

1. **APK 大小 ≠ RAM 收益**：只有快照里有进程的包才有 PSS 数据；本批 10 个里只有 OTA 有。
2. **单次 CPU 快照 ≠ 长期占用**：CPU 数字必须带测量窗口；OTA 现有 6 h ticks 差值实测（见 2.7）。
3. **无入向引用 ≠ 安全**：`mtp`、`pacprocessor`、`vpndialogs`、`bluetoothmidiservice` 等由
   framework 按**组件类名**绑定，静态字符串扫描看不到这种绑定；因此“0 引用”只说明“没有兄弟 App 调用”。

## 0.1 十个候选的七个必答问题（rev5）

| 候选 | 是否系统必要 | 原厂 App / Framework 引用 | 其他组件依赖 | 禁用后影响 | 可否单独 pm 禁用 | 是否优先列入禁用候选 | 风险 | 证据依据 |
|---|---|---|---|---|---|---|---|---|
| `com.android.statementservice` | 否：仅在安装/验证 App Links 时被绑定 | PackageManager 按 action `INTENT_FILTER_NEEDS_VERIFICATION` 绑定；vdex 0 命中 | 无 | http/https 深度链接校验失效（已装应用内跳转一般不受影响） | 可以 | 第一批（低风险、功能独立） | **低** | 2 个组件、无进程、无 app 级引用 |
| `com.android.bluetoothmidiservice` | 否：AOSP 可选外设服务 | framework 按类名绑定：`com.android.bluetoothmidiservice.BluetoothMidiService`（2 处命中） | 无 | 仅 BLE-MIDI 外设；本机无 MIDI 设备记录 | 可以 | 第一批（低风险、功能独立） | **低** | 1 个 Service、无进程、无 app 级引用；framework 明确点名该类 |
| `com.android.pacprocessor` | 否：仅在配置 PAC 代理时需要 | framework 按类名绑定：`com.android.pacprocessor.PacService`（2 处命中） | 无 | PAC 代理不可用（不使用 PAC 则无影响） | 可以 | 第一批（低风险、功能独立） | **低** | 1 个导出 Service、无进程、无 app 级引用 |
| `com.android.vpndialogs` | 否：按需拉起的 UI | framework 按类名绑定 `com.android.vpndialogs.ManageDialog`（2 处命中） | 无 | VPN 客户端首次连接无法弹出授权（不使用 VPN 则无影响） | 可以 | 第一批（低风险、功能独立） | **低** | 2 个 Activity、无进程、无 app 级引用 |
| `com.android.captiveportallogin` | 否：按需拉起的 UI | framework 按 action `android.net.conn.CAPTIVE_PORTAL` 拉起；vdex 0 命中 | 无 | 需要网页认证的 Wi-Fi 无法完成登录（普通 Wi-Fi 不受影响） | 可以 | 第一批（低风险、功能独立） | **低** | 1 个 Activity、无进程、无 app 级引用 |
| `com.android.companiondevicemanager` | 否：AOSP 可选 | framework 包名命中 1 处；导出 `DeviceDiscoveryService` | 无 | 伴生设备（手表/耳机类）配对入口不可用 | 可以 | 第一批（低风险、功能独立） | **低** | 2 个组件、无进程、无 app 级引用 |
| `com.android.storagemanager` | 否：AOSP 可选 UI | 无 app 级引用；vdex 0 命中 | 无 | 低存储告警与“释放空间”入口不可用 | 可以 | 第二批（存储驱动：2.32 MB 需删除才释放） | **低** | BOOT_COMPLETED 接收器（开机会被拉起一次，未测量）、JobService、2 Activity；无进程 |
| `com.android.mtp` | 否：AOSP 可选，但设备常用功能 | framework 按组件名绑定 `MtpDocumentsProvider`（DOCUMENTS_PROVIDER）；USB_ATTACHED 接收器 | 无 app 级引用 | USB 连 PC 后无法浏览文件（只能用 adb 传） | 可以 | 第二批（功能影响明确，需你确认不用 USB 传输） | **低-中** | 4 个组件（含导出 Provider + USB 接收器）、无进程 |
| `com.alibaba.ailabs.genie.guide` | 否：一次性向导，设备已过引导阶段 | 无 app 级入向引用；framework 0 命中 | 无；但恢复出厂后首启流程依赖它 | 首次开机引导、Wi-Fi 添加、扫码/账号绑定入口不可用 | 可以（`pm disable-user`）；恢复出厂前须 `pm enable` | 第二批（存储驱动：5.42 MB 需删除才释放） | **中** | Manifest：8 Activity + Provider `SecondInstaller`；快照无进程；`NETWORK_SETUP_WIZARD` 权限 |
| `com.alibaba.ailabs.genie.osupdate` | 否：不是 Android 运行必需组件，但承担厂商升级链路 | 是：S1Settings→`front.UpdateActivity` + `FOTA_UPDATE`（2 处，静态）；framework→`front.RebootUpdateActivity` | 无 App 反向依赖；但设置页“系统更新”入口依赖它 | 设置页系统更新不可用、FOTA 广播无人接收、framework 重启升级流程失效 | 可以（`pm disable-user`）；恢复需 `pm enable` + 重启一次（persistent） | 第二批（有实测 CPU 收益，但兼容风险最高） | **高** | rev4.1 六小时观测：均值 21.53% CPU、PSS 中位 16,557 kB、UpdateService 73/73 常驻；system uid + INSTALL_PACKAGES/REBOOT/MASTER_CLEAR |

**分组结论**：第一批 = 6 个平台小组件（功能独立、无进程、无 app 引用）；第二批 = OTA / Guide /
StorageManager / MTP（有实测占用或需你确认功能取舍）。完整批次与收益口径见
[pruning_priority.md](pruning_priority.md)。

## 1. 10 个候选逐项分析

### com.alibaba.ailabs.genie.osupdate

| 项目 | 结论 |
|---|---|
| 角色 | OTA / FOTA 升级代理（system uid，persistent） |
| 空间（APK / lib / oat / 合计） | 1.98 / 0.00 / 3.49 / **5.47 MB** |
| 是否有运行进程 | **是**：`*PERS*` ProcessRecord pid 6667，class `UpdateApplication` |
| persistent | 是（dumpsys flags 含 PERSISTENT） |
| 组件 | service 1 / receiver 1 / provider 1 / activity 3（共 6 个组件）<br>`UpdateService`（createdFromFg=true, startRequested=true, stopIfKilled=false, restartTime=-1d19h30m）→ 自开机即拉起并持续存活，非按需启动 |
| BOOT_COMPLETED | `com.alibaba.ailabs.genie.osupdate.UpdateBroadcastReceiver` |
| 其他 App 调用（app 级） | `com.aliyun.cloudapp.FOTA_UPDATE` ← com.alibaba.ailabs.genie.smartapp<br>`com.aliyun.cloudapp.FOTA_UPDATE` ← com.android.settings<br>`com.alibaba.ailabs.genie.osupdate.front.UpdateActivity` ← com.android.settings |
| framework 侧 | 2 处：包名 + `front.RebootUpdateActivity`（framework 直接点名该类） |
| RAM 收益 | **中**：rev4.1 六小时观测 PSS 12,636–19,687 kB，中位 **16,557 kB**（n=73）；早期单快照值 16,011 kB 与之吻合 |
| CPU 收益 | **高（有量化证据）**：rev4.1 用 `/proc/<pid>/stat` ticks 差值测得 6 h 均值 **21.53%**、中位 21.09%、最小 17.85%、P90 24.59%，72/72 个区间 ≥10%；早期单窗口 343.337 s 的 20% 与之吻合。无 alarm、无 wakelock，属持续负载而非周期尖峰 |
| 功能影响 | 高：设置页"系统更新"入口、FOTA 广播处理、framework 侧重启升级流程 |
| 原厂兼容风险 | 高：system uid + `INSTALL_PACKAGES` / `REBOOT` / `MASTER_CLEAR` / `DELETE_PACKAGES`，targetSdk 20 且 persistent |
| 回退难度 | 低难度：`pm enable`；但 persistent 进程需重启一次才回到常驻状态 |
| 结论 | **优先验证（观测驱动），不直接禁用** |
| 理由 | 唯一有实测 RAM/CPU 数据的候选，但也是风险最高的候选；先量化再决定，不得因 16 MB PSS 直接禁用 |

### com.alibaba.ailabs.genie.guide

| 项目 | 结论 |
|---|---|
| 角色 | 开机引导 / 网络与账号设置向导 |
| 空间（APK / lib / oat / 合计） | 4.67 / 0.75 / 0.00 / **5.42 MB** |
| 是否有运行进程 | 否（快照无进程） |
| persistent | 否 |
| 组件 | service 1 / receiver 0 / provider 1 / activity 8（共 10 个组件）<br>无常驻服务；仅 `AnalyticsService`（非导出）+ Provider `SecondInstaller` |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 0 |
| RAM 收益 | **无证据**（无进程；禁用不会释放可测量的 PSS） |
| CPU 收益 | **无证据** |
| 功能影响 | 中：首次开机引导、Wi-Fi 添加、扫码/账号绑定入口（设备已过引导阶段） |
| 原厂兼容风险 | 中：`NETWORK_SETUP_WIZARD`、system uid；恢复出厂后若被禁用将无引导 |
| 回退难度 | 低难度：`pm enable`（建议恢复出厂前先启用） |
| 结论 | **次优先（存储驱动，需删除才有收益）** |
| 理由 | 体积 5.42 MB 全部是文件占用；无进程，禁用不产生 RAM 收益 |

### com.android.storagemanager

| 项目 | 结论 |
|---|---|
| 角色 | 存储管理 UI（低存储告警 / 自动清理建议） |
| 空间（APK / lib / oat / 合计） | 0.66 / 0.00 / 1.66 / **2.32 MB** |
| 是否有运行进程 | 否（快照无进程） |
| persistent | 否 |
| 组件 | service 1 / receiver 2 / provider 0 / activity 2（共 5 个组件）<br>`AutomaticStorageManagementJobService`（非导出）+ 2 个 BOOT 接收器之一 |
| BOOT_COMPLETED | `.automatic.AutomaticStorageBroadcastReceiver` |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 0 |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据**（BOOT 接收器会在开机时短暂拉起一次，未测量） |
| 功能影响 | 低-中：存储告警通知与"释放空间"入口 |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **次优先（存储驱动）** |
| 理由 | 2.32 MB 存储收益，功能面窄；但开机接收器意味着禁用后少一次进程创建（未量化） |

### com.android.mtp

| 项目 | 结论 |
|---|---|
| 角色 | MTP / 文档提供者（USB 连 PC 传文件） |
| 空间（APK / lib / oat / 合计） | 0.05 / 0.00 / 0.08 / **0.13 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 1 / receiver 1 / provider 1 / activity 1（共 4 个组件）<br>`MtpDocumentsService` + 导出 `MtpDocumentsProvider`（DOCUMENTS_PROVIDER）+ USB_ATTACHED 接收器与 Activity |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 0（但 system_server 会在 USB 连接时按组件名绑定 DocumentsProvider） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 中：USB 连接 PC 后的文件访问；移除后只能靠 adb 传文件 |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.13 MB，无进程；禁用只损失功能，不产生可测量收益 |

### com.android.statementservice

| 项目 | 结论 |
|---|---|
| 角色 | App Links 数字资产校验 |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.08 / **0.08 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 1 / receiver 1 / provider 0 / activity 0（共 2 个组件）<br>`DirectStatementService` + `INTENT_FILTER_NEEDS_VERIFICATION` 接收器 |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 0（校验由 PackageManager 在安装/验证阶段按需绑定） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：仅影响 App Links（http/https 深度链接）校验 |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.08 MB；仅在安装/验证时被绑定，常驻收益为零 |

### com.android.pacprocessor

| 项目 | 结论 |
|---|---|
| 角色 | PAC 代理脚本解析服务 |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.02 / **0.03 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 1 / receiver 0 / provider 0 / activity 0（共 1 个组件）<br>导出 `PacService`；framework 字符串直接点名 `com.android.pacprocessor.PacService` |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | **2 处**（包名 + `PacService` 类名） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：仅在配置 PAC 代理时被绑定 |
| 原厂兼容风险 | 低（但被 framework 按类名引用） |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.03 MB；绑定关系明确，收益为零 |

### com.android.vpndialogs

| 项目 | 结论 |
|---|---|
| 角色 | VPN 授权 / 管理对话框 |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.02 / **0.04 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 0 / receiver 0 / provider 0 / activity 2（共 2 个组件）<br>2 个 Activity（`ConfirmDialog` / `ManageDialog`）；framework 字符串点名 `ManageDialog` |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | **2 处**（包名 + `ManageDialog`） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：VPN 客户端首次连接时的授权 UI |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.04 MB；framework 按类名拉起，禁用只会让 VPN 授权流程报错 |

### com.android.companiondevicemanager

| 项目 | 结论 |
|---|---|
| 角色 | 伴生设备配对（BLE 配对引导） |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.04 / **0.05 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 1 / receiver 0 / provider 0 / activity 1（共 2 个组件）<br>导出 `DeviceDiscoveryService` + `DeviceChooserActivity` |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 1 处（包名） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：伴生设备配对入口 |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.05 MB；无进程，收益为零 |

### com.android.bluetoothmidiservice

| 项目 | 结论 |
|---|---|
| 角色 | BLE-MIDI 服务 |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.03 / **0.04 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 1 / receiver 0 / provider 0 / activity 0（共 1 个组件）<br>`BluetoothMidiService`；framework 字符串点名该类 |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | **2 处**（包名 + `BluetoothMidiService` 类名） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：MIDI 外设（本机无 MIDI 外设记录） |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.04 MB；按类名绑定，收益为零 |

### com.android.captiveportallogin

| 项目 | 结论 |
|---|---|
| 角色 | 强制门户登录页（酒店/机场 Wi-Fi） |
| 空间（APK / lib / oat / 合计） | 0.01 / 0.00 / 0.04 / **0.05 MB** |
| 是否有运行进程 | 否 |
| persistent | 否 |
| 组件 | service 0 / receiver 0 / provider 0 / activity 1（共 1 个组件）<br>1 个 Activity（`android.net.conn.CAPTIVE_PORTAL`） |
| BOOT_COMPLETED | 无 |
| 其他 App 调用（app 级） | 无（仅此不代表安全，见下） |
| framework 侧 | 0（由 framework 在检测到门户时按 action 拉起） |
| RAM 收益 | **无证据** |
| CPU 收益 | **无证据** |
| 功能影响 | 低：需网页认证的 Wi-Fi 网络 |
| 原厂兼容风险 | 低 |
| 回退难度 | 低难度：`pm enable` |
| 结论 | **不建议为收益禁用** |
| 理由 | 0.05 MB；仅在门户场景拉起 |

## 2. OTA 专项（`com.alibaba.ailabs.genie.osupdate`）

### 2.1 服务是否持续运行

证据来自 `dumpsys activity services` 的 ServiceRecord 与 `dumpsys activity processes`：

```
*PERS* UID 1000 ProcessRecord{a9bd599 6667:com.alibaba.ailabs.genie.osupdate/1000}
  class=com.alibaba.ailabs.genie.osupdate.UpdateApplication
* ServiceRecord{661ffe0 u0 com.alibaba.ailabs.genie.osupdate/.UpdateService}
  intent={act=com.alibaba.ailabs.genie.osupdate.service.PROCESS_STARTUP cmp=.../.UpdateService}
  permission=com.alibaba.ailabs.genie.osupdate.UPDATE_SERVICE
  createTime=-1d19h30m9s804ms  lastActivity=-1d19h29m18s52ms  restartTime=-1d19h30m9s557ms
  createdFromFg=true  startRequested=true  stopIfKilled=false
```

结论：**是持续运行**，且不是“按需绑定”而是 **started service**（`startRequested=true`、
`createdFromFg=true`、`stopIfKilled=false`），自快照前约 **1 天 19.5 小时**创建后一直存活；
进程带 `*PERS*` 标记（ActivityManager 视为 persistent 进程，被杀后会被重新拉起）。
这与 Manifest 的 `android:persistent="true"` 一致。

### 2.2 CPU 20% 的采样条件

```
CPU usage from 343337ms to 43280ms ago (2026-11-20 16:03:41.530 to 16:08:41.587):
  20% 6667/com.alibaba.ailabs.genie.osupdate: 17% user + 3.2% kernel / faults: 145059 minor 1 major
```

- **测量窗口**：343.337 s（约 5 分 43 秒），起止时间明确。
- **口径**：该窗口内的 CPU 占比（user+kernel），不是瞬时值，也不是长期平均值。
- 同一快照中 OTA **没有 alarm、没有 wakelock**（`dumpsys alarm` / `dumpsys power` 均无其条目），
  说明这 5 分钟内的负载既不是定时闹钟驱动，也不是持锁常忙；145,059 次 minor fault 提示窗口内
  有密集的页访问（例如校验/解压/扫描类工作）。
- **因此**：该数字只能证明“存在过一段 5 分钟量级的高 CPU 活动”，**不能**推断为长期占用，
  也不能据此估算禁用后的 CPU 节省。

### 2.3 `com.aliyun.cloudapp.FOTA_UPDATE` 是否有实际调用路径

| 调用方 | 形式 | 证据等级 |
|---|---|---|
| `com.alibaba.ailabs.genie.smartapp` | 私有 action 字符串（app 级，非 SDK 噪声） | 较可信（字符串存在，未观测实际广播） |
| `com.android.settings`（S1Settings） | 私有 action 字符串 + 组件 `front.UpdateActivity` | 较可信（同上） |
| framework / system_server | 包名 + `front.RebootUpdateActivity` 类名 | 较可信（vdex 字符串） |

未观察到的是“运行时实际发送过该广播/启动过该 Activity”——快照中没有对应的事件记录。
结论：**存在静态调用路径（三处，均已核实字符串）；运行时是否真的发送/接收广播，属于未观测项。**

证据规则（rev4.1 修正，适用于本文件所有候选）：

| 情形 | 正确写法 | 错误写法 |
|---|---|---|
| 观测到广播接收 / 服务启动 / 日志 | “已观察到的运行时证据” | — |
| 本次窗口未观测到 | “本次观测窗口未捕获到，不代表设备从未使用” → **标记未知** | “设备没有使用该广播” |
| 日志里没有关键词 | “该窗口日志未出现关键词” → **标记未知** | “功能未使用” |
| 静态引用存在但未见运行时调用 | “静态引用成立，运行时调用未观测” → 保留该引用 | “因为没有调用，可以忽略该引用” |

### 2.4 禁用是否影响原厂升级 / 恢复 / 维护

- 升级：影响。设置页“系统更新”通过 `UpdateActivity` 进入；`FOTA_UPDATE` 广播无人接收后，
  升级触发链断在接收器这一环。
- 恢复：不影响 recovery 分区与 SP Flash Tool 回刷（这两条路径与 OTA APK 无关）。
- 维护：OTA 持有 `INSTALL_PACKAGES` / `REBOOT` / `MASTER_CLEAR` / `DELETE_PACKAGES`，
  属原厂“远程维护”能力的一部分；禁用后该能力消失。

### 2.5 禁用后能否 `pm enable` 完整恢复

- 应用本身：`pm enable` 可恢复包状态，逻辑上可回到可用。
- 但它是 **persistent + started service**：`pm enable` 之后进程不会立刻回到“开机即常驻”的状态，
  需要**重启一次**才会重新进入常驻；`stopIfKilled=false` 也意味着禁用前它会持续被拉起。
- `pm disable-user` 不会删除数据；`/data/user/0/com.alibaba.ailabs.genie.osupdate` 保留，
  因此恢复后配置不丢。
- 结论：**可恢复，但不是“零副作用”**——需要一次重启才能回到原状态，且期间升级链路不可用。

### 2.6 是否值得列为优先验证对象

**值得优先验证，但“验证”不等于“禁用”。** 理由：

1. 它是 10 个候选里**唯一**有实测 RAM（16,011 kB）与 CPU（单窗口 20%）数据的；
2. 它也是风险最高的（system uid + 升级/重启能力 + framework 点名），收益与风险同向放大；
3. 因此正确的下一步是**把它变成可量化的对象**：在只读观测下确认 CPU 负载是偶发还是周期性，
   然后再决定是否需要单包禁用试验。

建议的只读观测（**rev4.1 已实际完成**，见 2.7）：

| 观测项 | 方法 | 判据 |
|---|---|---|
| 是否周期性 | 每 5 min 采样 `/proc/<pid>/stat` 增量 + `dumpsys cpuinfo`，连续 ≥6 h | 若仅在特定时刻出现高占比 → 偶发；若每次都有 → 持续负载 |
| 是否与升级检查相关 | 同时抓 `logcat` 关键字 `osupdate` / `FOTA` / `UpdateService` | 出现升级检查日志时 CPU 同步升高 |
| 常驻成本 | `dumpsys meminfo` 多次采样取 PSS 中位数 | 用于替代单次 16,011 kB |
| 触发源 | 观察 `dumpsys activity broadcasts` / 日志是否出现 `FOTA_UPDATE` | 收到 → 运行时证据；未收到 → **标记未知**（不代表设备从未使用） |

**在完成上述观测前，不应把 OTA 列入“建议禁用”的结论。**

### 2.7 rev4.1 只读观测结果（6 小时实测）

观测详情见 [ota_observation_report.md](ota_observation_report.md)；原始样本 `ota_observation/samples.jsonl`。

| 观测项 | 结果 |
|---|---|
| 采样量 | 73 次 / 间隔 300 s / 窗口 21,600 s（6.0 h），PID 变化 0 次 |
| CPU（ticks 差值法） | 均值 **21.53%**、中位数 21.09%、最小 17.85%、P90 24.59%；**72/72 个区间 ≥10%**，47/72 ≥20% |
| 周期性 | 不成立：lag1 = −0.564、lag2 = +0.502（短间隔交替抖动），按小时均值 21.05%–22.68%（极差 1.63%）→ **持续负载**，不是周期尖峰 |
| 定时唤醒 | `dumpsys alarm` 含该包样本 **0/73**；`dumpsys power` 含该包样本 **0/73** → 不来自定时闹钟/持锁 |
| PSS | n=73，最小 12,636 kB / 中位 **16,557 kB** / 最大 19,687 kB |
| UpdateService | 73/73 样本均有 ServiceRecord 且 `startRequested=true` → 持续运行的 started service |
| minor page fault | 约 **496 次/秒**（窗口内 10.7M 次） |
| `FOTA_UPDATE` | **本次观测窗口未捕获到，不代表设备从未使用**（静态引用仍成立：smartapp、S1Settings、framework） |
| 日志行为 | 1,204 行关键词日志（`tv_osupdate`），其中 `upload log file` 776 行、`upload file fail` 404 行，覆盖 7 个不同小时 → 存在“上传日志文件失败 → 重试”的循环（仅日志可见，未做代码级归因） |

**对 rev4 结论的修正**：rev4 只基于单窗口 20% 快照，写的是“CPU 无长期证据”；rev4.1 用 6 小时 ticks 差值证明
这是**持续约 21.5% 的负载**（不是偶发）。因此 OTA 的 CPU 收益应从“无证据”升级为
**“有量化证据的持续负载（21.53% 均值）”** —— 但**是否禁用仍取决于功能取舍**，见第 3 节与观测报告第 3 节。
## 3. 收益与风险排序

评价口径（所有“收益”均指**可测量**的收益，没有测量就标“无证据”）：

| 维度 | 分级 |
|---|---|
| RAM 收益 | 高 / 中 / 低 / **无证据**（快照无进程 → 禁用不释放可测量 PSS） |
| CPU 收益 | 高 / 中 / 低 / **无证据**（单窗口数据不外推） |
| system 空间 | APK / native / OAT 分列；“禁用”恒为 **0**，只有“删除”才有空间收益 |
| 功能影响 | 低 / 中 / 高 / 未知 |
| 原厂兼容风险 | 低 / 中 / 高 / 未知 |
| 回退难度 | 低（`pm enable`）/ 中（需重启恢复常驻）/ 高（需回刷） |

| 候选 | APK MB | lib MB | oat MB | 合计 MB | persistent | 实测 PSS kB | framework 命中 | RAM 收益 | CPU 收益 | 功能影响 | 兼容风险 | 回退 | 结论 |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | 1.98 | 0.00 | 3.49 | 5.47 | 是 | 16,011 | 2 | **中**：rev4.1 六小时观测 PSS 12,636–19,687 kB，中位 **16,557 kB**（n=73）；早期单快照值 16,011 kB 与之吻合 | **高（有量化证据）**：rev4.1 用 `/proc/<pid>/stat` ticks 差值测得 6 h 均值 **21.53%**、中位 21.09%、最小 17.85%、P90 24.59%，72/72 个区间 ≥10%；早期单窗口 343.337 s 的 20% 与之吻合。无 alarm、无 wakelock，属持续负载而非周期尖峰 | 高：设置页"系统更新"入口、FOTA 广播处理、framework 侧重启升级流程 | 高：system uid + `INSTALL_PACKAGES` / `REBOOT` / `MASTER_CLEAR` / `DELETE_PACKAGES`，targetSdk 20 且 persistent | 低难度：`pm enable`；但 persistent 进程需重启一次才回到常驻状态 | **优先验证（观测驱动），不直接禁用** |
| `com.alibaba.ailabs.genie.guide` | 4.67 | 0.75 | 0.00 | 5.42 | 否 | — | 0 | **无证据**（无进程；禁用不会释放可测量的 PSS） | **无证据** | 中：首次开机引导、Wi-Fi 添加、扫码/账号绑定入口（设备已过引导阶段） | 中：`NETWORK_SETUP_WIZARD`、system uid；恢复出厂后若被禁用将无引导 | 低难度：`pm enable`（建议恢复出厂前先启用） | **次优先（存储驱动，需删除才有收益）** |
| `com.android.storagemanager` | 0.66 | 0.00 | 1.66 | 2.32 | 否 | — | 0 | **无证据** | **无证据**（BOOT 接收器会在开机时短暂拉起一次，未测量） | 低-中：存储告警通知与"释放空间"入口 | 低 | 低难度：`pm enable` | **次优先（存储驱动）** |
| `com.android.mtp` | 0.05 | 0.00 | 0.08 | 0.13 | 否 | — | 0 | **无证据** | **无证据** | 中：USB 连接 PC 后的文件访问；移除后只能靠 adb 传文件 | 低 | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.statementservice` | 0.01 | 0.00 | 0.08 | 0.08 | 否 | — | 0 | **无证据** | **无证据** | 低：仅影响 App Links（http/https 深度链接）校验 | 低 | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.pacprocessor` | 0.01 | 0.00 | 0.02 | 0.03 | 否 | — | 2 | **无证据** | **无证据** | 低：仅在配置 PAC 代理时被绑定 | 低（但被 framework 按类名引用） | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.vpndialogs` | 0.01 | 0.00 | 0.02 | 0.04 | 否 | — | 2 | **无证据** | **无证据** | 低：VPN 客户端首次连接时的授权 UI | 低 | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.companiondevicemanager` | 0.01 | 0.00 | 0.04 | 0.05 | 否 | — | 1 | **无证据** | **无证据** | 低：伴生设备配对入口 | 低 | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.bluetoothmidiservice` | 0.01 | 0.00 | 0.03 | 0.04 | 否 | — | 2 | **无证据** | **无证据** | 低：MIDI 外设（本机无 MIDI 外设记录） | 低 | 低难度：`pm enable` | **不建议为收益禁用** |
| `com.android.captiveportallogin` | 0.01 | 0.00 | 0.04 | 0.05 | 否 | — | 0 | **无证据** | **无证据** | 低：需网页认证的 Wi-Fi 网络 | 低 | 低难度：`pm enable` | **不建议为收益禁用** |

### 3.1 最值得优先验证

| 顺序 | 候选 | 为什么优先 | 预期收益（可测量部分） | 证据等级 |
|---|---|---|---|---|
| 1 | `com.alibaba.ailabs.genie.osupdate` | 唯一有实测 RAM/CPU 的候选；persistent + started service 持续存活 | **RAM**：PSS 12,636–19,687 kB，中位 **16,557 kB**（n=73）；**CPU**：6 h ticks 差值均值 **21.53%**（72/72 区间 ≥10%）——持续负载，非周期尖峰 | **已验证**（rev4.1 六小时连续观测；见 `ota_observation_report.md`） |

### 3.2 次优先（存储驱动，只有删除才有收益）

| 候选 | 空间 | 说明 | 证据等级 |
|---|---|---|---|
| `com.alibaba.ailabs.genie.guide` | 5.42 MB（APK 4.67 + lib 0.75） | 无进程、无长期 CPU 证据；禁用收益≈0，删除才有空间收益 | 较可信（体积为文件事实） |
| `com.android.storagemanager` | 2.32 MB（APK 0.66 + oat 1.66） | 同上；有 BOOT 接收器，开机会被拉起一次（未测量） | 较可信 |

### 3.3 不建议为“资源收益”而禁用（功能取舍另议）

`com.android.mtp`、`com.android.statementservice`、`com.android.pacprocessor`、
`com.android.vpndialogs`、`com.android.companiondevicemanager`、
`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`

原因（共同）：

1. 快照时刻**都没有进程**（PSS 无数据）→ 禁用不产生可测量 RAM 收益；
2. 没有长期 CPU 数据 → 无法声称 CPU 收益；
3. 空间合计仅 **0.42 MB**（0.13 + 0.08 + 0.03 + 0.04 + 0.05 + 0.04 + 0.05），
   且“禁用”不释放空间，只有删除才释放，而删除失去的是 framework 明确绑定的功能；
4. 其中 `pacprocessor`、`vpndialogs`、`bluetoothmidiservice` 被 framework **按类名**引用
   （vdex 命中 2 处），禁用后对应流程会直接报错，而不是“静默降级”。

**结论**：这 7 个候选不应进入“为省资源”的验证队列；只有在明确不需要对应功能
（例如确定不用 USB 传文件、不用 VPN、不用 MIDI）时，才作为功能裁剪的对象处理。
## 4. 推荐的真机验证顺序

| 阶段 | 对象 | 目的 | 前置条件 | 观测 | 判定 |
|---|---|---|---|---|---|
| V0（只读） | `com.alibaba.ailabs.genie.osupdate` | 判断 20% CPU 是偶发还是周期 | 无（不改设备） | 每 30 min `dumpsys cpuinfo` + `logcat` 关键字，连续 ≥6 h | 若为偶发 → 无需禁用；若周期性 → 进入 V1 |
| V1（单包禁用） | 同上 | 量化禁用后的 RAM/CPU 变化 | 用户明确授权 + 备份 + 回滚预案 | 24 h `dumpsys meminfo`/`cpuinfo`/`alarm` 对比（同 uptime 区间） | 异常 → `pm enable` + 重启 |
| V2（可选） | `com.alibaba.ailabs.genie.guide` | 验证删除带来的 5.42 MB 空间收益 | 用户授权；确认已过引导阶段 | 重启后是否出现引导阻塞 | 异常 → `pm enable` |
| V3（可选） | `com.android.storagemanager` | 验证 2.32 MB 空间收益 | 同上 | 低存储场景是否仍能收到告警 | 异常 → `pm enable` |
| 不建议 | 其余 7 个 | 无收益可验证 | — | — | 仅按功能需求处理 |

> V0 是只读观测，不需要禁用；V1 之后才是“禁用试验”。本报告不执行任何一项。

## 5. 每个候选的回退方案

| 候选 | 目录 | 回退命令 |
|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | `app/Osupdate` | `pm enable com.alibaba.ailabs.genie.osupdate` + 重启一次（恢复常驻） |
| `com.alibaba.ailabs.genie.guide` | `app/Guide` | `pm enable com.alibaba.ailabs.genie.guide`（立即生效） |
| `com.android.storagemanager` | `priv-app/StorageManager` | `pm enable com.android.storagemanager`（立即生效） |
| `com.android.mtp` | `priv-app/MtpDocumentsProvider` | `pm enable com.android.mtp`（立即生效） |
| `com.android.statementservice` | `priv-app/StatementService` | `pm enable com.android.statementservice`（立即生效） |
| `com.android.pacprocessor` | `app/PacProcessor` | `pm enable com.android.pacprocessor`（立即生效） |
| `com.android.vpndialogs` | `priv-app/VpnDialogs` | `pm enable com.android.vpndialogs`（立即生效） |
| `com.android.companiondevicemanager` | `app/CompanionDeviceManager` | `pm enable com.android.companiondevicemanager`（立即生效） |
| `com.android.bluetoothmidiservice` | `app/BluetoothMidiService` | `pm enable com.android.bluetoothmidiservice`（立即生效） |
| `com.android.captiveportallogin` | `app/CaptivePortalLogin` | `pm enable com.android.captiveportallogin`（立即生效） |

- `persistent` 包（仅 OTA）：`pm enable` 后需**重启一次**才恢复到“开机即常驻”。
- 若走到了“删除 APK”这一步（本报告不推荐）：`adb push` 回原目录 + `chmod 644` + `restorecon -R`，
  或回刷 `flash/ori/system.bin`。
- `pm disable-user` 不删除数据目录，恢复后配置保留。

## 6. 尚未验证的结论（不得当作已证）

1. OTA 的 20% CPU 是否周期性 —— 只有 343 s 单窗口数据。
2. OTA 的 `FOTA_UPDATE` 是否在运行时真的被发送/接收 —— 只有静态调用路径。
3. 任何候选“禁用后释放多少 RAM” —— 除 OTA 的单快照 PSS 外无测量；且禁用 ≠ 释放同等 PSS。
4. 任何候选“禁用后减少多少后台 CPU” —— 无长期数据。
5. framework 绑定关系的运行时表现（例如禁用 `vpndialogs` 后 VPN 授权是报错还是静默）—— 未实测。
6. 引导、存储管理两个候选的实际使用频率 —— 无使用统计（`usagestats` 未采集）。

## 7. 与现有报告的关系

| 文件 | 关系 |
|---|---|
| `app_inventory.md` / `.json` | 体积、persistent、组件、PSS 的事实来源 |
| `app_dependency_analysis.md` | 依赖判定规则与降噪方法（本文件沿用同一口径） |
| `app_removal_recommendations.md` | A/B/C/D 分类与用户保护；本文件只细化 B 类的收益/风险 |
| `optimization_plan.md` | 执行计划；rev4 已改为按本文件的收益/风险顺序，而非按 APK 大小 |
| `risk_assessment.md` | 通用风险与回退；本文件的“兼容风险/回退难度”列与其口径一致 |
