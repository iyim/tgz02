"""Generate the system_debloat deliverable set.

All tables are computed from out/apps.json, out/refs2.json and the read-only device
snapshots in out/device/. Prose and the per-package classification are authored here.
No RAM number is asserted unless it was measured on the device.
"""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import protection

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
全部预装 App 的**盘点、依赖分析与精简建议**。分析只读取镜像与设备运行时状态，**不修改、不删除任何镜像文件**；
也不触碰任何 T5 工程资料与代码。

> **rev3（当前版本）**：按操作者指令，六个 App（当贝桌面、MT 管理器、ES 文件管理器、权限狗、EasyTouch、Magisk）
> 进入**永久性用户保护**状态，即使静态分析认为可删也不会进入任何删除/禁用/精简清单，详见第 4 节。

## 0. 关于本目录 `system_debloat/`

| 项目 | 说明 |
|---|---|
| 位置 | 仓库根（= 解包后的 **system 分区根目录**）下的独立文件夹 `system_debloat/`，与 `app/`、`priv-app/`、`framework/`、`lib/` 平级 |
| 内容 | 本任务的全部分析资料：6 份报告、机器可读清单与依赖边、复现脚本 |
| 性质 | **纯文档目录**。不是 Android 系统目录，系统启动、PackageManager、任何 App 都不会读取它 |
| 与 T5 的关系 | 完全独立：本目录只存放系统精简分析资料，不读取、不写入任何 T5 工程目录，T5 资料由其自身任务维护 |
| 体积 | 约 0.46 MB（全部为文本，无二进制） |

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

## 4. 用户保护清单（rev3 · 最高优先级）

操作者明确指定以下六个 App 必须保留。**保护优先于任何静态分析结论**：即使某个包被静态分析判为 A 类候选，
也不得出现在删除、禁用、清数据清单中，不得限制其自启动 / 后台 / 权限，也不得通过脚本或过滤器间接处理。

{md_table(['App', '包名（inventory 实测）', '技术分类', '系统镜像内', '保护状态'],
          [[v['label'], '`' + p + '`', (v['tech_class'] or '—（不在镜像内）'),
            '是' if v['in_system_image'] else '否', '**user_protected = true**']
           for p, v in sorted(protection.USER_PROTECTED.items(), key=lambda kv: kv[1]['label'])])}

保护原因统一记录为：`{protection.PROTECTION_REASON}`

要点：

- 六个包名均取自 `app_inventory.json` 的 Manifest `package` 字段，**不按显示名称推断**。
- `bin.mt.plus`（MT 管理器）**不在系统镜像内**：55 个包的清单不含它，设备 `pm path` 指向
  `/data/app/bin.mt.plus-xXCsOzsoTVa2gpDlsM2gnw==/base.apk`（`pm list packages -3`）。
  它不是精简对象，但仍列入保护名单——不因为它不在镜像里就当作可处理项。
- **ES 文件管理器**保留原技术分类 A（静态分析：0 条 app 级入向引用、无进程、无 native 库），
  但被保护标记拦截，**从所有实际删除候选中排除**；不为了"方便"把它伪装成 D 类关键组件。
- 当贝桌面、EasyTouch、权限狗仍是 B 类（技术上可禁用），但同样被保护规则拦截，**不进入 P1 试验清单**。
- 保护状态在机器可读数据中体现：`app_inventory.json` / `.csv` 的 `user_protected`、`protection_reason`、
  `exec_action` 字段，以及 `user_protected.json`、`summary_stats.json:user_protection`。

### 4.2 A 类候选与删除清单的映射（rev3.1）

静态结论与执行清单**分开存放**，避免把“静态候选”误读成“删除计划”：

| 清单 | 含义 | 当前内容 |
|---|---|---|
| `A_candidate` | 所有 A 类**静态**候选（证据，不是计划） | {len(stats['executable_lists']['A_candidate'])} 个：{', '.join('`' + p + '`' for p in stats['executable_lists']['A_candidate']) or '—'} |
| `A_delete` | **可执行**删除清单 | **{len(stats['executable_lists']['A_delete'])} 个（空）** |

