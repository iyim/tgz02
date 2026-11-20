"""Generate optimization_plan.md and the tools/ directory."""
import json
import os
import shutil

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


restore_rows = [[f'`{p}`', f'`{d}`', f'adb -s {SERIAL} shell pm enable {p}'] for p, d, _, _ in b_pkgs]

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
5. **确认 T5 侧无正在进行的实验**，避免精简期间干扰 `my-doc/06_t5_bridge` 的测试数据。

## 2. P1 纯禁用（不改分区，可秒级回退）

只动 `packages.xml` 的 enabled 状态，**不改 system 分区、不释放空间、立刻可逆**。

**rev2 修正**：本节不再使用“批次”一次性禁用多个包。原因：同时禁用多个包时，一旦出现异常（桌面异常、
通知缺失、语音技能报错）无法归因到具体包。改为**单包逐项实验**：一次只禁用一个包，独立观察 ≥24 h，
记录观测数据、判定通过后才进入下一项。

### 2.1 实验 1：当贝桌面（`com.dangbei1.tvlauncher`）

```bash
# 执行前：记录基线（uptime、alarm、meminfo、cpuinfo）
adb -s {SERIAL} shell pm disable-user --user 0 com.dangbei1.tvlauncher
# 观察 ≥24 h 后，再执行下一条（不要与下一项同时做）
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep dangbei`（快照基线 96,912 kB） | 无该进程 |
| 唤醒减少 | `dumpsys alarm`，对比 **同 uptime 区间**的 JPush/Cockroach 计数 | 计数不再增长 |
| 桌面正常 | HOME 仍为 `GenieLauncher`；重启一次 | 正常进入桌面 |
| 回滚 | `pm enable com.dangbei1.tvlauncher` | 立即恢复 |

### 2.2 实验 2：悬浮触控（`com.shere.assistivetouch`）

```bash
adb -s {SERIAL} shell pm disable-user --user 0 com.shere.assistivetouch
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep assistivetouch`（基线 21,461 + 16,961 kB，两进程） | 无该进程 |
| `persistent` 影响 | 重启后仍不出现（`dumpsys activity processes \\| grep assistivetouch`） | 未再被强制拉起 |
| 功能影响 | 触屏操作是否仍可用（悬浮球仅是辅助入口） | 不影响基本操作 |

### 2.3 实验 3：OTA（`com.alibaba.ailabs.genie.osupdate`）

```bash
adb -s {SERIAL} shell pm disable-user --user 0 com.alibaba.ailabs.genie.osupdate
```

| 观测项 | 方法 | 通过判据 |
|---|---|---|
| 进程消失 | `dumpsys meminfo \\| grep osupdate`（基线 16,011 kB） | 无该进程 |
| CPU 变化 | 多次采样 `dumpsys cpuinfo`（**基线 20% 只是单次 343 s 区间快照，不能推断为持续占用**） | 多次采样中不再出现该进程 |
| 框架异常 | `logcat \\| grep -iE "osupdate|RebootUpdate"` | 无 `ClassNotFoundException` |
| 功能影响 | 设置页“系统更新”不可用；升级前需临时 `pm enable` | 用户接受 |

> 以上三条命令是**执行预案**，本轮修订未在任何设备上执行；文中 `pm list packages -d` 仍为空。

### 2.4 实验 4+（入口类与 AOSP 边缘组件）

逐项执行、逐项观察，顺序建议：`com.web1n.permissiondog` → `com.alibaba.ailabs.genie.guide` →
`com.android.mtp` → `com.android.statementservice` → `com.android.vpndialogs` →
`com.android.bluetoothmidiservice` → `com.android.captiveportallogin` →
`com.android.companiondevicemanager` → `com.android.pacprocessor` → `com.android.storagemanager`。

```bash
# 单包形式（一次只跑一行，观察后再跑下一行）
adb -s {SERIAL} shell pm disable-user --user 0 com.web1n.permissiondog
```

### 2.5 明确不进 P1 的包

| 包 | 原因 |
|---|---|
| `com.alipay.arome.app`（AMPE） | **rev2 改为 C**：7 个包对 `genie.webapps.START/INIT`、`GwaReceiver` 有真实引用；只有用户明确放弃小程序/H5 技能并完成动态验证后才考虑（步骤见 `app_removal_recommendations.md` 第 4.1 节） |
| `GenieAicare` / `GenieRTC` / `magisk` | 设备上由 `/data/app` 覆盖，禁用/删除会牵动“系统应用退化为普通应用”的未验证风险 |
| 全部 D 类 | 语音链路、UI、Provider、framework 基础件 |

