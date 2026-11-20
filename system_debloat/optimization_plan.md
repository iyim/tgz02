# 分阶段精简方案

原则：**先禁用、后删除；先单包、后批量；每步有基线、有观测、可秒级回退。**
本方案不改动任何镜像文件，也不生成精简后的 `system.img`（那属于另行评审的独立交付物）。

## 0. 目标与验收口径

| 目标 | 指标 | 验收方式 |
|---|---|---|
| 释放分区空间 | A 类 4.60 MB；A+B 上限 32.75 MB | 镜像内文件体积求和 |
| 降低常驻内存 | 减少 persistent / 推送保活 / 保活 Provider 宿主进程数量 | `dumpsys meminfo` 进程清单对比（只比数量与名次，不承诺 MB） |
| 降低后台唤醒 | 减少 `dumpsys alarm` 中的 `*walarm*` 唤醒次数 | 同一 uptime 区间对比 |
| 不破坏原厂能力 | 语音唤醒/ASR/技能、桌面、设置、蓝牙、遥控 | 见第 5 节验收清单 |
| 不破坏 AI 改造 | T5 bridge（adb/UDS）与音频链路 | 既有 T5 测试脚本回归 |

## 1. P0 准备（不动设备功能）

1. **镜像备份**（已完成，本报告直接引用）：
   `D:\tgz02\flash\ori\system.bin`（原始 1,023,410,176 B）、`D:\tgz02\flash\change\system.bin`
   （当前工作状态）、`boot.bin`、`userdata.bin`、`cache.bin`、`vendor.bin`（167,772,160 B）。
2. **状态快照**：导出安装清单与禁用清单，作为后续比对的基线。
   ```bash
   adb -s 192.168.1.9:5555 shell pm list packages -s > pm_system_before.txt
   adb -s 192.168.1.9:5555 shell pm list packages -d > pm_disabled_before.txt   # 当前为空
   adb -s 192.168.1.9:5555 shell dumpsys package > package_all_before.txt
   ```
3. **运行时基线**（脚本见 `tools/collect_baseline.sh`）：
   `dumpsys meminfo`、`dumpsys cpuinfo`、`dumpsys power`（唤醒锁）、`dumpsys alarm`、`dumpsys activity services`。
4. **记录 uptime**（`adb shell cat /proc/uptime`），否则 alarm/wakelock 计数不可比较。
5. **确认 T5 侧无正在进行的实验**，避免精简期间干扰 T5 的测试数据（本目录与 T5 工程完全独立）。

## 2. P1 纯禁用（不改分区，可秒级回退）

只动 `packages.xml` 的 enabled 状态，**不改 system 分区、不释放空间、立刻可逆**。

**rev2 修正**：本节不再使用“批次”一次性禁用多个包。原因：同时禁用多个包时，一旦出现异常（桌面异常、
通知缺失、语音技能报错）无法归因到具体包。改为**单包逐项实验**：一次只禁用一个包，独立观察 ≥24 h，
记录观测数据、判定通过后才进入下一项。

**rev3 修正**：六个受保护 App（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）**从本节全部实验中移除**，
不设实验项、不提供命令；见 2.5 节。

**rev4 修正**：实验顺序**不再按 APK 大小排**，改为按“可测量收益 × 功能风险”排（依据见
[b_class_priority_analysis.md](b_class_priority_analysis.md)）：

| 队列 | 对象 | 理由 |
|---|---|---|
| V0（只读，不禁用） | OTA | 10 个候选里唯一有实测 PSS（16,011 kB）与 CPU（343 s 窗口 20%）的；先量化再决定 |
| V1（单包禁用） | OTA | 若 V0 证明为周期性负载才做；风险最高，需最严格观测 |
| V2（可选） | 开机引导 | 5.42 MB 存储收益，但**只有删除才有**；无进程，禁用不产生 RAM 收益 |
| V3（可选） | 存储管理 | 2.32 MB 存储收益，同上 |
| 不进入队列 | 其余 7 个平台小组件 | 合计 0.42 MB、无进程、无长期 CPU 证据；仅供功能取舍 |

### 2.0 V0：OTA 只读观测（本轮不执行，需另行授权）

