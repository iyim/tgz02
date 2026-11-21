"""Generate big4_component_review.md (rev5.2).

Data: app_inventory.json (sizes), dependency_edges.csv (app-level refs),
manifest components from the static parse (reproduced here via screening.MONITOR_COMPONENTS),
framework vdex hits, launcher card evidence (assets/page_apk_cache.json 等).
"""
import csv
import json
import os

DOC = r'D:\tgz02\OS\system\system_debloat'
rows = {r['pkg']: r for r in json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))}
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
edges = list(csv.DictReader(open(os.path.join(DOC, 'dependency_edges.csv'), encoding='utf-8-sig')))
import screening

FOUR = ['com.alibaba.ailabs.ar.monitor', 'com.ailabs.youku.iot',
        'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums']

COMPS = {
    'com.alibaba.ailabs.ar.monitor': ['GenieGestureService (geniegesture)', 'VisionWakeUpService (genieWakeUpService)',
                                      'CMCCMediaService', 'AwesomeService (genieallinone)',
                                      'AiCareBizService', 'AVEControlProvider', 'CameraSampleActivity'],
    'com.ailabs.youku.iot': ['CommonPlayerActivity / NewsPlayerActivity（被 smartapp 引用）',
                             'PlayerProxyService（m3u8 代理）', 'ShortVideoPlayer', 'PassportActivity（账号）',
                             'StatementActivity', 'HomeActivity'],
    'com.alibaba.ailabs.genie.children': ['ChildrenHomeActivity / HomeActivity', 'ForbiddenTimeAddActivity（禁播时段）',
                                          'ChildGeneralSecondPageActivity / MediaListActivity',
                                          'DataCenterService / LogService / TimerService', 'StatementActivity'],
    'com.alibaba.ailabs.genie.albums': ['MainActivity（桌面入口）', 'ImageBrowseActivity', 'BannerAnimationActivity',
                                        'CmdDispatchService', 'AlbumContentProvider'],
}

FRAMEWORK = {
    'com.alibaba.ailabs.ar.monitor': '包名命中 1 处（无具体类名）',
    'com.ailabs.youku.iot': '0 命中',
    'com.alibaba.ailabs.genie.children': '0 命中',
    'com.alibaba.ailabs.genie.albums': '0 命中',
}

CHAIN = {
    'com.alibaba.ailabs.ar.monitor': '**是**：唤醒（VisionWakeUpService）+ 设备控制（AVEControlProvider）+ 手势',
    'com.ailabs.youku.iot': '**是**：原厂视频播放（点播/新闻/短视频/屏保视频）',
    'com.alibaba.ailabs.genie.children': '部分：语音“儿童模式”技能（smartapp 16 处引用）',
    'com.alibaba.ailabs.genie.albums': '部分：屏保取图 + 语音“看照片”',
}

BOUNDARY = {
    'com.alibaba.ailabs.ar.monitor': '**没有**：唤醒/控制/手势/CMCC 四种能力同包同进程，未证明可分离',
    'com.ailabs.youku.iot': '**没有**：播放器是整包核心',
    'com.alibaba.ailabs.genie.children': '**有界面边界**，但后台服务与 smartapp 技能绑定',
    'com.alibaba.ailabs.genie.albums': '**有界面边界**，但 Provider 与屏保/语音绑定',
}

COMPONENT_DISABLE = {
    'com.alibaba.ailabs.ar.monitor': '理论上只有 `GenieGestureService` 可单独关；但同包含唤醒与控制组件，**解耦未证明**，且组件级禁用不释放空间',
    'com.ailabs.youku.iot': '不适用：关掉任一播放组件都会破坏视频能力',
    'com.alibaba.ailabs.genie.children': '可关 `LogService`/`DataCenterService` 等后台服务，但只减后台行为、**不释放空间**，且同包依赖未验证',
    'com.alibaba.ailabs.genie.albums': '不适用：只有 1 MB APK，收益在 oat（9.54 MB），只能整目录删除',
}

BREAK = {
    'com.alibaba.ailabs.ar.monitor': '手势识别、设备控制桥（AVE）、CMCC 媒体、**视觉唤醒**（可能直接断语音唤醒）',
    'com.ailabs.youku.iot': '优酷点播/新闻播放/短视频、屏保视频',
    'com.alibaba.ailabs.genie.children': '儿童模式界面、禁播时段、语音儿童技能',
    'com.alibaba.ailabs.genie.albums': '相册浏览、屏保图片、语音看照片',
}

RISK = {
    'com.alibaba.ailabs.ar.monitor': ('**高**', '**高**（删除后需回刷 system 或回推 APK + restorecon）'),
    'com.ailabs.youku.iot': ('**高**', '**高**（同上，且 lib 21.28 MB 需一并恢复）'),
    'com.alibaba.ailabs.genie.children': ('中高', '中（回推 APK + oat 重建）'),
    'com.alibaba.ailabs.genie.albums': ('中', '中（回推 APK + oat 重建）'),
}