进入 `A_delete` 需要**同时**满足两条，且两条都必须有真实记录，不得凭推断填写：

1. 完成**真机动态验证**（`protection.DYNAMIC_VERIFIED_A`，当前为空集）；
2. 取得**用户明确授权**（`protection.USER_AUTHORIZED_DELETE`，当前为空集）。

用户保护名单中的包**无论**上述状态如何都不得进入 `A_delete`——ES 文件管理器即属此列：
它出现在 `A_candidate`（静态证据），同时出现在 `protected_blocked`（执行拦截），但**不在** `A_delete`。

### 4.1 Magisk 及其配套组件

Magisk 作为**独立保护对象**处理。下表只列**能从当前镜像与只读设备查询确认**的内容，不推断其安装结构：

{md_table(['类型', '路径', '在系统镜像内', '证据'],
          [[c['kind'], '`' + c['path'] + '`', '是' if c['in_system_image'] else '否', c['evidence']]
           for c in protection.MAGISK_RELATED])}

已核查但**未发现** Magisk 痕迹的位置（说明 Magisk 未以这些方式植入 system 分区）：

{md_table(['检查项', '结果'], [[x, '未发现'] for x in protection.MAGISK_ABSENT_IN_IMAGE])}

因此保护范围与禁止动作：

- 系统镜像内：`app/magisk.apk`（11,278,270 B，Manifest v25.2）**禁止删除/替换**；
  设备实际加载的是 `/data/app` 版本 27.0（`UPDATED_SYSTEM_APP`），删除系统内 prebuilt 会让其退化，风险另见第 9 节。
- 镜像外：`/sbin` 是 Magisk 的 tmpfs 挂载（`/proc/mounts` 可见 `magisk /sbin tmpfs`），内含
  `magisk32`、`magiskinit`、`magiskpolicy`、`magisk -> magisk32` 与 `/sbin/.magisk`（shell 无权限，未读取内容）；
  `/data/adb` 存在但 shell 无权限，内容未读取。以上均**禁止删除、禁止清理**。
- **禁止修改 `boot.img` / boot ramdisk / init 配置**，禁止清理 Magisk 模块与 denylist。
- 本轮未执行任何提权操作（设备 shell 身份为 `uid=2000(shell)`），未读取 root-only 内容。

## 5. 结论摘要

- 系统 App 总计 **{stats['packages']}** 个（`app/` 目录 32 个 + `app/` 散装 APK 5 个 + `priv-app/` 18 个），
  分区占用 **{stats['total_mb']} MB**（APK + odex/vdex + 内置 native 库）。
- 分类结果：**A 类候选 {cls_counts['A']['packages']} 个（{cls_counts['A']['total_mb']} MB）**、
  **B 建议禁用 {cls_counts['B']['packages']} 个（{cls_counts['B']['total_mb']} MB）**、
  **C 暂时保留 {cls_counts['C']['packages']} 个（{cls_counts['C']['total_mb']} MB）**、
  **D 禁止删除 {cls_counts['D']['packages']} 个（{cls_counts['D']['total_mb']} MB）**。
  其中**六个包受用户保护**（第 4 节），技术分类保留但不进入任何执行清单。
- **当前可执行的删除项：0 个。** A 类只有 ES 文件浏览器一个候选，而它已被用户保护拦截；
  其技术分类仍是 A（静态分析 0 条 app 级入向引用、无进程、无 native 库），但
  “A 类候选”只表示**静态分析认为具备删除可能性**，不代表已验证可安全删除。
- 收益最大的不是删 APK，而是**逐项试验常驻/高唤醒应用**（一次只动一个、各观察 24 h）。
  原计划的三项中，当贝桌面与悬浮触控**现已受用户保护**，因此实际可试验项只剩 OTA
  （`persistent=true`，`dumpsys cpuinfo` **单次 343 s 区间快照** 20% CPU——不是持续占用）。
  当贝桌面（快照 PSS 96,912 kB、JPush 527 次唤醒）、悬浮触控（快照 PSS 21,461 + 16,961 kB）
  的数字仍作为**观测事实**保留，但**不作为优化动作的依据**。
