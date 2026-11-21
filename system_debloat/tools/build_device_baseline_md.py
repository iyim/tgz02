"""Emit the Markdown companions for the rev5.3 device baseline (reads the JSON only)."""
import json
import os

DOC = r'D:\tgz02\OS\system\system_debloat'
DB = os.path.join(DOC, 'device_baseline')

inv = json.load(open(os.path.join(DB, 'package_inventory.json'), encoding='utf-8'))
core = json.load(open(os.path.join(DB, 'core_components.json'), encoding='utf-8'))
comp = json.load(open(os.path.join(DB, 'component_inventory.json'), encoding='utf-8'))
deps = json.load(open(os.path.join(DB, 'dependency_graph.json'), encoding='utf-8'))


def mb(b):
    return '—' if b is None else '%.2f' % (b / 1048576.0)


def tbl(head, rows):
    out = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    out += ['| ' + ' | '.join('' if c is None else str(c) for c in r) + ' |' for r in rows]
    return '\n'.join(out)


# ---------------------------------------------------------------- package_inventory.md
c = inv['counts']
rows = []
for p in sorted(inv['packages'], key=lambda x: (not x['is_system'], x['package_name'])):
    rows.append([
        '`%s`' % p['package_name'],
        'yes' if p['is_system'] else 'no',
        'yes' if p['is_privileged'] else 'no',
        p['code_path'],
        p['version_name'], p['version_code'], p['uid'],
        p['installer'] or 'null',
        p['enabled_state_name'],
        mb(p['apk_size']), mb(p['directory_size']),
        p['shared_uid'] or '—',
        'yes' if len(p['split_apks']) > 1 else ('base' if p['split_apks'] else 'unknown'),
        p['protected_app'] or '',
    ])

md = f"""# 系统包清单（rev5.3 基线）

采集方式：`adb shell pm list packages -f -i -U` / `-s` / `-3` / `-d`、`pm list users`、`dumpsys package <pkg>`、
`ls -l <apk>`、`du -sk <dir>`，全部只读。原始输出见 `raw/`。

| 计数 | 值 |
|---|---|
| 已安装包总数 | **{c['total']}** |
| 系统包（`-s`） | **{c['system']}** |
| 特权包（/system/priv-app） | **{c['privileged']}** |
| 第三方包（`-3`） | **{c['third_party']}** |
| 已禁用包（`-d`） | **{c['disabled']}** |
| 在 system 镜像 inventory 中 | **{c['in_system_image_inventory']}** |
| 用户 | {inv['users']} |

口径说明：

- **`apk_size` 与 `directory_size` 分开记录**：`apk_size` 是 base.apk 文件大小；`directory_size` 是安装目录
  `du -sk` 结果（含 lib/oat），裸 APK 直接放在 `/system/app/` 或 `/system/priv-app/` 时目录大小等于 APK 大小。
- `/data/app` 目录对 shell 不可 `du`，这些包的 `directory_size` 为 `null`（json 里是 null，不是 0）。
- `label` 全部为 **unknown**：Android 8.1 的 `dumpsys package` 不返回 label，本轮没有解析 `resources.arsc`。
  桌面名称映射另见 `../desktop_app_audit.md`（有卡片/组件证据的才写名称）。
- `enabled_state` 来自 `dumpsys package` 的 `User 0: … enabled=N`：0=DEFAULT、1=ENABLED、2=DISABLED、
  3=DISABLED_USER、4=DISABLED_UNTIL_USED。
- 更新到 `/data/app` 的系统应用 `is_system=no`（如 `com.alibaba.ailabs.genie.cook`、`cn.cmvideo.car.play`），
  **它们不占 system 分区空间**。

## 全部 {c['total']} 个包

{tbl(['package', 'system', 'privileged', 'code_path', 'version', 'code', 'uid', 'installer',
      'enabled', 'apk MB', 'dir MB', 'shared uid', 'splits', 'protected'], rows)}

## 分区归属与空间口径

| 类别 | 计数 | 是否计入 system 可回收空间 |
|---|---|---|
| `/system/app` + `/system/priv-app` | {c['system'] - sum(1 for p in inv['packages'] if p['is_system'] and p['code_path'] and p['code_path'].startswith('/vendor'))} | 是（需删目录，不是禁用） |
| `/vendor`（含 overlay/framework 同名包） | {sum(1 for p in inv['packages'] if p['code_path'] and p['code_path'].startswith('/vendor'))} | 否（vendor 分区） |
| `/data/app`（含系统应用的更新版） | {sum(1 for p in inv['packages'] if p['code_path'] and p['code_path'].startswith('/data'))} | 否（数据分区） |

## 未知项（明确标记）

1. 所有 `label`：unknown（缺 `resources.arsc` 解析）。
2. `/data/app` 各包的 `directory_size`：unknown（shell 无权限 `du`）。
3. `com.anthouse.ayland` 的 `installer` 字段字面值是 `what is use for ?`——这是设备上真实存在的安装来源字符串，
   不是解析错误；其真实来源 unknown。
"""
open(os.path.join(DB, 'package_inventory.md'), 'w', encoding='utf-8').write(md)

