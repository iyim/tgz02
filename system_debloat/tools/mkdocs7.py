"""Generate pruning_priority.md and a_class_candidates.md (rev5)."""
import json
import os

DOC = r'D:\tgz02\OS\system\system_debloat'
rows = {r['pkg']: r for r in json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))}
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
sc = stats['screening']

import screening  # authored data (B answers / static candidates / batches)


def mb(pkg, key='total_mb'):
    return rows[pkg][key]


def md(head, body):
    out = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    for r in body:
        out.append('| ' + ' | '.join(str(c) for c in r) + ' |')
    return '\n'.join(out)


# ---------------------------------------------------------------- priority table
PRIO = {
    # pkg: (后台减少潜力, RAM 潜力, CPU 潜力, 功能破坏风险, 回退, 依据)
    'com.android.statementservice': ('无证据（快照无进程）', '无证据', '无证据', '低', '低',
                                     '仅在安装/校验 App Links 时被绑定；vdex 0 命中'),
    'com.android.bluetoothmidiservice': ('无证据', '无证据', '无证据', '低', '低',
                                         'framework 按类名绑定；本机无 MIDI 外设'),
    'com.android.pacprocessor': ('无证据', '无证据', '无证据', '低', '低',
                                 'framework 按类名绑定 `PacService`；仅 PAC 代理场景'),
    'com.android.vpndialogs': ('无证据', '无证据', '无证据', '低', '低',
                               'framework 按类名绑定 `ManageDialog`；仅 VPN 授权场景'),
    'com.android.captiveportallogin': ('无证据', '无证据', '无证据', '低', '低',
                                       '仅强制门户 Wi-Fi 场景拉起'),
    'com.android.companiondevicemanager': ('无证据', '无证据', '无证据', '低', '低',
                                           '仅伴生设备配对场景'),
    'com.alibaba.ailabs.genie.osupdate': ('高：persistent + started service 73/73 样本常驻',
                                          '中：PSS 中位 16,557 kB（n=73）',
                                          '高：6 h 均值 21.53%（72/72 区间 ≥10%）',
                                          '高', '低（`pm enable` + 重启一次）',
                                          'rev4.1 观测 + system uid/升级权限 + framework 点名'),
    'com.alibaba.ailabs.genie.guide': ('低：快照无进程，仅首启使用', '无证据', '无证据', '中', '低',
                                       '一次性向导；`NETWORK_SETUP_WIZARD`'),
    'com.android.storagemanager': ('低：BOOT 接收器开机会拉起一次（未测量）', '无证据', '无证据', '低', '低',
                                   'AOSP 存储 UI；无 app 级引用'),
    'com.android.mtp': ('低：仅 USB 连接时启用', '无证据', '无证据', '低-中（USB 传文件）', '低',
                        '导出 DocumentsProvider + USB 接收器'),
    'com.android.providers.userdictionary': ('无证据', '无证据', '无证据', '低', '低（回刷/回推 APK）',
                                             'AOSP 词典 Provider，0 app 级引用'),
    'com.aliyun.uuid': ('无证据（有 BOOT 接收器，未测量）', '无证据', '无证据', '中', '低-中',
                        'UUID 注册服务；framework 仅包名命中'),
    'com.alira.info': ('无证据', '无证据', '无证据', '中（用途不明）', '低-中',
                       '`raService` + dream 接收器；0 引用、0 framework 命中'),
    'com.alibaba.spkey': ('无证据', '无证据', '无证据', '中（用途不明）', '低-中',
                          '导出 SpService；0 引用、0 framework 命中'),
    'com.yunos.tv.provision': ('无证据', '无证据', '无证据', '低-中', '低-中',
                               'priv-app 开通/清关；0 app 级引用'),
}

batch1 = sc['batch1_low_risk_disable']
batch2 = sc['batch2_verify_disable']
static_del = sc['static_delete_candidates']
verify_first = sc['disable_first_then_review']

prio_rows = []
for pkg in batch1 + batch2 + static_del + verify_first:
    r = rows[pkg]
    p = PRIO[pkg]
    prio_rows.append(['`' + pkg + '`', r['cls'],
                      '%s / %s / %s' % (r['apk_mb'], r['lib_mb'], r['oat_mb']),
                      p[0], p[1], p[2], '**仅删除**：%s MB' % r['total_mb'], p[3], p[4], p[5]])

forbidden_rows = []
for pkg, note in sc['forbidden_notes'].items():
    forbidden_rows.append(['`' + pkg + '`', rows[pkg]['total_mb'], note])