- 原厂语音链路（`AliGenieService` + `com.alibaba.ailabs.genie.smartapp` + AVE/GenieMonitor + GenieIoT）
  **全部归 D**。其中**只有 smartapp 获取了运行时证据**：其 3 个进程 PSS 合计 216,324 kB（仅此 3 个进程，
  不是整条语音链路的 PSS）、`:core` 进程在单次 343 s 区间快照中占 72% CPU、持有
  `NativeService`/`ScreenWakeManager`/`AudioIn` 唤醒锁。`GenieMonitor`、`GenieIoT`、`AliGenieService`
  的运行时占用未单独测量，其 D 级判定依据是 Manifest 组件 + 跨包引用。

## 6. 最终回答（任务书第十节）

1. **一共有多少个 App？** 系统分区内 {stats['packages']} 个包（`app/` 32 目录 + 5 散装 APK + `priv-app/` 18）。
   设备 `pm list packages -s` 共 61 条 = 本表 55 个 App + 3 个资源包（`android`/framework-res、
   `com.yunos`/yunos-framework-res、`com.mediatek`/mediatek-res）+ `vendor/app` 2 个 + `vendor/overlay` 1 个。
2. **哪些可以安全删除？** **当前没有可执行的删除项。** 唯一 A 类候选是 `app/ES.apk`
   （com.estrongs.android.pop，4.60 MB），但它**受用户保护**，已从删除清单排除；
   且即使不受保护，A 类也只代表“静态分析认为具备删除可能性，尚未完成真机动态验证”。
3. **哪些适合禁用？** B 类 {cls_counts['B']['packages']} 个 / {cls_counts['B']['total_mb']} MB，
   其中当贝桌面、EasyTouch、权限狗**受用户保护**；可执行候选 {len(stats['executable_lists']['B_disable'])} 个。
   **rev4 起不再按 APK 大小排序**，而按“可测量收益 × 功能风险”（详见
   [b_class_priority_analysis.md](b_class_priority_analysis.md)）：
   * 只有 `com.alibaba.ailabs.genie.osupdate`（OTA）有实测占用（PSS 16,011 kB、单窗口 343 s 内 20% CPU），
     先做**只读观测**判断该 CPU 是否周期性，再决定要不要做单包禁用试验；
   * `com.alibaba.ailabs.genie.guide`（5.42 MB）与 `com.android.storagemanager`（2.32 MB）**无进程**，
     只有“删除”才有空间收益，禁用本身不产生可测量 RAM 收益；
   * 其余 7 个平台小组件（合计 0.42 MB）**不建议为资源收益禁用**，其中 3 个被 framework 按类名引用。
   `AMPE` 不在禁用清单（C 类，需产品决策）。
   > 当贝桌面与 EasyTouch 不出现在任何禁用顺序中；`qxg.apk`（权限狗）同样受保护。
4. **哪些必须保留？** 21 个 D 类，合计 {cls_counts['D']['total_mb']} MB，含语音链路、IoT 控制、Launcher、
   SystemUI、Settings、WebView、蓝牙栈与全部存储/Provider 基础组件。
5. **哪些依赖尚不清楚？** {cls_counts['C']['packages']} 个 C 类（{cls_counts['C']['total_mb']} MB），
   含 `AMPE`（小程序容器，7 个包引用）、`GenieRTC`、`Waft`、`AliVideoPlayer`、`GenieBrowser`、
   `AliSpKey`、`raShow`、`UUID`、`AliProvision`、`Emode` 等。
6. **删除或禁用分别能释放多少 system 空间？**
   * 可执行的删除：**0 MB**（唯一 A 类候选 ES 受用户保护，已排除）；
   * 若仅作容量核算：A 类候选 4.60 MB，B 类全部 {cls_counts['B']['total_mb']} MB，
     但其中受保护的当贝 / EasyTouch / 权限狗不可执行，**这些数字不等于可释放空间**；
   * **仅禁用：0 MB**（APK 仍在 system，只改 `/data/system/packages.xml` 的 enabled 状态）。