### 2.6 P1 结果记录模板

| 实验 | 包 | 开始时间 | uptime | 24h 后 meminfo 变化 | alarm 变化 | logcat 异常 | 判定 | 回滚 |
|---|---|---|---|---|---|---|---|---|
| 1 | dangbei | | | | | | | |
| 2 | easytouch | | | | | | | |
| 3 | osupdate | | | | | | | |

### 批次 4（C 类试探，逐项一次只动一个）

按 `app_removal_recommendations.md` 第 4 节的验证表，一次禁用一个，24 h 后确认无异常再进下一个。
建议顺序：`GenieScreensaver` → `GenieAlbums` → `GenieBrowser` → `AliVideoPlayer` → `GenieRTC` → `Waft`。
其中 `Waft`、`GenieRTC` 与前台 UI / 通知强相关，仅在其功能确实不需要时禁用。

## 3. P2 删除（改镜像，需独立评审）

**前置条件**：① P1 对应项连续运行 ≥ 7 天无异常；② T5 回归通过；③ **用户明确授权**；
④ 已确认目标包不是被 `/data/app` 覆盖的 3 个包之一（`GenieAicare`/`GenieRTC`/`magisk`），
或已接受“包退化为普通数据区应用”的未验证后果。

1. **先做用户态卸载验证**（不改分区，等价于“删除后世界”）：
   ```bash
   adb -s {SERIAL} shell pm uninstall -k --user 0 <pkg>
   # 观察 7 天；需要时恢复：
   adb -s {SERIAL} shell cmd package install-existing --user 0 <pkg>
   ```
   对唯一 A 类候选 `com.estrongs.android.pop`，这一步就是它的**放行验证**；
   本报告不执行该命令，需用户授权后进行。
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
  （定义见 `README.md` 第 6 节）；本机 35 分钟内 `MemFree` 从 89,812 kB 变到 44,332 kB，
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
| T5 | bridge 启动、UDS 收发 | `my-doc/06_t5_bridge` 既有测试 |

## 6. 逐项恢复

| 包 | 目录 | 恢复命令 |
|---|---|---|
{chr(10).join('| ' + ' | '.join(r) + ' |' for r in restore_rows)}

镜像级删除的恢复：`adb push` 回原目录（`chmod 644` + `restorecon -R`），或 SP Flash Tool 回刷
`flash/ori/system.bin`。

## 7. 排期建议

| 阶段 | 内容 | 工期 | 风险 |
|---|---|---|---|
| P0 | 备份核对 + 基线采集 | 0.5 天 | 无 |
| P1-1 | 单包实验 1：当贝桌面（观察 24 h） | 0.5 天 + 24 h | 低 |
| P1-2 | 单包实验 2：悬浮触控（观察 24 h） | 0.5 天 + 24 h | 低 |
| P1-3 | 单包实验 3：OTA（观察 24 h） | 0.5 天 + 24 h | 中（framework 引用） |
| P1-4 | 单包实验 4+：权限狗 / 引导 / 8 个 AOSP 边缘组件 | 每项 24 h，按需 | 低 |
| P1-5 | C 类逐项试探（不含 AMPE；AMPE 需产品决策） | 按需，每项 24 h | 中 |
| P2 | 用户态卸载验证 → 镜像删除（仅限通过项 + 用户授权） | 1 周观察 + 1 天打包验证 | 中高（需回刷预案） |
| P3 | 结构优化（不做 odex 清理；按产品需求裁剪技能包） | 另议 | 需产品决策 |

> rev2：原“P1-1 一次禁用三个”与“P1-2 含 AMPE”已取消。AMPE 属 C 类，需产品决策 + 动态验证，
> 不在本排期内自动执行。

## 8. 结论性建议

1. 收益最明确的三项仍是 `dangbei.apk`、`easytouch.apk`、`Osupdate`（常驻 + 高唤醒 + 与语音链路无关），
   但必须**一次一个、各观察 ≥24 h**；OTA 的 20% CPU 只作单次快照参考，不能当作持续占用证据。
