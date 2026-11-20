# 分阶段精简方案

原则：**先禁用、后删除；先单包、后批量；每步有基线、有观测、可秒级回退。**
本方案不改动任何镜像文件，也不生成精简后的 `system.img`（那属于另行评审的独立交付物）。

## 0. 目标与验收口径

| 目标 | 指标 | 验收方式 |
|---|---|---|
| 释放分区空间 | A 类 4.60 MB；A+B 上限 119.93 MB | 镜像内文件体积求和 |
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
5. **确认 T5 侧无正在进行的实验**，避免精简期间干扰 `my-doc/06_t5_bridge` 的测试数据。

## 2. P1 纯禁用（不改分区，可秒级回退）

只动 `packages.xml` 的 enabled 状态，**不改 system 分区、不释放空间、立刻可逆**。

### 批次 1（收益最大，先跑 24 h）

```bash
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.dangbei1.tvlauncher
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.shere.assistivetouch
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
```

预期：消失 3 个常驻进程族（快照 PSS 分别 96,912 / 21,461+16,961 / 16,011 KB），
`dumpsys alarm` 中 JPush 527 次唤醒与 COCKROACH 62 次唤醒不再增长，`dumpsys cpuinfo` 中的 20% CPU 项消失。
观察点：`logcat` 是否出现 `ClassNotFoundException: ...osupdate...`、桌面是否仍正常。

### 批次 2（体积与入口类）

```bash
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alipay.arome.app
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.web1n.permissiondog
adb -s 192.168.1.9:5555 shell pm disable-user --user 0 com.alibaba.ailabs.genie.guide
```

观察点：语音触发任一 H5 / 小程序技能是否报错（AMPE 是 `genie.webapps` 容器）。

### 批次 3（AOSP 边缘组件，风险≈0）

```bash
for p in com.android.mtp com.android.statementservice com.android.vpndialogs \
         com.android.bluetoothmidiservice com.android.captiveportallogin \
         com.android.companiondevicemanager com.android.pacprocessor com.android.storagemanager; do
  adb -s 192.168.1.9:5555 shell pm disable-user --user 0 $p
done
```

### 批次 4（C 类试探，逐项一次只动一个）

按 `app_removal_recommendations.md` 第 4 节的验证表，一次禁用一个，24 h 后确认无异常再进下一个。
建议顺序：`GenieScreensaver` → `GenieAlbums` → `GenieBrowser` → `AliVideoPlayer` → `GenieRTC` → `Waft`。
其中 `Waft`、`GenieRTC` 与前台 UI / 通知强相关，仅在其功能确实不需要时禁用。

## 3. P2 删除（改镜像，需独立评审）

**前置条件**：P1 对应项连续运行 ≥ 7 天无异常，且 T5 回归通过。

1. **先做用户态卸载验证**（不改分区，等价于“删除后世界”）：
   ```bash
   adb -s 192.168.1.9:5555 shell pm uninstall -k --user 0 <pkg>
   # 观察 7 天；需要时恢复：
   adb -s 192.168.1.9:5555 shell cmd package install-existing --user 0 <pkg>
   ```
2. **确认后再改镜像**：在离线解包目录删除对应目录 → 重新打包 → 单机验证。
   * 打包与刷写不在本报告范围；本报告不产出未经验证的镜像。
3. 删除时一并处理：
   * `oat/arm/<Name>.odex|.vdex` 随目录一起删（否则 odex 无宿主会报校验失败）；
   * `/data/dalvik-cache` 对应条目会在下次开机重建；
   * `/data/data/<pkg>` 建议保留或 `pm clear`，共享 uid 场景下保留更安全。
4. **不建议**为省空间去删 `oat/`、`vdex`（会让首次启动变慢、CPU 峰值升高，与“省 RAM”目标相反）。

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
| T5 | bridge 启动、UDS 收发 | `my-doc/06_t5_bridge` 既有测试 |

## 6. 逐项恢复

