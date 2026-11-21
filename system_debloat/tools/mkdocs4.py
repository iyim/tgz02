"""Generate optimization_plan.md and the tools/ directory."""
import json
import os
import shutil
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import protection

DOC = r'D:\tgz02\OS\system\system_debloat'
SRC = r'D:\tgz02\OS\_analysis\debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
by = {k: [r for r in rows if r['cls'] == k] for k in 'ABCD'}
cc = stats['by_class']
SERIAL = '192.168.1.9:5555'

b_pkgs = [(r['pkg'], r['dir'], r['total_mb'], r['pss_kb']) for r in
          sorted(by['B'], key=lambda x: -float(x['total_mb']))]


def md(head, rows_):
    out = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    for r in rows_:
        out.append('| ' + ' | '.join(str(c) for c in r) + ' |')
    return '\n'.join(out)


restore_rows = [[f'`{p}`', f'`{d}`', f'adb -s {SERIAL} shell pm enable {p}']
                for p, d, _, _ in b_pkgs
                if not protection.is_user_protected(p)]

plan = f"""# 分阶段精简方案

原则：**先禁用、后删除；先单包、后批量；每步有基线、有观测、可秒级回退。**
本方案不改动任何镜像文件，也不生成精简后的 `system.img`（那属于另行评审的独立交付物）。

## 0. 目标与验收口径

| 目标 | 指标 | 验收方式 |
|---|---|---|
| 释放分区空间 | A 类 4.60 MB；A+B 上限 {round(cc['A']['total_mb'] + cc['B']['total_mb'], 2)} MB | 镜像内文件体积求和 |
| 降低常驻内存 | 减少 persistent / 推送保活 / 保活 Provider 宿主进程数量 | `dumpsys meminfo` 进程清单对比（只比数量与名次，不承诺 MB） |
| 降低后台唤醒 | 减少 `dumpsys alarm` 中的 `*walarm*` 唤醒次数 | 同一 uptime 区间对比 |
| 不破坏原厂能力 | 语音唤醒/ASR/技能、桌面、设置、蓝牙、遥控 | 见第 5 节验收清单 |
| 不破坏 AI 改造 | T5 bridge（adb/UDS）与音频链路 | 既有 T5 测试脚本回归 |

## 1. P0 准备（不动设备功能）

1. **镜像备份**（已完成，本报告直接引用）：
   `D:\\tgz02\\flash\\ori\\system.bin`（原始 1,023,410,176 B）、`D:\\tgz02\\flash\\change\\system.bin`
   （当前工作状态）、`boot.bin`、`userdata.bin`、`cache.bin`、`vendor.bin`（167,772,160 B）。
2. **状态快照**：导出安装清单与禁用清单，作为后续比对的基线。
   ```bash
   adb -s {SERIAL} shell pm list packages -s > pm_system_before.txt
   adb -s {SERIAL} shell pm list packages -d > pm_disabled_before.txt   # 当前为空
   adb -s {SERIAL} shell dumpsys package > package_all_before.txt
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
| V0（只读，不禁用） | OTA | 唯一有实测占用的候选；**rev4.1 已完成**：6 h 持续负载 21.53% CPU、PSS 中位 16,557 kB |
| V1（单包禁用） | OTA | 若 V0 证明为周期性负载才做；风险最高，需最严格观测 |
| V2（可选） | 开机引导 | 5.42 MB 存储收益，但**只有删除才有**；无进程，禁用不产生 RAM 收益 |
| V3（可选） | 存储管理 | 2.32 MB 存储收益，同上 |
| 不进入队列 | 其余 7 个平台小组件 | 合计 0.42 MB、无进程、无长期 CPU 证据；仅供功能取舍 |

### 2.0 V0：OTA 只读观测（**rev4.1 已完成**）

结果见 [ota_observation_report.md](ota_observation_report.md)：73 次样本 / 300 s 间隔 / 窗口 21,600 s（6.0 h），
PID 全程 6667 未重启；CPU 均值 **21.53%**（72/72 区间 ≥10%，最小 17.85%，P90 24.59%）；
PSS 12,636–19,687 kB，中位 16,557 kB；UpdateService 73/73 样本 `startRequested=true`；
`dumpsys alarm` / `power` 均 0 命中；`FOTA_UPDATE` **本次观测窗口未捕获到**（不代表设备从未使用）。

| 观测项 | 方法 | 本轮结果 |
|---|---|---|
| 是否周期性 | 每 5 min 采样 `/proc/<pid>/stat` 增量，连续 ≥6 h | **否**：lag1=−0.56 / lag2=+0.50（短间隔交替），按小时均值 21.05%–22.68% → 持续负载 |
| 触发源 | `logcat` 关键字 `osupdate` / `FOTA` / `UpdateService` | 捕获 1,204 行；`upload log file` 776 行、`upload file fail` 404 行（跨 7 个小时）→ 上传失败重试循环 |
| 常驻成本 | 多次 `dumpsys meminfo` 取 PSS | 中位数 16,557 kB（n=73） |
| 调用路径 | `FOTA_UPDATE` 广播 / 日志 | **未捕获** → 标记未知（静态引用仍成立） |

### 2.1 V1：OTA 单包禁用（V0 已完成，待你授权后执行）

```bash
# 执行前：记录基线（uptime、alarm、meminfo、cpuinfo）
adb -s {SERIAL} shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
# 观察 ≥24 h 后，再决定下一项（不要与下一项同时做）
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep osupdate`（快照基线 16,011 kB，persistent 常驻） | 无该进程 |
| CPU 变化 | 多次采样 `dumpsys cpuinfo`（**基线 20% 只是单次 343 s 区间快照，不能推断为持续占用**） | 多次采样中不再出现该进程，且与 V0 基线对比 |
| 框架异常 | `logcat \\| grep -iE "osupdate|RebootUpdate"` | 无 `ClassNotFoundException` |
| 功能影响 | 设置页“系统更新”不可用；`FOTA_UPDATE` 广播无人接收；升级前需临时 `pm enable` | 用户接受 |
| 回退 | `pm enable com.alibaba.ailabs.genie.osupdate` + 重启一次（persistent 需重启才恢复常驻） | 进程重新常驻 |

### 2.2 V2：开机引导（存储驱动，可选）

```bash
adb -s {SERIAL} shell pm disable-user --user 0 com.alibaba.ailabs.genie.guide
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程出现情况 | `dumpsys meminfo \\| grep guide`（快照中无进程） | 仍无进程，且无异常拉起 |
| 引导不再弹出 | 重启一次，观察是否进入正常桌面 | 无引导页阻塞 |
| 回滚 | `pm enable com.alibaba.ailabs.genie.guide`（恢复出厂前必须启用） | 立即恢复 |

> 注意（rev4.1 去重，只保留一处）：该包**快照无进程**，禁用不会带来可测量的 RAM 收益；
> 其 5.42 MB 只有在“删除 APK”时才会释放。禁用的唯一意义是验证“移除引导是否影响使用”，
> 为后续是否删除提供依据。

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
   adb -s {SERIAL} shell pm uninstall -k --user 0 <pkg>
   # 观察 7 天；需要时恢复：
   adb -s {SERIAL} shell cmd package install-existing --user 0 <pkg>
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
S={SERIAL}
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
| 语音 | 唤醒词 → ASR → 技能 3 连测 | 现场语音 + `logcat \\| grep -i aligenie` |
| 音频 | 采集与播放无爆音/断流 | 既有 T5 音频回归脚本 |
| 设置 | 打开设置、修改音量/网络 | `am start -n com.android.settings/.Settings` |
| 蓝牙 | 遥控/音箱配对 | `dumpsys bluetooth_manager` |
| 通知 | 状态栏与下拉正常 | SystemUI 观察 |
| T5 | bridge 启动、UDS 收发 | T5 工程既有测试脚本（本目录不引用其路径） |
| 保护 | 六个受保护 App 仍在且可正常使用 | `pm path <pkg>`；当贝桌面打开、ES 打开、权限狗打开 |

## 6. 逐项恢复

| 包 | 目录 | 恢复命令 |
|---|---|---|
{chr(10).join('| ' + ' | '.join(r) + ' |' for r in restore_rows)}

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
6. 语音链路（D 类，{cc['D']['total_mb']} MB）不要动。**运行时证据只覆盖 `smartapp`**（3 进程 PSS 合计
   216,324 kB、`:core` 单次区间 72% CPU、持有 4 个唤醒锁）；`AliGenieService`、`GenieMonitor`、`GenieIoT`
   的运行时占用未测量，其 D 级依据是 Manifest + 跨包引用。
7. C 类 {cc['C']['packages']} 个包（{cc['C']['total_mb']} MB）必须在真机做逐项禁用观察后才能定级；
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
"""
open(os.path.join(DOC, 'optimization_plan.md'), 'w', encoding='utf-8').write(plan)

