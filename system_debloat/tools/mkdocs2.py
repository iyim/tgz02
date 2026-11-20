"""Generate app_dependency_analysis.md, app_removal_recommendations.md,
risk_assessment.md and optimization_plan.md."""
import json
import os
import re

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DEV = os.path.join(OUT, 'device')
DOC = r'D:\tgz02\OS\system\system_debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
refs2 = json.load(open(os.path.join(OUT, 'refs2.json'), encoding='utf-8'))
apps = json.load(open(os.path.join(OUT, 'apps.json'), encoding='utf-8'))
so = json.load(open(os.path.join(OUT, 'so_refs.json'), encoding='utf-8'))

R = {r['dir']: r for r in rows}
A = {e['dir']: e for e in apps}
PKG = {r['dir']: r['pkg'] for r in rows}
DIR = {v: k for k, v in PKG.items()}
by_cls = {k: [r for r in rows if r['cls'] == k] for k in 'ABCD'}
SDK_PREFIX = ('com.xiaomi.', 'com.taobao.', 'org.android.agoo', 'com.google.android.gms',
              'com.google.firebase', 'mtopsdk.', 'anetwork.', 'com.uc.', 'com.amap.',
              'com.alipay.mobile.', 'com.taobao.accs', 'org.eclipse.paho', 'com.talkingdata.',
              'com.huawei.', 'com.baidu.', 'com.sina.', 'com.tencent.', 'com.umeng.')
PLATFORM_AUTH = ('media', 'downloads', 'settings', 'com.android.contacts', 'com.android.calendar',
                 'com.android.providers.contacts', 'com.android.providers.media',
                 'com.android.providers.downloads', 'com.android.providers.settings',
                 'user_dictionary', 'call_log', 'com.android.providers.telephony',
                 'telephony', 'mms-sms')


def md(head, rows_):
    out = ['| ' + ' | '.join(head) + ' |', '|' + '|'.join(['---'] * len(head)) + '|']
    for r in rows_:
        out.append('| ' + ' | '.join(str(c) for c in r) + ' |')
    return '\n'.join(out)


def strong_in(d):
    res = []
    for x in refs2['inbound'].get(d, []):
        if x['kind'] not in ('component', 'authority', 'action'):
            continue
        if x['token'].startswith(SDK_PREFIX):
            continue
        if x['kind'] == 'authority' and x['token'] in PLATFORM_AUTH:
            continue
        res.append(x)
    return res


def platform_in(d):
    return [x for x in refs2['inbound'].get(d, [])
            if x['kind'] == 'authority' and x['token'] in PLATFORM_AUTH]


running_services = {}
for line in open(os.path.join(DEV, 'services_all.txt'), encoding='utf-8-sig', errors='replace'):
    m = re.search(r'\* ServiceRecord\{\w+ u0 ([\w\.]+)/([\w\.\$]+)', line)
    if m:
        running_services.setdefault(m.group(1), set()).add(m.group(2))

# ---------------------------------------------------------------- dependency analysis
edges = []
for d in R:
    for x in strong_in(d):
        edges.append((x['src'], d, x['kind'], x['token']))
edges.sort(key=lambda e: (e[1], e[0]))

edge_rows = []
seen = {}
for src, dst, kind, tok in edges:
    key = (dst, src)
    seen.setdefault(key, []).append(f'{kind}:{tok[:46]}')
for (dst, src), toks in sorted(seen.items(), key=lambda kv: (kv[0][0], -len(kv[1]))):
    edge_rows.append(['`' + PKG[dst] + '`', '`' + PKG[src] + '`', len(toks), '<br>'.join(toks[:3])])

fw_rows = [[f'`{p}`', n, PKG.get(DIR.get(p), '')] for p, n in
           sorted(refs2['framework']['pkg_hits'].items(), key=lambda x: -x[1])]

uid_groups = {}
for e in apps:
    m = e['manifest']
    uid_groups.setdefault(m['sharedUserId'] or '(无)', []).append(m['package'])
uid_rows = [[k, len(v), ', '.join('`' + x + '`' for x in sorted(v)[:6]) + ('…' if len(v) > 6 else '')]
            for k, v in sorted(uid_groups.items(), key=lambda x: -len(x[1]))]

prov_rows = []
for e in apps:
    for p in e['manifest']['providers']:
        if p.get('authorities'):
            prov_rows.append(['`' + e['manifest']['package'] + '`', p['authorities'], p['name'], p['exported']])