chain_rows = [[('`' + p + '`'), rows[p]['total_mb'], rows[p]['cls'],
               ('语音/UI/Provider 核心' if rows[p]['cls'] == 'D' else '语音技能/媒体耦合')]
              for p in screening.PROTECTED_CHAIN if p in rows]
six_rows = [[('`' + p + '`'),
             (rows[p]['cls'] if p in rows else '设备侧'),
             (rows[p]['total_mb'] if p in rows else '—'),
             '**受用户保护：不得删除/禁用/清数据/限制自启与权限**'] for p in screening.PROTECTED_SIX]

prio = f"""# 精简优先级与批次（rev5）

本文件回答：**在已经完成分类与观测的前提下，先动哪些、后动哪些、哪些永远不动，以及每一步到底换来什么。**

- 数据来源：`app_inventory.json`（体积/组件/PSS/persistent）、`dependency_edges.csv`（app 级引用）、
  framework vdex 扫描、`ota_observation_report.md`（6 h 实测）。
- 三条口径（全表通用）：**APK 体积 ≠ RAM；禁用不释放 system 空间；无引用 ≠ 无用**。
- 本轮**没有任何设备操作**：未禁用、未卸载、未改镜像/boot、未新增采样工具。

## 1. 统一优先级表

| 候选 | 技术类 | APK/lib/oat MB | 后台进程/常驻减少潜力 | RAM 减少潜力 | CPU 负担减少潜力 | system 空间释放潜力 | 功能破坏风险 | 回退难度 | 依据 |
|---|---|---|---|---|---|---|---|---|---|
{chr(10).join('| ' + ' | '.join(str(c) for c in r) + ' |' for r in prio_rows)}

> “空间释放潜力”只对**删除**成立；全部禁用方案的空间收益为 **0**。
> “RAM/CPU 减少潜力”只有 OTA 有实测数字（PSS 中位 16,557 kB、CPU 均值 21.53%），其余为**无证据**。

## 2. 第一批：低风险禁用候选（{len(batch1)} 个）

{md(['包名', '合计 MB', '禁用后失去的功能', '为什么算低风险'], [
    ['`com.android.statementservice`', rows['com.android.statementservice']['total_mb'],
     'App Links（http/https 深度链接）校验', '无进程、无 app 级引用；仅在安装/校验时被 PackageManager 绑定'],
    ['`com.android.bluetoothmidiservice`', rows['com.android.bluetoothmidiservice']['total_mb'],
     'BLE-MIDI 外设', '无进程、无引用；本机无 MIDI 外设；framework 仅按类名按需绑定'],
    ['`com.android.pacprocessor`', rows['com.android.pacprocessor']['total_mb'],
     'PAC 代理脚本解析', '无进程、无引用；只在配置 PAC 代理时被绑定'],
    ['`com.android.vpndialogs`', rows['com.android.vpndialogs']['total_mb'],
     'VPN 授权对话框', '无进程、无引用；不装 VPN 客户端就永不触发'],
    ['`com.android.captiveportallogin`', rows['com.android.captiveportallogin']['total_mb'],
     '强制门户 Wi-Fi 登录页', '无进程、无引用；普通 Wi-Fi 不走这条路'],
    ['`com.android.companiondevicemanager`', rows['com.android.companiondevicemanager']['total_mb'],
     '伴生设备配对入口', '无进程、无引用；不配对伴生设备就不触发'],
])}

**诚实结论**：这 6 个都属于“功能明确独立、依赖面小、风险低”，但**禁用的收益是 0（无可测量 RAM/CPU 减少）、
空间收益也是 0（禁用不释放空间）**。它们的价值只在“去掉不需要的功能面，减少潜在拉起路径”，
不应被描述为“能省资源”。若要拿空间，只能删 APK，而它们合计只有
**{round(sum(float(rows[p]['total_mb']) for p in batch1), 2)} MB**。

## 3. 第二批：待验证禁用候选（{len(batch2)} 个）

{md(['包名', '合计 MB', '为什么要验证', '验证通过后能得到什么'], [
    ['`com.alibaba.ailabs.genie.osupdate`', rows['com.alibaba.ailabs.genie.osupdate']['total_mb'],
     '唯一有实测占用的候选（CPU 21.53%、PSS 16,557 kB），但切断升级链路、framework 点名、system uid',
     '**实测**禁用后 CPU/RAM 的真实变化（这才是“省资源”的唯一硬证据）'],
    ['`com.alibaba.ailabs.genie.guide`', rows['com.alibaba.ailabs.genie.guide']['total_mb'],
     '无进程 → 禁用无 RAM 收益；价值在 5.42 MB，且只有删除才释放',
     '确认“移除引导”不影响使用，为是否删除提供依据'],
    ['`com.android.storagemanager`', rows['com.android.storagemanager']['total_mb'],
     '同上：2.32 MB 只有删除才释放；有 BOOT 接收器',
     '确认低存储场景无告警缺失'],
    ['`com.android.mtp`', rows['com.android.mtp']['total_mb'],
     '功能影响明确（USB 传文件），需要你确认不用',
     '去掉一个常驻可被 USB 拉起的 Provider'],
])}

## 4. 静态删除候选（{len(static_del)} 个）

| 包名 | APK 路径 | 合计 MB | 结论 |
|---|---|---|---|
{chr(10).join('| `%s` | `%s` | %s | %s |' % (p, rows[p]['dir'], rows[p]['total_mb'],
                                            screening.STATIC_CANDIDATES[p]['verdict']) for p in static_del)}

## 5. 先禁用、后评估（{len(verify_first)} 个）

这 4 个的共同点：**静态扫描 0 引用，但业务用途不明**，因此既不能算“无用”，也不能直接删。

{md(['包名', 'APK 路径', '合计 MB', '0 引用 ≠ 无用 的理由'], [
    [('`' + p + '`'), ('`' + rows[p]['dir'] + '`'), rows[p]['total_mb'],
     screening.STATIC_CANDIDATES[p]['impact']] for p in verify_first
])}

详细逐项分析见 [a_class_candidates.md](a_class_candidates.md)。

## 6. 明确禁止精简

### 6.1 六个受用户保护 App

{md(['包名', '技术类', '合计 MB', '规则'], six_rows)}

### 6.2 原厂语音 / UI / 设备控制链路（不动）

{md(['包名', '合计 MB', '技术类', '原因'], chain_rows)}

### 6.3 体量大但禁止静态删除的项

{md(['包名', '合计 MB', '原因'], forbidden_rows)}

## 7. 下一阶段可进入设备验证的候选

| 顺序 | 候选 | 验证形式 | 前置条件 | 回退 |
|---|---|---|---|---|
| 1 | 第一批 6 个平台组件 | 单包 `pm disable-user`，每项 ≥24 h | 你确认不需要对应功能 | `pm enable` |
| 2 | `com.alibaba.ailabs.genie.osupdate` | 单包禁用 + 24 h 对比（同 uptime 区间） | 你接受升级链路切断 | `pm enable` + 重启一次 |
| 3 | `com.alibaba.ailabs.genie.guide` / `storagemanager` / `mtp` | 单包禁用观察 | 同上 | `pm enable` |
| 4 | 4 个“先禁用后评估”项 | 单包禁用 24 h，观察语音/账号/开通流程 | 你授权 | `pm enable` |
| 5 | `com.android.providers.userdictionary` | 用户态卸载验证 → 再谈静态删除 | 输入法使用情况确认 | 回推 APK / 回刷 system |

## 8. 不承诺的东西

1. 不承诺任何候选“禁用后释放 X MB RAM”——除 OTA 的 PSS 观测值外没有测量，且禁用≠释放。
2. 不承诺“删除后省 X MB 内存”——删 APK 只省分区空间。
3. 不把“扫描不到引用”当成“可以删”：`spkey` / `alira` / `uuid` / `provision` 都属此类。
4. 不把 OTA 的 21.53% 直接换算成“禁用后省 21.53% CPU”——需要 V1 实测。
"""

