"""Generate app_removal_recommendations.md, risk_assessment.md, optimization_plan.md."""
import json
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import protection

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DOC = r'D:\tgz02\OS\system\system_debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
R = {r['dir']: r for r in rows}
by = {k: [r for r in rows if r['cls'] == k] for k in 'ABCD'}
cc = stats['by_class']


def md(head, rows_):
    out = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    for r in rows_:
        out.append('| ' + ' | '.join(str(c) for c in r) + ' |')
    return '\n'.join(out)


def pss_txt(r):
    if not r['pss_kb']:
        return '—'
    return '{:,}'.format(r['pss_kb'])


# ------------------------------------------------------------------ recommendations
a_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note'], r['ev'],
            '**受保护**' if r['user_protected'] else ''] for r in by['A']]
b_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], pss_txt(r), '是' if r['persistent'] else '',
            r['note'], r['how'], r['ev'], '**受保护**' if r['user_protected'] else ''] for r in sorted(by['B'], key=lambda x: -float(x['total_mb']))]
c_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note'], r['ev']] for r in by['C']]
d_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note']] for r in by['D']]

space_rows = [
    ['**当前可执行删除**', len(stats['executable_lists']['A_delete']), 0.0,
     'rev3：唯一 A 类候选 ES 受用户保护，故为 0'],
    ['A 类候选（容量核算，不可执行）', len(by['A']), cc['A']['total_mb'], 'ES 受保护，不计入可释放空间'],
    ['B 类（容量核算，其中 3 个受保护）', len(by['B']), cc['B']['total_mb'],
     '当贝 / EasyTouch / 权限狗受保护，可试验项见第 4.2 节'],
    ['A + B 容量上限（不可执行）', len(by['A']) + len(by['B']),
     round(cc['A']['total_mb'] + cc['B']['total_mb'], 2), '仅作分区容量参考'],
    ['仅禁用任意项', 0, 0.0, '不改变 system 分区占用'],
]