7. **哪些应用可能影响运行时 RAM？** 以快照 PSS 排序（单次 `dumpsys meminfo`，非节省量）：
   smartapp 3 进程合计 216,324 kB、当贝桌面 96,912 kB（受保护）、Waft 83,190 kB、Launcher 48,762 kB、
   悬浮触控 38,422 kB（两进程，受保护）、IoT:service 22,416 kB、GenieRTC 22,329 kB、ags 21,599 kB、
   SystemUI 20,828 kB、OTA 16,011 kB、SettingsProvider 11,825 kB。
   受保护项的 PSS 只作为观测事实，**不作为优化依据**；未出现在列表中的包（含 `GenieMonitor`）
   在快照时刻**没有进程**，不能据此认为它们“不占内存”。
8. **推荐按什么顺序精简？** 见 `optimization_plan.md`：P0 备份与基线 → P1 **单包逐项**禁用试验
   （OTA → Guide → AOSP 边缘组件，每项独立观察 ≥24 h；当贝 / EasyTouch / 权限狗**不在其中**）
   → P2 对通过项先做用户态卸载验证再改镜像 → P3 不做 odex 清理。
9. **如何逐项恢复？** `pm enable`（禁用项）、`cmd package install-existing`（`pm uninstall -k --user 0` 项）、
   `adb push` + `chmod 644` + `restorecon`（手工删除项）、SP Flash Tool 回刷 `flash/ori/system.bin`（镜像级）。
   受保护项从未被禁用/卸载，无需恢复路径。

## 7. 关于 RAM 数字的声明（rev2 明确口径）

本报告**不给出“预计节省 XX MB RAM”的推算值**。原因：PSS 随进程重拉、ZRAM 换出、page cache 复用剧烈变化；
“禁用”只是让进程不再由系统拉起，不等于释放同等 PSS。

下列指标**含义不同、不可互换、不可相加**：

| 指标 | 来源 | 值（主快照 16:03） | 含义 |
|---|---|---|---|
| `MemTotal` | `/proc/meminfo` | 1,008,628 kB | 内核可见物理内存总量 |
| `MemFree` | `/proc/meminfo` | 89,812 kB（16:38 二次采样为 44,332 kB） | 完全空闲物理页，不含可回收 cache |
| `MemAvailable` | `/proc/meminfo` | 311,452 kB（16:03）／265,332 kB（16:38） | 内核估计可再分配内存 |
| `Free RAM` | `dumpsys meminfo` | 223,708 kB | dumpsys 口径 = 0 cached pss + 120,024 cached kernel + 103,684 free |
| `Used RAM` | `dumpsys meminfo` | 968,931 kB | dumpsys 口径 = used pss 879,079 + kernel 89,852 |
| `used pss`（各进程 PSS 之和） | `dumpsys meminfo` | 879,079 kB | “进程占用”口径，**不是可释放量** |
| `SwapPss` / `ZRAM` | `dumpsys meminfo` | 292,945 / 77,792 kB | 已换出页 PSS / ZRAM 物理占用 |

- `Used RAM + Free RAM + Lost RAM = 1,223,781 kB > MemTotal 1,008,628 kB`：swap/ZRAM 与共享页记账口径不同，
  三者不能相加当作“总内存”。
- 35 分钟内 `MemFree` 从 89,812 kB 变到 44,332 kB，说明**单点内存数值不可作为优化收益**；
  需要收益结论时按 `optimization_plan.md` 第 4 节做多采样中位数 + `batterystats` 对比。

## 8. 目录

本目录 `system_debloat/`（与本文件同级）包含：

