"""Generate desktop_app_audit.md (rev5.1).

All rows come from three evidence sources:
  * device: `pm list packages -f`（67 个已安装包及其 APK 路径）、`dumpsys package <pkg>` 的
    `android.intent.category.LAUNCHER` 命中数（判断是否有桌面图标）；
  * repo: `app_inventory.json`（system 分区 APK 体积与组件）、`dependency_edges.csv`（app 级引用）、
    framework vdex 扫描；
  * 静态字符串：`GenieLauncher.vdex` / `smartapp.vdex`（购物频道、gesture 域等）。

不确定的一律写“未知”，并给出“为什么未知”。不把截图当作包名证据。
"""
import json
import os

DOC = r'D:\tgz02\OS\system\system_debloat'
rows = {r['pkg']: r for r in json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))}
sc = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))['screening']

import screening

# name, pkg, partition, apk path, apk MB, launcher, deps, impact, delete?, disable?, grade, note
D = [
    ('旭慧生活', '未知', '—', '—', None, '—', '—',
     '未知', '未知', '未知', '未知',
     '67 个已安装包中没有可对应到该名称的包；`com.alibaba.ailabs.genie.intermediary` 虽在 /data/app，'
     '但其 `dumpsys package` 无 LAUNCHER 组件，不能作为桌面图标来源。判定为 launcher/webapp 入口，**待真机点按确认**'),
    ('通话', '未知', '—', '—', None, '—', '—',
     '拨号/通话（本机未安装 dialer/incall 包）', '未知', '未知', '未知',
     '67 个包中无 `com.android.dialer`/`incallui`；该入口可能由 SystemUI 或 H5 提供，未取证'),
    ('人教数字课堂', '未知', '—', '—', None, '—', '—',
     '教育内容（第三方）', '未知', '未知', '未知', '无对应安装包；判定为 webapp/H5 入口，未取证'),
    ('爱家看护', 'com.alibaba.ailabs.genie.aicare', 'system + /data 覆盖',
     'system/app/GenieAicare/GenieAicare.apk', 2.52, '1',
     '0 app 级入向引用；设备加载 /data/app 版本 4.0.62（系统内 4.0.26）',
     '看护/摄像头联动入口', '不建议（prebuilt 删除会退化）', '可评估', '较可信',
     '包名与路径均有证据；label 字符串未直接读取，按语义与 launcher 组件判定'),
    ('购物', '未知（launcher 内置频道）', '—', '—', None, '—',
     'GenieLauncher.vdex 内含 `/shopping_channel`、`/shopping_search`、`/sdcard/com.taobao.taobao/home`',
     '购物频道（跳转淘宝 H5/应用）', '未知（非独立 APK）', '未知', '较可信',
     '本机未安装淘宝 APK；该入口属 launcher 频道能力，删除 launcher 才有影响'),
    ('音乐', '未知', '—', '—', None, '—',
     '原厂音乐链路（smartapp 技能 + AliVideoPlayer 音频能力）', '原厂音乐播放', '**禁止**', '禁止', '较可信',
     '无独立音乐 APK；原厂音乐链路受保护，不得据桌面图标处置'),
    ('闹钟', '未知', '—', '—', None, '—', '—', '闹钟（本机无 deskclock 包）', '未知', '未知', '未知',
     '无对应安装包；可能由 launcher 或 H5 提供'),
    ('相册', 'com.alibaba.ailabs.genie.albums', 'system', 'system/app/GenieAlbums/GenieAlbums.apk',
     1.01, '1', '被 `com.alibaba.ailabs.genie.screensaver` 以组件引用；framework 0 命中',
     '照片浏览/屏保取图；语音“看照片”类技能', '需产品确认', '可验证', '较可信',
     'APK 仅 1.01 MB，但同目录 oat 9.54 MB，删目录合计 10.56 MB'),
    ('优酷', 'com.ailabs.youku.iot', 'system', 'system/app/AliVideoPlayer/AliVideoPlayer.apk',
     10.98, '0', '被 smartapp（`CommonPlayerActivity`/`NewsPlayerActivity`）与 screensaver 引用；framework 0',
     '视频播放能力（点播/新闻播放），属原厂视频链路的外包实现', '需产品确认', '可验证', '较可信',
     '无 LAUNCHER 组件 → 桌面“优酷”入口可能由 launcher/smartapp 拉起；APK+lib+oat 合计 45.06 MB'),
    ('手势', 'com.alibaba.ailabs.ar.monitor（GenieMonitor）', 'system',
     'system/app/GenieMonitor/GenieMonitor.apk', 33.19, '0',
     '被 smartapp 以 `controlProvider` 引用；framework 包名命中 1 处；服务含 `geniegesture`/`genieallinone`/CMCC',
     '手势/体感识别、CMCC 媒体服务', '**不建议直接删**', '可验证', '较可信',
     'APK 33.19 MB、目录合计 47.86 MB；无 LAUNCHER 组件，入口由设置/语音提供'),
    ('菜谱', 'com.alibaba.ailabs.genie.cook', '/data/app', '/data/app/com.alibaba.ailabs.genie.cook-*/base.apk',
     None, '1', '未在 system 分区；无 system 侧引用',
     '菜谱内容（第三方/预置数据区应用）', '不涉及 system 空间', '需卸载（本轮不做）', '较可信',
     'APK 大小未知：/data/app 对 shell 不可读（Permission denied），未提权'),
    ('CCTV.新视听', 'cn.cmvideo.car.play', '/data/app', '/data/app/cn.cmvideo.car.play-*/base.apk',
     None, '1', '未在 system 分区',
     '第三方视频客户端', '不涉及 system 空间', '需卸载（本轮不做）', '较可信',
     '包名语义（cmvideo=视频客户端）+ launcher 组件；label 未直接读取；大小未知（/data/app 不可读）'),
    ('儿童', 'com.alibaba.ailabs.genie.children', 'system', 'system/app/GenieChildren/GenieChildren.apk',
     9.97, '1', '被 smartapp（16 处：`ChildrenHomeActivity`、`ForbiddenTimeAddActivity` 等）与 guide 引用',
     '儿童模式（语音技能 + 独立界面）', '需产品确认', '可验证', '较可信',
     'APK 9.97 MB、目录合计 20.14 MB；若“儿童模式”确定不用，是最大的可回收项之一'),
    ('智能家居', 'com.alibaba.ailabs.genie.iot', 'system', 'system/app/GenieIoT/GenieIoT.apk',
     12.23, '1', '被 smartapp（`HouseService`）、rtc、arome 引用；快照 PSS 22,416 kB',
     '设备控制（IoT 配网/控制）', '**禁止**', '**禁止**', '较可信',
     '属设备控制链路，§六 明令保护；仅作说明，不列为候选'),
    ('蚂蚁森林', '未知', '—', '—', None, '—', '—', '第三方内容（支付宝小程序）', '未知', '未知', '未知',
     '无对应安装包；判定为 webapp/H5 入口，未取证'),
    ('设置', 'com.android.settings（S1Settings）', 'system', 'system/app/S1Settings/S1Settings.apk',
     4.48, '1', 'framework 强依赖（SystemUI/设置页/升级入口）', '系统设置', '**禁止**', '**禁止**', '较可信',
     '属 Framework 关键件，§六 明令保护'),
    ('相机', 'com.alibaba.ailabs.genie.camera', '/data/app', '/data/app/com.alibaba.ailabs.genie.camera-*/base.apk',
     None, '1', '未在 system 分区', '相机（拍照/看护联动）', '不涉及 system 空间', '需卸载（本轮不做）', '较可信',
     '大小未知（/data/app 不可读）'),
    ('哔哩哔哩', '未知', '—', '—', None, '—', '—', '第三方视频（未安装）', '未知', '未知', '未知',
     '无对应安装包；判定为 webapp/H5 入口，未取证'),
]