# ---------------------------------------------------------------- core_components.md
rows = []
for f in core['functions']:
    rows.append(['`%s`' % f['package'], f['function'], f['apk_dir'],
                 f['core_activity'] or '—', ', '.join(x.split('.')[-1] for x in f['core_services'][:2]) or '—',
                 ', '.join(f['native_libs'][:2]) or '—',
                 'yes' if f['protected'] else 'no', f['forbidden'], f['confidence']])

libs = [
    ('libsmartbox.so', 'app/smartapp/lib/arm', '2,047,772', '语音主框架/离线引擎桥'),
    ('libaceAsr.so', 'app/smartapp/lib/arm', '493,288', 'ASR（语音识别）'),
    ('libvad_api.so / libvad_bin.so', 'app/smartapp/lib/arm', '566,964 / 59,028', 'VAD（端点检测）'),
    ('libwakeup_bin_S1.so', 'app/smartapp/lib/arm', '3,232,178', '唤醒模型 S1'),
    ('libwakeup_bin_S1L_S3.so', 'app/smartapp/lib/arm', '3,246,393', '唤醒模型 S1L/S3'),
    ('libwakeup_sync_api_S1.so / _S1L_S3.so', 'app/smartapp/lib/arm', '1,226,596 / 1,132,388', '唤醒同步 API'),
    ('libGenieCommon.so / libGenieJson.so', 'app/smartapp/lib/arm', '403,180 / 304,872', '公共库/JSON'),
    ('libaligenie_ic.so', 'app/AliGenieService/lib/arm', '38,576', '原厂语音服务 JNI'),
    ('libtts_skeleton.so', 'app/AMPE/lib/arm', '169,772', 'TTS 骨架（小程序容器内）'),
    ('libandroid-stream-apmtts.so', 'app/AMPE/lib/arm', '1,617', '流式 TTS 桥'),
]