RECLAIM = {
    'com.alibaba.ailabs.ar.monitor': (0.0, '47.86', '**0**：整包必须保留'),
    'com.ailabs.youku.iot': (0.0, '45.06', '**0**：整包必须保留'),
    'com.alibaba.ailabs.genie.children': (20.14, '20.14', '20.14 MB（仅在确认放弃儿童模式并完成禁用验证后）'),
    'com.alibaba.ailabs.genie.albums': (10.56, '10.56', '10.56 MB（同上）'),
}


def refs(p):
    out = []
    for e in edges:
        if e['target_package'] == p and e['evidence_class'] == 'app':
            out.append('`%s` ← `%s`（%s）' % (e['token'].split('.')[-1], e['source_package'], e['kind']))
    return out


def md(head, body):
    lines = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    lines += ['| ' + ' | '.join(str(c) for c in r) + ' |' for r in body]
    return '\n'.join(lines)


detail = []
for p in FOUR:
    r = rows[p]
    v = screening.BIG4_VERDICT[p]
    rs = refs(p)
    detail.append(f"""### {p}

| 项目 | 结论 |
|---|---|
| APK / lib / oat 分项 | **{r['apk_mb']} / {r['lib_mb']} / {r['oat_mb']} MB**（整目录 {r['total_mb']} MB） |
| 直接依赖（app 级） | {('<br>'.join(rs) if rs else '无 app 级入向引用')} |
| framework 引用 | {FRAMEWORK[p]} |
| 是否被语音/音乐/视频/设备控制调用 | {CHAIN[p]} |
| 是否存在独立功能边界 | {BOUNDARY[p]} |
| 可否组件级禁用替代整包 | {COMPONENT_DISABLE[p]} |
| 整包删除会破坏 | {BREAK[p]} |
| 理论上可回收 system 空间 | {RECLAIM[p][2]} |
| 风险 / 恢复难度 | 风险 {RISK[p][0]}；恢复 {RISK[p][1]} |
| **最终结论** | {v['verdict']}<br>{v['reason']} |
""")

four_rows = [[('`' + p + '`'), rows[p]['apk_mb'], rows[p]['lib_mb'], rows[p]['oat_mb'], rows[p]['total_mb'],
              screening.BIG4_VERDICT[p]['verdict'], screening.BIG4_VERDICT[p]['reclaimable_mb']] for p in FOUR]

mon = [[c['name'], c['kind'], ('导出' if c['exported'] is True else c['exported']), c['action'],
        c['role'], c['verdict']] for c in screening.MONITOR_COMPONENTS]

# whole-inventory space ranking (top 15 by total)
inv = sorted(rows.values(), key=lambda r: -float(r['total_mb']))
top = []
for r in inv[:15]:
    p = r['pkg']
    if p in screening.PROTECTED_SIX:
        cls = '受保护'
    elif p in screening.PROTECTED_CHAIN:
        cls = '语音/媒体/UI 链路'
    elif p in screening.BIG4_VERDICT:
        cls = '四个大体积候选'
    elif r['cls'] == 'D':
        cls = 'D 类（禁止删除）'
    else:
        cls = '其他（见候选清单）'
    top.append(['`' + p + '`', r['apk_mb'], r['lib_mb'], r['oat_mb'], r['total_mb'], cls])