lib_rows = []
for d, e in A.items():
    libdir = os.path.join(r'D:\tgz02\OS\system', d.replace('/', os.sep), 'lib')
    names = set()
    if os.path.isdir(libdir):
        for abi in os.listdir(libdir):
            p = os.path.join(libdir, abi)
            if os.path.isdir(p):
                names |= {x for x in os.listdir(p) if x.endswith('.so')}
    if names:
        lib_rows.append(['`' + e['manifest']['package'] + '`', R[d]['lib_mb'],
                         ', '.join('`' + n + '`' for n in sorted(names)[:8])])

svc_rows = []
for pkg, svcs in sorted(running_services.items()):
    svc_rows.append(['`' + pkg + '`', len(svcs), '<br>'.join('`' + s + '`' for s in sorted(svcs)[:4])])

per_rows = [[r['pkg'], '是' if r['persistent'] else '', len(r['boot_receivers']),
             ', '.join(r['boot_receivers'][:2]), R[r['dir']]['uid']]
            for r in rows if r['persistent'] or r['boot_receivers']]

dep = f"""# 依赖关系分析

## 1. 依赖模型

分析把“依赖”拆成 6 类，分别取证，避免把“名字像”当成“有依赖”：

| 依赖类型 | 判定依据 | 危害（若删除） | 证据等级上限 |
|---|---|---|---|
| 静态库依赖 | APK 内置 `lib/<abi>/*.so` 被自身 JNI 加载；或代码引用系统 `lib/*.so` | 自身崩溃（`UnsatisfiedLinkError`） | 已验证 |
| framework 依赖 | 包名 / 组件出现在 `framework/arm/*.vdex`、`oat/arm/services.vdex` 字符串中 | 系统服务调用失败、开机异常 | 较可信 |
| Provider 依赖 | 别的包字符串里出现本包 `authorities` | 跨进程查询返回 null / 抛异常 | 较可信 |
| 显式组件依赖 | 别的包字符串里出现本包组件全限定名，且该包自身不含该类的 `L…;` 描述符（非 SDK 打包） | `ActivityNotFound` / `ClassNotFound` | 较可信 |
| 隐式 intent 依赖 | 别的包含本包声明的**私有 action**（非 `android.*`，且只被本包声明） | 功能静默失效（无异常，最难发现） | 较可信 |
| 共享 uid 依赖 | `sharedUserId=android.uid.system` 等，共享进程/权限域 | 权限被回收、跨包 Binder 调用失败 | 已验证 |

## 2. 降噪规则（为什么表里的数字比“字符串命中”少很多）

1. **平台 intent 剔除**：`android.intent.action.*`、`android.net.*` 等由 framework 定义，几乎每个 APK 的
   intent-filter 里都有，命中它不代表应用间依赖。
2. **vendored SDK 剔除**：若源包自身的字符串里存在目标组件的类型描述符 `L<包/类>;`，说明该类被**复制打包**进源包
   （典型：小米推送、淘宝 accs、agoo、GMS、mtopsdk、UC 内核），不算对目标 APK 的依赖。
   未加这条过滤时，`dangbei.apk` 会凭空得到 21 条“入向引用”，全部来自 AMPE/AliSystemUI/AliVideoPlayer 里的
   推送 SDK 副本。
3. **多 owner 剔除**：同一 action / 组件被 ≥2 个包声明 → 归入 *ambiguous*，不作为任何单包的依赖证据。
4. **短名剔除**：只保留至少 3 段的全限定组件名（否则 `BaseActivity`、`Helper` 这种类名会在全盘命中）。
5. **未知命名空间单列**：`com.talkingdata.*`、`com.umeng.*` 等统计 SDK 的 action 单列为噪声。

## 3. 跨包显式引用（应用级，已降噪）

仅列出降噪后仍有应用级入向引用的目标包；`源包` 为字符串中出现证据的一方。

{md(['目标包', '源包', '证据数', '样例 token'], edge_rows) if edge_rows else '（无）'}

**读法**：`com.aligenie.ags`（AliGenieService）被 `smartapp`、`AliSystemUI`、`GenieScreensaver`、`S1Settings`
以 authority `com.aligenie.ic.icProvider` 与私有 action `ACTION_SCREEN_SAVER` 引用——这是语音链路的硬连接。
`com.alipay.arome.app`（AMPE）被 6 个 Genie 包以 `com.alibaba.ailabs.genie.webapps.START/INIT` 与
`GwaReceiver` 组件引用——它是小程序 / H5 技能容器，属真实耦合（而非 SDK 噪声）。
`ES.apk`、`qxg.apk`、`Guide` 在降噪后**没有任何**应用级入向引用；`dangbei.apk`、`Waft`、`easytouch.apk`
的命中全部落在已知推送 / 统计 SDK 命名空间，已在降噪中剔除。

## 3.1 平台 Provider 的常规使用（不作为删除依据）

AOSP 的 `media`、`downloads`、`settings`、`com.android.contacts`、`com.android.calendar` 等 authority
是全平台常量，被几乎所有 APK 字符串命中，属“正常使用系统 Provider”，不是包间耦合：

{md(['目标 Provider', '使用方数量', '使用方（节选）'],
    [[ '`' + PKG[d] + '`', len({x['src'] for x in platform_in(d)}),
       ', '.join(sorted({PKG.get(x['src'], x['src']) for x in platform_in(d)})[:6])]
     for d in sorted(R, key=lambda d: -len({x['src'] for x in platform_in(d)}))
     if platform_in(d)][:10])}

## 4. framework / system_server 侧点名

对 `framework/arm/boot.vdex`（167,839 条字符串）、`boot-framework.vdex`（143,717 条）、
`oat/arm/services.vdex`（220,518 条）检索全部系统包名，命中情况如下（命中数 = 字符串出现次数）：

{md(['包名', '命中数', '对应目录'], fw_rows)}

要点：
- `services.vdex` 中出现 `com.alibaba.ailabs.genie.osupdate.front.RebootUpdateActivity`——framework 直接点名
  OTA 的**具体 Activity 类**，说明“重启升级”流程由 system_server 侧驱动。删 Osupdate 会破坏该流程，故只建议禁用。
- 同一 dex 还出现 `com.alibaba.ailabs.genie.launcher`、`...screensaver`、`...rtc`、`...smartapp`、`...albums`、
  `...ar.monitor`、`com.alipay.arome.app`、`com.aliyun.uuid`、`com.yunos.tv.provision` 等包名，
  说明 YunOS/MTK 在 SystemServer 里内置了这些包的白名单/钩子。
- `com.android.settings`(13)、`com.android.systemui`(12)、`com.android.bluetooth`(7)、`com.android.webview`(4)
  属平台自身耦合，进一步印证 D 类判定。

## 5. 共享 uid（进程/权限域）分组

{md(['sharedUserId', '包数', '成员（节选）'], uid_rows)}

`android.uid.system` 下的 18 个包共享同一 Linux uid，因此：
- 任一包被删除后，其余包**不会**因为 uid 变化而失效（uid 组按包计算）；
- 但依赖该包 **Binder 服务 / Provider** 的调用方会失败，且失败发生在 system uid 下，`logcat` 里表现为
  `SecurityException` 或 `DeadObjectException`，容易被误判为系统故障。
- 这 18 个包中，`AliSpKey`、`UUID`、`raShow`、`Emode` 的功能尚未查清 → 一律 C。

## 6. ContentProvider / authority 归属（非 AOSP）

Provider 会在**任何进程查询它的瞬间**把宿主进程拉起，是“隐形常驻”的主要来源。本机非 AOSP 的 Provider 如下：

{md(['宿主包', 'authorities', 'Provider 类', 'exported'], prov_rows[:40])}

其中值得注意的“保活型 Provider”：
- `com.alibaba.ailabs.genie.smartapp` 声明了 `com.alibaba.ailabs.genie.smartapp.GenieRegistryInstaller`，
  其实现类为 `com.alibaba.genie.waft.gcs.registry.GenieRegistryInstaller`——**Waft 的 GCS 组件被 smartapp 内嵌**，
  这是 `Waft` 与主助手之间的实证耦合（因此 Waft 归 C 而非 A）。
- `com.android.arch.lifecycle` 之类 `lifecycle-process` Provider（多个 Ali 应用都有）会在开机时被系统实例化，
  属“故意保活”，禁用对应包即可一并消除。
- `com.alipay.arome.app` 有 17 个 Provider（`configprovider`、`PermissionProvider`、`arome.provider` 等），
  只要有任何调用方查询就会拉起 87 MB 的小程序运行时 → 禁用比保留更省资源。

## 7. native 库依赖

### 7.1 包内自带 .so（随 APK 安装，删除即消失）

{md(['包名', 'lib MB', '.so 文件（节选）'], lib_rows)}

语音/视觉链路的 native 依赖集中在：`AliGenieService`（`libaligenie_ic.so`、`libcrashsdk.so`、`liblogProducer.so`）、
`GenieMonitor`（`libMNN_CL.so`、`libmnnface.so`、`libmnnkitcore.so` —— MNN 推理 + 人脸）、
`Waft`（4.13 MB，H5/JS 运行时）、`AMPE`（61.01 MB，支付宝小程序容器，体积主要在此）。

### 7.2 系统 `lib/` 引用

`system/lib` 共 482 个 `.so`（`lib/hw` 5 个 HAL、`lib/vndk-sp` 为 VNDK）。扫描各包字符串后，被引用最多的系统库为
`libandroid.so`、`libc.so`、`libm.so`、`liblog.so`、`libmediandk.so`、`libOpenSLES.so`、`libsqlite.so`
——均为 NDK 公共库，不做逐个包列举。**结论：没有任何一个 App 依赖“只被它使用”的私有系统 .so**，
因此删 App 不会造成系统库悬空；反过来删 `lib/*.so` 会同时打断多个 App，属禁止操作。

## 8. 启动与常驻链路（运行时常驻证据）

### 8.1 persistent / BOOT_COMPLETED

{md(['包名', 'persistent', 'BOOT 接收器数', '接收器', 'sharedUserId'], per_rows)}

只有 2 个包 `persistent=true`：`com.shere.assistivetouch`（悬浮触控）、`com.alibaba.ailabs.genie.osupdate`（OTA）。
`persistent` 由 ActivityManager 在开机时强制拉起并**杀不掉**，是 RAM 占用的第一优先级清理对象。

### 8.2 快照时刻仍在运行的 Service

{md(['包名', 'Service 数', 'Service（节选）'], svc_rows)}

### 8.3 唤醒锁（`dumpsys power`，2026-11-20 16:03）

```
{chr(10).join(stats['wakelocks'])}
```

`NativeService` ×2 由 smartapp 的两个进程持有（`pid 29434` / `29413`），`ScreenWakeManager` 由
`smartapp:business`（`pid 29502`）持有，`AudioIn` 由 audioserver 代 `uid 1000` 持有——**语音常听链路**的实证。
这三个锁意味着设备在“待机”时 CPU 不会真正休眠，符合原厂“随时唤醒”的设计。

### 8.4 闹钟唤醒 TOP（`dumpsys alarm`）

```
{chr(10).join(stats['top_alarms'][:12])}
```

- `com.dangbei1.tvlauncher`：JPush `AlarmReceiver` 527 次 + 小米 `COCKROACH` 62 次唤醒 —— 第三方推送常驻。
- `com.aligenie.ags`：`ALIICX_HEART_BEAT` 2,621 次 —— 原厂心跳，属预期行为。
- `com.alibaba.ailabs.genie.rtc`：`COCKROACH` 29 次唤醒 —— RTC 也在用小米推送通道。

## 9. 四条关键链路的结论

| 链路 | 组成 | 结论 |
|---|---|---|
| 语音（唤醒→ASR→技能） | `AliGenieService` + `smartapp`(`:core`/`:business`) + `GenieMonitor`(AVE Wakeup/Gesture) + native `libaligenie_ic.so` | 全部 D。运行时持有长唤醒锁、占 72% CPU 峰值，是“核心但昂贵”的链路；优化只能靠禁用非语音应用腾资源，不能动它 |
| UI（桌面/设置/系统栏） | `GenieLauncher`(HOME) + `AliSystemUI` + `S1Settings` + `Waft`(技能页) + `webview` | 全部 D/C。`Waft` 因前台渲染 + 被 smartapp 内嵌归 C |
| 设备控制（IoT） | `GenieIoT`(`HouseService`) + `GenieRTC`(通知/通话) + Provider `iot.tmp.service` | `GenieIoT` D；`GenieRTC` C（有 22 MB 常驻，但断链风险未排除） |
| OTA | `Osupdate`(persistent) + framework 的 `RebootUpdateActivity` | B：可禁用，升级窗口再启用；删除会破坏 framework 侧重启升级流程 |
"""
open(os.path.join(DOC, 'app_dependency_analysis.md'), 'w', encoding='utf-8').write(dep)
print('app_dependency_analysis.md written', len(dep))