# tools/
TOOLS = os.path.join(DOC, 'tools')
os.makedirs(TOOLS, exist_ok=True)
for fn in ('axml.py', 'scan.py', 'refs2.py', 'report.py', 'digest.py', 'edges.py',
           'filters.py', 'protection.py', 'screening.py', 'test_filters.py', 'test_protection.py',
           'test_b_class.py', 'ota_observe.py', 'ota_analyze.py', 'ota_observe.ps1',
           'test_ota_observation.py', 'test_screening.py', 'test_desktop_audit.py',
           'mkdocs.py', 'mkdocs2.py', 'mkdocs3.py', 'mkdocs4.py',
           'mkdocs5.py', 'mkdocs6.py', 'mkdocs7.py', 'mkdocs8.py', 'mkdocs9.py',
           'build_device_baseline.py', 'build_device_baseline_md.py', 'build_candidate_cards.py',
           'check_device_state.ps1', 'restore_last_disabled.ps1', 'verify_launcher.ps1'):
    src = os.path.join(SRC, fn)
    if os.path.exists(src):
        shutil.copy2(src, os.path.join(TOOLS, fn))

baseline = """#!/system/bin/sh
# TG-Z02 只读基线采集（在 PC 侧用 adb shell 执行亦可）
# 用法：bash collect_baseline.sh <serial> <outdir>
S=${1:-192.168.1.9:5555}
O=${2:-.}
T=$(date +%m%d_%H%M%S)
adb -s "$S" shell cat /proc/uptime                     > "$O/uptime_$T.txt"
adb -s "$S" shell dumpsys meminfo                      > "$O/meminfo_$T.txt"
adb -s "$S" shell dumpsys cpuinfo                      > "$O/cpuinfo_$T.txt"
adb -s "$S" shell dumpsys power                        > "$O/power_$T.txt"
adb -s "$S" shell dumpsys alarm                        > "$O/alarm_$T.txt"
adb -s "$S" shell dumpsys activity services            > "$O/services_$T.txt"
adb -s "$S" shell dumpsys activity processes           > "$O/processes_$T.txt"
adb -s "$S" shell ps -A -o USER,PID,PPID,VSZ,RSS,NAME  > "$O/ps_$T.txt"
adb -s "$S" shell pm list packages -s                  > "$O/pm_system_$T.txt"
adb -s "$S" shell pm list packages -d                  > "$O/pm_disabled_$T.txt"
echo "baseline written to $O with tag $T"
"""
open(os.path.join(TOOLS, 'collect_baseline.sh'), 'w', encoding='utf-8').write(baseline)