doc = f"""# 四个大体积候选的组件级复核（rev5.2）

对象：rev5.1 里被列为“验证禁用后删除”的四个包。本轮逐个拆到**组件**级别，判断能不能精简、能回收多少。

**结论摘要**

{md(['包', 'APK MB', 'lib MB', 'oat MB', '整目录 MB', '最终结论', '可回收 MB'], four_rows)}

- 四个里 **1 个必须整包保留**（`ar.monitor` 含唤醒+设备控制；`youku.iot` 是原厂视频实现），
  **可回收 0 MB**；另外 **2 个**（`children` 20.14 MB、`albums` 10.56 MB）只有在“确认放弃功能 + 完成禁用验证”后才可回收。
- rev5.1 中把 `ar.monitor` 写成“验证禁用后删除”是**错误**，本版已撤销，并同步到
  `a_class_candidates.md`、`desktop_app_audit.md`、`pruning_priority.md`、`summary_stats.json`。

## 1. GenieMonitor（`com.alibaba.ailabs.ar.monitor`）专项

### 1.1 组件清单（来自 APK manifest 静态解析）

{md(['组件', '类型', '导出', 'action', '角色', '结论'], mon)}

### 1.2 关键判断

1. **唤醒**：`VisionWakeUpService`（`android.intent.action.genieWakeUpService`）属唤醒链路，受 §六 保护。
2. **设备控制**：`AVEControlProvider`（`com.alibaba.ailabs.ave.controlProvider`）被 smartapp 以
   `controlProvider` 关联，是语音控制设备的通道之一。
3. **手势**：`GenieGestureService` 有**独立 action**，看起来可单关；但同包同进程、且与 AVE/Awesome 共用数据目录，
   **解耦未证明**。
4. **CMCC 媒体**：`CMCCMediaService` 独立 action，是否与语音技能联动未验证。
5. framework 仅命中包名（无具体类名），说明 framework 不按类名绑定它。

### 1.3 结论

- **整包必须保留**，不得整包删除/禁用；`summary_stats.json:D_forbidden` 保持包含该包是正确的。
- 唯一理论上的精简点是 `GenieGestureService` 的**组件级禁用**，前提是：① 你确认不用手势；
  ② 实测禁用后唤醒/设备控制/CMCC 不受影响；③ 接受“组件级禁用**不释放空间**”。
- 因此本包**不进任何删除清单**，也**不再出现在“验证禁用后删除”**名单里。

## 2. 优酷（`com.ailabs.youku.iot` / `AliVideoPlayer.apk`）

- 组件：`CommonPlayerActivity`、`NewsPlayerActivity`（**smartapp 直接点名**）、`PlayerProxyService`（m3u8 代理）、
  `ShortVideoPlayer`、`PassportActivity`（账号）、`StatementActivity`、`HomeActivity`。
- 桌面“优酷”入口来自 launcher 内容卡（`source: youku_news`），播放动作落到本包。
- **结论**：这是原厂视频播放的实现，不是“第三方视频客户端”。删除＝拆掉视频能力。
  **整包保留，可回收 0 MB**。

## 3. 儿童模式（`com.alibaba.ailabs.genie.children`）

- 组件：`ChildrenHomeActivity`、`HomeActivity`、`ForbiddenTimeAddActivity`（禁播时段）、
  `MediaListActivity`、`DataCenterService`、`LogService`、`TimerService`。
- 权限：`FORCE_STOP_PACKAGES`、`KILL_BACKGROUND_PROCESSES`、`INTERACT_ACROSS_USERS`、system uid
  —— 这说明它会**管控其他应用**（儿童模式的应用白名单/时长）。
- 依赖：smartapp 16 处组件引用（语音“儿童模式”技能）+ guide 引用。
- **结论**：与设置、AliSystemUI 无直接引用，但与 **smartapp 强耦合**。可回收 20.14 MB，
  条件是“确认放弃儿童模式 + 整包禁用验证 24 h + 无技能报错”。**不得直接删除。**

## 4. 相册（`com.alibaba.ailabs.genie.albums`）

- 组件：`MainActivity`（桌面入口）、`ImageBrowseActivity`、`BannerAnimationActivity`、`CmdDispatchService`、
  `AlbumContentProvider`（导出）。
- 依赖：`screensaver` 以组件引用（屏保取图）；语音“看照片”可能经 smartapp 调用 Provider。
- 体积特点：APK 仅 **1.01 MB**，但 **oat 9.54 MB** —— 只删 APK 几乎没意义，必须删整个目录才是 10.56 MB。
- **结论**：可回收 10.56 MB，条件同上（放弃相册/屏保取图 + 禁用验证）。**不得直接删除。**

## 5. 全 inventory 空间排序（Top 15，按整目录体积）

{md(['包', 'APK MB', 'lib MB', 'oat MB', '整目录 MB', '归类'], top)}

说明：体积最大的几项（smartapp、AMPE、webview、GenieMonitor、launcher、iot）全部落在
“语音/媒体/UI 链路”“受保护”“禁止删除”里；**能动的空间不在最大那几项上**，这是本镜像的客观情况。

## 6. 收益口径（严格分开）

| 口径 | 数值 | 说明 |
|---|---|---|
| 删除 APK 可释放 | ar.monitor 33.19 / youku.iot 10.98 / children 9.97 / albums 1.01 MB | 但只删 APK 会留下 lib/oat，实际不可行 |
| 删除整目录可释放 | 同上四项合计 **123.62 MB** | 其中 93 MB 属“必须保留”，实际可讨论 **30.70 MB** |
| 禁用减少后台进程 | 无证据（四项快照均无进程；只有 OTA 有进程证据） | 不能声称省 RAM |
| RAM 实测收益 | **无证据** | 唯一有 PSS 的是 OTA（16,557 kB 中位），且那是占用值 |
| CPU 实测收益 | **无证据** | 同上 |

## 7. 未解决

1. `GenieGestureService` 能否在不影响 AVE/唤醒的前提下单独关——需真机组件级实验（本轮不做设备操作）。
2. 儿童模式与 smartapp 的技能契约细节（哪些技能会报错）——未实测。
3. 相册 Provider 是否被语音“看照片”使用——只有组件形态证据，无运行时证据。
"""

open(os.path.join(DOC, 'big4_component_review.md'), 'w', encoding='utf-8').write(doc)
print('big4_component_review.md written', len(doc))