md = f"""# 关键功能与包名映射（rev5.3）

证据来源：镜像内 APK 的 AXML manifest（静态解析）+ 设备 `dumpsys package` + 文件系统扫描（`ls -l`）。
**不靠应用名猜包名**：每个包名都有 manifest 或设备记录支撑；无证据的写 unknown。

## 1. 功能 → 包名

{tbl(['package', '功能', 'APK 目录', '核心 Activity', '核心 Service（前 2）', '关键 so（前 2）',
      '受保护', '精简策略', '证据可信度'], rows)}

## 2. 语音链路的 native 归属（关键）

原厂语音的 ASR/VAD/Wakeup/TTS **不是独立 APK**，而是 smartapp / AliGenieService / AMPE 里的 so：

{tbl(['库', '所在目录', '大小（字节）', '作用'], [list(x) for x in libs])}

推论（重要）：

1. **`libsmartbox.so`、`libaceAsr.so`、`libvad_*.so`、`libwakeup_*.so` 都属于 `com.alibaba.ailabs.genie.smartapp`**。
   要让它们“精简”，只能动 smartapp 本身——而 smartapp 是全系统最大包且被 launcher/设置/多个技能引用。
2. `libaligenie_ic.so` 在 `com.aligenie.ags`（原厂语音服务入口）内。
3. TTS 的 so 在 `com.alipay.arome.app`（AMPE）内 → 动 AMPE 会同时影响小程序与 TTS 骨架。

## 3. 其他核心功能

| 功能 | 包名 | 说明 |
|---|---|---|
| 默认桌面（HOME） | `com.alibaba.ailabs.genie.launcher` | `resolve-activity` 返回 `.activity.AdultHomeActivity`，见 `launcher_and_boot.md` |
| 当贝桌面 | `com.dangbei1.tvlauncher` | 已安装但**不是**默认 HOME；受用户保护 |
| 设置 | `com.android.settings`（S1Settings） | 系统设置，禁止精简 |
| SystemUI | `com.android.systemui`（AliSystemUI） | 状态栏/音量面板，禁止精简 |
| 包管理 | `com.android.packageinstaller` + `com.android.defcontainer` | 安装器与解压服务，禁止精简 |
| 媒体/存储 | `com.android.providers.media`、`com.android.externalstorage`、`com.android.storagemanager` | 存取卡与外接存储 |
| 原厂视频 | `com.ailabs.youku.iot`（AliVideoPlayer） | 点播/新闻/短视频/屏保视频 |
| 设备控制 | `com.alibaba.ailabs.genie.iot`（GenieIoT） | 23 条来自 smartapp 的 ServiceRecord 绑定 |
| 手势/视觉唤醒/AVE | `com.alibaba.ailabs.ar.monitor`（GenieMonitor） | 含 `VisionWakeUpService`、`AVEControlProvider` |
| 蓝牙 | `com.android.bluetooth` | 框架件 |
| Wi-Fi/网络 | `com.android.settings`（网络页）+ `com.android.server.telecom` 无关 | 由 framework 承载，无独立 APK |
| 音量 | `com.android.systemui`（音量面板）+ framework `AudioService` | 无独立 APK |
| 开机启动服务 | `com.alibaba.ailabs.genie.osupdate` 等 + `init.rc` 服务 | 见 `launcher_and_boot.md` |

## 4. 明确 unknown

1. 各包 `label`：unknown（未解析 arsc）。
2. 音量/Wi-Fi 的“核心组件”是 framework 内服务（`AudioService`、`WifiService`），不在 APK 层，
   因此表中只能给到 SystemUI/设置，无法列 APK 组件名。
3. TTS 是否还有第二个实现（原厂 `com.aligenie.ags` 内是否存在 TTS 引擎）：**未确认**，
   仅在 AMPE 内找到 tts 骨架库。
"""
open(os.path.join(DB, 'core_components.md'), 'w', encoding='utf-8').write(md)

# ---------------------------------------------------------------- component_inventory.md
blocks = []
tot = 0
for p in comp['packages']:
    tot += p['component_total']
    if not p['in_image']:
        blocks.append('### `%s`\n\n不在 system 镜像 inventory（数据分区安装），组件清单 unknown。\n' % p['package'])
        continue
    rows = [[c['kind'], '`%s`' % c['name'].split('.')[-1], 'yes' if c['exported'] else 'no',
             c['permission'] or '—', ', '.join(a.split('.')[-1] for a in c['intent_actions'][:2]) or '—',
             c['authorities'] or '—'] for c in p['components']]
    blocks.append('### `%s`\n\npersistent=%s，sharedUid=%s，设备 enabled=%s，组件数 **%d**\n\n%s\n'
                  % (p['package'], p['persistent'], p['shared_uid'] or '—',
                     p['device_enabled_state'], p['component_total'],
                     tbl(['kind', 'name', 'exported', 'permission', 'actions（前 2）', 'authorities'], rows)))

