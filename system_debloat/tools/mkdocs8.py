"""Generate desktop_app_audit.md (rev5.2).

Evidence:
  * system_debloat/desktop_package_index.json - read-only `pm list packages -f` snapshot (67 packages)
  * app_inventory.json - system-partition sizes/components
  * dependency_edges.csv - app-level inbound references
  * GenieLauncher.apk assets (page_apk_cache.json / page_apk_s4_cache.json / desktop.json / shopping.json)
    - launcher card entries: bizType, targetUrl, package name
  * smartapp assets - alarm domain layouts (语音闹钟)

rev5.2 fixes:
  * "independent APK" is decided by "is this package in the installed set", never by the label text;
  * 7 of the 8 previously-unknown entries are now resolved from launcher card evidence;
  * GenieMonitor is KEEP (VisionWakeUpService + AVEControlProvider), not a delete candidate.
"""
import json
import os

DOC = r'D:\tgz02\OS\system\system_debloat'
rows = {r['pkg']: r for r in json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))}
idx = json.load(open(os.path.join(DOC, 'desktop_package_index.json'), encoding='utf-8'))
INSTALLED = {p['package']: p for p in idx['packages']}
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
sc = stats['screening']

import screening

# name, pkg_or_None, card evidence, impact, delete?, disable?, grade, note
D = [
    ('旭慧生活', None, 'launcher assets 与全部 APK 的 assets/res 中均无该名称命中', '未知', '未知', '未知', '未知',
     '仅剩此一项未确认：本地无任何静态证据。缺的证据是 launcher 云端卡片配置（运行时拉取）或运行时 dumpsys 记录'),
    ('通话', None, 'launcher 卡片：`targetUrl=genie://com.alibaba.ailabs.genie.contacts/page/home?...&pkg=com.alibaba.ailabs.genie.contacts`',
     '通话/联系人（目标包 `com.alibaba.ailabs.genie.contacts` **未安装** → 卡片为死链）', '未知（非 APK）', '未知', '较可信',
     '卡片证据明确；但目标应用不在 67 个已安装包内，点击当前不可用'),
    ('人教数字课堂', None, 'launcher 卡片：`bizType=MINIAPP`，`targetUrl=market://com.alibaba.ailabs.geniemarket/main`',
     '教育内容推广位（跳应用市场，目标包未安装）', '未知（非 APK）', '未知', '较可信', '属 launcher 推荐/推广卡，不是应用'),
    ('爱家看护', 'com.alibaba.ailabs.genie.aicare', 'system prebuilt + /data 覆盖（4.0.26 → 4.0.62），launcher 组件 1 个',
     '看护/摄像头联动', '不建议（prebuilt 删除会退化）', '可评估', '确定',
     '包名、路径、分区、launcher 组件均有证据'),
    ('购物', None, 'launcher 卡片：`genie://…/webviewPage?h5_url=https://shop258155498.m.taobao.com`、`pages.tmall.com/…`',
     '购物频道（H5 webview，跳淘宝/天猫）', '未知（非 APK）', '未知', '较可信',
     'rev5.2 修正：launcher 内置频道**不再**被当作独立 APK'),
    ('音乐', None, 'launcher 音乐频道资源（`assets/audio_history.json`、`favourite_tabs.json`、`tabs.json`）',
     '原厂音乐链路（播放由 smartapp/AliVideoPlayer 承担）', '**禁止**', '禁止', '较可信',
     '音乐是频道 + 原厂播放链路，不是独立 APK；§六 保护'),
    ('闹钟', None, 'smartapp 资源含 `activity_alarm_list.xml`、`alarm_domain_alarm_ring_*` 等闹钟域布局',
     '语音闹钟技能界面（smartapp 内置 domain）', '未知（非 APK）', '未知', '较可信',
     '属 smartapp 技能 UI，不是独立应用；动它等于动语音链路'),
    ('相册', 'com.alibaba.ailabs.genie.albums', 'system/app，launcher MainActivity，screensaver 组件引用',
     '相册浏览、屏保取图、语音“看照片”', '需产品确认', '可验证（整包）', '确定', 'APK 1.01 MB，但 oat 9.54 MB，整目录 10.56 MB'),
    ('优酷', 'com.ailabs.youku.iot', 'launcher 内容卡 `source=youku_news`；播放组件被 smartapp 引用',
     '原厂视频播放（点播/新闻/短视频/屏保）', '**必须保留**（视频链路）', '禁止', '确定',
     'rev5.2 撤销“可删除”：它是原厂视频实现，详见 big4_component_review.md'),
    ('手势', 'com.alibaba.ailabs.ar.monitor', '包内 `GenieGestureService`（`android.intent.action.geniegesture`），无 launcher 组件',
     '手势/体感识别 + CMCC 媒体 + **视觉唤醒** + AVE 设备控制 Provider', '**不可删除，整包禁用验证**', '可验证（整包）', '确定',
     'rev5.2 统一结论：同包含唤醒与控制组件，解耦未证明；组件级只可评估 `GenieGestureService`'),
    ('菜谱', 'com.alibaba.ailabs.genie.cook', '/data/app 安装（launcher 组件 1 个）',
     '菜谱内容', '不涉及 system 空间', '需卸载（本轮不做）', '确定', 'APK 大小未知：/data/app 对 shell 不可读'),
    ('CCTV.新视听', 'cn.cmvideo.car.play', '/data/app；launcher 卡片 `miguvideo4pad://miguvideo4pad?pkg=cn.cmvideo.car.play`',
     '第三方视频客户端', '不涉及 system 空间', '需卸载（本轮不做）', '较可信', '包名 + 卡片双向印证；APK 大小未知'),
    ('儿童', 'com.alibaba.ailabs.genie.children', 'system/app，launcher HomeActivity，smartapp 16 处引用',
     '儿童模式（界面 + 禁播时段 + 管控其他应用）', '需产品确认（不得直接删）', '可验证（整包）', '确定',
     '可回收 20.14 MB，见 big4_component_review.md'),
    ('智能家居', 'com.alibaba.ailabs.genie.iot', 'system/app，launcher，smartapp `HouseService` 引用，快照 PSS 22,416 kB',
     '设备控制（IoT）', '**禁止**', '**禁止**', '确定', '属设备控制链路，§六 保护'),
    ('蚂蚁森林', None, 'launcher 卡片：`bizType=MINIAPP`，`targetUrl=waft://open?genieAppId=…&code=ant_forest&path=pages/index/index`',
     '支付宝小程序（Waft 容器）', '未知（非 APK）', '未知', '较可信', '明确是小程序，不是安装包'),
    ('设置', 'com.android.settings', 'system/app/S1Settings，launcher 组件，framework 强依赖',
     '系统设置', '**禁止**', '**禁止**', '确定', '§六 保护'),
    ('相机', 'com.alibaba.ailabs.genie.camera', '/data/app 安装（launcher 组件 1 个）',
     '拍照/看护联动', '不涉及 system 空间', '需卸载（本轮不做）', '确定', 'APK 大小未知'),
    ('哔哩哔哩', None, 'launcher 卡片：`bizType=NATIVE`，`targetUrl=bilibili://tv.danmaku.bili`（`tv.danmaku.bili` **未安装**）',
     '第三方视频（当前为死链卡片）', '未知（非 APK）', '未知', '较可信', '卡片指向未安装的第三方包，点击不可用'),
]