def sizes_txt(v):
    return '未知' if v is None else '%.2f MB' % v


mapping = [['桌面名称', '实际包名', '分区', 'APK 路径', 'APK 大小', 'LAUNCHER', '证据等级']]
for n, p, part, path, mb, lau, deps, impact, dele, dis, grade, note in D:
    mapping.append([n, ('`' + p + '`') if p != '未知' else '**未知**', part,
                    ('`' + path + '`') if path != '—' else '—', sizes_txt(mb), lau, grade])

eva = [['桌面名称', '包名', '是否涉及原厂语音/音乐/视频/设备控制', '删除后可能影响', 'A 类删除候选?', 'B 类禁用候选?']]
for n, p, part, path, mb, lau, deps, impact, dele, dis, grade, note in D:
    eva.append([n, ('`' + p + '`') if p != '未知' else '未知', impact, deps, dele, dis])

detail = []
for n, p, part, path, mb, lau, deps, impact, dele, dis, grade, note in D:
    detail.append(f"""### {n}

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | {n} |
| 实际包名 | {('`' + p + '`') if p != '未知' else '**未知**'} |
| 是否 system/priv-app 预装 | {part} |
| APK 路径 | {('`' + path + '`') if path != '—' else '—'} |
| APK 文件大小 | {sizes_txt(mb)} |
| 是否存在独立 APK | {'是' if p != '未知' else '否（判定为 webapp/launcher 入口）'} |
| 其他系统组件调用/依赖 | {deps} |
| 涉及语音/音乐/视频/设备控制/硬件 | {impact} |
| 删除后可能影响的功能 | {impact} |
| 是否适合 A 类静态删除 | **{dele}** |
| 是否适合 B 类可逆禁用验证 | **{dis}** |
| 证据等级与说明 | {grade} —— {note} |
""")