md = f"""# 组件级清单（rev5.3）

范围：rev5.2 里仍可能进入下一阶段验证的候选（儿童模式、相册、小体积候选、B 类剩余），共
**{len(comp['packages'])} 个包 / {tot} 个组件**。六个保护 App 只做识别，不做组件审计。

数据来源：镜像内 APK 的 AXML manifest 静态解析（`raw/manifest_facts.json`）+ 设备 `dumpsys package` 的
`enabled=` 值。Direct Boot / persistent / sharedUid 取 manifest 与 dumpsys 的对应字段；
manifest 未声明的项记 unknown，不推测。

## 汇总

{tbl(['package', 'in image', 'persistent', 'shared uid', 'device enabled', 'components'],
     [['`%s`' % p['package'], 'yes' if p['in_image'] else 'no', p['persistent'],
       p['shared_uid'] or '—', p['device_enabled_state'], p['component_total']]
      for p in comp['packages']])}

## 明细

{chr(10).join(blocks)}

## 未取到的字段（明确 unknown）

1. **每个组件的运行时 enabled 状态**：`dumpsys package` 只给包级 `enabled=`，组件级需要
   `dumpsys package <pkg> | grep -A` 逐条解析，本轮未做，全部 unknown。
2. **directBootAware**：AXML 里多数组件未显式声明，按“未声明”处理，不等于 false。
3. **签名信息**：只确认 `apkSigningVersion`（设备上 v2），未验证是否平台签名；特权权限以
   `/system/priv-app` 路径为准。
"""
open(os.path.join(DB, 'component_inventory.md'), 'w', encoding='utf-8').write(md)

# ---------------------------------------------------------------- dependency_graph.md
from collections import Counter
by_target = Counter()
for e in deps['edges']:
    by_target[e['target_package']] += 1
top = by_target.most_common(12)
rows = [['`%s`' % t, n] for t, n in top]
by_src = Counter(e['source_package'] for e in deps['edges']).most_common(6)

md = f"""# 依赖关系图（rev5.3）

生成自 `dependency_edges.csv` 中 `evidence_class ∈ {{app, ambiguous}}` 的边，共 **{deps['edge_count']} 条**。
`sdk_noise`（203 条）与 `platform_provider`（132 条）已排除，理由见 `../app_dependency_analysis.md`。

## 口径（必须先读）

| 证据类型 | 含义 | 能否当作运行时依赖 |
|---|---|---|
| `app`（197 条中的入向边） | 引用方的 dex/vdex 里出现被引方的**类名/action/authority** | 强线索，但仍需运行时确认 |
| `ambiguous` / `platform_provider` | 通用词命中 | **不能**当作依赖 |
| `sdk_noise` | 第三方 SDK 噪音 | 忽略 |
| manifest 引用 | 组件声明的 action/authority 指向 | 属静态契约 |
| 资源配置引用 | 资源里出现包名 | 中等 |
| 字符串命中 | 仅字符串相同 | 最弱，`不等于运行时依赖` |
| 未发现引用 | 没有命中 | **不等于没有依赖**（反射/动态加载/服务名拼接都可能漏） |

## 被引用最多的目标（入向边数）

{tbl(['target package', 'app 级入向边'], rows)}

## 引用方排行（出向边数，含 ambiguous）

{tbl(['source package', '边数'], [['`%s`' % s, n] for s, n in by_src])}

## 结构化数据

完整 304 条边在 `dependency_graph.json`，字段：
`source_package / source_component / target_package / target_component / dependency_type / evidence / confidence / impact_if_disabled`。

- `source_component` 本轮为 `null`：dex 命中只能定位到包，定位到具体调用点需要反编译，未做。
- `confidence`：`app` → high，`ambiguous`/`platform_provider` → low。
- **`impact_if_disabled` 是推断值**，不是实测。

## 已知盲区

1. Native 库之间的动态依赖（`libsmartbox.so` → `libaceAsr.so` 等）未做 `readelf -d` 级分析。
2. framework 侧只统计了“包名命中”，没有类级引用（`boot.vdex` 大，未做全量类索引）。
3. Launcher 卡片 → 目标包的跳转（`genie://…/webviewPage`、`bilibili://`）属于字符串证据，
   已写在 `../desktop_app_audit.md`，未并入本图。
"""
open(os.path.join(DB, 'dependency_graph.md'), 'w', encoding='utf-8').write(md)

print('md written: package_inventory, core_components, component_inventory, dependency_graph')