tools_readme = """# 复现用脚本

本目录位于 `system_debloat/tools/`（仓库根 = 解包后的 system 分区根目录）。

这些脚本用于从**原始解包镜像**重新生成 `../app_inventory.*` 与 `../` 下各报告中的表格。
脚本里写死了本机路径（`D:\\tgz02\\OS\\system` 为解包后的 system 根，`D:\\tgz02\\OS\\system\\system_debloat`
为输出目录），换机器时改各脚本顶部的 `ROOT` / `DOC` / `OUT` 常量即可。

> 注意：`system_debloat/` 是纯文档目录，系统不会读取它；但**重新打包 `system.img` 前需把它从打包树中排除**，
> 否则它会被打进 `/system/system_debloat`。详见 `../README.md` 第 0 节。

| 脚本 | 作用 |
|---|---|
| `axml.py` | 二进制 AndroidManifest（AXML）解析 + DEX 字符串表读取；自动判别 UTF-8 字符串池的单/双长度前缀 |
| `filters.py` | **证据过滤规则**：`is_platform_authority()` 精确 + 边界感知前缀匹配（rev3 修正）、`is_sdk_noise()`、`classify_evidence()` |
| `protection.py` | **用户保护规则（rev3 新增）**：六个受保护 App、Magisk 相关组件清单、`assert_no_protected()` 强制拦截 |
| `test_filters.py` | 过滤规则单元测试（12 条，含 rev3 的 `com.android.settingshelper.provider` 边界用例） |
| `test_protection.py` | **保护与数据一致性测试（rev3 新增）**：保护清单、执行清单、Magisk 范围、统计一致性、旧目录引用检查 |
| `scan.py` | 遍历 `app/`、`priv-app/`（含散装 APK）→ 体积、组件、权限、vdex 字符串 → `out/apps.json` |
| `refs2.py` | 跨包引用（组件 / authority / 私有 action）、SDK 打包降噪、framework vdex 扫描 → `out/refs2.json` |
| `digest.py` | 生成逐包可读摘要 `out/digest.txt`（人工复核用） |
| `edges.py` | 生成 `dependency_edges.csv`（每条边带 `evidence_class`） |
| `report.py` | 分类裁定 + 保护过滤 + `app_inventory.csv/json`、`summary_stats.json`、`user_protected.json` |
| `mkdocs*.py` | 生成 `README.md` 与本目录其余报告 |
| `collect_baseline.sh` | 设备只读基线采集（meminfo / cpuinfo / power / alarm / services / pm） |
| `ota_observe.py` | **rev4.1** OTA 六小时只读采样器（`/proc/<pid>/stat` 增量、PSS、services、alarm、power、logcat），每样本一行 JSON |
| `ota_observe.ps1` | 同上功能的 PowerShell 版（无 Python 环境时可用） |
| `ota_analyze.py` | **rev4.1** 观测聚合器：ticks 差值算 CPU%、PSS min/max/median/count、PID 变更事件、自相关、按小时曲线、日志构成 |
| `test_ota_observation.py` | **rev4.1** 观测报告与原始样本的一致性测试（11 条） |

## 运行顺序

```bash
python -m unittest discover -v   # 先跑测试：filters + protection
python scan.py      # ~5 min，含 vdex 字符串提取
python refs2.py     # ~4 min，含 framework vdex 扫描
python digest.py    # 可选，人工复核
python report.py    # 生成清单、统计、保护清单
python edges.py     # 生成依赖边 CSV
python mkdocs.py && python mkdocs2.py && python mkdocs3.py && python mkdocs4.py
```

依赖：Python 3.11，仅标准库。

## 过滤规则（rev2 修复）

rev1 的 `report.py` 用 `x['token'].split('.')[0] in ('com.android', 'media', 'settings')` 排除平台 Provider，
`com.android.providers.media` 的 `split('.')[0]` 是 `com`，因此**永远匹配不上**，AOSP Provider 被算成
“应用级依赖”。rev2 改为 `filters.is_platform_authority()`：精确集合 + `com.android.providers.` 等前缀匹配，
并用 `test_filters.py` 锁定行为（含一条专门复现该 bug 的回归用例）。修复后：

- `dependency_edges.csv` 中 `platform_provider` 从 110 条增加到 132 条，`app` 从 219 条降为 197 条；
- 不再有任何 `com.android.providers.*` 被标成 `app` 级证据；
- 包数与总体积不变（55 个 / 526.72 MB）。
"""
open(os.path.join(TOOLS, 'README.md'), 'w', encoding='utf-8').write(tools_readme)