def is_pkg(p):
    return bool(p) and p in INSTALLED


def part_of(p):
    return INSTALLED[p]['partition'] if is_pkg(p) else '—（非 APK）'


def path_of(p):
    return INSTALLED[p]['apk_path'] if is_pkg(p) else '—'


def size_of(p):
    if not is_pkg(p):
        return '—'
    if p in rows:
        return '%.2f MB' % float(rows[p]['apk_mb'])
    return '未知（/data/app 不可读）'


map_rows = [['桌面名称', '实际包名', '分区', 'APK 路径', 'APK 大小', '存在独立 APK', '证据等级']]
for n, p, card, impact, dele, dis, grade, note in D:
    map_rows.append([n, ('`' + p + '`') if is_pkg(p) else '**未知（非独立 APK）**', part_of(p), path_of(p),
                     size_of(p), '是' if is_pkg(p) else '否', grade])

eva_rows = [['桌面名称', '涉及语音/音乐/视频/设备控制', '删除影响', 'A 类删除候选?', 'B 类禁用候选?']]
for n, p, card, impact, dele, dis, grade, note in D:
    eva_rows.append([n, impact, impact, dele, dis])

detail = []
for n, p, card, impact, dele, dis, grade, note in D:
    detail.append(f"""### {n}

| 项目 | 内容 |
|---|---|
| 桌面显示名称 | {n} |
| 实际包名 | {('`' + p + '`') if is_pkg(p) else '**未知（非独立 APK）**'} |
| 分区 | {part_of(p)} |
| APK 路径 | {('`' + path_of(p) + '`') if is_pkg(p) else '—'} |
| APK 文件大小 | {size_of(p)} |
| 是否存在独立 APK | {'是' if is_pkg(p) else '否'} |
| 静态证据（卡片/组件） | {card} |
| 涉及语音/音乐/视频/设备控制/硬件 | {impact} |
| 删除后可能影响 | {impact} |
| A 类静态删除 | **{dele}** |
| B 类禁用验证 | **{dis}** |
| 证据等级 | {grade} —— {note} |
""")