| 观测项 | 方法 | 判据 |
|---|---|---|
| 是否周期性 | 每 30 min 采样 `dumpsys cpuinfo`，连续 ≥6 h | 仅偶发高占比 → 不必禁用；每次都有 → 进入 V1 |
| 触发源 | `logcat` 关键字 `osupdate` / `FOTA` / `UpdateService` | 与升级检查同现 → 属升级检查开销 |
| 常驻成本 | 多次 `dumpsys meminfo` 取 PSS 中位数 | 替代单次 16,011 kB |
| 调用路径 | `dumpsys activity broadcasts` 是否收到 `FOTA_UPDATE` | 从未收到 → 该路径本机未使用 |

### 2.1 V1：OTA 单包禁用（仅在 V0 判定为周期性负载后）

```bash
# 执行前：记录基线（uptime、alarm、meminfo、cpuinfo）
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
# 观察 ≥24 h 后，再决定下一项（不要与下一项同时做）
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \| grep osupdate`（快照基线 16,011 kB，persistent 常驻） | 无该进程 |
| CPU 变化 | 多次采样 `dumpsys cpuinfo`（**基线 20% 只是单次 343 s 区间快照，不能推断为持续占用**） | 多次采样中不再出现该进程，且与 V0 基线对比 |
| 框架异常 | `logcat \| grep -iE "osupdate|RebootUpdate"` | 无 `ClassNotFoundException` |
| 功能影响 | 设置页“系统更新”不可用；`FOTA_UPDATE` 广播无人接收；升级前需临时 `pm enable` | 用户接受 |
| 回退 | `pm enable com.alibaba.ailabs.genie.osupdate` + 重启一次（persistent 需重启才恢复常驻） | 进程重新常驻 |

### 2.2 V2：开机引导（存储驱动，可选）

```bash
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.guide
```

> 注意：该包**快照无进程**，禁用不会带来可测量的 RAM 收益；其 5.42 MB 只有在“删除 APK”时才会释放。
> 禁用的唯一意义是验证“移除引导是否影响使用”，为后续是否删除提供依据。
| 引导不再弹出 | 重启一次，观察是否进入正常桌面 | 无引导页阻塞 |
| 回滚 | `pm enable com.alibaba.ailabs.genie.guide`（恢复出厂前必须启用） | 立即恢复 |

> 注意：该包**快照无进程**，禁用不会带来可测量的 RAM 收益；其 5.42 MB 只有在“删除 APK”时才会释放。
> 禁用的唯一意义是验证“移除引导是否影响使用”，为后续是否删除提供依据。

### 2.3 已取消的旧实验（rev3）

| 旧实验 | 原对象 | 状态 |
|---|---|---|
| 旧实验 1 | 当贝桌面 `com.dangbei1.tvlauncher` | **取消**：受用户保护，禁止禁用 |
| 旧实验 2 | EasyTouch `com.shere.assistivetouch` | **取消**：受用户保护，禁止禁用 |
| 旧实验 3 | OTA `com.alibaba.ailabs.genie.osupdate` | 保留（现为 V0/V1） |

> 其快照数据（当贝 PSS 96,912 kB、EasyTouch 21,461+16,961 kB、JPush 527 次唤醒）仍作为**观测事实**保留在
> `app_dependency_analysis.md` 与 `app_removal_recommendations.md`，但**不产生任何执行动作**。

### 2.4 不入队：7 个平台小组件（rev4）

`com.android.mtp`、`com.android.statementservice`、`com.android.pacprocessor`、`com.android.vpndialogs`、
`com.android.companiondevicemanager`、`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`

- 快照时刻**均无进程** → 禁用不产生可测量 RAM 收益；
- 无长期 CPU 数据 → 无法声称 CPU 收益；
- 空间合计仅 **0.42 MB**，且禁用不释放空间；
- `pacprocessor` / `vpndialogs` / `bluetoothmidiservice` 被 framework **按类名**引用，
  禁用后对应流程会直接报错。

因此本节**不提供禁用命令**。只有当你明确决定放弃某项功能（如不再用 USB 传文件、不用 VPN）时，
才把它当作“功能裁剪”单独立项，而不是资源优化项。详见
[b_class_priority_analysis.md](b_class_priority_analysis.md) 第 3.3 节。

### 2.5 明确不进 P1 的包