# ---------------------------------------------------------------- revisions.md
rev = f"""# 修订记录（rev3 / rev3.1 / rev4 / rev4.1 / rev5）

- 修订时间：2026-11-21（rev4.1 观测窗口 2026-11-20 20:00 → 2026-11-21 02:00）
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码或设备分区
- 修订触发：rev3 = ① 操作者指定六个 App 必须保留；② rev2 遗留的三个 P2 问题。
  rev3.1 = rev3 审查的三项小范围修订。rev4 = 10 个 B 类候选收益/风险重估。
  rev4.1 = OTA 六小时只读观测与证据表述修正。rev5 = B 类筛选七问 + A 类静态候选扩展 + 批次划分。
  rev5.1 = 桌面 18 个入口专项排查。rev5.2 = 候选冲突修正 + 四个大体积组件级复核
- 本轮**未执行**任何 `pm disable-user` / `pm enable` / `pm uninstall` / 镜像或 boot 写操作；
  设备 `pm list packages -d` 仍为空

## 00000. rev5.3：设备基线与救援准备（2026-11-21）

**只读阶段**：本轮没有任何禁用/卸载/删除/清数据/刷写，设备状态未变。

| 交付 | 内容 |
|---|---|
| `device_baseline/package_inventory.{json,md}` | **68 个包**（system 61 / priv-app 18 / 三方 7 / 禁用 0），逐包给出 code_path、version、uid、installer、enabled、apk_size、目录大小、sharedUid、splits；label 全部标 unknown（8.1 dumpsys 不返回 label） |
| `device_baseline/launcher_and_boot.md` | 默认 HOME = `com.alibaba.ailabs.genie.launcher/.activity.AdultHomeActivity`；另有 4 个 HOME（儿童 `children/.activity.HomeActivity`、smartapp 的 `BootHomeActivity`、当贝 `dangbei…MainActivity`、`settings/.FallbackHome`）；22 个 BOOT_COMPLETED 接收器 |
| `device_baseline/core_components.{json,md}` | 18 项功能→包名映射；语音链路的关键证据：`libsmartbox.so`/`libaceAsr.so`/`libvad_*.so`/`libwakeup_*.so` 全部属于 **smartapp**，`libaligenie_ic.so` 属 ags，TTL 骨架库在 AMPE |
| `device_baseline/component_inventory.{json,md}` | 18 个候选包 / **163 个组件**（activity/service/receiver/provider + exported/permission/actions/authorities） |
| `device_baseline/dependency_graph.{json,md}` | **304 条** `app`/`ambiguous` 级依赖边，附证据类型与置信度；明确“字符串命中 ≠ 运行时依赖” |
| `device_baseline/rescue_capability.md` | ADB：USB 在线、`ro.adb.secure=1`、**无线 5555 已监听**、root 可 `su`；Recovery：分区存在且有备份，但**ADB/读 /data 全部未验证**；fastboot 未知；**没有 scatter 文件** |
| `device_baseline/recovery_plan.md` | 23 个分区备份与设备分区**逐一比对大小一致** + SHA256；A/B/C/D 四条恢复路径（C 段标注未验证、D 段不列可直接执行的刷写命令） |
| `device_baseline/candidate_operation_cards.md` | **18 张操作卡**（15 字段齐全），覆盖儿童/相册/userdictionary/spkey/alira/uuid/provision/emode + B 类两批 |
| `tools/check_device_state.ps1` 等 3 个脚本 | 只读检查 / 恢复（必填 `-ConfirmPackage`、保护名单硬拦截）/ 桌面校验；**6 个模拟场景全部按预期退出码**（0/2/0/4/6/0） |

## 0000. rev5.2：冲突修正与大体积复核（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `big4_component_review.md`（四个大体积候选的组件级复核、全 inventory 空间 Top15）、`desktop_package_index.json`（只读 `pm list packages -f` 快照：67 包 = system 55 + data 9 + vendor 3）、`tools/mkdocs9.py` |
| 修正 1：GenieMonitor 结论统一 | `com.alibaba.ailabs.ar.monitor` 同包含 `VisionWakeUpService`（唤醒）、`AVEControlProvider`（设备控制，smartapp 引用）、`GenieGestureService`、`CMCCMediaService`/`AwesomeService` → **必须保留整包**；已同步到 `summary_stats.json:D_forbidden`、`a_class_candidates.md`、`pruning_priority.md`、`desktop_app_audit.md`，并从“验证禁用后删除”名单撤销 |
| 修正 2：桌面未知入口 | 8 个里 **7 个坐实**：哔哩哔哩=`bilibili://tv.danmaku.bili`（未安装）、购物=webview→淘宝/天猫 H5、人教=MINIAPP→应用市场、蚂蚁森林=`waft://open?code=ant_forest`、通话=`genie://…genie.contacts`（未安装）、音乐=launcher 音乐频道、闹钟=smartapp 闹钟域；**仅旭慧生活仍未知**（本地无任何静态命中） |
| 修正 3：独立 APK 判定 | 改为按“包名是否在已安装集合”判定：launcher 频道/小程序/死链卡片一律记“否”，不再出现“未知＝有 APK”的逻辑错误 |
| 修正 4：版本元数据 | `summary_stats.json:revision.current` 更新为 `rev5.2 (2026-11-21)`，`screening.rev` = `rev5.2`，并新增 `big4_final_verdict` / `component_level_candidates` / `monitor_components` / `desktop_unknown_remaining` |
| 空间口径 | 四个大体积候选整目录 123.62 MB，其中 **93 MB 必须保留**，实际可讨论 **30.70 MB**（儿童 20.14 + 相册 10.56） |
| 测试 | `test_desktop_audit` 重写为 19 条（跨文档一致性、卡片证据、独立 APK 逻辑、空间口径、版本元数据） |

## 000. rev5.1：桌面预装应用专项（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `desktop_app_audit.md`（18 个桌面入口映射 + 专项评估 + system 删除候选 + 第一批建议 + 收益汇总）、`tools/mkdocs8.py`（生成器）、`tools/test_desktop_audit.py`（14 条测试） |
| 设备只读取证 | `pm list packages -f`（67 个已安装包及 APK 路径）、`dumpsys package <pkg>` 的 `LAUNCHER` 命中、`ls -l` 系统 APK 体积；未禁用/未卸载/未清数据 |
| 识别结果 | 18 个入口：**确定 8 个**（aicare=爱家看护、albums=相册、children=儿童、iot=智能家居、settings=设置、camera、cook=菜谱、cmvideo=CCTV.新视听）、**较可信 2 个**（youku.iot=优酷、GenieMonitor=手势）、**未知 8 个**（旭慧生活、通话、人教数字课堂、购物、音乐、闹钟、蚂蚁森林、哔哩哔哩——67 包中无对应 APK，判定为 launcher/webapp 入口） |
| 分区结论 | 5 个入口是 `/data/app` 安装（camera、cook、cmvideo，以及 aicare/rtc/magisk 的覆盖版本）：删除它们**不释放 system 空间**，只能卸载（本轮不做） |
| 第一批删除 | **空**：system 内的桌面应用全部与语音/视频/手势/设备控制耦合；唯一低耦合的 `userdictionary` 仅 0.04 MB |
| 第一批禁用 | 沿用 rev5 的 6 个平台小组件（无进程、无引用、功能独立；**空间收益 0**） |
| 条件删除场景 | 手势 47.86 MB、优酷 45.06 MB、儿童 20.14 MB、相册 10.56 MB，合计 **123.62 MB**（整目录），均需先禁用验证 + 你确认放弃对应功能 |
| 未确认项 | 8 个入口的归属、`/data/app` 三个 APK 的大小（目录不可读）、label 字符串（未解析 resources.arsc） |

## 00. rev5：筛选与批次（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `pruning_priority.md`（统一优先级表 + 批次 + 禁止清单 + 下一阶段顺序）、`a_class_candidates.md`（扩展 A 类静态候选逐项分析）、`tools/screening.py`（筛选数据与批次）、`tools/mkdocs7.py`（两文件生成器）、`tools/test_screening.py`（18 条测试） |
| inventory 变更 | `app_inventory.json` / `.csv` 新增 `screening_tier` / `screening_batch` / `screening_note` 三个字段；`summary_stats.json` 新增 `screening` 块；**技术分类 A/B/C/D 未改动**（仍是 A=1、B=13、C=20、D=21） |
| B 类七问 | `b_class_priority_analysis.md` 新增 §0.1：10 个候选逐项回答“是否系统必要 / 原厂与 Framework 引用 / 其他依赖 / 禁用影响 / 可否单独 pm 禁用 / 是否优先 / 风险与证据” |
| 第一批 | 6 个平台小组件：`statementservice`、`bluetoothmidiservice`、`pacprocessor`、`vpndialogs`、`captiveportallogin`、`companiondevicemanager`（无进程、无 app 级引用、功能独立、风险低；**收益为 0，仅减少潜在拉起面**） |
| 第二批 | `osupdate`（唯一有实测占用：CPU 21.53% / PSS 16,557 kB，但风险最高）、`guide`、`storagemanager`、`mtp` |
| 静态删除候选 | `com.android.providers.userdictionary`（0.04 MB，AOSP 词典 Provider）——**唯一**给出静态删除建议的项 |
| 先禁用后评估 | `com.alibaba.spkey`、`com.alira.info`、`com.aliyun.uuid`、`com.yunos.tv.provision`（均 0 app 级引用，但用途不明） |
| 明令不删 | `ar.monitor`（47.86 MB，手势/CMCC 服务）、`GenieAicare`（/data/app 覆盖）、`arome` AMPE（12 处引用）；语音链路 14 个包、六个受保护 App |
| 诚实结论 | 本镜像中**没有**“明显无用的厂商推广/演示 App”；能进静态删除验证的只有 0.04 MB 的一项，其余要么用途不明，要么挂在语音/媒体链路上 |

## 0. rev4.1：OTA 只读观测与证据修正（2026-11-21）

| 项 | 内容 |
|---|---|
| 新增文件 | `ota_observation_report.md`（观测报告）、`ota_observation/samples.jsonl`（73 条原始样本）、`ota_observation/analysis.json`（聚合）、`ota_observation/sampler.log`、`tools/ota_observe.py`（采样器）、`tools/ota_analyze.py`（聚合器）、`tools/ota_observe.ps1`（等价 PowerShell 版）、`tools/test_ota_observation.py`（11 条测试） |
| 观测方式 | 每 300 s 一次，连续 73 次 / 21,600 s；`/proc/<pid>/stat` 的 `utime+stime` 差值算 CPU，`dumpsys meminfo` 取 PSS，`dumpsys activity services|alarm|power` + `logcat -d` 取服务/唤醒/日志；**全程只读** |
| CPU 结论 | 均值 **21.53%**、中位 21.09%、最小 17.85%、P90 24.59%；**72/72 区间 ≥10%**；lag1=−0.564 / lag2=+0.502，按小时均值 21.05%–22.68% → **持续负载，不是周期尖峰** |
| RAM 结论 | PSS n=73，min 12,636 / median **16,557** / max 19,687 kB；不据此推算“禁用后释放量” |
| 服务结论 | `UpdateService` 73/73 样本存在且 `startRequested=true`；PID 6667 全程未重启 |
| 唤醒结论 | `dumpsys alarm` 0/73、`dumpsys power` 0/73 → 无定时唤醒、无持锁 |
| 广播/日志 | `FOTA_UPDATE` / `RebootUpdate` **本次观测窗口未捕获到**（标记未知，静态引用仍成立）；捕获 1,204 行 `tv_osupdate` 日志，其中上传 776 行、失败 404 行，跨 7 个小时 → 上传失败重试循环（仅日志可见，未做代码级归因） |
| 证据表述修正 | ① `dumpsys activity broadcasts` 未见 `FOTA_UPDATE` 不再解释为“未使用”，统一为“未捕获 → 未知”；② 四条证据规则写入 `b_class_priority_analysis.md`（2.3 节前）；③ 清理 `optimization_plan.md` 中重复的 Guide 说明并修复被截断的观测表 |
| 判定 | V0 完成；按 rev4.1 第六节标准，前 5 条满足（连续 6 h、持续负载可量化、PSS 分布已测、风险已核对、恢复步骤明确），第 6 条无法在禁用前证明 → **可进入 V1 单包禁用验证，但需你明确接受“升级链路被切断”的功能取舍** |

## 1. rev4：B 类候选收益与风险（2026-11-20）

| 项 | 内容 |
|---|---|
| 新增文件 | `b_class_priority_analysis.md`（10 个候选逐项分析 + OTA 专项 + 排序 + 验证顺序 + 回退） |
| 分析范围 | 仅 `executable_lists.B_disable` 的 10 个包，未扩大 |
| 数据来源 | `app_inventory.json`（体积/persistent/组件/BOOT 接收器/快照 PSS）、`dependency_edges.csv`、framework vdex 扫描、设备只读快照 |
| 关键结论 | 10 个候选里**只有 OTA 有实测占用**（PSS 16,011 kB；单窗口 343.337 s 内 20% CPU，无 alarm/wakelock）；其余 9 个快照无进程 → 禁用无可测量 RAM/CPU 收益 |
| 顺序调整 | `optimization_plan.md` 第 2 节改为 V0（OTA 只读观测）→ V1（条件触发的单包禁用）→ V2/V3（存储驱动，可选）→ 7 个平台小组件**不入队**；取消旧的“依次禁用 8 个 AOSP 组件”预案 |
| 空间口径 | 禁用恒为 0；`guide` 5.42 MB、`storagemanager` 2.32 MB、7 个小组件合计 0.42 MB 只有“删除”才释放 |
| OTA 专项 | 结论：**优先验证、不直接禁用**；`UpdateService` 为 started service（`startRequested=true`、`createdFromFg=true`、`stopIfKilled=false`，创建于 1d19h30m 前），`pm enable` 后需重启一次才恢复常驻 |
| 未验证 | OTA 的 20% 是否周期性、`FOTA_UPDATE` 是否有运行时调用、任何候选的 RAM/CPU 节省量、framework 绑定的运行时表现 |
| 未做的事 | 未执行任何设备操作；未研究 Magisk 安装结构；未触碰受保护 App 与语音链路 |

## 1. rev3.1 小范围修订（2026-11-20）

| # | 问题 | 处理 | 验证 |
|---|---|---|---|
| 1 | A 类直接映射到 `A_delete`，静态候选被误当删除计划 | `protection.exec_bucket()` 拆分：`A_candidate` 收录**全部** A 类静态候选；`A_delete` 默认空，只有同时具备真机动态验证（`DYNAMIC_VERIFIED_A`，空集）与用户明确授权（`USER_AUTHORIZED_DELETE`，空集）才可进入；`report.py` 增加三条子集断言；受保护包无论状态如何不进 `A_delete` | `A_candidate = ['com.estrongs.android.pop']`，`A_delete = []`；4 条新增测试 |
| 2 | README 仍出现旧实验顺序 `dangbei.apk → easytouch.apk → Osupdate` | 删除该行；改为当前有效顺序 OTA → 开机引导 → 8 个 AOSP 边缘组件，并注明当贝/EasyTouch/权限狗不再出现在任何实验顺序中 | `test_protection` 断言 README 不含该顺序与 `qxg.apk` 试验项 |
| 3 | 保护期限表述不统一 | `PROTECTION_REASON` 统一为「在用户另行明确授权或调整保护要求之前，不得删除、禁用或精简。」；`exec_action` 同步改写 | 6 个 App 的 JSON/CSV/报告文本一致；测试断言逐字匹配 |

> rev3.1 不重新分析系统、不重构工具、不扩大保护范围，也未研究 Magisk 安装结构。

## 1. rev3 改动对照

| # | 任务项 | 处理方式 | 落点 |
|---|---|---|---|
| 1 | 六个 App 永久保护 | 从 inventory 实测包名（非显示名）：`com.dangbei1.tvlauncher`、`bin.mt.plus`、`com.estrongs.android.pop`、`com.web1n.permissiondog`、`com.shere.assistivetouch`、`com.topjohnwu.magisk`。全部写入 `protection.py`，`report.py` 在生成阶段强制过滤：受保护包只进 `protected_blocked` 桶，不进 `A_delete`/`B_disable`/`C_observe`/`D_forbidden`；`exec_action` 统一为“受用户保护：禁止删除、禁用、清数据、限制自启/后台/权限” | `tools/protection.py`、`app_inventory.*`、`user_protected.json`、`summary_stats.json:executable_lists`、五份报告 |
| 2 | Magisk 独立保护 | 单列 `MAGISK_RELATED`：镜像内仅 `app/magisk.apk`（11,278,270 B，v25.2）；镜像外 `/sbin/magisk32|magiskinit|magiskpolicy`、`/sbin/magisk` 符号链接、`/sbin/.magisk`、`/data/adb`（后两者 shell 无权限，内容未读）。同时记录“已核查未发现”的镜像位置（`bin/su`、`xbin/su`、init rc、build.prop）。禁止删除/清理/改 `boot.img` 与 init。**未推断安装结构** | `protection.py`、README §4.1、`app_removal_recommendations.md` §2.1 |
| 3 | ES 从删除清单排除 | 保留 **A 类**技术分类与静态分析结论（0 条 app 级入向引用、无进程、无 native 库），仅加 `user_protected=true` 与拦截；`A_delete` 桶为空；文中明确“不为方便把 ES 伪装成 D 类” | `app_removal_recommendations.md` §3.1、`app_inventory.*`、`summary_stats.json` |
| 4 | P2-1 旧目录路径引用 | 删除/改写全部旧目录路径引用（原 7 处：README 2 处、plan 2 处、risk 2 处、revisions 1 处），统一改为“T5 工程与本目录完全独立”这类不涉及旧目录的描述；`test_protection.TestLegacyPathsRemoved` 断言报告与数据中不再出现该旧路径 | 全部 `.md` / `.json` / `.csv` |
| 5 | P2-2 A 类含义 | 统一为「**A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证。**」；新增 `class_label` 字段与“可执行/不可执行”列，并在总览中区分“静态候选 / 已验证 / 用户保护 / 当前可执行” | `report.py:CLASS_LABEL`、README §5/§6、`app_removal_recommendations.md` §1/§3、`app_inventory.md` §1 |
| 6 | P2-3 authority 边界 | `is_platform_authority()` 由裸 `str.startswith` 改为「精确集合匹配 或 等于前缀 或 以 `<前缀>.` 开头」；`com.android.settingshelper.provider` 等相似串不再误判；新增 4 条边界测试（含审查指定的断言） | `tools/filters.py`、`tools/test_filters.py` |

## 2. 分类与保护状态（rev3）

| 类 | 数量 | 分区体积 MB | 其中受保护 | 可执行 |
|---|---|---|---|---|
| A 类候选 | {cc['A']['packages']} | {cc['A']['total_mb']} | 1（ES） | **0** |
| B 建议禁用 | {cc['B']['packages']} | {cc['B']['total_mb']} | 3（当贝 / EasyTouch / 权限狗） | {len(stats['executable_lists']['B_disable'])} |
| C 暂时保留 | {cc['C']['packages']} | {cc['C']['total_mb']} | 1（Magisk） | 0 |
| D 禁止删除 | {cc['D']['packages']} | {cc['D']['total_mb']} | 0 | 0 |
| 合计 | {stats['packages']} | **{stats['total_mb']}** | **5（镜像内）+ 1（设备侧）** | {len(stats['executable_lists']['B_disable'])} |

> 分类数量与 rev2 相同（A1/B13/C20/D21，共 55 个 / 526.72 MB）；保护不改变技术分类，只改变可执行性。

## 3. 过滤修复的量化影响

| 指标 | rev1 | rev2 | rev3 |
|---|---|---|---|
| `dependency_edges.csv` 边总数 | 639 | 639 | 639 |
| `app`（应用级证据） | 219 | 197 | 197 |
| `platform_provider` | 110 | 132 | 132 |
| `sdk_noise` | 203 | 203 | 203 |
| `ambiguous` | 107 | 107 | 107 |
| 被误判为 app 级的 `com.android.providers.*` | 有 | 0 | 0 |
| 相似串（如 `com.android.settingshelper.provider`）被误判为平台 | 可能 | **可能（裸前缀）** | **0（边界匹配）** |

> rev3 的边界修正在现有数据上没有改变上述计数（镜像中不存在此类相似 authority），
> 但消除了“前缀相似即平台”的判定漏洞；测试用例锁定该行为。

## 4. 测试结果（rev3.1 实跑）

```
python -m unittest discover -v      # 在 system_debloat/tools/ 下执行
```

- `test_filters`：**12 条**，含 `com.android.settingshelper.provider` 边界用例、
  前缀相似反例（`com.android.settingsproxy`、`com.android.providersx.foo` 等）、子命名空间正例。
- `test_protection`：**30 条**，覆盖六个 App 的保护登记、执行清单隔离、ES「保留 A 类但被拦截」、
  `A_candidate`/`A_delete` 映射与授权门（含 4 条合成用例）、Magisk 组件范围、CSV/JSON 一致性、
  统计一致性、旧目录引用检查、README 旧实验顺序与保护期限措辞检查。

两套测试合计 **42 条**，全部通过（`Ran 42 tests ... OK`）。

## 5. 仍未验证的事项（不得当作已证结论使用）

1. **ES 删除后的实际影响**：未做 `pm uninstall` 与重启验证（且它现在受用户保护，不会执行）。
2. **可执行 B 类（10 个）禁用后的行为**：无一在真机上执行过禁用；报告中“通过判据”是待执行方案，不是结果。
3. **AMPE 禁用/删除后的技能影响**：7 个包的引用已确认，但“具体哪些语音技能会失效”未验证。
4. **删除 `/data/app` 覆盖包的系统 prebuilt 的后果**（`GenieAicare`/`GenieRTC`）：
   推断为“退化为普通数据区应用、失去 SYSTEM flag 与默认权限授予”，**未实测**。
5. **`GenieMonitor` / `AliGenieService` / `GenieIoT` 的运行时占用**：快照中没有它们的进程，PSS 未知。
6. **framework 侧调用的具体方法**：`framework/*.jar` 是 316 字节占位，只有 vdex 字符串证据。
7. **`vendor` 分区内部依赖**：未解包 `vendor.img`，`GooglePinyinIME`、`MTKThermalManager` 未做静态分析。
8. **任何 RAM 节省量**：本报告不提供，也不应从 PSS 快照推算。
9. **Magisk 安装结构**：`/sbin/.magisk`、`/data/adb` 对 shell 不可读，本轮未提权；`boot.img` 未分析。
   只能确认 `/sbin` 为 Magisk tmpfs 挂载与三个二进制的存在，不推断补丁细节。
10. **六个受保护 App 的“必要权限/自启”边界**：保护规则要求不限制其必要自启与权限，
    但其具体依赖集合（例如当贝桌面拉起的推送服务是否必要）未做逐项验证。

## 6. 变更文件

**rev3.1（本次）**

| 文件 | 变更 |
|---|---|
| `tools/protection.py` | 新增 `exec_bucket()` 与授权门 `DYNAMIC_VERIFIED_A` / `USER_AUTHORIZED_DELETE`（均为空集）；保护期限措辞改为统一表述 |
| `tools/report.py` | 拆分 `A_candidate` / `A_delete`；新增三条子集断言；`exec_action` 措辞同步 |
| `tools/test_protection.py` | 30 条（新增 `TestCandidateDeletionGate` 5 条、`TestReadmeExperimentOrder` 4 条，修订既有断言） |
| `README.md` | 删除旧实验顺序；新增 §4.2 A 类候选与删除清单映射；保护期限措辞统一 |
| `app_removal_recommendations.md` | §3 增加 `A_candidate` / `A_delete` 映射说明 |
| `app_dependency_analysis.md` | 受保护项的技术结论加“不构成执行建议”限定 |
| `app_inventory.*` / `summary_stats.json` / `user_protected.json` | 重新生成（新增 `A_candidate` 桶、措辞统一） |
| `revisions.md` | 新增 §0 rev3.1 记录 |

**rev3（上一版，归档）**

| 文件 | 变更类型 |
|---|---|
| `README.md` | 新增 §4 用户保护清单（含 §4.1 Magisk）+ 章节重编号；结论与 9 问改为“保护优先”口径 |
| `revisions.md` | 重写（rev2 归档 + rev3 记录） |
| `app_inventory.md` | 清单新增「保护」列、新增 §2 用户保护表、章节重编号 |
| `app_dependency_analysis.md` | §10 修订说明追加 rev3（保护不影响技术分类） |
| `app_removal_recommendations.md` | 新增 §2 用户保护（含 §2.1 Magisk）、A 类改“候选”口径、B 类拆“受保护/可试验” |
| `risk_assessment.md` | 新增“违反用户保护”“误处理 Magisk 组件”风险、新增 §2.3 受保护项 |
| `optimization_plan.md` | P1 移除当贝/EasyTouch/权限狗、实验改为 OTA→引导→AOSP、P2 前置条件加保护项 |
| `app_inventory.csv` / `.json` | 新增 `class_label` / `user_protected` / `protection_reason` / `exec_action` |
| `dependency_edges.csv` | 重新生成（authority 边界修复后重算 `evidence_class`） |
| `summary_stats.json` | 新增 `user_protection` 与 `executable_lists`（含 `protected_blocked`） |
| `user_protected.json` | 新增（机器可读保护清单与执行清单） |
| `tools/protection.py` | 新增（保护规则 + `assert_no_protected()`） |
| `tools/test_protection.py` | 新增 |
| `tools/filters.py` | 修正 `is_platform_authority()` 边界匹配 |
| `tools/test_filters.py` | 新增 4 条边界用例（12 条） |
| `tools/report.py` | 接入保护过滤、新增字段与 `user_protected.json` 输出 |
| `tools/mkdocs*.py` | 生成保护章节、移除旧目录路径引用 |
"""