| 包 | 目录 | 恢复命令 |
|---|---|---|
| `com.alipay.arome.app` | `app/AMPE` | adb -s 192.168.1.9:5555 shell pm enable com.alipay.arome.app |
| `com.dangbei1.tvlauncher` | `app/dangbei.apk` | adb -s 192.168.1.9:5555 shell pm enable com.dangbei1.tvlauncher |
| `com.alibaba.ailabs.genie.osupdate` | `app/Osupdate` | adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate |
| `com.alibaba.ailabs.genie.guide` | `app/Guide` | adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.guide |
| `com.shere.assistivetouch` | `app/easytouch.apk` | adb -s 192.168.1.9:5555 shell pm enable com.shere.assistivetouch |
| `com.android.storagemanager` | `priv-app/StorageManager` | adb -s 192.168.1.9:5555 shell pm enable com.android.storagemanager |
| `com.web1n.permissiondog` | `app/qxg.apk` | adb -s 192.168.1.9:5555 shell pm enable com.web1n.permissiondog |
| `com.android.mtp` | `priv-app/MtpDocumentsProvider` | adb -s 192.168.1.9:5555 shell pm enable com.android.mtp |
| `com.android.statementservice` | `priv-app/StatementService` | adb -s 192.168.1.9:5555 shell pm enable com.android.statementservice |
| `com.android.captiveportallogin` | `app/CaptivePortalLogin` | adb -s 192.168.1.9:5555 shell pm enable com.android.captiveportallogin |
| `com.android.companiondevicemanager` | `app/CompanionDeviceManager` | adb -s 192.168.1.9:5555 shell pm enable com.android.companiondevicemanager |
| `com.android.bluetoothmidiservice` | `app/BluetoothMidiService` | adb -s 192.168.1.9:5555 shell pm enable com.android.bluetoothmidiservice |
| `com.android.vpndialogs` | `priv-app/VpnDialogs` | adb -s 192.168.1.9:5555 shell pm enable com.android.vpndialogs |
| `com.android.pacprocessor` | `app/PacProcessor` | adb -s 192.168.1.9:5555 shell pm enable com.android.pacprocessor |

镜像级删除的恢复：`adb push` 回原目录（`chmod 644` + `restorecon -R`），或 SP Flash Tool 回刷
`flash/ori/system.bin`。

## 7. 排期建议

| 阶段 | 内容 | 工期 | 风险 |
|---|---|---|---|
| P0 | 备份核对 + 基线采集 | 0.5 天 | 无 |
| P1-1 | 禁用当贝 / 悬浮触控 / OTA | 1 天 + 观察 24 h | 低 |
| P1-2 | 禁用 AMPE / 权限狗 / 引导 | 0.5 天 + 观察 24 h | 中（小程序技能） |
| P1-3 | 禁用 8 个 AOSP 边缘组件 | 0.5 天 + 观察 24 h | 低 |
| P1-4 | C 类逐项试探 | 按需，每项 24 h | 中 |
| P2 | 用户态卸载验证 → 镜像删除（仅限通过项） | 1 周观察 + 1 天打包验证 | 中高（需回刷预案） |
| P3 | 结构优化（不做 odex 清理；按产品需求裁剪技能包） | 另议 | 需产品决策 |

## 8. 结论性建议

1. 立刻可做且收益最大的三件事：禁用 `dangbei.apk`、`easytouch.apk`、`Osupdate`——三者都是
   “常驻 + 高唤醒 + 与语音链路无关”。
2. 空间上唯一可安全删除的是 `ES.apk`（4.60 MB）；**若目标是腾出分区空间，应先做 P2 的用户态卸载验证**，
   而不是直接删 APK。
3. 语音链路（D 类，252.9 MB）不要动。它已用运行时证据证明是设备的主力负载
   （三进程 216,324 KB PSS、`:core` 72% CPU、持有 `NativeService` 长唤醒锁）；
   想省资源应当围绕它“减邻居”，而不是“减自己”。
4. C 类 19 个包（153.89 MB）必须在真机做逐项禁用观察后才能定级；
   本报告拒绝在无动态证据的情况下把它们写成“可删”。