| 包 | 原因 |
|---|---|
| **六个受保护 App**：`com.dangbei1.tvlauncher`、`bin.mt.plus`、`com.estrongs.android.pop`、`com.web1n.permissiondog`、`com.shere.assistivetouch`、`com.topjohnwu.magisk` | **rev3 用户保护**：禁止删除/禁用/清数据/限制自启；见 `app_removal_recommendations.md` 第 2 节 |
| `com.alipay.arome.app`（AMPE） | rev2 改为 C：7 个包对 `genie.webapps.START/INIT`、`GwaReceiver` 有真实引用；只有用户明确放弃小程序/H5 技能并完成动态验证后才考虑（第 5.1 节） |
| `GenieAicare` / `GenieRTC` | 设备上由 `/data/app` 覆盖，禁用/删除会牵动“系统应用退化为普通应用”的未验证风险 |
| 全部 D 类 | 语音链路、UI、Provider、framework 基础件 |
| Magisk 相关镜像外组件 | `/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`、`boot.img`：**禁止删除、禁止清理、禁止修改** |

### 2.6 P1 结果记录模板

| 阶段/实验 | 包 | 开始时间 | uptime | 观测结果 | 与基线对比 | logcat 异常 | 判定 | 回滚 |
|---|---|---|---|---|---|---|---|---|
| V0（只读） | `com.alibaba.ailabs.genie.osupdate` | | | 6 h CPU 采样 | — | — | 偶发 / 周期性 | 无需 |
| V1 | `com.alibaba.ailabs.genie.osupdate` | | | 24 h meminfo/cpuinfo/alarm | 与 V0 比 | | | `pm enable` + 重启 |
| V2（可选） | `com.alibaba.ailabs.genie.guide` | | | 重启后引导行为 | — | | | `pm enable` |
| V3（可选） | `com.android.storagemanager` | | | 低存储告警 | — | | | `pm enable` |

### 2.7 C 类试探（可选，逐项一次只动一个）

按 `app_removal_recommendations.md` 第 5.2 节的验证表，一次禁用一个，24 h 后确认无异常再进下一个。
建议顺序：`GenieScreensaver` → `GenieAlbums` → `GenieBrowser` → `AliVideoPlayer` → `GenieRTC` → `Waft`。
其中 `Waft`、`GenieRTC` 与前台 UI / 通知强相关，仅在其功能确实不需要时禁用。
**受保护 App 不在本清单内。**

## 3. P2 删除（改镜像，需独立评审）

**前置条件**：① P1 对应项连续运行 ≥ 7 天无异常；② T5 回归通过；③ **用户明确授权**；
④ 目标包**不在六个受保护 App 之列**（rev3）；⑤ 不是被 `/data/app` 覆盖的 2 个包之一（`GenieAicare`/`GenieRTC`），
或已接受“包退化为普通数据区应用”的未验证后果。

1. **先做用户态卸载验证**（不改分区，等价于“删除后世界”）：
   ```bash
   adb -s 192.168.1.9:5555 shell pm uninstall -k --user 0 <pkg>
   # 观察 7 天；需要时恢复：
   adb -s 192.168.1.9:5555 shell cmd package install-existing --user 0 <pkg>
   ```
   注意：唯一 A 类候选 `com.estrongs.android.pop`（ES）**已受用户保护**，**不进入本流程**；
   本报告不执行任何卸载命令。
2. **确认后再改镜像**：在离线解包目录删除对应目录 → 重新打包 → 单机验证。
   * 打包与刷写不在本报告范围；本报告不产出未经验证的镜像。
3. 删除时一并处理：
   * `oat/arm/<Name>.odex|.vdex` 随目录一起删（否则 odex 无宿主会报校验失败）；
   * `/data/dalvik-cache` 对应条目会在下次开机重建；
   * `/data/data/<pkg>` 建议保留或 `pm clear`，共享 uid 场景下保留更安全。
4. **不建议**为省空间去删 `oat/`、`vdex`（会让首次启动变慢、CPU 峰值升高，与“省 RAM”目标相反）。
5. **AMPE（87.18 MB）不走 P2 常规流程**：它属 C 类，删除前提是用户明确放弃小程序/H5 技能并完成
   第 2.5 节引用的动态验证；即使通过，也应先禁用观察，再评估是否改镜像。

## 4. 测量方法（禁止编造数字）

```bash
S=192.168.1.9:5555
adb -s $S shell cat /proc/uptime                 # 记录时间基准
adb -s $S shell dumpsys meminfo    > meminfo_$(date +%m%d_%H%M).txt
adb -s $S shell dumpsys cpuinfo    > cpuinfo_$(date +%m%d_%H%M).txt
adb -s $S shell dumpsys power      > power_$(date +%m%d_%H%M).txt
adb -s $S shell dumpsys alarm      > alarm_$(date +%m%d_%H%M).txt
adb -s $S shell dumpsys activity services > services_$(date +%m%d_%H%M).txt
adb -s $S shell ps -A -o USER,PID,RSS,NAME > ps_$(date +%m%d_%H%M).txt
```