| 文件 | 内容 |
|---|---|
| [README.md](README.md) | 任务说明、方法、证据等级、**用户保护清单**、结论、9 问回答、RAM 口径声明 |
| [revisions.md](revisions.md) | **修订记录**（rev2 审查修订 / rev3 用户保护与 P2 修复）、依据、仍未验证的事项 |
| [app_inventory.md](app_inventory.md) | 55 个包的完整清单（包名 / 版本 / 体积 / 组件 / 常驻 / **保护状态** / 设备路径 / 更新包差异） |
| [app_dependency_analysis.md](app_dependency_analysis.md) | 依赖模型、跨包引用、framework 引用、Provider / uid / native 库依赖、运行时常驻链路 |
| [app_removal_recommendations.md](app_removal_recommendations.md) | **用户保护总表** + A/B/C/D 逐项建议与操作方式 |
| [b_class_priority_analysis.md](b_class_priority_analysis.md) | **rev4：10 个 B 类候选的收益/风险排序 + OTA 专项 + 验证顺序与回退** |
| [risk_assessment.md](risk_assessment.md) | 风险矩阵、误删后果、**违反用户保护的风险**、回退与恢复策略 |
| [optimization_plan.md](optimization_plan.md) | P0–P3 分阶段方案（已剔除受保护项）、测量与验收、逐项恢复命令 |
| [app_inventory.csv](app_inventory.csv) / [app_inventory.json](app_inventory.json) | 机器可读清单（55 行全字段，含 `user_protected` / `exec_action`） |
| [user_protected.json](user_protected.json) | **用户保护清单（机器可读）**：6 个 App + Magisk 相关组件 + 执行清单 |
| [dependency_edges.csv](dependency_edges.csv) | 机器可读依赖边（含 `evidence_class`：app / sdk_noise / ambiguous / platform_provider） |
| [summary_stats.json](summary_stats.json) | 分类汇总、内存指标口径、3 个 `/data/app` 更新包、保护块、可执行清单 |
| [tools/](tools/) | 解析与生成脚本 + **filters.py / protection.py** 及对应单元测试 |

## 9. 已知限制（含 rev2 / rev3 未解决项）

- `system/framework/*.jar` 在本工作区是 316 字节占位文件（真实代码在 `framework/arm/*.vdex` 与 `oat/`），
  因此 framework 侧结论基于 **vdex 字符串**而非可读 Java 源码；无法给出“SystemServer 在哪个方法里引用了某包”。
- `vendor` 分区未解包（仅用 `pm path` 与 7-Zip 列表核对），`vendor/app` 2 个包的内部依赖未做静态分析。
- 跨包引用基于字符串匹配，SDK 打包噪声已做过滤，但**字符串存在 ≠ 运行时必然调用**；因此除有 `dumpsys` 佐证的项外，
  引用结论最高只标到“较可信”。
- 未在设备上执行任何禁用 / 卸载操作（避免影响现场），因此“禁用后是否真的无副作用”属于**未验证**，
  需按 `optimization_plan.md` 的观察清单逐项确认。
- 3 个包（`GenieAicare`、`GenieRTC`、`magisk`）在设备上由 `/data/app` 版本覆盖。**删除系统内 prebuilt 会让
  该包退化为普通数据区应用**（失去 SYSTEM flag 与随之而来的默认权限授予），此后果**未验证**；详见
  `app_inventory.md` 第 5 节与 `risk_assessment.md` 第 2 节。
- `PSS` 只对快照时刻有进程的包有效；`GenieMonitor` 等未出现在 `Total PSS by process` 中的包**没有动态证据**。
- Magisk 的安装结构（boot ramdisk 补丁细节、模块列表）**未做推断**：`/sbin/.magisk` 与 `/data/adb` 对 shell
  用户不可读，本轮未提权；`boot.img` 未分析、未修改。
- 用户保护是**策略约束**而非技术结论：受保护包的静态分析结果（如 ES 的 A 类、当贝/权限狗的 B 类）依然成立，
  只是不再转化为任何执行动作。