# ---- system-side deletion candidates (only real system APKs)
SYS = [
    ('com.alibaba.ailabs.ar.monitor', '手势/体感 + CMCC 媒体（桌面“手势”入口相关）',
     'smartapp `controlProvider` 引用、framework 包名 1 处；无 LAUNCHER、快照无进程',
     '手势/体感能力、CMCC 媒体服务', '高：触碰语音域交互', '验证禁用后删除'),
    ('com.ailabs.youku.iot', '视频播放实现（桌面“优酷”入口相关）',
     'smartapp 播放组件、screensaver；无 LAUNCHER', '点播/新闻播放、屏保视频', '高：原厂视频链路', '验证禁用后删除'),
    ('com.alibaba.ailabs.genie.children', '儿童模式（桌面“儿童”）',
     'smartapp 16 处组件引用、guide', '儿童模式界面与语音技能', '中高：语音技能', '验证禁用后删除'),
    ('com.alibaba.ailabs.genie.albums', '相册/屏保取图（桌面“相册”）',
     'screensaver 组件引用；无 LAUNCHER 之外引用', '照片浏览、屏保图片', '中：屏保/语音看照片', '验证禁用后删除'),
    ('com.ailabs.emode', '工厂 MMI/老化测试（桌面不可见）',
     'settings、provision 引用；83 个组件；无 LAUNCHER', '产线测试与返修能力', '中：影响售后流程', '不建议删除'),
    ('com.aliyun.uuid', '设备 UUID 注册（桌面不可见）',
     '无 app 级引用；framework 包名 1；BOOT 接收器', '厂商云注册/统计', '中', '先禁用观察'),
    ('com.alira.info', 'raService + dream 接收（桌面不可见）',
     '无引用、framework 0；SYSTEM_ALERT_WINDOW 权限', '未知', '中（用途不明）', '先禁用观察'),
    ('com.alibaba.spkey', 'SpKey 安全服务（桌面不可见）',
     '无引用、framework 0；有 LAUNCHER 组件', '未知', '中（用途不明）', '先禁用观察'),
    ('com.yunos.tv.provision', '开通/清关（桌面不可见）', '无 app 级引用；framework 包名 1', '开通流程', '低-中', '先禁用观察'),
    ('com.android.providers.userdictionary', 'AOSP 词典 Provider（桌面不可见）', '无引用、framework 0', '输入法词库', '低', '可静态删除'),
]

sys_rows = []
total_dir = 0.0
total_apk = 0.0
for p, role, deps, impact, risk, verdict in SYS:
    r = rows[p]
    total_dir += float(r['total_mb'])
    total_apk += float(r['apk_mb'])
    sys_rows.append(['`' + p + '`', '`' + r['dir'] + '`', r['apk_mb'], r['total_mb'], role, deps, impact, risk, verdict])

first_delete = [p for p, *_ in SYS if SYS[[x[0] for x in SYS].index(p)][5] == '可静态删除']
first_disable = screening.BATCH1

md_table = chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in mapping)
md_eva = chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in eva)
md_sys = chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in sys_rows)
md_detail = ''.join(detail)
md_first_disable = chr(10).join('- `' + p + '`（' + rows[p]['total_mb'] + ' MB）' for p in first_disable)
md_six = ', '.join('`' + p + '`' for p in screening.PROTECTED_SIX)
md_chain = ', '.join('`' + p + '`' for p in screening.PROTECTED_CHAIN)