rec = f"""# 删除 / 禁用 / 保留建议

分类规则：
**A 类候选**：静态分析认为具备删除可能性，**尚未完成真机动态验证**（不是“已验证可安全删除”）；
**B** 不需常驻但保留 APK 更安全（优先禁用，需单包试验）；
**C** 依赖不明确或可能被调用（需进一步动态验证）；
**D** 系统基础 / 语音音频网络设备控制核心 / AI 改造明确依赖。
无法证明依赖已解除的一律不进入 A。
**用户保护优先于以上任何分类**（见第 2 节）。

## 1. 总览

{md(['类', '数量', '分区体积 MB', '含义', '可执行'], [
    ['A 类候选', cc['A']['packages'], cc['A']['total_mb'],
     '静态分析认为具备删除可能性，尚未完成真机动态验证', '否（需动态验证 + 授权；且本次候选受保护）'],
    ['B 建议禁用', cc['B']['packages'], cc['B']['total_mb'],
     '先 `pm disable-user`，APK 保留可秒级回滚', '是，但排除受保护项（实际 %d 个）' % len(stats['executable_lists']['B_disable'])],
    ['C 暂时保留', cc['C']['packages'], cc['C']['total_mb'],
     '有引用 / 功能不明，需动态验证后再定级', '否'],
    ['D 禁止删除', cc['D']['packages'], cc['D']['total_mb'],
     '系统与语音链路核心，删除即破功能', '否'],
])}

## 2. 用户保护（rev3 · 最高优先级）

以下六个 App 由操作者明确指定保留，**在另行授权前持续有效**。保护规则覆盖：不得建议删除 APK、
不得建议卸载/禁用、不得建议清理数据、不得限制其自启动/后台/权限、不得列入任何执行清单、
不得通过脚本或过滤器间接处理、不得用静态分析结论覆盖用户保护。

{md(['App', '包名', '系统镜像内', '技术分类（保留）', '当前允许动作'],
    [[v['label'], '`' + p + '`', '是' if v['in_system_image'] else '否（设备侧安装）',
      v['tech_class'] or '—', '禁止删除 / 禁用 / 清数据 / 限制自启']
     for p, v in sorted(protection.USER_PROTECTED.items(), key=lambda kv: kv[1]['label'])])}

保护原因：`{protection.PROTECTION_REASON}`

**ES 特殊说明**：ES 文件管理器先前是 A 类删除候选，现在从所有实际删除候选清单与执行计划中排除；
其 A 类技术分类与静态分析结论**原样保留**，没有为了“方便”把它改判成 D 类系统关键组件。

**Magisk 特殊说明**：除管理 App 外，配套组件单独记录与保护，见第 2.1 节。

### 2.1 Magisk 及相关组件

{md(['类型', '路径', '在系统镜像内', '证据'],
    [[c['kind'], '`' + c['path'] + '`', '是' if c['in_system_image'] else '否', c['evidence']]
     for c in protection.MAGISK_RELATED])}

禁止动作：{('；'.join(protection.MAGISK_FORBIDDEN_ACTIONS))}。

已核查未发现 Magisk 痕迹的镜像位置：{'、'.join(protection.MAGISK_ABSENT_IN_IMAGE)}。
未对 Magisk 的安装结构做推断（`/sbin/.magisk`、`/data/adb` 对 shell 不可读，未提权）。

## 3. A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证

{md(['目录', '包名', '总 MB', '判定依据', '证据等级', '用户保护'], a_rows)}

### 3.1 `app/ES.apk`（com.estrongs.android.pop，4.60 MB）—— A 类候选，**受用户保护**

**口径（rev3）**：A 类候选 = 静态分析认为具备删除可能性，**不是**已验证可安全删除；
且本候选**已进入用户保护名单**，因此**不进入任何删除清单**。

- **已完成的静态验证（较可信）**：`system/app/` 下的散装第三方 APK，无 `oat/`、无 native 库；
  降噪后**零** app 级入向引用（`dependency_edges.csv` 中该包 0 条 `app` 级边）；`sharedUserId` 为空；
  权限 20 项均为常规权限（含 `SYSTEM_ALERT_WINDOW`、`GET_TASKS`，无系统签名级权限）；
  快照时刻无进程。
- **删除影响评估**：仅失去“ES 文件浏览器”这一 UI 入口。系统文件选择器由 `ExternalStorageProvider` +
  `MtpDocumentsProvider` 提供，与本包无关。
- **尚未验证（阻塞项）**：
  1. 删后能否正常开机、桌面与设置是否无异常；
  2. 是否有以 `com.estrongs.*` 为 action 的隐式调用在运行时才暴露（字符串扫描看不到动态注册）；
  3. `SYSTEM_ALERT_WINDOW` 悬浮窗是否被其它组件借用。
- **放行条件（三条都要满足，当前均未满足）**：① **用户解除对该 App 的保护**；② 用户明确授权做删除评估；
  ③ 届时先以用户态卸载方式观察 ≥7 天无异常，再考虑改镜像。
  **rev3 结论：该 App 受用户保护，不执行任何删除/禁用/卸载动作，本报告也不提供针对它的执行命令。**
- **空间收益**：4.60 MB（分区口径，属文件体积事实）；但因受保护，**不计入可释放空间**。

## 4. B 类：建议禁用（保留 APK）

{md(['目录', '包名', '总 MB', '快照 PSS KB', 'persistent', '判定依据', '操作', '证据等级', '保护'], b_rows)}

### 4.1 受用户保护，不进入试验（3 个）

| 包 | 技术依据（仍成立） | 处理 |
|---|---|---|
| `com.dangbei1.tvlauncher`（当贝桌面） | 快照 PSS 96,912 kB；JPush 527 次 + COCKROACH 62 次唤醒；非默认 HOME | **受保护**：不试验、不禁用、不改变自启/后台 |
| `com.shere.assistivetouch`（EasyTouch） | `persistent=true`；两进程快照 PSS 21,461 + 16,961 kB | **受保护**：同上 |
| `com.web1n.permissiondog`（权限狗） | 零 app 级入向引用；无进程 | **受保护**：同上 |

> 这三项在 `summary_stats.json:executable_lists.B_disable` 中**已不存在**，仅保留技术分类 B 与观测数据。

### 4.2 可执行的单包试验（每项独立观察 ≥24 h）

| 顺序 | 包 | 依据（单次快照） | 禁用后失去什么 | 回滚 |
|---|---|---|---|---|
| ① | `com.alibaba.ailabs.genie.osupdate` | `persistent=true`；`dumpsys cpuinfo` **单次 343 s 区间快照** 20%（17% user）——单次快照值，不能推断为持续 CPU 占用；framework 侧点名 `RebootUpdateActivity` | 在线 OTA 检查/升级入口；升级前需临时启用 | `pm enable` |
| ② | `com.alibaba.ailabs.genie.guide` | `device_provisioned=1`、`user_setup_complete=1`（实测），引导使命已完成 | 出厂重置后的引导页（重置前启用） | `pm enable` |
| ③ | 8 个 AOSP 边缘组件 | 降噪后无 app 级入向引用、快照无进程 | 对应功能（见 4.3） | `pm enable` |

> `com.alipay.arome.app`（AMPE）不在本表：rev2 依据“7 个包真实引用”把它改为 C 类，见第 5.1 节。

### 4.3 第三优先（AOSP / MTK 边缘组件，禁用风险≈0）

`com.android.storagemanager`、`com.android.mtp`（MtpDocumentsProvider）、`com.android.statementservice`、
`com.android.vpndialogs`、`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`、
`com.android.companiondevicemanager`、`com.android.pacprocessor`。

这些包在降噪后均无应用级入向引用，且在快照时刻无进程；删除它们对资源几乎无收益（合计 2.79 MB），
**建议只禁用、不删除**——因为它们是 AOSP 标准件，未来接入 MTP / VPN / 伴生设备时不必回刷镜像。

## 5. C 类：暂时保留（依赖不明确）

{md(['目录', '包名', '总 MB', '保留原因 / 待验证点', '证据等级'], c_rows)}

### 5.1 `com.alipay.arome.app`（AMPE）—— rev2 由 B 调整为 C

| 项目 | 内容 |
|---|---|
| 改判依据 | 降噪后仍有 **7 个包**（smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher、GenieRTC）对其 `com.alibaba.ailabs.genie.webapps.START` / `.INIT` action 与 `GwaReceiver` 组件有 **app 级**引用（`dependency_edges.csv` 中 `evidence_class=app`），不是 SDK 自带字符串 |
| 运行时状态 | 快照时刻**无进程**（未运行）；体积 87.18 MB，其中 native 库 61.01 MB |
| 因此 | 它既“可被拉起”又“被真实使用”，属典型 C：**保留**，不进普通禁用批次 |
| 何时才考虑禁用/删除 | ① 用户明确决定放弃原厂小程序 / H5 技能；② 完成动态验证（见下表）；③ 明确接受“相关技能全部不可用” |
| 本报告动作 | 不提供禁用命令，不做任何设备操作 |

验证步骤（由用户决定是否执行，本报告不执行）：

1. 记录基线：`pm path com.alipay.arome.app`、`dumpsys meminfo | grep arome`；
2. 单包禁用：`pm disable-user --user 0 com.alipay.arome.app`；
3. 逐项触发依赖它的技能入口（小程序、H5 卡片、`genie.webapps` 相关语音指令），观察是否报错或白屏；
4. 观察 `logcat` 是否出现 `ActivityNotFoundException: ...webapps...` 或 `GwaReceiver` 相关异常；
5. 24 h 后决定：有异常 → `pm enable` 回滚；无异常且确认不需要该能力 → 由用户决定是否进入删除评估。

### 5.2 其余 C 类包的验证动作（任一项通过即可升级为 B）

| 包 | 验证方法 |
|---|---|
| `GenieRTC` | 停用后观察 24 h：是否还有 `RTCNotifyService` 相关通知、通话/视频技能是否可用；注意设备上已被 `/data/app` 版本覆盖（系统 4.0.16 → 加载 5.2.78） |
| `Waft` | 停用后观察：桌面/技能页是否仍能通过 smartapp 打开 H5（`WaftTplActivity` 当前为前台） |
| `AliVideoPlayer` | 停用后测试“播放视频/看剧”类语音指令，检查是否回落 `GenieMonitor`/`smartapp` 内置播放器 |
| `GenieBrowser` | 停用后测试网页打开类指令；确认 `webview` 不依赖它 |
| `GenieScreensaver` | 停用后观察待机屏保是否被系统回落到黑屏（framework 有包名引用） |
| `GenieAlbums` | 停用后测试相册入口与屏保取图 |
| `GenieChildren` / `GenieAicare` | 停用后检查设置页入口与语音技能是否报错；`GenieAicare` 亦被 `/data/app` 覆盖（4.0.26 → 4.0.62） |
| `Emode` | 需产线确认：工厂 MMI/老化测试是否需要 |
| `AliSpKey` / `UUID` / `AliProvision` / `raShow` | 属 system uid 且功能不明（密钥、设备身份、出厂配置、显示策略），**只做日志观察，不做禁用试验** |
| `KeyChain` / `CertInstaller` | 若后续要做 HTTPS 抓包或客户端证书，需要保留 |
| `UserDictionaryProvider` / `FusedLocation` / `ProxyHandler` | 与输入法、定位、代理相关，属“低占用、高不确定”，保留成本几乎为 0 |
| `magisk.apk` | 系统内是副本（25.2），实际运行版本在 `/data/app`（27.0）；保留作 root 恢复手段 |

## 6. D 类：禁止删除

{md(['目录', '包名', '总 MB', '保护依据'], d_rows)}

补充说明（任务书第六节特别保护项逐条对应）：

| 保护要求 | 本机对应 | 结论 |
|---|---|---|
| AliGenieService | `com.aligenie.ags` | D，降噪后 5 个包引用其 `icProvider` / `ACTION_SCREEN_SAVER` |
| `com.alibaba.ailabs.genie.smartapp` | `app/smartapp` | D，171 组件、3 进程（PSS 合计 216,324 kB）、持有 4 个唤醒锁 |
| ASR / VAD / Wakeup | `smartapp`（`:core`）+ `GenieMonitor`（`VisionWakeUpService`、`GenieGestureService`）+ `libaligenie_ic.so` | D |
| 音频采集/处理 native 库 | `system/lib`（482 个 .so）、`lib/hw`（5 个 HAL）、`vendor/lib` 音频 DSP 库 | 禁止改动 |
| 音乐/视频/设备控制依赖 | `GenieIoT`(D)、`AliVideoPlayer`(C)、`MtkMediaProvider`(D) | 见对应条目 |
| Framework / SystemUI / PackageManager / 启动相关 | `framework/*`、`AliSystemUI`、`SettingsProvider`、`PackageInstaller`、`InputDevices`、`DefaultContainerService` | D |

## 7. 空间收益（system 分区）

{md(['方案', '包数', '释放 MB', '备注'], space_rows)}

- 当前 system 分区内 App 总体积 **{stats['total_mb']} MB**（APK + 内置 lib + odex/vdex）。
- 实测 `MemTotal` 1,008,628 KB ≈ 985 MB，快照时刻 `Used RAM` 968,931 KB、`Free RAM` 223,708 KB、
  `ZRAM` 已用 77,792 KB（swap 总 504,308 KB）、系统自评 **status critical** —— 空间与内存都紧，
  但**“删 APK” 主要省的是分区空间，不是 RAM**。
- 真正影响 RAM 的是 persistent / 推送常驻 / 保活 Provider 三者，见 `app_dependency_analysis.md` 第 8 节。

## 8. 删除 vs 禁用：操作与代价

| 维度 | 删除 APK（改镜像） | 禁用（`pm disable-user`） |
|---|---|---|
| 分区空间 | 释放 | **不释放** |
| 运行时内存 | 进程不再被拉起 | 同样不再被拉起 |
| 生效方式 | 重刷 system 或 `adb remount` 后 push | 立即 |
| 回滚 | 重新 push / 回刷镜像 | 一条 `pm enable` |
| 风险 | 误删导致开机异常、需重刷 | 单包失效，可秒级恢复 |
| 建议 | 仅 A 类候选（验证通过后）+ 通过 P1 验证的 B 类 | 全部 B/C 类试验统一走这条路；**受保护项两者都不做** |

> rev3：`space_rows` 中的 A/B 数字是**容量核算**，不是可释放空间——A 类候选 ES 与 B 类中的
> 当贝/EasyTouch/权限狗均受用户保护，当前**可执行的删除为 0 项**。

## 9. 修订说明（rev2 / rev3）

**rev3（2026-11-20，当前版本）**

1. 六个 App 进入用户保护（第 2 节），其中 ES / 当贝 / EasyTouch / 权限狗 / Magisk 在镜像内、MT 管理器在设备侧；
   全部从删除、禁用、清数据清单中移除。
2. Magisk 配套组件单列（第 2.1 节）：镜像内仅 `app/magisk.apk`；`/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`
   为镜像外组件，禁止删除/清理，禁止改 `boot.img` 与 init。
3. A 类措辞统一为“**A 类候选：静态分析认为具备删除可能性，尚未完成真机动态验证**”，
   并新增“可执行 / 不可执行”列。
4. B 类拆为“受保护不试验（4.1）”与“可执行单包试验（4.2）”。

**rev2（2026-11-20）**

1. `com.alipay.arome.app`（AMPE）由 **B 改为 C**，并从禁用批次与风险表（B 类）中移出，改列第 5.1 节专项说明。
2. `app/ES.apk` 由“安全删除”改为“**A 类候选：静态通过、动态未验证**”，补充放行条件。
3. B 类首批由“批次一并禁用”改为**单包逐项实验**，每项观察 ≥24 h。
4. OTA 的 20% CPU 统一标注为**单次区间快照值**。
5. 新增“删 prebuilt 让系统应用退化”风险条目（`GenieAicare`/`GenieRTC`/`magisk`）。

完整依据、测试与未验证事项见 [revisions.md](revisions.md)。
"""
open(os.path.join(DOC, 'app_removal_recommendations.md'), 'w', encoding='utf-8').write(rec)