"""
open(os.path.join(DOC, 'README.md'), 'w', encoding='utf-8').write(readme)

# ------------------------------------------------------------------ app_inventory
inv_head = ['#', '目录', '包名', '版本', '类', '总 MB', 'APK', 'lib', 'oat/vdex', '组件', 'persistent',
            'PSS KB', '保护', '设备路径']
inv_rows = []
for i, r in enumerate(sorted(rows, key=lambda x: (x['cls'], -float(x['total_mb']))), 1):
    inv_rows.append([i, '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['version'], r['cls'],
                     r['total_mb'], r['apk_mb'], r['lib_mb'], r['oat_mb'], r['comps'],
                     '是' if r['persistent'] else '', r['pss_kb'] or '',
                     '**受保护**' if r['user_protected'] else '', r['device_path']])

summary_rows = []
for k in 'ABCD':
    c = cls_counts[k]
    summary_rows.append([k, c['packages'], c['total_mb'], c['apk_mb'], c['lib_mb'], c['oat_mb'],
                         '{:,}'.format(c['pss_sum_kb'])])

inv = f"""# App 完整清单

数据来源：镜像文件体积（本地解包目录） + 设备 `pm path` / `dumpsys meminfo`（2026-11-20 16:03 快照）。
「总 MB」= APK + 内置 native 库 + odex/vdex/oat；不含 `/data` 数据目录与用户更新包。

## 1. 分类汇总

{md_table(['类', '数量', '总 MB', 'APK MB', 'lib MB', 'oat/vdex MB', '快照 PSS 合计 kB'], summary_rows)}

> 最后一列是该类下各包进程 PSS 的**相加值**（单次快照，仅作量级参考），不是该类包的“内存占用”，
> 也不能当作禁用/删除后可释放的内存；无进程的包按 0 计入。

合计 **{stats['packages']} 个包 / {stats['total_mb']} MB**。

分类含义（rev3 统一口径）：

| 类 | 含义 | 是否可执行 |
|---|---|---|
| A | **A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证。** | 否（需动态验证 + 用户授权） |
| B | 建议禁用（保留 APK），需单包试验并独立观察 | 是（受保护项除外） |
| C | 暂时保留（依赖不明确，需动态验证） | 否 |
| D | 禁止删除（系统 / 原厂核心 / AI 改造依赖） | 否 |

## 2. 用户保护清单（rev3）

{md_table(['App', '包名', '系统镜像内目录', '技术分类', '保护状态', '允许的动作'],
          [[v['label'], '`' + p + '`', ('`' + v['dir'] + '`') if v['dir'] else '不在镜像内',
            v['tech_class'] or '—', 'user_protected = true',
            '禁止删除/禁用/清数据/限制自启'] for p, v in
           sorted(protection.USER_PROTECTED.items(), key=lambda kv: kv[1]['label'])])}

保护原因：`{protection.PROTECTION_REASON}`

> 表中只有 5 个包出现在下面的 55 行清单里（`bin.mt.plus` 是设备侧安装，不在 system 分区）。
> 受保护包**保留原技术分类**，但 `exec_action` 一律为“受用户保护”，且不会出现在
> `summary_stats.json:executable_lists` 的任何执行桶中。

## 3. 分区与目录分布

| 位置 | 形态 | 数量 | 说明 |
|---|---|---|---|
| `system/app/<Name>/` | 目录（含 apk + lib + oat） | 32 | 多数带 `oat/arm/*.odex|.vdex` 预编译产物 |
| `system/app/*.apk` | 散装 APK | 5 | `dangbei.apk`、`easytouch.apk`、`ES.apk`、`magisk.apk`、`qxg.apk`，无 oat、无 lib 目录 |
| `system/priv-app/<Name>/` | 目录 | 18 | 均带 `oat/`，仅 `DefaultContainerService` 额外带 `lib/` |
| `vendor/app/` | 未解包（vendor.img） | 2 | `GooglePinyinIME`(26.0 MB)、`MTKThermalManager`(27 KB)，仅核对路径，未做静态分析 |
| `vendor/overlay/` | 未解包 | 1 | `framework-res__auto_generated_rro.apk`(1.44 MB) |
| `/data/app` 更新包 | 用户分区 | **3** | `com.alibaba.ailabs.genie.aicare`、`com.alibaba.ailabs.genie.rtc`、`com.topjohnwu.magisk`（`UPDATED_SYSTEM_APP`，覆盖系统内 prebuilt；rev2 由 2 修正为 3） |

## 4. 完整清单（按分类、体积排序）

