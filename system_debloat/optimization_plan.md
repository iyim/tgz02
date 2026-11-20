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
不设实验项、不提供命令；见 2.5 节。因此原本的“实验 1/2”已不存在，实际可试验项从 OTA 开始。

### 2.1 实验 1：OTA（`com.alibaba.ailabs.genie.osupdate`）

```bash
# 执行前：记录基线（uptime、alarm、meminfo、cpuinfo）
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
# 观察 ≥24 h 后，再决定下一项（不要与下一项同时做）
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \| grep osupdate`（快照基线 16,011 kB） | 无该进程 |
| CPU 变化 | 多次采样 `dumpsys cpuinfo`（**基线 20% 只是单次 343 s 区间快照，不能推断为持续占用**） | 多次采样中不再出现该进程 |
| 框架异常 | `logcat \| grep -iE "osupdate|RebootUpdate"` | 无 `ClassNotFoundException` |
| 功能影响 | 设置页“系统更新”不可用；升级前需临时 `pm enable` | 用户接受 |
| 回滚 | `pm enable com.alibaba.ailabs.genie.osupdate` | 立即恢复 |

### 2.2 实验 2：开机引导（`com.alibaba.ailabs.genie.guide`）

```bash
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.guide
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \| grep guide` | 无该进程 |
| 引导不再弹出 | 重启一次，观察是否进入正常桌面 | 无引导页阻塞 |
| 回滚 | `pm enable com.alibaba.ailabs.genie.guide`（恢复出厂前必须启用） | 立即恢复 |

### 2.3 已取消的旧实验（rev3）

| 旧实验 | 原对象 | 状态 |
|---|---|---|
| 旧实验 1 | 当贝桌面 `com.dangbei1.tvlauncher` | **取消**：受用户保护，禁止禁用 |
| 旧实验 2 | EasyTouch `com.shere.assistivetouch` | **取消**：受用户保护，禁止禁用 |
| 旧实验 3 | OTA `com.alibaba.ailabs.genie.osupdate` | 保留（现为实验 1） |

> 其快照数据（当贝 PSS 96,912 kB、EasyTouch 21,461+16,961 kB、JPush 527 次唤醒）仍作为**观测事实**保留在
> `app_dependency_analysis.md` 与 `app_removal_recommendations.md`，但**不产生任何执行动作**。

### 2.4 实验 3+（AOSP 边缘组件）

逐项执行、逐项观察，顺序建议：
`com.android.mtp` → `com.android.statementservice` → `com.android.vpndialogs` →
`com.android.bluetoothmidiservice` → `com.android.captiveportallogin` →
`com.android.companiondevicemanager` → `com.android.pacprocessor` → `com.android.storagemanager`。

```bash
# 单包形式（一次只跑一行，观察后再跑下一行）
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.android.mtp
```

> 以上命令是**执行预案**，本轮修订未在任何设备上执行；设备 `pm list packages -d` 仍为空。

### 2.5 明确不进 P1 的包

| 包 | 原因 |
|---|---|
| **六个受保护 App**：`com.dangbei1.tvlauncher`、`bin.mt.plus`、`com.estrongs.android.pop`、`com.web1n.permissiondog`、`com.shere.assistivetouch`、`com.topjohnwu.magisk` | **rev3 用户保护**：禁止删除/禁用/清数据/限制自启；见 `app_removal_recommendations.md` 第 2 节 |
| `com.alipay.arome.app`（AMPE） | rev2 改为 C：7 个包对 `genie.webapps.START/INIT`、`GwaReceiver` 有真实引用；只有用户明确放弃小程序/H5 技能并完成动态验证后才考虑（第 5.1 节） |
| `GenieAicare` / `GenieRTC` | 设备上由 `/data/app` 覆盖，禁用/删除会牵动“系统应用退化为普通应用”的未验证风险 |
| 全部 D 类 | 语音链路、UI、Provider、framework 基础件 |
| Magisk 相关镜像外组件 | `/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`、`boot.img`：**禁止删除、禁止清理、禁止修改** |

### 2.6 P1 结果记录模板

