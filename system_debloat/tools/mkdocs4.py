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
不设实验项、不提供命令；见 2.5 节。因此原本的“实验 1/2”已不存在，实际可试验项从 OTA 开始。

### 2.1 实验 1：OTA（`com.alibaba.ailabs.genie.osupdate`）

```bash
# 执行前：记录基线（uptime、alarm、meminfo、cpuinfo）
adb -s {SERIAL} shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
# 观察 ≥24 h 后，再决定下一项（不要与下一项同时做）
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep osupdate`（快照基线 16,011 kB） | 无该进程 |
| CPU 变化 | 多次采样 `dumpsys cpuinfo`（**基线 20% 只是单次 343 s 区间快照，不能推断为持续占用**） | 多次采样中不再出现该进程 |
| 框架异常 | `logcat \\| grep -iE "osupdate|RebootUpdate"` | 无 `ClassNotFoundException` |
| 功能影响 | 设置页“系统更新”不可用；升级前需临时 `pm enable` | 用户接受 |
| 回滚 | `pm enable com.alibaba.ailabs.genie.osupdate` | 立即恢复 |

### 2.2 实验 2：开机引导（`com.alibaba.ailabs.genie.guide`）

```bash
adb -s {SERIAL} shell pm disable-user --user 0 com.alibaba.ailabs.genie.guide
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep guide` | 无该进程 |
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
adb -s {SERIAL} shell pm disable-user --user 0 com.android.mtp
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
4. 语音链路（D 类，{cc['D']['total_mb']} MB）不要动。**运行时证据只覆盖 `smartapp`**（3 进程 PSS 合计
   216,324 kB、`:core` 单次区间 72% CPU、持有 4 个唤醒锁）；`AliGenieService`、`GenieMonitor`、`GenieIoT`
   的运行时占用未测量，其 D 级依据是 Manifest + 跨包引用。想省资源应围绕它“减邻居”，不是“减自己”。
5. C 类 {cc['C']['packages']} 个包（{cc['C']['total_mb']} MB），含 AMPE、`GenieRTC`、`Waft`、`AliVideoPlayer` 等，
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
"""
open(os.path.join(DOC, 'optimization_plan.md'), 'w', encoding='utf-8').write(plan)

# tools/
TOOLS = os.path.join(DOC, 'tools')
os.makedirs(TOOLS, exist_ok=True)
for fn in ('axml.py', 'scan.py', 'refs2.py', 'report.py', 'digest.py', 'edges.py',
           'filters.py', 'protection.py', 'test_filters.py', 'test_protection.py',
           'mkdocs.py', 'mkdocs2.py', 'mkdocs3.py', 'mkdocs4.py'):
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
rev = f"""# 修订记录（rev3）

- 修订时间：2026-11-20
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码或设备分区
- 修订触发：① 操作者指定六个 App 必须保留；② rev2 遗留的三个 P2 问题
- 本轮**未执行**任何 `pm disable-user` / `pm uninstall` / 镜像或 boot 写操作；设备 `pm list packages -d` 仍为空

## 1. 本轮（rev3）改动对照

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

## 4. 测试结果（rev3 实跑）

```
python -m unittest discover -v      # 在 system_debloat/tools/ 下执行
```

- `test_filters`：**12 条**，含 rev3 新增的 `com.android.settingshelper.provider` 边界用例、
  前缀相似反例（`com.android.settingsproxy`、`com.android.providersx.foo` 等）、子命名空间正例。
- `test_protection`：**20 条**，覆盖六个 App 的保护登记、执行清单隔离、ES「保留 A 类但被拦截」、
  Magisk 组件范围、CSV/JSON 一致性、统计一致性、旧目录引用检查。

真实输出见本文件所在提交的 commit message 与 `README.md` 对应章节；两套测试合计 **32 条**，全部通过。

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

| 文件 | 变更类型 |
|---|---|
| `README.md` | 新增 §4 用户保护清单（含 §4.1 Magisk）+ 章节重编号；结论与 9 问改为“保护优先”口径 |
| `revisions.md` | 重写（rev2 归档 + rev3 记录，本文件） |
| `app_inventory.md` | 清单新增「保护」列、新增 §2 用户保护表、章节重编号 |
| `app_dependency_analysis.md` | §10 修订说明追加 rev3（保护不影响技术分类） |
| `app_removal_recommendations.md` | 新增 §2 用户保护（含 §2.1 Magisk）、A 类改“候选”口径、B 类拆“受保护/可试验” |
| `risk_assessment.md` | 新增“违反用户保护”“误处理 Magisk 组件”风险、新增 §2.3 受保护项 |
| `optimization_plan.md` | P1 移除当贝/EasyTouch/权限狗、实验改为 OTA→引导→AOSP、P2 前置条件加保护项 |
| `app_inventory.csv` / `.json` | 新增 `class_label` / `user_protected` / `protection_reason` / `exec_action` |
| `dependency_edges.csv` | 重新生成（authority 边界修复后重算 `evidence_class`） |
| `summary_stats.json` | 新增 `user_protection`（6 个 App + Magisk 组件 + 禁止动作）与 `executable_lists`（含 `protected_blocked`） |
| `user_protected.json` | 新增（机器可读保护清单与执行清单） |
| `tools/protection.py` | 新增（保护规则 + `assert_no_protected()`） |
| `tools/test_protection.py` | 新增（20 条保护与一致性测试） |
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