# ---------------------------------------------------------------- rev2 archive
rev2_archive = """
## 附录：rev2 修订记录（2026-11-20，历史归档）

| # | 审查意见 | 处理方式 |
|---|---|---|
| 1 | AMPE 应从 B 调整为 C | 已改。依据：降噪后 7 个包对 `genie.webapps.START/INIT` 与 `GwaReceiver` 有 app 级引用 |
| 2 | ES 不应再称“安全删除” | 已改为“A 类候选：静态通过，删后动态验证未完成” |
| 3 | 平台 Provider 过滤有 bug | 新增 `filters.py` + `test_filters.py`，修复 `split('.')[0]` 判断 |
| 4 | `/data/app` 更新包数量错误 | 由 2 个修正为 3 个（补 `GenieAicare`），新增版本对照表 |
| 5 | 禁用批次改为单包逐项 | P1 拆为单包实验，每项观察 ≥24 h；OTA 20% CPU 标注为单次区间快照 |
| 6 | 运行时数据表述 | 216,324 kB 限定为 smartapp 3 进程；指标口径分表；不推算 RAM 节省 |
| 7 | 保持核心保护 | D 类 21 个不变 |
| 8 | 交付要求 | 报告与机器可读数据全部更新，新增过滤测试 |

量化影响：`app` 级边 219 → 197，`platform_provider` 110 → 132，`com.android.providers.*` 误判为 0。
"""
open(os.path.join(DOC, 'revisions.md'), 'w', encoding='utf-8').write(rev + rev2_archive)

print('optimization_plan.md + tools + revisions.md written')
