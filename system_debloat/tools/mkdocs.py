"""Generate the system_debloat deliverable set.

All tables are computed from out/apps.json, out/refs2.json and the read-only device
snapshots in out/device/. Prose and the per-package classification are authored here.
No RAM number is asserted unless it was measured on the device.
"""
import json
import os

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DOC = r'D:\tgz02\OS\system\system_debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
refs2 = json.load(open(os.path.join(OUT, 'refs2.json'), encoding='utf-8'))
apps = json.load(open(os.path.join(OUT, 'apps.json'), encoding='utf-8'))
so = json.load(open(os.path.join(OUT, 'so_refs.json'), encoding='utf-8'))

R = {r['dir']: r for r in rows}
by_cls = {k: [r for r in rows if r['cls'] == k] for k in 'ABCD'}

SDK_PREFIX = ('com.xiaomi.', 'com.taobao.', 'org.android.agoo', 'com.google.android.gms',
              'com.google.firebase', 'mtopsdk.', 'anetwork.', 'com.uc.', 'com.amap.',
              'com.alipay.mobile.', 'com.taobao.accs', 'org.eclipse.paho')


def is_sdk_noise(tok):
    return tok.startswith(SDK_PREFIX)


def inbound_split(d):
    items = refs2['inbound'].get(d, [])
    strong, noise = [], []
    for x in items:
        if x['kind'] not in ('component', 'authority', 'action', 'action_amb'):
            continue
        (noise if is_sdk_noise(x['token']) else strong).append(x)
    return strong, noise


def md_table(head, rows_, align=None):
    out = ['| ' + ' | '.join(head) + ' |',
           '|' + '|'.join(['---'] * len(head)) + '|']
    for r in rows_:
        out.append('| ' + ' | '.join(str(c) for c in r) + ' |')
    return '\n'.join(out)


def short(d):
    return d.replace('app/', '').replace('priv-app/', '').replace('.apk', '')


