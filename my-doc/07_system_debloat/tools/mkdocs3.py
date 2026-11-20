"""Generate app_removal_recommendations.md, risk_assessment.md, optimization_plan.md."""
import json
import os

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DOC = r'D:\tgz02\OS\system\my-doc\07_system_debloat'
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
a_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note'], r['ev']] for r in by['A']]
b_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], pss_txt(r), '是' if r['persistent'] else '',
            r['note'], r['how'], r['ev']] for r in sorted(by['B'], key=lambda x: -float(x['total_mb']))]
c_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note'], r['ev']] for r in by['C']]
d_rows = [[ '`' + r['dir'] + '`', '`' + r['pkg'] + '`', r['total_mb'], r['note']] for r in by['D']]

space_rows = [
    ['A（删除）', len(by['A']), cc['A']['total_mb'], '立即释放'],
    ['B（删除，需先完成 P1 验证）', len(by['B']), cc['B']['total_mb'], '释放，但失去禁用可逆性'],
    ['A + B', len(by['A']) + len(by['B']), round(cc['A']['total_mb'] + cc['B']['total_mb'], 2), '上限'],
    ['仅禁用 A/B 中的任意项', 0, 0.0, '不改变 system 分区占用'],
]

rec = f"""# 删除 / 禁用 / 保留建议

分类规则（严格按任务书）：
**A** 确认与启动、原厂核心、AI 改造均无依赖且不影响其它组件；
**B** 不需常驻但保留 APK 更安全（优先禁用）；
**C** 依赖不明确或可能被调用（需进一步动态验证）；
**D** 系统基础 / 语音音频网络设备控制核心 / AI 改造明确依赖。
无法证明依赖已解除的一律不进入 A。

## 1. 总览

{md(['类', '数量', '分区体积 MB', '含义'], [
    ['A 可删除', cc['A']['packages'], cc['A']['total_mb'], '已排除系统级依赖，可直接从镜像移除'],
    ['B 建议禁用', cc['B']['packages'], cc['B']['total_mb'], '先 `pm disable-user`，APK 保留可秒级回滚'],
    ['C 暂时保留', cc['C']['packages'], cc['C']['total_mb'], '有引用 / 功能不明，需动态验证后再定级'],
    ['D 禁止删除', cc['D']['packages'], cc['D']['total_mb'], '系统与语音链路核心，删除即破功能'],
])}

## 2. A 类：可以删除

{md(['目录', '包名', '总 MB', '判定依据', '证据等级'], a_rows)}

### A-1 `app/ES.apk`（com.estrongs.android.pop，4.60 MB）

- **证据（较可信）**：`system/app/` 下的散装第三方 APK，无 `oat/`、无 native 库；
  降噪后**零**应用级入向引用；`dumpsys meminfo` 无进程；`sharedUserId` 为空（不共享系统 uid）；
  权限仅常规 20 项（含 `SYSTEM_ALERT_WINDOW`、`GET_TASKS`，无系统签名权限）。
- **删除影响**：仅失去“ES 文件浏览器”这一 UI 入口。系统文件选择器由 `ExternalStorageProvider` +
  `MtpDocumentsProvider` 提供，与本包无关。
- **未升级为“已验证”的原因**：没有做删后开机验证（本轮不改设备）。若需实证，按 `optimization_plan.md`
  P2 的“先卸载验证、后改镜像”流程执行。

## 3. B 类：建议禁用（保留 APK）

{md(['目录', '包名', '总 MB', '快照 PSS KB', 'persistent', '判定依据', '操作', '证据等级'], b_rows)}

### 3.1 第一优先（收益最大，副作用可接受）

| 包 | 依据 | 禁用后失去什么 | 回滚 |
|---|---|---|---|
| `com.dangbei1.tvlauncher` | 快照 PSS 96,912 KB；JPush `AlarmReceiver` 527 次 + 小米 `COCKROACH` 62 次唤醒；`xmpushservice` 子进程常驻；**不是默认 HOME** | 当贝桌面入口（当前 HOME 是 `GenieLauncher`） | `pm enable` |
| `com.shere.assistivetouch` | `persistent=true`；两进程 PSS 21,461 + 16,961 KB；纯第三方悬浮球 | 悬浮触控球（触屏导航辅助） | `pm enable` |
| `com.alibaba.ailabs.genie.osupdate` | `persistent=true`；`dumpsys cpuinfo` 实测 **20% CPU / 17% user**；framework 侧点名 `RebootUpdateActivity` | 在线 OTA 检查/升级入口；升级前需临时启用 | `pm enable` |

### 3.2 第二优先（体积大或功能已过期）

| 包 | 依据 | 说明 |
|---|---|---|
| `com.alipay.arome.app`（AMPE，87.18 MB） | 6 个 Genie 包以 `genie.webapps.START/INIT`、`GwaReceiver` 显式引用；快照时刻**未运行** | 分区内第二大包，主要是小程序容器（含 61 MB native 库）。禁用不影响其它包启动；若确认“小程序/H5 技能”不再使用，可升级为 A |
| `com.web1n.permissiondog`（qxg，1.37 MB） | 零入向引用、无进程、无系统权限 | 权限管理工具，调试期可随时启用 |
| `com.alibaba.ailabs.genie.guide` | `device_provisioned=1`、`user_setup_complete=1`（实测），引导使命已完成 | 出厂重置后会重新需要 → 重置前启用 |

### 3.3 第三优先（AOSP / MTK 边缘组件，禁用风险≈0）

`com.android.storagemanager`、`com.android.mtp`（MtpDocumentsProvider）、`com.android.statementservice`、
`com.android.vpndialogs`、`com.android.bluetoothmidiservice`、`com.android.captiveportallogin`、
`com.android.companiondevicemanager`、`com.android.pacprocessor`。

这些包在降噪后均无应用级入向引用，且在快照时刻无进程；删除它们对资源几乎无收益（合计 2.79 MB），
**建议只禁用、不删除**——因为它们是 AOSP 标准件，未来接入 MTP / VPN / 伴生设备时不必回刷镜像。

## 4. C 类：暂时保留（依赖不明确）

{md(['目录', '包名', '总 MB', '保留原因 / 待验证点', '证据等级'], c_rows)}

需要做的验证动作（任一项通过即可升级为 B）：

| 包 | 验证方法 |
|---|---|
| `GenieRTC` | 停用后观察 24 h：是否还有 `RTCNotifyService` 相关通知、通话/视频技能是否可用；注意设备上已被 `/data/app` 版本覆盖 |
| `Waft` | 停用后观察：桌面/技能页是否仍能通过 smartapp 打开 H5（`WaftTplActivity` 当前为前台） |
| `AliVideoPlayer` | 停用后测试“播放视频/看剧”类语音指令，检查是否回落 `GenieMonitor`/`smartapp` 内置播放器 |
| `GenieBrowser` | 停用后测试网页打开类指令；确认 `webview` 不依赖它 |
| `GenieScreensaver` | 停用后观察待机屏保是否被系统回落到黑屏（framework 有包名引用） |
| `GenieAlbums` | 停用后测试相册入口与屏保取图 |
| `GenieChildren` / `GenieAicare` | 停用后检查设置页入口与语音技能是否报错 |
| `Emode` | 需产线确认：工厂 MMI/老化测试是否需要 |
| `AliSpKey` / `UUID` / `AliProvision` / `raShow` | 属 system uid 且功能不明（密钥、设备身份、出厂配置、显示策略），**只做日志观察，不做禁用试验** |
| `KeyChain` / `CertInstaller` | 若后续要做 HTTPS 抓包或客户端证书，需要保留 |
| `UserDictionaryProvider` / `FusedLocation` / `ProxyHandler` | 与输入法、定位、代理相关，属“低占用、高不确定”，保留成本几乎为 0 |
| `magisk.apk` | 系统内是副本，实际运行版本在 `/data/app`；保留作 root 恢复手段 |

## 5. D 类：禁止删除

{md(['目录', '包名', '总 MB', '保护依据'], d_rows)}

补充说明（任务书第六节特别保护项逐条对应）：

| 保护要求 | 本机对应 | 结论 |
|---|---|---|
| AliGenieService | `com.aligenie.ags` | D，被 4 个包引用其 `icProvider` |
| `com.alibaba.ailabs.genie.smartapp` | `app/smartapp` | D，171 组件、3 进程、持有长唤醒锁 |
| ASR / VAD / Wakeup | `smartapp`（`:core`）+ `GenieMonitor`（`VisionWakeUpService`、`GenieGestureService`）+ `libaligenie_ic.so` | D |
| 音频采集/处理 native 库 | `system/lib`（482 个 .so）、`lib/hw`（5 个 HAL）、`vendor/lib` 音频 DSP 库 | 禁止改动 |
| 音乐/视频/设备控制依赖 | `GenieIoT`(D)、`AliVideoPlayer`(C)、`MtkMediaProvider`(D) | 见对应条目 |
| Framework / SystemUI / PackageManager / 启动相关 | `framework/*`、`AliSystemUI`、`SettingsProvider`、`PackageInstaller`、`InputDevices`、`DefaultContainerService` | D |

## 6. 空间收益（system 分区）

{md(['方案', '包数', '释放 MB', '备注'], space_rows)}

- 当前 system 分区内 App 总体积 **{stats['total_mb']} MB**（APK + 内置 lib + odex/vdex）。
- 实测 `MemTotal` 1,008,628 KB ≈ 985 MB，快照时刻 `Used RAM` 968,931 KB、`Free RAM` 223,708 KB、
  `ZRAM` 已用 77,792 KB（swap 总 504,308 KB）、系统自评 **status critical** —— 空间与内存都紧，
  但**“删 APK” 主要省的是分区空间，不是 RAM**。
- 真正影响 RAM 的是 persistent / 推送常驻 / 保活 Provider 三者，见 `app_dependency_analysis.md` 第 8 节。

## 7. 删除 vs 禁用：操作与代价

| 维度 | 删除 APK（改镜像） | 禁用（`pm disable-user`） |
|---|---|---|
| 分区空间 | 释放 | **不释放** |
| 运行时内存 | 进程不再被拉起 | 同样不再被拉起 |
| 生效方式 | 重刷 system 或 `adb remount` 后 push | 立即 |
| 回滚 | 重新 push / 回刷镜像 | 一条 `pm enable` |
| 风险 | 误删导致开机异常、需重刷 | 单包失效，可秒级恢复 |
| 建议 | 仅 A 类 + 通过 P1 验证的 B 类 | 全部 B/C 类试验统一走这条路 |
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
| 误判体积＝内存 | 用 APK 大小推算 RAM 收益 | 优化决策错误 | 高（认知风险） | 本报告所有 RAM 数字均来自 `dumpsys meminfo` 快照 |
| 与 T5 工程互相干扰 | 改动 `/system` 影响 T5 bridge 的 adb/UDS 链路 | T5 测试失败 | 中 | 精简只在独立备份设备/镜像上做；`my-doc/06_t5_bridge` 不在本次改动范围 |

## 2. 逐项风险（B 类）

| 包 | 主要风险 | 严重度 | 观测点 | 回退 |
|---|---|---|---|---|
| `com.dangbei1.tvlauncher` | 若该桌面被遥控器“主页”键以外的入口（如 HDMI 输入切换）拉起 | 低 | 桌面切换、开机后默认桌面 | `pm enable` |
| `com.shere.assistivetouch` | 失去悬浮球，触屏导航少一个入口；`persistent` 取消后无副作用 | 低 | 触控操作 | `pm enable` |
| `com.alibaba.ailabs.genie.osupdate` | OTA 不可用；framework 的 `RebootUpdateActivity` 找不到实现 | 中 | 设置页“系统更新”、`logcat` 关键字 `osupdate` | `pm enable` |
| `com.alipay.arome.app` | 小程序 / H5 技能打不开（`genie.webapps.START` 无人接收） | 中 | 语音触发任一 H5 技能 | `pm enable` |
| `com.web1n.permissiondog` | 失去 AppOps 图形化管理 | 低 | — | `pm enable` |
| `com.alibaba.ailabs.genie.guide` | 恢复出厂后无引导页 | 低 | 首次开机流程 | 重置前 `pm enable` |
| `com.android.mtp` / `statementservice` / `vpndialogs` / `bluetoothmidiservice` / `captiveportallogin` / `companiondevicemanager` / `pacprocessor` / `storagemanager` | 对应功能（MTP 传文件、App Links 校验、VPN 授权、BLE-MIDI、门户登录、伴生配对、PAC 代理、存储设置页）不可用 | 低 | 分别触发一次对应功能 | `pm enable` |

## 3. 三级回退策略

### 级别 1：禁用回滚（秒级，无风险）

```bash
adb -s 192.168.1.9:5555 shell pm enable com.dangbei1.tvlauncher
adb -s 192.168.1.9:5555 shell pm enable com.shere.assistivetouch
adb -s 192.168.1.9:5555 shell pm enable com.alibaba.ailabs.genie.osupdate
adb -s 192.168.1.9:5555 shell pm enable com.alipay.arome.app
```

若禁用的是 `persistent` 应用，启用后需重启一次才会回到常驻状态：
`adb shell reboot`。

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

## 5. 禁止操作清单（本次分析已遵守）

1. 不修改 / 删除 `system` 包内任何文件（本报告只新增 `my-doc/07_system_debloat/`）。
2. 不生成未经验证的精简 `system.img`。
3. 不删除原厂核心 APK 与 native 库（D 类 + `lib/`、`lib/hw`、`vendor/lib`）。
4. 不以 APK 体积等同 RAM 占用。
5. 不只凭包名判断功能（每个结论都给出 Manifest / 字符串 / 运行时依据）。
6. 不把未确认的依赖描述为“不存在”（C 类的存在就是这条规则的体现）。
7. 不影响 `my-doc/06_t5_bridge` 与现有 T5 代码。
"""
open(os.path.join(DOC, 'risk_assessment.md'), 'w', encoding='utf-8').write(risk)
print('recommendations + risk written')