2. 空间上唯一 A 类候选是 `ES.apk`（4.60 MB），且**静态通过、动态未验证**；
   若目标是腾出分区空间，应先做 P2 的用户态卸载验证并取得授权，而不是直接删 APK。
3. 语音链路（D 类，{cc['D']['total_mb']} MB）不要动。**运行时证据只覆盖 `smartapp`**（3 进程 PSS 合计
   216,324 kB、`:core` 单次区间 72% CPU、持有 4 个唤醒锁）；`AliGenieService`、`GenieMonitor`、`GenieIoT`
   的运行时占用未测量，其 D 级依据是 Manifest + 跨包引用。想省资源应围绕它“减邻居”，不是“减自己”。
4. C 类 {cc['C']['packages']} 个包（{cc['C']['total_mb']} MB），含 AMPE、`GenieRTC`、`Waft`、`AliVideoPlayer` 等，
   必须在真机做逐项禁用观察后才能定级；本报告拒绝在无动态证据时把它们写成“可删”。
5. 3 个包（`GenieAicare`、`GenieRTC`、`magisk`）在设备上由 `/data/app` 版本覆盖，
   **不要**把它们的系统内 prebuilt 当作“多余文件”删除——后果是包退化为普通数据区应用（未验证但风险明确）。

## 9. 修订说明（rev2）

- 禁用批次改为单包逐项实验（当贝 → 悬浮触控 → OTA → 入口类 → AOSP 边缘件），每项独立观察 ≥24 h，
  并提供结果记录模板（第 2.6 节）。
- 删除原第 2 批中的 `com.alipay.arome.app`（AMPE），改列 2.5 节“明确不进 P1 的包”。
- OTA 的 20% CPU 统一标注为“单次 343 s 区间快照”。
- 第 4 节新增内存指标口径与 CPU 区间的引用规则。
- 完整改动清单与未验证事项见 [revisions.md](revisions.md)。
"""
open(os.path.join(DOC, 'optimization_plan.md'), 'w', encoding='utf-8').write(plan)

# tools/
TOOLS = os.path.join(DOC, 'tools')
os.makedirs(TOOLS, exist_ok=True)
for fn in ('axml.py', 'scan.py', 'refs2.py', 'report.py', 'digest.py', 'edges.py',
           'filters.py', 'test_filters.py',
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
| `filters.py` | **证据过滤规则（rev2 新增）**：`is_platform_authority()` 精确/前缀匹配 AOSP Provider authority、`is_sdk_noise()`、`classify_evidence()` |
| `test_filters.py` | **过滤规则单元测试（rev2 新增）**，覆盖 `com.android.providers.media/settings/contacts`、`media`、`settings` 与第三方 authority |
| `scan.py` | 遍历 `app/`、`priv-app/`（含散装 APK）→ 体积、组件、权限、vdex 字符串 → `out/apps.json` |
| `refs2.py` | 跨包引用（组件 / authority / 私有 action）、SDK 打包降噪、framework vdex 扫描 → `out/refs2.json` |
| `digest.py` | 生成逐包可读摘要 `out/digest.txt`（人工复核用） |
| `edges.py` | 生成 `dependency_edges.csv`（每条边带 `evidence_class`） |
| `report.py` | 分类裁定 + `app_inventory.csv/json`、`summary_stats.json`（内存指标口径在此定义） |
| `mkdocs*.py` | 生成 `README.md` 与本目录其余报告 |
| `collect_baseline.sh` | 设备只读基线采集（meminfo / cpuinfo / power / alarm / services / pm） |

## 运行顺序

```bash
python -m unittest test_filters -v      # 0.0s，先跑过滤规则测试
python scan.py      # ~5 min，含 vdex 字符串提取
python refs2.py     # ~4 min，含 framework vdex 扫描
python digest.py    # 可选，人工复核
python report.py    # 生成清单与统计
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
rev = f"""# 修订记录（rev2）

- 修订时间：2026-11-20
- 修订对象：本目录（`system_debloat/`）下全部报告与机器可读数据；不涉及 `system` 镜像、APK、T5 代码
- 修订触发：对上一版报告的独立审查意见（8 条）
- 本轮**未执行**任何 `pm disable-user` / `pm uninstall` / 镜像写操作；设备 `pm list packages -d` 仍为空

## 1. 逐条修订对照