{md_table(inv_head, inv_rows)}

> PSS 为空表示快照时刻该包没有进程（未运行）。PSS 单位 KB，来自 `dumpsys meminfo` 的
> `Total PSS by process`，同名包的子进程单独列出时已在此累加（如 smartapp 的 `:core` / `:business`）。
> `com.shere.assistivetouch` 的 `.service` 子进程、`com.dangbei1.tvlauncher` 的 `:xmpushservice` 子进程
> 在快照中单独成行，本表按包名前缀合并。
> 「保护」列标 `受保护` 的 5 行即第 2 节中的系统镜像内受保护 App。

## 5. 体积 TOP 15

{md_table(['包', '类', '总 MB', 'APK MB', 'lib MB', 'oat MB'],
          [[ '`' + r['pkg'] + '`', r['cls'], r['total_mb'], r['apk_mb'], r['lib_mb'], r['oat_mb']]
           for r in sorted(rows, key=lambda x: -float(x['total_mb']))[:15]])}

体积集中在 6 个包（smartapp 87.89、AMPE 87.18、webview 52.00、GenieMonitor 47.86、AliVideoPlayer 45.06、
GenieLauncher 20.48），合计 340 MB，占分区内 App 体积的 65%。

## 6. 与设备实际安装状态的一致性

- 设备 `pm list packages -s` 共 61 条 = 本表 55 个 App + 3 个框架资源包（`android` → `framework-res.apk`、
  `com.yunos` → `yunos-framework-res.apk`、`com.mediatek` → `framework/mediatek-res/mediatek-res.apk`）
  + `vendor/app` 2 个（`GooglePinyinIME`、`MTKThermalManager`）+ `vendor/overlay` 1 个（`android.auto_generated_rro__`）。
- 设备 `pm list packages -d` 为空 → **当前没有任何包被禁用**，`enabled=0`（默认）状态为 55 个系统包的全部现状。

### 6.1 被 `/data/app` 覆盖的系统包（3 个，rev2 修正）

下表把**系统镜像内的预装文件**与**设备当前实际加载的版本**分开列示。`pm path` 指向 `/data/app` 只说明
“设备上跑的是更新版”，**不代表 system 镜像里没有该 APK**：

| 包名 | 系统内目录 / 版本 | 设备当前加载版本 | 设备 codePath | flags |
|---|---|---|---|---|
| `com.alibaba.ailabs.genie.aicare` | `app/GenieAicare` · **4.0.26** | **4.0.62** | `/data/app/com.alibaba.ailabs.genie.aicare-zsBAkMuEJlOe5ygOiDbDbw==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |
| `com.alibaba.ailabs.genie.rtc` | `app/GenieRTC` · **4.0.16** | **5.2.78.53746723.dc** | `/data/app/com.alibaba.ailabs.genie.rtc-iD7ciUfp9lpYBtIqAEiqeA==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |
| `com.topjohnwu.magisk` | `app/magisk.apk` · **25.2** | **27.0** | `/data/app/com.topjohnwu.magisk-EuMSu4VItaK3widDq122zw==/base.apk` | SYSTEM · UPDATED_SYSTEM_APP |

由此带来的三点结论：

1. 本清单统计的 **526.72 MB 是镜像内文件体积**，与设备上实际运行版本的体积无关；
   上表三行在清单里记录的是 18.50 / 9.05 / 10.76 MB（系统内 prebuilt）。
2. **删除系统内 prebuilt 不等于“卸载应用”**：设备仍会加载 `/data/app` 版本，但该包会退化为普通数据区应用
   （失去 `SYSTEM` flag 及其默认权限授予 / 系统签名相关能力）。此后果**未做动态验证**，
   在 `risk_assessment.md` 第 2 节列为高风险项。
3. 若目标是回到“纯原厂版本”，应先 `pm uninstall` 掉数据区更新，再让系统 prebuilt 生效；
   这属于设备操作，本报告不执行。
"""
open(os.path.join(DOC, 'app_inventory.md'), 'w', encoding='utf-8').write(inv)
print('README.md / app_inventory.md written')