# ------------------------------------------------------------------ risk
risk = f"""# 风险评估与回退策略

## 1. 风险模型

| 风险 | 触发条件 | 后果 | 概率（本机） | 缓解 |
|---|---|---|---|---|
| 跨包 Binder / Provider 断链 | 删除被 `android.uid.system` 同伴引用的包 | `SecurityException` / `DeadObjectException`，功能静默失效 | 中 | 只删 A 类；B 类先禁用观察 |
| framework 侧点名失效 | 删除 framework 字符串引用的包（如 Osupdate） | 升级/重启流程异常，`logcat` 出现 `ClassNotFound` | 中 | Osupdate 只禁用不删除 |
| priv-app 白名单残留 | 删除 `privapp-permissions-*.xml` 里列出的包 | 一般无害（白名单多余条目被忽略），但若该文件被改成 `<required>` 会启动失败 | 低 | 不改 `etc/permissions/*.xml`，只动 APK |
| 共享 uid 数据目录残留 | 直接删 APK 未清 `/data/data` | 残留数据占空间、同 uid 包读到旧 SharedPreferences | 中 | 删除后执行 `pm clear` 或保留数据目录 |
| 开机卡死 / bootloop | 删除 Launcher、SystemUI、SettingsProvider、InputDevices 等 | 无法进入桌面，需重刷 | 低（均已列 D） | 严禁删除 D 类；保留 `flash/ori/system.bin` |
| 语音链路失效 | 动 `AliGenieService` / `smartapp` / `GenieMonitor` / `libaligenie_ic.so` | 唤醒、ASR、技能全部失效 | 低（已列 D） | 禁止 |
| 删 prebuilt 让系统应用退化 | 删除 `GenieAicare` / `GenieRTC` / `magisk` 的系统内 prebuilt（设备上由 `/data/app` 版本覆盖） | 包退化为普通数据区应用：失去 `SYSTEM` flag 及默认权限授予，可能缺权限 | 中（rev2 新增） | 不动这 3 个系统内文件；确需处理时先明确目标版本 |
| 误判体积＝内存 | 用 APK 大小推算 RAM 收益 | 优化决策错误 | 高（认知风险） | 本报告所有内存数字均来自 `dumpsys meminfo` / `/proc/meminfo` 快照，且不推算节省量 |
| **违反用户保护** | 把受保护 App 列入删除/禁用清单，或限制其自启/后台/权限 | Root 环境不可用（桌面、文件管理、授权、悬浮操作），且违背明确指令 | **高（纪律风险）** | 保护规则写在 `protection.py` 并由 `report.py` 强制过滤；`summary_stats.json:executable_lists` 五桶中不含受保护项；单元测试守护 |
| **误处理 Magisk 组件** | 删除 `app/magisk.apk`、清理 `/data/adb`、修改 `boot.img`/init、清理模块或 denylist | 失去 root，设备无法恢复 root 权限管理 | **高** | Magisk 组件单列于 `protection.MAGISK_RELATED`，`assert_no_protected()` 对任何含 "magisk" 的路径/包直接抛错 |
| 指标体系混用 | 把 `MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 当成同一指标 | 结论自相矛盾 | 中（rev2 新增） | README 第 7 节给出各指标定义与不可相加的说明 |
| 与 T5 工程互相干扰 | 改动 `/system` 影响 T5 bridge 的 adb/UDS 链路 | T5 测试失败 | 中 | 精简只在独立备份设备/镜像上做；本目录与 T5 工程完全独立 |

## 2. 逐项风险

### 2.1 B 类（可禁用，保留 APK）

> rev3：本表只保留**可执行**的 B 类项。当贝桌面、EasyTouch、权限狗已受用户保护，
> 移入第 2.3 节“受保护项（禁止试验）”。

| 包 | 主要风险 | 严重度 | 观测点 | 回滚 |
|---|---|---|---|---|
| `com.alibaba.ailabs.genie.osupdate` | OTA 不可用；framework 的 `RebootUpdateActivity` 找不到实现。注意快照中的 20% CPU 只是单次区间值，禁用收益需实测 | 中 | 设置页“系统更新”、`logcat` 关键字 `osupdate` | `pm enable` |
| `com.alibaba.ailabs.genie.guide` | 恢复出厂后无引导页 | 低 | 首次开机流程 | 重置前 `pm enable` |
| `com.android.mtp` / `statementservice` / `vpndialogs` / `bluetoothmidiservice` / `captiveportallogin` / `companiondevicemanager` / `pacprocessor` / `storagemanager` | 对应功能（MTP 传文件、App Links 校验、VPN 授权、BLE-MIDI、门户登录、伴生配对、PAC 代理、存储设置页）不可用 | 低 | 分别触发一次对应功能 | `pm enable` |

### 2.2 C 类与高不确定性项

| 包 | 主要风险 | 严重度 | 说明 |
|---|---|---|---|
| `com.alipay.arome.app`（AMPE，C） | 禁用后小程序 / H5 技能打不开（`genie.webapps.START` 无人接收），且 7 个包对其有真实引用 | **中高** | rev2 已从 B 移到 C；只有用户明确放弃该能力并完成动态验证后才动 |
| `GenieAicare` / `GenieRTC`（C） | 删除系统内 prebuilt 后，`/data/app` 版本退化为普通应用，失去 system 级权限 | **中高** | 未验证；不建议作为精简对象 |
| `Waft` / `AliVideoPlayer` / `GenieScreensaver` / `GenieAlbums`（C） | 与前台 UI / 播放 / 屏保链路耦合，异常表现为“页面空白/黑屏”而非崩溃 | 中 | 需按 `app_removal_recommendations.md` 第 5.2 节逐项验证 |
| `Emode`（C） | 工厂 MMI / 老化测试能力丢失，产线返修受影响 | 中 | 需产线确认 |

### 2.3 受用户保护项（禁止任何试验）

| App | 包名 | 保护后禁止的动作 | 若违背会怎样 |
|---|---|---|---|
| 当贝桌面 | `com.dangbei1.tvlauncher` | 删除、禁用、清数据、限制自启/后台 | 失去 root 后常用的桌面与操作入口 |
| EasyTouch | `com.shere.assistivetouch` | 同上（含取消 `persistent`） | 失去悬浮触控辅助，触屏操作不便 |
| 权限狗 | `com.web1n.permissiondog` | 同上 | 失去 AppOps 图形化授权管理 |
| ES 文件管理器 | `com.estrongs.android.pop` | 同上（虽为 A 类候选） | 失去文件管理入口 |
| Magisk | `com.topjohnwu.magisk` + `/sbin/magisk*`、`/sbin/.magisk`、`/data/adb`、`boot.img` | 删除、禁用、清理、改 boot/init | **失去 root 与授权能力，且难以恢复** |
| MT 管理器 | `bin.mt.plus`（设备侧） | 卸载、清数据、限制权限 | 失去 APK/文件维护工具 |

> 这些包**不在** `summary_stats.json:executable_lists` 的任何执行桶里，只出现在 `protected_blocked` 桶。

## 3. 三级回退策略

### 级别 1：禁用回滚（秒级，无风险）

```bash
# 仅“可执行”的 B 类需要该回滚；受保护项（当贝/EasyTouch/权限狗/Magisk）永远不会被禁用，无需回滚
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.guide
# AMPE 属 C 类，仅在用户明确授权做了试验后才可能需要下列回滚：
adb -s 192.168.1.9:5555 shell pm enable com.alipay.arome.app
```

> 以上命令仅为回退预案，本报告**不代表已执行**；设备当前 `pm list packages -d` 为空。

### 级别 2：用户态卸载回滚（不涉及镜像）

对“用 `pm uninstall -k --user 0 <pkg>`”验证过的包（不改 system 分区），恢复用：

```bash
adb shell cmd package install-existing --user 0 <pkg>
```

### 级别 3：镜像级回滚

1. 单个 APK：`adb root && adb remount`，`adb push <orig.apk> /system/app/<Name>/`，
   然后 `adb shell chmod 644 /system/app/<Name>/<Name>.apk && adb shell restorecon -R /system/app/<Name>`，重启。
2. 整分区：SP Flash Tool 只勾选 `system` 分区，回刷 `D:\\tgz02\\flash\\ori\\system.bin`
   （1,023,410,176 字节，原始镜像已备份）；也可回刷 `change/system.bin` 回到当前工作状态。
3. 数据分区：`flash/ori/userdata.bin` 与 `cache.bin` 亦已备份，用于极端情况。

## 4. 误删典型症状 → 定位

| 症状 | 可能缺失 | 定位命令 |
|---|---|---|
| 开机卡在 logo / 循环重启 | Launcher、SystemUI、SettingsProvider、InputDevices | `adb logcat -b all -d \\| grep -E "FATAL|E ActivityManager|PackageManager"` |
| 桌面黑屏但 adb 正常 | `GenieLauncher` | `dumpsys activity activities \\| head -40` |
| 语音无响应 | `smartapp`、`AliGenieService`、`GenieMonitor` | `dumpsys activity services \\| grep -i genie`，`logcat \\| grep -i aligenie` |
| 设置打不开 | `S1Settings`、`SettingsProvider` | `am start -n com.android.settings/.Settings` |
| 应用装不上 | `PackageInstaller`、`DefaultContainerService` | `pm install -r <apk>` 报错码 |
| 文件选择器崩溃 | `ExternalStorageProvider` | `logcat \\| grep -i DocumentsUI` |
| H5 / 小程序白屏 | `webview`、`Waft`、`AMPE` | `logcat \\| grep -iE "chromium|webview|waft"` |
| 应用权限突然变少 / 无法使用系统级能力 | 删了被 `/data/app` 覆盖的系统 prebuilt（`GenieAicare`/`GenieRTC`/`magisk`） | `dumpsys package <pkg> \\| grep -E "flags=|codePath"`（观察 `SYSTEM`/`UPDATED_SYSTEM_APP` 是否消失） |

## 5. 禁止操作清单（本次分析已遵守）

1. 不修改 / 删除 `system` 包内任何文件（本报告只新增 `system_debloat/`）。
2. 不生成未经验证的精简 `system.img`。
3. 不删除原厂核心 APK 与 native 库（D 类 + `lib/`、`lib/hw`、`vendor/lib`）。
4. 不以 APK 体积等同 RAM 占用。
5. 不只凭包名判断功能（每个结论都给出 Manifest / 字符串 / 运行时依据）。
6. 不把未确认的依赖描述为“不存在”（C 类的存在就是这条规则的体现）。
7. 不影响任何 T5 工程资料与代码；本目录与 T5 任务完全独立。
8. 本轮（rev3）**未执行任何 `pm disable-user` / `pm uninstall` / 镜像或 boot 写操作**，
   设备 `pm list packages -d` 仍为空；未读取 root-only 内容（shell 身份 `uid=2000`）。
9. **不触碰六个受保护 App**：不删除、不卸载、不禁用、不清数据、不限制自启/后台/权限。

## 6. 修订说明

**rev3（2026-11-20，当前版本）**

- 新增两类高严重度风险：**违反用户保护**（六个 App）、**误处理 Magisk 组件**（apk + `/sbin/magisk*` +
  `/data/adb` + `boot.img`/init）。
- 新增 2.3 节“受用户保护项（禁止任何试验）”，B 类逐项风险表移除当贝 / EasyTouch / 权限狗。
- 第 5 节禁止清单补充“不触碰六个受保护 App”与“不读取 root-only 内容”。
- 移除全部旧目录路径引用，统一使用与本目录无关的描述。

**rev2（2026-11-20）**

- 新增风险：删系统 prebuilt 导致 `SYSTEM` flag 丢失（`GenieAicare`/`GenieRTC`/`magisk`）。
- 新增风险：内存指标体系混用（`MemFree` / `MemAvailable` / dumpsys `Free RAM` / `used pss` 不可互换、不可相加）。
- B 类逐项风险表移除 AMPE（已改 C），并新增 C 类 / 高不确定性项风险。
- OTA 的 CPU 数字统一标注为单次快照值。

完整改动清单与未验证事项见 [revisions.md](revisions.md)。
"""
open(os.path.join(DOC, 'risk_assessment.md'), 'w', encoding='utf-8').write(risk)
print('recommendations + risk written')