# ------------------------------------------------------------------ README
cls_counts = stats['by_class']
readme = f"""# TG-Z02 系统 App 精简与内存优化分析

本目录是对 TG-Z02（CCH，MT8167S，Android 8.1 / SDK 27，armeabi-v7a，产品名 AILABS_S1L）`system` 分区内
全部预装 App 的**盘点、依赖分析与精简建议**。分析只读取镜像与设备运行时状态，**不修改、不删除任何镜像文件**，
也不触碰 `my-doc/06_t5_bridge`（T5 AI Bridge）相关内容。

## 0. 关于本目录 `system_debloat/`

| 项目 | 说明 |
|---|---|
| 位置 | 仓库根（= 解包后的 **system 分区根目录**）下的独立文件夹 `system_debloat/`，与 `app/`、`priv-app/`、`framework/`、`lib/` 平级 |
| 内容 | 本任务的全部分析资料：6 份报告、机器可读清单与依赖边、复现脚本 |
| 性质 | **纯文档目录**。不是 Android 系统目录，系统启动、PackageManager、任何 App 都不会读取它 |
| 与 T5 的关系 | 不再写入 `my-doc/`；`my-doc/06_t5_bridge` 等既有 T5 资料保持原样，由 T5 任务独立维护 |
| 体积 | 约 0.44 MB（全部为文本，无二进制） |

> ⚠️ **打包注意（重要）**：本仓库根就是解包后的 system 分区树。若日后直接用本目录重新打包 `system.img`，
> `system_debloat/` 会被一并打进镜像，最终出现在 `/system/system_debloat` 并占用分区空间。
> 打包前请把该目录加入排除清单（或把分析资料移出打包工作区）。本次任务**未生成任何镜像**，
> 现有 `flash/ori/system.bin`、`flash/change/system.bin` 中也不含该目录。

## 1. 任务与范围

| 项目 | 内容 |
|---|---|
| 分析对象 | 已解包的 `system.bin` 根目录（本仓库根即 system 分区） |
| 覆盖目录 | `app/`、`priv-app/`；另核对 `framework/`、`lib/`、`lib/hw/`、`etc/` 与 `vendor` 分区 |
| 不在范围内 | `/data/app` 用户安装包、`vendor` 分区内部实现细节（仅核对已安装包路径） |
| 分析方式 | 静态：AXML / DEX / VDEX 解析、跨包引用、framework vdex 扫描；动态：设备只读快照（`dumpsys`、`pm`、`ps`） |
| 设备状态 | 已 root，全分区已备份（`flash/ori/*.bin`），system 已解包 |

## 2. 方法

1. **清单**：遍历 `app/`、`priv-app/` 的每个包目录与散装 APK，记录 APK / odex / vdex / lib 体积。
2. **Manifest**：自写 AXML 解析器直接读镜像内 APK 的二进制 Manifest，抽取包名、版本、`sharedUserId`、
   权限、`persistent`、Service / Receiver / Provider / Activity、intent-filter（action / category / authority）。
3. **代码语料**：读取 APK 内 `classes*.dex` 的字符串表；对无 dex 的 APK（Android 8.1 代码在 `oat/arm/*.vdex`）
   按 vdex 头切片取出内嵌 dex 再取字符串（只取字符串表，不需要反 quickening）。
4. **跨包引用**：把每个包的 action / authority / 组件全限定名建成词典，在所有包字符串语料中检索，并做三重降噪：
   * 平台 intent（`android.*`）不计为应用间依赖；
   * 同一 SDK 被多个包同时打包导致的同名类（`L…;` 描述符在源包内存在）标记为 *vendored*，不计依赖；
   * 同一 action / 组件被 ≥2 个包声明时标记为 *ambiguous*；
   * 已知 SDK 命名空间（小米推送、淘宝 accs、agoo、GMS、mopsdk、UC、高德等）单独归类为噪声。
5. **framework 侧引用**：对 `framework/arm/boot.vdex`、`boot-framework.vdex`、`oat/arm/services.vdex`
   做同样的字符串检索，判断哪些包被 framework / system_server 直接点名。
6. **运行时证据**：设备在线（`192.168.1.9:5555`），只读采集 `dumpsys meminfo / cpuinfo / power / alarm /
   activity services`、`pm list packages -s/-3/-d`、`pm path`、`dumpsys package`、`settings get`。

## 3. 证据等级

| 等级 | 含义 | 本报告中的典型来源 |
|---|---|---|
| **已验证** | 有代码 / Manifest / 调用关系 / 设备实测证据 | Manifest 组件 + 跨包字符串 + `dumpsys` 实测进程 / PSS / 唤醒 |
| **较可信** | 有静态证据，未做动态验证 | Manifest + 跨包引用，但运行时未观察到调用 |
| **未知** | 证据不足，不能据此删除 | 仅能读到 Manifest，功能与调用方均不明确 |

## 4. 结论摘要

- 系统 App 总计 **{stats['packages']}** 个（`app/` 目录 32 个 + `app/` 散装 APK 5 个 + `priv-app/` 18 个），
  分区占用 **{stats['total_mb']} MB**（APK + odex/vdex + 内置 native 库）。
- 分类结果：**A 可删除 {cls_counts['A']['packages']} 个（{cls_counts['A']['total_mb']} MB）**、
  **B 建议禁用 {cls_counts['B']['packages']} 个（{cls_counts['B']['total_mb']} MB）**、
  **C 暂时保留 {cls_counts['C']['packages']} 个（{cls_counts['C']['total_mb']} MB）**、
  **D 禁止删除 {cls_counts['D']['packages']} 个（{cls_counts['D']['total_mb']} MB）**。
- 真正的“可安全删除”只有 1 个（ES 文件浏览器，4.60 MB）。这不是分析不彻底，而是该镜像里几乎每个
  预装 App 都通过 `sharedUserId=android.uid.system`、Provider、无障碍服务或 framework 字符串与本机其他组件耦合。
- 收益最大的不是删 APK，而是**禁用三个常驻/高唤醒应用**：当贝桌面（实测 PSS 96,912 KB、JPush 527 次唤醒）、
  悬浮触控（`persistent=true`，PSS 21,461 + 16,961 KB）、OTA（`persistent=true`，实测 20% CPU）。
- 原厂语音链路（`com.aligenie.ags` + `com.alibaba.ailabs.genie.smartapp` + AVE/GenieMonitor + GenieIoT）
  已用运行时证据确认是常驻主力（三进程 PSS 合计 216,324 KB、`:core` 进程 72% CPU、持有 `NativeService` 长唤醒锁），
  **全部归 D**。

## 5. 最终回答（任务书第十节）

1. **一共有多少个 App？** 系统分区内 {stats['packages']} 个包（`app/` 32 目录 + 5 散装 APK + `priv-app/` 18）。
   设备 `pm list packages -s` 共 61 条 = 本表 55 个 App + 3 个资源包（`android`/framework-res、
   `com.yunos`/yunos-framework-res、`com.mediatek`/mediatek-res）+ `vendor/app` 2 个 + `vendor/overlay` 1 个。
2. **哪些可以安全删除？** 仅 `app/ES.apk`（com.estrongs.android.pop，4.60 MB）。另有 3 个包在完成指定验证后可升级为 A：
   `AMPE`、`dangbei.apk`、`qxg.apk`（见 `app_removal_recommendations.md`）。
3. **哪些适合禁用？** 14 个 B 类，合计 {cls_counts['B']['total_mb']} MB；优先 `dangbei.apk`、`easytouch.apk`、
   `Osupdate`，其次 `AMPE`、`Guide`、`qxg.apk` 与 8 个 AOSP 边缘组件。
4. **哪些必须保留？** 21 个 D 类，合计 {cls_counts['D']['total_mb']} MB，含语音链路、IoT 控制、Launcher、
   SystemUI、Settings、WebView、蓝牙栈与全部存储/Provider 基础组件。
5. **哪些依赖尚不清楚？** 19 个 C 类（{cls_counts['C']['total_mb']} MB），典型为 `GenieRTC`、`Waft`、
   `AliVideoPlayer`、`GenieBrowser`、`AliSpKey`、`raShow`、`UUID`、`AliProvision`、`Emode`。
6. **删除或禁用分别能释放多少 system 空间？**
   * 删除 A：**4.60 MB**；
   * 删除全部 B：**{cls_counts['B']['total_mb']} MB**（A+B 合计 **{round(cls_counts['A']['total_mb'] + cls_counts['B']['total_mb'], 2)} MB**）；
   * **仅禁用：0 MB**（APK 仍在 system，只改 `/data/system/packages.xml` 的 enabled 状态）。
7. **哪些应用可能影响运行时 RAM？** 以实测 PSS 排序：smartapp 三进程 216,324 KB、当贝桌面 96,912 KB、
   Waft 83,190 KB、Launcher 48,762 KB、IoT:service 22,416 KB、GenieRTC 22,329 KB、ags 21,599 KB、
   悬浮触控 38,422 KB（两进程）、SystemUI 20,828 KB、OTA 16,011 KB、SettingsProvider 11,825 KB。
   （快照时刻 `dumpsys meminfo` 的 Total PSS by process，非节省量，见第 6 节声明。）
8. **推荐按什么顺序精简？** 见 `optimization_plan.md`：P0 备份与基线 → P1 纯禁用（3 个高收益项，逐项观察 24 h）
   → P2 删除已验证项（重新打包镜像前先做用户态卸载验证）→ P3 结构性优化（不做 odex 清理）。
9. **如何逐项恢复？** `pm enable`（禁用项）、`cmd package install-existing`（`pm uninstall -k --user 0` 项）、
   `adb push` + `chmod 644` + `restorecon`（手工删除项）、SP Flash Tool 回刷 `flash/ori/system.bin`（镜像级）。

## 6. 关于 RAM 数字的声明

本报告**不给出“预计节省 XX MB RAM”的推算值**。原因：Android 的 PSS 会在进程被再次拉起、ZRAM 换出、
kernel page cache 复用时剧烈变化，且“禁用”只是让进程不再由系统拉起，并不等于释放同等 PSS。
文中出现的 KB 数值全部是 `dumpsys meminfo` 的一次真实快照（2026-11-20 16:03，设备 uptime 236,883,195 ms），
仅用于**排序与量级参考**，二次测量方法见 `optimization_plan.md` 第 4 节。

## 7. 目录

本目录 `system_debloat/`（与本文件同级）包含：

| 文件 | 内容 |
|---|---|
| [README.md](README.md) | 任务说明、方法、证据等级、结论与 9 问回答 |
| [app_inventory.md](app_inventory.md) | 55 个包的完整清单（包名 / 版本 / 体积 / 组件 / 常驻 / 设备路径） |
| [app_dependency_analysis.md](app_dependency_analysis.md) | 依赖模型、跨包引用、framework 引用、Provider / uid / native 库依赖、运行时常驻链路 |
| [app_removal_recommendations.md](app_removal_recommendations.md) | A/B/C/D 逐项建议与操作方式 |
| [risk_assessment.md](risk_assessment.md) | 风险矩阵、误删后果、回退与恢复策略 |
| [optimization_plan.md](optimization_plan.md) | P0–P3 分阶段方案、测量与验收、逐项恢复命令 |
| [app_inventory.csv](app_inventory.csv) / [app_inventory.json](app_inventory.json) | 机器可读清单（55 行全字段） |
| [dependency_edges.csv](dependency_edges.csv) | 机器可读依赖边（含 `evidence_class`：app / sdk_noise / ambiguous / platform_provider） |
| [summary_stats.json](summary_stats.json) | 分类汇总与运行时快照摘要 |
| [tools/](tools/) | 解析与生成脚本（axml.py / scan.py / refs2.py / report.py），可对原始镜像复现 |

## 8. 已知限制

- `system/framework/*.jar` 在本工作区是 316 字节占位文件（真实代码在 `framework/arm/*.vdex` 与 `oat/`），
  因此 framework 侧结论基于 **vdex 字符串**而非可读 Java 源码；无法给出“SystemServer 在哪个方法里引用了某包”。
- `vendor` 分区未解包（仅用 `pm path` 与 7-Zip 列表核对），`vendor/app` 2 个包的内部依赖未做静态分析。
- 跨包引用基于字符串匹配，SDK 打包噪声已做过滤，但**字符串存在 ≠ 运行时必然调用**；因此除有 `dumpsys` 佐证的项外，
  引用结论最高只标到“较可信”。
- 未在设备上执行任何禁用 / 卸载操作（避免影响 T5 现场），因此“禁用后是否真的无副作用”属于**未验证**，
  需按 `optimization_plan.md` 的观察清单逐项确认。
"""
open(os.path.join(DOC, 'README.md'), 'w', encoding='utf-8').write(readme)