| 实验 | 包 | 开始时间 | uptime | 24h 后 meminfo 变化 | alarm 变化 | logcat 异常 | 判定 | 回滚 |
|---|---|---|---|---|---|---|---|---|
| 1 | `com.alibaba.ailabs.genie.osupdate` | | | | | | | `pm enable` |
| 2 | `com.alibaba.ailabs.genie.guide` | | | | | | | `pm enable` |
| 3 | `com.android.mtp` | | | | | | | `pm enable` |

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
| P1-1 | 单包实验 1：OTA（观察 24 h） | 0.5 天 + 24 h | 中（framework 引用） |
| P1-2 | 单包实验 2：开机引导（观察 24 h） | 0.5 天 + 24 h | 低 |
| P1-3 | 单包实验 3+：8 个 AOSP 边缘组件 | 每项 24 h，按需 | 低 |
| P1-4 | C 类逐项试探（不含 AMPE；AMPE 需产品决策） | 按需，每项 24 h | 中 |
| P2 | 用户态卸载验证 → 镜像删除（仅限通过项 + 用户授权） | 1 周观察 + 1 天打包验证 | 中高（需回刷预案） |
| P3 | 结构优化（不做 odex 清理；按产品需求裁剪技能包） | 另议 | 需产品决策 |

> rev3：旧 P1-1（当贝）、P1-2（EasyTouch）已取消——两者受用户保护，禁止禁用；
> 权限狗同样受保护，已从试验顺序中移除。当前可试验清单见第 2.1–2.4 节。

## 8. 结论性建议

1. **六个受保护 App 不参与任何精简动作**（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）。
   它们的技术分析结论仍记录在案，但不转化为执行项。
2. 可试验项只剩 OTA、开机引导与 8 个 AOSP 边缘组件，且必须**一次一个、各观察 ≥24 h**；
   OTA 的 20% CPU 只作单次快照参考，不能当作持续占用证据。
3. 空间上唯一的 A 类候选是 `ES.apk`（4.60 MB），但**受用户保护**，**当前可执行删除为 0 项**；
   即使将来解除保护，也需先做用户态卸载验证并取得授权。
4. 语音链路（D 类，252.9 MB）不要动。**运行时证据只覆盖 `smartapp`**（3 进程 PSS 合计
   216,324 kB、`:core` 单次区间 72% CPU、持有 4 个唤醒锁）；`AliGenieService`、`GenieMonitor`、`GenieIoT`
   的运行时占用未测量，其 D 级依据是 Manifest + 跨包引用。想省资源应围绕它“减邻居”，不是“减自己”。
5. C 类 20 个包（241.07 MB），含 AMPE、`GenieRTC`、`Waft`、`AliVideoPlayer` 等，
   必须在真机做逐项禁用观察后才能定级；本报告拒绝在无动态证据时把它们写成“可删”。
6. 2 个包（`GenieAicare`、`GenieRTC`）在设备上由 `/data/app` 版本覆盖，
   **不要**把它们的系统内 prebuilt 当作“多余文件”删除——后果是包退化为普通数据区应用（未验证但风险明确）；
   `magisk.apk` 同理且另有用户保护。

## 9. 修订说明（rev2 / rev3）

**rev3（2026-11-20，当前版本）**

- 六个受保护 App（当贝桌面、MT 管理器、ES、权限狗、EasyTouch、Magisk）从 P1/P2 全部清单移除；
  旧实验 1（当贝）与实验 2（EasyTouch）取消，权限狗从试验顺序移除；结果记录模板同步更新。
- 新增 2.5 节“明确不进 P1 的包”，其中受保护 App 与 Magisk 镜像外组件列为禁止项。
- P2 前置条件新增“目标包不在六个受保护 App 之列”；ES 明确不进入 P2 流程。
- 移除全部旧目录路径引用（P0 第 5 条、验收表中的 T5 行、内存口径引用均改写）。

**rev2（2026-11-20）**

- 禁用批次改为单包逐项实验，每项独立观察 ≥24 h，并提供结果记录模板（第 2.6 节）。
- 删除原第 2 批中的 `com.alipay.arome.app`（AMPE），改列“明确不进 P1 的包”。
- OTA 的 20% CPU 统一标注为“单次 343 s 区间快照”。
- 第 4 节新增内存指标口径与 CPU 区间的引用规则。

完整改动清单与未验证事项见 [revisions.md](revisions.md)。