open(os.path.join(DOC, 'pruning_priority.md'), 'w', encoding='utf-8').write(prio)

# ---------------------------------------------------------------- a_class_candidates.md
blocks = []
for pkg, c in screening.STATIC_CANDIDATES.items():
    r = rows[pkg]
    blocks.append(f"""### {pkg}

| 项目 | 内容 |
|---|---|
| 包名 / APK 路径 | `{pkg}` / `{r['dir']}` |
| APK 文件大小 | **{r['apk_mb']} MB**（含 lib/oat 后合计 {r['total_mb']} MB） |
| 角色 | {c['role']} |
| 直接依赖 | {c['direct']} |
| 间接依赖 | {c['indirect']} |
| 是否有原厂组件调用 | {c['vendor_refs']} |
| 删除后可能影响 | {c['impact']} |
| 删除风险 | {c['risk']} |
| 是否值得进入后续验证 | **{c['verdict']}** |
""")

not_static = f"""## 4. 体量大但**不**列为静态删除候选

| 包名 / 路径 | 合计 MB | 为什么不删 |
|---|---|---|
| `com.alibaba.ailabs.ar.monitor` / `app/GenieMonitor` | {rows['com.alibaba.ailabs.ar.monitor']['total_mb']} | 见下（rev5.2 撤销删除候选身份） |
| `com.alibaba.ailabs.genie.aicare` / `app/GenieAicare` | {rows['com.alibaba.ailabs.genie.aicare']['total_mb']} | /data/app 覆盖，删 prebuilt 会退化 |
| `com.alipay.arome.app` / `app/AMPE` | {rows['com.alipay.arome.app']['total_mb']} | 12 处 app 级引用，禁用＝关闭小程序/H5 |

- **ar.monitor（GenieMonitor，47.86 MB）——rev5.3：不可删除，但可整包禁用验证**：
  同包内含 `VisionWakeUpService`（`android.intent.action.genieWakeUpService`，**视觉/摄像头唤醒**，属 AVE 引擎）、
  `AVEControlProvider`（`com.alibaba.ailabs.ave.controlProvider`，被 smartapp 引用，**设备控制**）、
  `GenieGestureService`（手势）、`CMCCMediaService`/`AwesomeService`（媒体/聚合）。
  四种能力同包同进程，**未证明可分离** → 只能整包处理：**不可删除**
  （smartapp 引用 `genieWakeUpService`/`geniegesture`/`ave.controlProvider`/`genieallinone` 四个入口，
  S1Settings 引用手势 action）；但操作者已确认不需要设备控制/监控/手势 → **可整包 `pm disable-user` 验证**，
  禁用后需回归语音唤醒与看护。
  详见 [big4_component_review.md](big4_component_review.md)。
- **GenieAicare（18.50 MB）**：设备上由 `/data/app` 覆盖（4.0.26 → 4.0.62），删系统内 prebuilt 会让包退化为
  普通数据区应用（失去 SYSTEM flag 与默认权限授予）→ 不删。
- **AMPE（arome，87.18 MB）**：12 处 app 级引用（`genie.webapps.START/INIT`、`GwaReceiver`），
  禁用它等于关闭小程序/H5 能力 → 需产品决策，不是静态删除对象。
"""