# ------------------------------------------------------------------ app_inventory
inv_head = ['#', '目录', '包名', '版本', '类', '总 MB', 'APK', 'lib', 'oat/vdex', '组件', 'persistent', 'PSS KB', '设备路径']
inv_rows = []
for i, r in enumerate(sorted(rows, key=lambda x: (x['cls'], -float(x['total_mb']))), 1):
    inv_rows.append([i, '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['version'], r['cls'],
                     r['total_mb'], r['apk_mb'], r['lib_mb'], r['oat_mb'], r['comps'],
                     '是' if r['persistent'] else '', r['pss_kb'] or '', r['device_path']])

summary_rows = []
for k in 'ABCD':
    c = cls_counts[k]
    summary_rows.append([k, c['packages'], c['total_mb'], c['apk_mb'], c['lib_mb'], c['oat_mb'], c['pss_mb']])

inv = f"""# App 完整清单

数据来源：镜像文件体积（本地解包目录） + 设备 `pm path` / `dumpsys meminfo`（2026-11-20 16:03 快照）。
「总 MB」= APK + 内置 native 库 + odex/vdex/oat；不含 `/data` 数据目录与用户更新包。

## 1. 分类汇总

{md_table(['类', '数量', '总 MB', 'APK MB', 'lib MB', 'oat/vdex MB', '快照 PSS MB'], summary_rows)}

合计 **{stats['packages']} 个包 / {stats['total_mb']} MB**。

## 2. 分区与目录分布

| 位置 | 形态 | 数量 | 说明 |
|---|---|---|---|
| `system/app/<Name>/` | 目录（含 apk + lib + oat） | 32 | 多数带 `oat/arm/*.odex|.vdex` 预编译产物 |
| `system/app/*.apk` | 散装 APK | 5 | `dangbei.apk`、`easytouch.apk`、`ES.apk`、`magisk.apk`、`qxg.apk`，无 oat、无 lib 目录 |
| `system/priv-app/<Name>/` | 目录 | 18 | 均带 `oat/`，仅 `DefaultContainerService` 额外带 `lib/` |
| `vendor/app/` | 未解包（vendor.img） | 2 | `GooglePinyinIME`(26.0 MB)、`MTKThermalManager`(27 KB)，仅核对路径，未做静态分析 |
| `vendor/overlay/` | 未解包 | 1 | `framework-res__auto_generated_rro.apk`(1.44 MB) |
| `/data/app` 更新包 | 用户分区 | 2 | `com.alibaba.ailabs.genie.rtc`、`com.topjohnwu.magisk`（覆盖了系统内 prebuilt） |

## 3. 完整清单（按分类、体积排序）

{md_table(inv_head, inv_rows)}

> PSS 为空表示快照时刻该包没有进程（未运行）。PSS 单位 KB，来自 `dumpsys meminfo` 的
> `Total PSS by process`，同名包的子进程单独列出时已在此累加（如 smartapp 的 `:core` / `:business`）。
> `com.shere.assistivetouch` 的 `.service` 子进程、`com.dangbei1.tvlauncher` 的 `:xmpushservice` 子进程
> 在快照中单独成行，本表按包名前缀合并。

## 4. 体积 TOP 15

{md_table(['包', '类', '总 MB', 'APK MB', 'lib MB', 'oat MB'],
          [[ '`' + r['pkg'] + '`', r['cls'], r['total_mb'], r['apk_mb'], r['lib_mb'], r['oat_mb']]
           for r in sorted(rows, key=lambda x: -float(x['total_mb']))[:15]])}

体积集中在 6 个包（smartapp 87.89、AMPE 87.18、webview 52.00、GenieMonitor 47.86、AliVideoPlayer 45.06、
GenieLauncher 20.48），合计 340 MB，占分区内 App 体积的 65%。

## 5. 与设备实际安装状态的一致性

- 设备 `pm list packages -s` 共 61 条 = 本表 55 个 App + 3 个框架资源包（`android` → `framework-res.apk`、
  `com.yunos` → `yunos-framework-res.apk`、`com.mediatek` → `framework/mediatek-res/mediatek-res.apk`）
  + `vendor/app` 2 个（`GooglePinyinIME`、`MTKThermalManager`）+ `vendor/overlay` 1 个（`android.auto_generated_rro__`）。
- 设备 `pm list packages -d` 为空 → **当前没有任何包被禁用**，`enabled=0`（默认）状态为 55 个系统包的全部现状。
- `com.alibaba.ailabs.genie.rtc` 与 `com.topjohnwu.magisk` 的 `codePath` 指向 `/data/app`，
  即系统内 prebuilt 被用户更新覆盖；**删除系统内 prebuilt 需先确认 data 版本可独立运行**。
"""
open(os.path.join(DOC, 'app_inventory.md'), 'w', encoding='utf-8').write(inv)
print('README.md / app_inventory.md written')