对比规则：
- **只比同 uptime 区间的 `*walarm*` 唤醒次数**，不同 uptime 的绝对值不可比；
- **只比进程清单与 PSS 名次**，单次 PSS 差值不作为“节省值”；
- **`MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 是不同指标**，不可互换或相加
  （定义见 `README.md` 第 7 节）；本机 35 分钟内 `MemFree` 从 89,812 kB 变到 44,332 kB，
  说明单点内存值天然不可作为收益证据；
- `dumpsys cpuinfo` 给出的是**一个时间区间内的占比**（本报告引用的是 343 s 区间），
  必须标注区间长度，不能表述为“持续 CPU 占用”；
- 若需要可信的节省量，用 `dumpsys batterystats --reset` 后跑满 24 h 的 `Estimated power use` 与
  `dumpsys meminfo` 多次采样的中位数。

## 5. 验收清单（每批次都跑）

| 类别 | 检查项 | 命令 / 观察 |
|---|---|---|
| 开机 | 正常进入桌面，无 bootloop | 重启一次 |
| 桌面 | HOME 仍为 `GenieLauncher` | `cmd package resolve-activity -c android.intent.category.HOME -a android.intent.action.MAIN` |
| 语音 | 唤醒词 → ASR → 技能 3 连测 | 现场语音 + `logcat \| grep -i aligenie` |
| 音频 | 采集与播放无爆音/断流 | 既有 T5 音频回归脚本 |
| 设置 | 打开设置、修改音量/网络 | `am start -n com.android.settings/.Settings` |
| 蓝牙 | 遥控/音箱配对 | `dumpsys bluetooth_manager` |
| 通知 | 状态栏与下拉正常 | SystemUI 观察 |
| T5 | bridge 启动、UDS 收发 | T5 工程既有测试脚本（本目录不引用其路径） |
| 保护 | 六个受保护 App 仍在且可正常使用 | `pm path <pkg>`；当贝桌面打开、ES 打开、权限狗打开 |

## 6. 逐项恢复

| 包 | 目录 | 恢复命令 |
|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | `app/Osupdate` | adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate |
| `com.alibaba.ailabs.genie.guide` | `app/Guide` | adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.guide |
| `com.android.storagemanager` | `priv-app/StorageManager` | adb -s 192.168.1.9:5555 shell pm enable com.android.storagemanager |
| `com.android.mtp` | `priv-app/MtpDocumentsProvider` | adb -s 192.168.1.9:5555 shell pm enable com.android.mtp |
| `com.android.statementservice` | `priv-app/StatementService` | adb -s 192.168.1.9:5555 shell pm enable com.android.statementservice |
| `com.android.captiveportallogin` | `app/CaptivePortalLogin` | adb -s 192.168.1.9:5555 shell pm enable com.android.captiveportallogin |
| `com.android.companiondevicemanager` | `app/CompanionDeviceManager` | adb -s 192.168.1.9:5555 shell pm enable com.android.companiondevicemanager |
| `com.android.bluetoothmidiservice` | `app/BluetoothMidiService` | adb -s 192.168.1.9:5555 shell pm enable com.android.bluetoothmidiservice |
| `com.android.vpndialogs` | `priv-app/VpnDialogs` | adb -s 192.168.1.9:5555 shell pm enable com.android.vpndialogs |
| `com.android.pacprocessor` | `app/PacProcessor` | adb -s 192.168.1.9:5555 shell pm enable com.android.pacprocessor |

> 表中不含六个受保护 App：它们从未被禁用或卸载，不需要恢复路径。
> `bin.mt.plus` 为设备侧安装，不在镜像清单内。

镜像级删除的恢复：`adb push` 回原目录（`chmod 644` + `restorecon -R`），或 SP Flash Tool 回刷
`flash/ori/system.bin`。

## 7. 排期建议

| 阶段 | 内容 | 工期 | 风险 |
|---|---|---|---|
| P0 | 备份核对 + 基线采集 | 0.5 天 | 无 |
| V0 | OTA **只读**观测（每 30 min 采样，连续 ≥6 h） | 0.5 天 | 无（不改设备） |
| V1（条件触发） | 仅当 V0 判定为周期性负载：OTA 单包禁用 + 24 h 观测 | 0.5 天 + 24 h | 中高（framework 点名 + 升级链路） |
| V2（可选） | 开机引导单包验证（存储驱动，禁用本身无 RAM 收益） | 0.5 天 + 24 h | 低-中 |
| V3（可选） | 存储管理单包验证 | 0.5 天 + 24 h | 低 |
| 不入队 | 7 个平台小组件（合计 0.42 MB，无进程、无 CPU 数据） | — | 仅在功能取舍时单独立项 |
| P1-C | C 类逐项试探（不含 AMPE；AMPE 需产品决策） | 按需，每项 24 h | 中 |
| P2 | 用户态卸载验证 → 镜像删除（仅限通过项 + 用户授权） | 1 周观察 + 1 天打包验证 | 中高（需回刷预案） |
| P3 | 结构优化（不做 odex 清理；按产品需求裁剪技能包） | 另议 | 需产品决策 |

> rev4：排期改为按“可测量收益 × 风险”组织（依据 `b_class_priority_analysis.md`），
> 不再按 APK 体积排序。旧的“实验 3+ 依次禁用 8 个 AOSP 组件”已取消——它们没有可测量收益。

## 8. 结论性建议

1. **六个受保护 App 不参与任何精简动作**（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）。
   其技术分析结论仍记录在案，但不转化为执行项。
2. 10 个 B 类候选里，**只有 OTA 有实测占用**（PSS 16,011 kB / 单窗口 20% CPU），
   其余 9 个在快照中**都没有进程**、没有长期 CPU 数据——因此“禁用它们省 RAM”没有证据支撑。
3. 先做 **V0 只读观测** 判断 OTA 的 20% 是否周期性；在拿到多次采样前，不把 OTA 列入“建议禁用”。
4. 存储收益与 RAM 收益要分开算：`guide` 5.42 MB、`storagemanager` 2.32 MB 只有**删除**才释放；
   在“只禁用”的场景下，本批 10 个候选的**可释放空间为 0**。
5. 7 个平台小组件（合计 0.42 MB）不建议为资源收益禁用；其中 `pacprocessor`/`vpndialogs`/
   `bluetoothmidiservice` 被 framework 按类名引用，禁用只会让对应流程报错。
6. 语音链路（D 类，252.9 MB）不要动。**运行时证据只覆盖 `smartapp`**（3 进程 PSS 合计
   216,324 kB、`:core` 单次区间 72% CPU、持有 4 个唤醒锁）；`AliGenieService`、`GenieMonitor`、`GenieIoT`
   的运行时占用未测量，其 D 级依据是 Manifest + 跨包引用。
7. C 类 20 个包（241.07 MB）必须在真机做逐项禁用观察后才能定级；
   本报告拒绝在无动态证据时把它们写成“可删”。

## 9. 修订说明（rev2 / rev3 / rev4）

**rev4（2026-11-20，当前版本）**

- 新增 `b_class_priority_analysis.md`：10 个 B 类候选逐项收益/风险分析与 OTA 专项。
- 第 2 节改为按“可测量收益 × 功能风险”排序：V0 只读观测 → V1 OTA 单包禁用（条件触发）
  → V2/V3 存储驱动（可选）→ 7 个平台小组件**不入队**。
- 取消旧的“依次禁用 8 个 AOSP 组件”预案（无可测量收益，且 3 个被 framework 按类名引用）。
- 结果记录模板改为 V0/V1/V2/V3 结构；回退说明补充“persistent 需重启恢复常驻”。

**rev3（2026-11-20）**

- 六个受保护 App（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）从 P1/P2 全部清单移除；
  旧实验 1（当贝）与实验 2（EasyTouch）取消，权限狗从试验顺序移除；结果记录模板同步更新。
- 新增 2.5 节“明确不进 P1 的包”，其中受保护 App 与 Magisk 镜像外组件列为禁止项。
- P2 前置条件新增“目标包不在六个受保护 App 之列”；ES 明确不进入 P2 流程。
- 移除全部旧目录路径引用。

**rev2（2026-11-20）**

- 禁用批次改为单包逐项实验，每项独立观察 ≥24 h，并提供结果记录模板。
- 删除原第 2 批中的 `com.alipay.arome.app`（AMPE），改列“明确不进 P1 的包”。
- OTA 的 20% CPU 统一标注为“单次 343 s 区间快照”。
- 第 4 节新增内存指标口径与 CPU 区间的引用规则。

完整改动清单与未验证事项见 [revisions.md](revisions.md)。