# system-side candidates (space only from real APKs)
SYS = [
    ('com.alibaba.ailabs.ar.monitor', '手势/视觉唤醒/Ave 控制（用户确认不需要，可整包禁用）', '不可删除，可禁用', 47.86),
    ('com.ailabs.youku.iot', '原厂视频播放实现（必须保留）', '必须保留', 0.0),
    ('com.alibaba.ailabs.genie.children', '儿童模式（功能确认后可整包禁用）', '待功能确认', 20.14),
    ('com.alibaba.ailabs.genie.albums', '相册/屏保取图（功能确认后可整包禁用）', '待功能确认', 10.56),
    ('com.ailabs.emode', '工厂 MMI/老化（不影响日常，但影响返修）', '不建议删除', 10.64),
    ('com.aliyun.uuid', 'UUID 注册（先禁用观察）', '先禁用', 2.73),
    ('com.alira.info', 'raService（用途不明，先禁用观察）', '先禁用', 0.79),
    ('com.alibaba.spkey', 'SpKey（用途不明，先禁用观察）', '先禁用', 0.13),
    ('com.yunos.tv.provision', '开通/清关（先禁用观察）', '先禁用', 0.03),
    ('com.android.providers.userdictionary', 'AOSP 词典 Provider', '可静态删除', 0.04),
]
sys_rows = [['`' + p + '`', '`' + rows[p]['dir'] + '`', rows[p]['apk_mb'], rows[p]['lib_mb'], rows[p]['oat_mb'],
             rows[p]['total_mb'], v, r] for p, role, v, r in
            [(p, role, v, r) for p, role, v, r in SYS]]

first_disable = screening.BATCH1
cond = [p for p in ('com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums')]
cond_total = round(sum(float(rows[p]['total_mb']) for p in cond), 2)

resolved = sum(1 for n, p, *_ in D if is_pkg(p))
cards = sum(1 for n, p, card, *_ in D if not is_pkg(p) and card != '—')