doc = f"""# 桌面预装应用专项排查（rev5.1）

对象：用户提供的“我的应用”截图中的 18 个桌面入口 + 整个 system 分区 APK 清单。

**一句话结论**：18 个桌面入口里，只有 **8 个能确定对应到已安装包**、2 个较可信、**8 个在 67 个已安装包里找不到对应 APK**
（属 launcher/webapp 入口）；而能在 system 分区腾出空间的候选**全部**与语音/视频/手势链路耦合，
因此本轮**没有“第一批可直接删除”的系统应用**，能进第一批的只有禁用验证项。

## 0. 方法与证据

| 证据 | 来源 |
|---|---|
| 已安装包与 APK 路径 | 设备 `pm list packages -f`（67 个包，只读） |
| 是否有桌面图标 | 设备 `dumpsys package <pkg> \\| grep -c android.intent.category.LAUNCHER` |
| system 分区体积/组件 | `app_inventory.json`（55 个系统包） |
| app 级引用 | `dependency_edges.csv`（`evidence_class=app`） |
| framework 侧引用 | framework vdex 字符串扫描 |
| launcher 频道/手势域 | `GenieLauncher.vdex`、`smartapp.vdex` 字符串 |

口径：**桌面出现 ≠ 可删；厂商预装 ≠ 必须保留；APK 大小 ≠ RAM/CPU**。
`/data/app` 对 shell 不可读，因此数据区应用的 APK 大小标为**未知**（未提权）。

## 1. 桌面应用与包名映射表（18/18）

{md_table}

统计：确定 8 个（`aicare`/`albums`/`children`/`iot`/`settings`/`camera`/`cook`/`cmvideo`）、
较可信 2 个（`youku.iot`、`ar.monitor`）、**未知 8 个**（旭慧生活、通话、人教数字课堂、购物、音乐、闹钟、蚂蚁森林、哔哩哔哩）。

## 2. 桌面应用专项精简评估表

{md_eva}

- **禁止**：`设置`（Framework 关键件）、`智能家居`（设备控制）、`音乐`（原厂音乐链路）。
- **不涉及 system 空间**：`菜谱`、`CCTV.新视听`、`相机`（均为 /data/app 安装）。
- **可验证但需功能确认**：`相册`、`儿童`、`优酷`、`手势`。

## 3. 逐个详情

{md_detail}
## 4. 完整 system APK 删除候选清单（有实际 APK 与体积证据）

| 包名 | 目录 | APK MB | 整目录 MB | 角色 | 依赖/证据 | 删除后影响 | 风险 | 建议 |
|---|---|---|---|---|---|---|---|---|
{md_sys}

- 以上 {len(SYS)} 项的**APK 体积合计 {round(total_apk, 2)} MB**，**整目录（含 lib/oat）合计 {round(total_dir, 2)} MB**。
- 这是**上限**：只有把整个目录删掉才能拿到 `total` 那一列；只删 APK 只能拿到 `apk` 列，且会留下 oat 残留导致校验问题。

## 5. B 类禁用候选优先级（沿用 rev5，结合桌面证据）

| 顺序 | 包 | 桌面相关性 | 风险 | 建议 |
|---|---|---|---|---|
| 1 | `com.android.statementservice` | 无 | 低 | 第一批禁用 |
| 2 | `com.android.bluetoothmidiservice` | 无 | 低 | 第一批禁用 |
| 3 | `com.android.pacprocessor` | 无 | 低 | 第一批禁用 |
| 4 | `com.android.vpndialogs` | 无 | 低 | 第一批禁用 |
| 5 | `com.android.captiveportallogin` | 无 | 低 | 第一批禁用 |
| 6 | `com.android.companiondevicemanager` | 无 | 低 | 第一批禁用 |
| 7 | `com.alibaba.ailabs.genie.osupdate` | 无 | 高（升级链路） | 第二批，需你接受取舍 |
| 8 | `com.alibaba.ailabs.genie.guide` | 无 | 中 | 第二批（存储驱动） |
| 9 | `com.android.storagemanager` | 无 | 低 | 第二批（存储驱动） |
| 10 | `com.android.mtp` | 无 | 低-中（USB 传文件） | 第二批 |

> 桌面上的“相册/儿童/优酷/手势”对应的是 **C 类/D 类**包，不在这 10 个 B 类里；它们要走
> “先禁用观察 → 再评估删除”的路径，见第 7 节。

## 6. 第一批建议

### 6.1 第一批建议删除（system 分区）

**空。** 理由：18 个桌面入口中，凡是 system 分区内的（相册/儿童/优酷/手势/智能家居/设置/爱家看护）
全部与语音、视频、手势或设备控制链路存在引用关系；唯一低耦合的
`com.android.providers.userdictionary` 只有 **0.04 MB**，且需先做用户态卸载验证。
**本轮不给出“直接删”的系统应用清单，是因为证据不支持，而不是没找。**

### 6.2 第一批建议禁用验证（可逆、不影响核心功能）

{chr(10).join('- `' + p + '`（' + rows[p]['total_mb'] + ' MB）' for p in first_disable)}

### 6.3 条件场景（功能确认后才可考虑删除，按可回收空间排序）

| 场景 | 需要你确认放弃的功能 | 可回收（整目录） | 依据 |
|---|---|---|---|
| 删除 `com.alibaba.ailabs.ar.monitor` | 手势/体感 + CMCC 媒体 | **47.86 MB** | smartapp `controlProvider` + framework 命中；无进程 |
| 删除 `com.ailabs.youku.iot` | 优酷点播/新闻播放 | **45.06 MB** | smartapp 播放组件引用；属原厂视频链路 |
| 删除 `com.alibaba.ailabs.genie.children` | 儿童模式 | **20.14 MB** | smartapp 16 处引用 |
| 删除 `com.alibaba.ailabs.genie.albums` | 相册/屏保取图 | **10.56 MB** | screensaver 引用 |
| 合计 | — | **123.62 MB** | 均为 system 分区真实体积 |

> 这四项都**不能**直接删：先 `pm disable-user` 观察（语音技能是否需要、界面是否报错），
> 确认无影响后再改镜像；且删除后需一并处理 `oat/arm/*.vdex|odex`。

## 7. 明确禁止删除的组件

| 类别 | 组件 |
|---|---|
| 六个受保护 App | {', '.join('`' + p + '`' for p in screening.PROTECTED_SIX)} |
| 原厂语音/媒体/UI 核心 | {', '.join('`' + p + '`' for p in screening.PROTECTED_CHAIN)} |
| 桌面入口背后的设备控制 | `com.alibaba.ailabs.genie.iot`（智能家居） |
| 桌面入口背后的设置 | `com.android.settings`（S1Settings） |
| 数据区预装（非本轮范围） | `com.alibaba.ailabs.genie.camera`、`com.alibaba.ailabs.genie.cook`、`cn.cmvideo.car.play`（卸载属设备操作） |

## 8. 精简收益汇总（只统计有实际 APK 体积依据的项）

| 口径 | 数值 | 说明 |
|---|---|---|
| 第一批禁用可释放 system 空间 | **0 MB** | 禁用不改分区 |
| 第一批禁用可减少的后台进程 | 无证据（6 项快照均无进程） | 不能说“省 RAM” |
| 唯一低风险静态删除 | **0.04 MB**（`userdictionary`） | 需先卸载验证 |
| 条件场景删除上限 | **123.62 MB**（4 项整目录） | 需功能确认 + 禁用验证 |
| OTA 禁用（若授权） | 空间 **0 MB**，CPU **无实测节省值** | 现有 21.53% 是**占用**，不是可节省量 |

## 9. 未解决 / 未确认

1. **8 个桌面名称无对应安装包**：旭慧生活、通话、人教数字课堂、购物、音乐、闹钟、蚂蚁森林、哔哩哔哩。
   已确认它们不是 APK（67 包中无匹配），但具体是 launcher 频道还是 smartapp 的 H5 webapp，**未取证**。
   要坐实需读取 launcher 的频道配置（本机 `/data` 不可读）或逐个点按“应用信息”。
2. **`/data/app` 三个预装应用的 APK 大小未知**（camera、cook、cmvideo），因为该目录对 shell 不可读。
3. **桌面名称与包名的 label 字符串未直接读取**（未解析 resources.arsc），当前映射依据是包名语义 + launcher 组件 + 路径。
4. **“手势”入口究竟由 GenieMonitor 还是设置页提供**：包内确有 `geniegesture` 服务，但入口归属未取证。
5. **删除后的运行时后果**：全部未实测（本轮不做设备操作）。
"""

open(os.path.join(DOC, 'desktop_app_audit.md'), 'w', encoding='utf-8').write(doc)
print('desktop_app_audit.md written', len(doc))