| # | 审查意见 | 处理方式 | 落点 |
|---|---|---|---|
| 1 | AMPE 应从 B 调整为 C | 已改。依据：降噪后 7 个包（smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher、GenieRTC）对 `genie.webapps.START/INIT` 与 `GwaReceiver` 有 app 级引用。`optimization_plan.md` 中 AMPE 的禁用命令已删除，改为“明确不进 P1”并给出产品决策 + 动态验证步骤 | `app_inventory.*`、`app_removal_recommendations.md` §4.1、`optimization_plan.md` §2.5、`risk_assessment.md` §2.2 |
| 2 | ES 不应再称“安全删除” | 已改。改为“**A 类候选：静态通过，删后动态验证未完成**”，保留 4.60 MB 空间事实，补充放行条件（用户授权 + `pm uninstall -k --user 0` 观察 ≥7 天）；明确本报告不执行卸载 | `README.md` §4/§5、`app_removal_recommendations.md` §2、`optimization_plan.md` §3 |
| 3 | 平台 Provider 过滤有 bug | 已修。原 `x['token'].split('.')[0] in ('com.android','media','settings')` 对 `com.android.providers.*` 恒为 False。新增 `filters.py`（精确集合 + 前缀匹配）与 `test_filters.py`（8 个用例，含回归用例）；`report.py`/`mkdocs2.py`/`edges.py` 全部改为调用该模块；已重新生成 CSV/JSON/统计并核对总数 | `tools/filters.py`、`tools/test_filters.py`、`dependency_edges.csv`、`app_inventory.*` |
| 4 | `/data/app` 更新包数量错误 | 已改。实测为 **3 个**：`GenieAicare`（系统 4.0.26 → 加载 4.0.62）、`GenieRTC`（4.0.16 → 5.2.78.53746723.dc）、`magisk`（25.2 → 27.0）。文档新增“系统内 prebuilt vs 设备加载版本”对照表，并说明删 prebuilt 的后果 | `app_inventory.md` §2/§5.1、`summary_stats.json:updated_system_apps`、`risk_assessment.md` §1/§4 |
| 5 | 禁用批次改为单包逐项 | 已改。P1 拆为实验 1/2/3+，顺序固定 当贝 → 悬浮触控 → OTA，每项独立观察 ≥24 h，附观测项与结果记录模板；OTA 20% CPU 标注为**单次 343 s 区间快照** | `optimization_plan.md` §2、`app_removal_recommendations.md` §3.1 |
| 6 | 运行时数据表述 | 已改。216,324 kB 明确限定为 **smartapp 3 个进程的 PSS 合计**，不等于整条语音链路；`GenieMonitor` 快照中无进程 → 明确写“未获动态验证”，D 级依据仅为 Manifest + 跨包引用；新增 `MemTotal`/`MemFree`/`MemAvailable`/dumpsys `Free RAM`/`used pss` 指标表并说明不可互换、不可相加（含 35 分钟内 `MemFree` 89,812→44,332 kB 的波动证据）；不推算 RAM 节省 | `README.md` §4/§5/§6、`app_dependency_analysis.md` §8.3/§9、`summary_stats.json:memory_snapshot` |
| 7 | 保持核心保护 | 保持并强化：D 类 21 个不变，`AliGenieService`、`smartapp`、`GenieMonitor`、`GenieIoT`、ASR/VAD/Wakeup、音频 native 库、SystemUI、Launcher、Settings、WebView、PackageManager 相关组件，以及 `system/lib`、`lib/hw`、`vendor/lib` 全部列为禁止删除/修改 | `app_removal_recommendations.md` §5、`risk_assessment.md` §5 |
| 8 | 交付要求 | 6 份报告 + REVISIONS + 机器可读数据全部更新；新增过滤函数单元测试；本文件记录依据与未验证事项；只提交报告与工具变更；未触碰 `my-doc/06_t5_bridge` | 本目录全部 |

## 2. 分类变化

| 类 | rev1 | rev2 | 变化 |
|---|---|---|---|
| A | 1 个（4.60 MB） | 1 个（4.60 MB） | 数量不变，口径改为“候选、动态未验证” |
| B | 14 个（115.33 MB） | **13 个（{cc['B']['total_mb']} MB）** | AMPE 移出 |
| C | 19 个（153.89 MB） | **20 个（{cc['C']['total_mb']} MB）** | AMPE 移入 |
| D | 21 个（252.90 MB） | 21 个（{cc['D']['total_mb']} MB） | 不变 |
| 合计 | 55 个 / 526.72 MB | **55 个 / {stats['total_mb']} MB** | 一致 |