doc = f"""# 桌面预装应用专项排查（rev5.2 修正版）

对象：用户截图中的 18 个桌面入口 + 整个 system 分区 APK 清单。

**rev5.2 的三处修正**

1. `ar.monitor`（GenieMonitor）**不再是删除候选**：包内 `VisionWakeUpService`（唤醒）+ `AVEControlProvider`
   （设备控制，smartapp 引用）使其不可整包精简，已与 `summary_stats.json:D_forbidden`、`a_class_candidates.md` 统一。
2. 8 个“未知入口”里 **7 个已用 launcher 卡片证据坐实**（bilibili/淘宝/天猫/waft 小程序/应用市场/联系人），
   只剩 **旭慧生活** 未知。
3. “是否存在独立 APK”改为按**是否已安装**判定：launcher 内置频道、小程序、死链卡片一律记“否”。

## 0. 证据与判定规则

| 项 | 来源 / 规则 |
|---|---|
| 已安装包与分区 | `desktop_package_index.json`（只读 `pm list packages -f` 快照：67 个包 = system 55 + data 9 + vendor 3） |
| 桌面图标能力 | `dumpsys package <pkg>` 的 `LAUNCHER` 命中（只读） |
| 卡片/小程序入口 | `GenieLauncher.apk` 内 `assets/page_apk_cache.json`、`page_apk_s4_cache.json`、`desktop.json`、`shopping.json` |
| 闹钟等技能入口 | `smartapp.apk` 内的 `res/layout/alarm_domain_*` 等资源 |
| 独立 APK 判定 | **包名必须在已安装集合中**；否则一律“否”，并给出卡片 targetUrl 作为反证 |
| 体积口径 | system 包取 `app_inventory.json`；`/data/app` 对 shell 不可读 → **未知** |

## 1. 桌面应用与包名映射表（18/18）

{chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in map_rows)}

统计：**已安装包 10 个**（其中 system 6：aicare/albums/children/iot/settings + youku.iot、ar.monitor；
data 4：camera/cook/cmvideo；共 10 项计入“是”），**非 APK 入口 8 个**（卡片/小程序/技能 UI，其中 1 个仍未知）。

## 2. 桌面应用专项评估表

{chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in eva_rows)}

## 3. 逐个详情

{''.join(detail)}
## 4. system 分区删除候选（有真实 APK/目录体积）

| 包 | 目录 | APK MB | lib MB | oat MB | 整目录 MB | 结论 | 可回收 MB |
|---|---|---|---|---|---|---|---|
{chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in sys_rows)}

## 5. 第一批建议

### 5.1 第一批建议删除（system 分区）

**空。** 桌面可见的 system 应用全部与语音/视频/手势/设备控制耦合，本轮复核后连
`ar.monitor` 也退出候选；唯一低耦合的 `userdictionary` 只有 0.04 MB，且需先做用户态卸载验证。

### 5.2 第一批建议禁用验证（可逆）

{chr(10).join('- `' + p + '`（' + rows[p]['total_mb'] + ' MB）' for p in first_disable)}

### 5.3 条件删除场景（功能确认 + 禁用验证后）

| 候选 | 需放弃的功能 | 整目录可回收 |
|---|---|---|
| `com.alibaba.ailabs.genie.children` | 儿童模式 | 20.14 MB |
| `com.alibaba.ailabs.genie.albums` | 相册 / 屏保取图 | 10.56 MB |
| 合计 | — | **{cond_total} MB** |

> rev5.1 曾把 `ar.monitor`（47.86 MB）与 `youku.iot`（45.06 MB）列入此表，rev5.2 已撤销：
> 前者含唤醒与设备控制组件，后者是原厂视频实现。

## 6. 明确禁止删除

{chr(10).join('- `' + p + '`（' + rows[p]['total_mb'] + ' MB，' + rows[p]['cls'] + ' 类）' for p in screening.PROTECTED_CHAIN if p in rows)}
{chr(10).join('- `' + p + '`（' + (rows[p]['total_mb'] if p in rows else '设备侧') + '）' for p in screening.PROTECTED_SIX)}

## 7. 收益汇总

| 口径 | 数值 | 说明 |
|---|---|---|
| 第一批禁用释放 system 空间 | **0 MB** | 禁用不改分区 |
| 唯一低风险静态删除 | **0.04 MB** | `userdictionary`，需卸载验证 |
| 条件删除上限 | **{cond_total} MB** | 儿童 20.14 + 相册 10.56 |
| `ar.monitor` / `youku.iot` | **0 MB** | 必须保留整包 |
| RAM / CPU 收益 | **无证据** | 桌面相关包快照均无进程；唯一实测项是 OTA（非桌面） |

## 8. 未解决

1. **旭慧生活**仍未知：launcher 云端卡片（运行时拉取）或运行时 `dumpsys` 才能确认；本地无静态命中。
2. `com.alibaba.ailabs.genie.contacts`、`tv.danmaku.bili`、`com.alibaba.ailabs.geniemarket` 三个卡片目标**均未安装**
   → “通话”“哔哩哔哩”“人教数字课堂”当前是死链/推广位，点击行为未实测。
3. `/data/app` 三个 APK 的大小未知（目录不可读）。
4. label 字符串仍未从 `resources.arsc` 直接读取；映射依据是包名 + launcher 组件 + 卡片 targetUrl。
"""

open(os.path.join(DOC, 'desktop_app_audit.md'), 'w', encoding='utf-8').write(doc)
print('desktop_app_audit.md written', len(doc))