aclass = f"""# A 类静态删除候选（rev5 扩展）

rev1–rev4 的 A 类只有 `app/ES.apk` 一个，且它已被用户保护。本轮重新扫描 system 分区里
**非受保护、非语音链路**的预装组件，按四条线索筛选：

1. 厂商推广/注册类服务（uuid / raShow / AliSpKey / AliProvision）；
2. 演示、引导、帮助类（本镜像中与用户功能无关的一次性组件）；
3. 与核心功能无关的独立应用（逐个核对 app 级引用与 framework 绑定）；
4. 重复或功能重叠（`proxyhandler` vs `pacprocessor`、`externalstorage` vs `mtp` 的 Providers）。

## 0. 筛选结果概览

| 结论 | 数量 | 包 |
|---|---|---|
| 可进入静态删除验证 | {len(screening.STATIC_DELETE)} | {', '.join('`' + p + '`' for p in screening.STATIC_DELETE)} |
| 先禁用观察、再评估删除 | {len(screening.VERIFY_FIRST)} | {', '.join('`' + p + '`' for p in screening.VERIFY_FIRST)} |
| 明确不列为删除候选 | 3 | `com.alibaba.ailabs.ar.monitor`、`com.alibaba.ailabs.genie.aicare`、`com.alipay.arome.app` |

**没有找到“明显无用的推广/演示 App”**：本镜像里的厂商包要么挂在语音/媒体链路上（youku.iot、children、
waft、albums、screensaver、browser），要么是工厂/开通类（emode、provision）。因此本轮**不虚构**删除对象，
只把证据支持的四类小件列出，并把“业务用途不明”如实标注。

## 1. 逐项分析

{''.join(blocks)}
## 2. 依赖与证据口径

| 项 | 口径 |
|---|---|
| 直接依赖 | `dependency_edges.csv` 中 `evidence_class=app` 的入向边（已去除平台 Provider / SDK 噪声） |
| 间接依赖 | framework vdex（boot / boot-framework / services）字符串命中 + BOOT 接收器 + 导出组件 |
| “0 引用”的含义 | 只说明“没有兄弟 App 通过组件/action 点名”，**不说明无人使用**（可能在运行时用隐式调用/反射） |
| 删除风险 | 综合“用途是否明确 + 有无 framework 绑定 + 是否 priv-app/system uid + 收益大小” |

## 3. 与既有分类的关系

这些包的**技术分类保持原样**（都在 C 类），本轮新增的是 `screening_tier` / `screening_batch` /
`screening_note` 三个字段，用于表达“精简候选层次”。技术分类回答“依赖有多深”，
候选层次回答“先动谁”，两者不互相覆盖。

{not_static}
"""

open(os.path.join(DOC, 'a_class_candidates.md'), 'w', encoding='utf-8').write(aclass)
print('pruning_priority.md + a_class_candidates.md written')