## 3. 过滤修复的量化影响

| 指标 | rev1 | rev2 |
|---|---|---|
| `dependency_edges.csv` 边总数 | 639 | 639 |
| `app`（应用级证据） | 219 | **197** |
| `platform_provider` | 110 | **132** |
| `sdk_noise` | 203 | 203 |
| `ambiguous` | 107 | 107 |
| 被误判为 app 级的 `com.android.providers.*` | 有（漏过滤） | **0** |

## 4. 测试结果

```
python -m unittest test_filters -v
test_aosp_provider_authorities ... ok
test_bare_authorities ... ok
test_empty_and_case ... ok
test_prefix_only_authority ... ok
test_regression_split_bug ... ok
test_third_party_authorities_are_not_platform ... ok
test_app_level_only ... ok
test_classify ... ok
----------------------------------------------------------------------
Ran 8 tests in 0.000s
OK
```

覆盖率说明：这 8 个用例覆盖审查意见点名的 5 个 authority（`com.android.providers.media` /
`com.android.providers.settings` / `com.android.providers.contacts` / `media` / `settings`）+ 5 个第三方
authority 反例 + 前缀型子 authority + 大小写/空值 + 证据分桶函数。

## 5. 仍未验证的事项（不得当作已证结论使用）

1. **ES 删除后的实际影响**：未做 `pm uninstall` 与重启验证；隐式调用只有在运行时才暴露。
2. **B 类 13 个包禁用后的行为**：无一在真机上执行过禁用；本报告的“通过判据”是待执行方案，不是结果。
3. **AMPE 禁用/删除后的技能影响**：7 个包的引用已确认，但“具体哪些语音技能会失效”未验证。
4. **删除 `/data/app` 覆盖包的系统 prebuilt 的后果**（`GenieAicare`/`GenieRTC`/`magisk`）：
   推断为“退化为普通数据区应用、失去 SYSTEM flag 与默认权限授予”，**未实测**。
5. **`GenieMonitor` / `AliGenieService` / `GenieIoT` 的运行时占用**：快照中没有它们的进程，PSS 未知。
6. **framework 侧调用的具体方法**：`framework/*.jar` 是 316 字节占位，只有 vdex 字符串证据。
7. **`vendor` 分区内部依赖**：未解包 `vendor.img`，`GooglePinyinIME`、`MTKThermalManager` 未做静态分析。
8. **任何 RAM 节省量**：本报告不提供，也不应从 PSS 快照推算。

## 6. 变更文件

| 文件 | 变更类型 |
|---|---|
| `README.md` | 重写结论摘要、9 问回答、RAM 口径（§6）、目录（§7）、限制（§8） |
| `revisions.md` | 新增（本文件） |
| `app_inventory.md` | 更新分布表、新增 §5.1 `/data/app` 覆盖包对照表 |
| `app_dependency_analysis.md` | 更新 AMPE 引用计数、唤醒锁归属限定、§9 链路表、§10 修订说明 |
| `app_removal_recommendations.md` | 重写 A 类章节、B 类首批改单包实验、新增 §4.1 AMPE 专项、§8 修订说明 |
| `risk_assessment.md` | 新增 2 类风险（prebuilt 退化、指标混用）、B 类表移除 AMPE、新增 §6 修订说明 |
| `optimization_plan.md` | P1 改单包实验、AMPE 移出、P2 前置条件、§4 指标口径、§9 修订说明 |
| `app_inventory.csv` / `.json` | 重新生成（AMPE→C、ES 说明、引用计数按修复后规则） |
| `dependency_edges.csv` | 重新生成（过滤修复，`evidence_class` 重算） |
| `summary_stats.json` | 新增 `revision`、`memory_snapshot`（含各指标含义）、`updated_system_apps`、`process_pss_kb` |
| `tools/filters.py` | 新增（共享过滤规则） |
| `tools/test_filters.py` | 新增（单元测试） |
| `tools/report.py` 等 | 改为调用 `filters`，移除错误的内联判断 |
"""
open(os.path.join(DOC, 'revisions.md'), 'w', encoding='utf-8').write(rev)

print('optimization_plan.md + tools + revisions.md written')
