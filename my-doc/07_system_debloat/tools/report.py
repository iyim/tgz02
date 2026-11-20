"""Build the decision tables, CSVs and markdown fragments for the debloat report.

Classification is authored here (one row per package dir) and every row carries the
evidence tokens that were actually observed. No numbers are invented: space figures
come from file sizes in the unpacked image, RAM figures come from the device's
`dumpsys meminfo` snapshot in out/device/.
"""
import csv
import json
import os
import re

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DEV = os.path.join(OUT, 'device')
DOC = r'D:\tgz02\OS\system\my-doc\07_system_debloat'

apps = json.load(open(os.path.join(OUT, 'apps.json'), encoding='utf-8'))
refs2 = json.load(open(os.path.join(OUT, 'refs2.json'), encoding='utf-8'))

# ---------------------------------------------------------------- device evidence
pmpaths = {}
for line in open(os.path.join(DEV, 'pm_paths.txt'), encoding='utf-8-sig', errors='replace'):
    parts = line.split()
    if len(parts) >= 2 and parts[0].startswith(('com.', 'android')):
        pmpaths[parts[0]] = parts[1]

flags = {}
cur = None
for line in open(os.path.join(DEV, 'package_flags.txt'), encoding='utf-8-sig', errors='replace'):
    line = line.rstrip()
    if line.startswith('==='):
        cur = line[3:].strip()
        flags.setdefault(cur, {})
    elif cur:
        if 'flags=[' in line:
            flags[cur]['flags'] = line.split('flags=[', 1)[1].split(']')[0].strip()
        elif 'enabled=' in line and 'User 0' in line:
            m = re.search(r'enabled=(\d+)', line)
            if m:
                flags[cur]['enabled'] = m.group(1)
            m = re.search(r'stopped=(\w+)', line)
            if m:
                flags[cur]['stopped'] = m.group(1)

pss = {}
for line in open(os.path.join(DEV, 'meminfo_all.txt'), encoding='utf-8-sig', errors='replace'):
    m = re.match(r'\s+([\d,]+)K: ([\w\.:]+) \(pid', line)
    if m:
        pss[m.group(2)] = int(m.group(1).replace(',', ''))

CPU = {}
for line in open(os.path.join(DEV, 'cpuinfo.txt'), encoding='utf-8-sig', errors='replace'):
    m = re.match(r'\s+([\d\.]+)% \d+/([\w\.:]+):', line)
    if m:
        CPU[m.group(2)] = float(m.group(1))

wakelocks = []
in_wl = False
for line in open(os.path.join(DEV, 'power.txt'), encoding='utf-8-sig', errors='replace'):
    if line.startswith('Wake Locks'):
        in_wl = True
        continue
    if in_wl:
        if line.strip() == '':
            break
        wakelocks.append(line.strip())

alarms = []
in_al = False
for line in open(os.path.join(DEV, 'alarm.txt'), encoding='utf-8-sig', errors='replace'):
    if 'Top Alarms:' in line:
        in_al = True
        continue
    if in_al:
        if line.strip() == '':
            break
        alarms.append(line.strip())

running_services = {}
for line in open(os.path.join(DEV, 'services_all.txt'), encoding='utf-8-sig', errors='replace'):
    m = re.search(r'\* ServiceRecord\{\w+ u0 ([\w\.]+)/([\w\.\$]+)', line)
    if m:
        running_services.setdefault(m.group(1), set()).add(m.group(2))

# ---------------------------------------------------------------- classification (authored)
# fields: cls, reason, evidence grade, removal effect, disable-safe, protect-note
CLASS = {
 'app/AliGenieService': dict(
   cls='D', note='原厂语音链路核心服务（com.aligenie.ags），system uid；对外提供 com.aligenie.ic.icProvider 与 ACTION_SCREEN_SAVER，降噪后仍有 5 个包（smartapp / AliSystemUI / GenieScreensaver / S1Settings / AliVideoPlayer）引用',
   ev='已验证', how='不可禁用：禁用后 smartapp 语音链路直接断链', grade_note='manifest + 跨包字符串 + 运行时 AccessibilityService 注册'),
 'app/smartapp': dict(
   cls='D', note='主助手容器（com.alibaba.ailabs.genie.smartapp），3 进程常驻，171 个组件，唯一持有 Accessibility 手势/AbcService 链',
   ev='已验证', how='不可禁用：AI 改造主链路', grade_note='meminfo PSS 78+74+64MB，cpuinfo 72%'),
 'app/GenieMonitor': dict(
   cls='D', note='AVE 视觉/唤醒引擎（VisionWakeUpService、GenieGestureService、AVEControlProvider），自带 MNN 推理库',
   ev='较可信', how='不可禁用：Wakeup/视觉链路', grade_note='manifest 中 3 个 genie* 可访问 Service + S1Settings/smartapp 引用 action'),
 'app/GenieIoT': dict(
   cls='D', note='IoT 设备控制（HouseService 常驻），smarthome 技能依赖',
   ev='已验证', how='不可禁用：设备控制', grade_note='meminfo iot:service 22MB + services_all HouseService'),
 'app/GenieLauncher': dict(
   cls='D', note='系统默认 HOME（resolve-activity 返回 AdultHomeActivity）',
   ev='已验证', how='不可禁用：桌面', grade_note='cmd package resolve-activity 实测'),
 'app/AliSystemUI': dict(
   cls='D', note='SystemUI（com.android.systemui），框架绑定',
   ev='已验证', how='不可禁用：无 UI', grade_note='meminfo 20MB + 常驻'),
 'app/S1Settings': dict(
   cls='D', note='系统设置（com.android.settings）+ DynamicSettingsService，被 8 个包引用',
   ev='已验证', how='不可禁用：设置入口/动态配置', grade_note='framework + 跨包 action 引用 + 运行中'),
 'app/webview': dict(
   cls='D', note='WebView provider（com.android.webview），framework 侧 com.android.webview 强绑定；GenieBrowser/Waft/smartapp 均需',
   ev='已验证', how='不可禁用：所有 H5 页面崩溃', grade_note='framework 字符串 + 3 个包引用'),
 'app/MtkBluetooth': dict(
   cls='D', note='蓝牙栈（com.android.bluetooth），A2DP/HFP 常驻服务',
   ev='已验证', how='不可禁用：蓝牙设备断连', grade_note='services_all A2dpService/GattService'),
 'priv-app/SettingsProvider': dict(
   cls='D', note='设置存储后端，被 33 处引用',
   ev='已验证', how='不可禁用：系统无法启动设置读写', grade_note='framework 强依赖'),
 'priv-app/MtkMediaProvider': dict(
   cls='D', note='MediaStore/媒体库，被 37 处引用（相册/播放器/文件）',
   ev='已验证', how='不可禁用：媒体扫描失败', grade_note='跨包 authority/组件引用'),
 'priv-app/ContactsProvider': dict(
   cls='D', note='联系人存储（android.process.acore）',
   ev='已验证', how='不可禁用：acore 进程崩溃', grade_note='共享 uid android.uid.shared'),
 'priv-app/CalendarProvider': dict(
   cls='D', note='日历存储，语音日程技能依赖',
   ev='较可信', how='不可禁用：日程写入失败', grade_note='AMPE/easytouch 引用 authority com.android.calendar'),
 'priv-app/DownloadProvider': dict(
   cls='D', note='下载服务，被 18 处引用（应用更新/媒体下载）',
   ev='较可信', how='不可禁用：smartapp 下载链路', grade_note='跨包组件引用 + framework'),
 'priv-app/PackageInstaller': dict(
   cls='D', note='APK 安装器，adb install / 应用更新必需',
   ev='已验证', how='不可禁用：T5 侧装 APK 失败', grade_note='framework 绑定 install intent'),
 'priv-app/Shell': dict(
   cls='D', note='com.android.shell（adb shell 身份），magisk/smartapp 引用',
   ev='已验证', how='不可禁用：adb/root 调试链路', grade_note='跨包引用 + magisk 依赖'),
 'priv-app/ExternalStorageProvider': dict(
   cls='D', note='存储访问框架后端',
   ev='已验证', how='不可禁用：文件选择器崩溃', grade_note='framework StorageManager 绑定'),
 'priv-app/DefaultContainerService': dict(
   cls='D', note='APK 解析容器（安装/包扫描）',
   ev='已验证', how='不可禁用：安装与包信息异常', grade_note='framework 绑定'),
 'priv-app/InputDevices': dict(
   cls='D', note='输入设备布局提供者（framework 必需）',
   ev='已验证', how='不可禁用：输入映射异常', grade_note='framework 引用'),
 'priv-app/ExtServices': dict(
   cls='D', note='android.ext.services（framework 扩展：通知/文本分类）',
   ev='已验证', how='不可禁用：framework 绑定失败', grade_note='etc/permissions 白名单'),
 'app/ExtShared': dict(
   cls='D', note='android.ext.shared（共享库宿主）',
   ev='较可信', how='不建议删除：被 ExtServices 依赖', grade_note='AOSP 基础组件'),
 'app/Osupdate': dict(
   cls='B', note='OTA 升级（persistent=true，snapshot 中 20% CPU / 17% user），framework 字符串引用其 RebootUpdateActivity',
   ev='已验证', how='可禁用（pm disable-user）；升级前再启用', grade_note='dumpsys cpuinfo + flags PERSISTENT + services.vdex 字符串'),
 'app/AMPE': dict(
   cls='B', note='支付宝/Genie 小程序容器（com.alipay.arome.app，87MB）：被 smartapp、Guide、GenieAicare、GenieBrowser、GenieIoT、GenieLauncher 以 com.alibaba.ailabs.genie.webapps.START/INIT 与 GwaReceiver 显式引用；快照时刻未运行',
   ev='较可信', how='可禁用（不影响其它包启动）；删除需先确认小程序/H5 技能全部下线', grade_note='跨包 action 引用（非 SDK 噪声）+ meminfo 无进程'),
 'app/dangbei.apk': dict(
   cls='B', note='当贝桌面（com.dangbei1.tvlauncher）：96MB PSS、JPush/XMPush 双推送、527 次闹钟唤醒、62 次 COCKROACH 唤醒；非默认 HOME（HOME 为 GenieLauncher）；降噪后无应用级入向引用（唯一命中为华为推送 SDK 字符串）',
   ev='已验证', how='可禁用；RAM 收益最直接', grade_note='meminfo + alarm Top + cpuinfo xmpushservice'),
 'app/easytouch.apk': dict(
   cls='B', note='悬浮触控助手（com.shere.assistivetouch），persistent=true，两进程 38MB PSS',
   ev='已验证', how='可禁用；确认不需要悬浮球后', grade_note='flags PERSISTENT + meminfo 21.5MB/17.0MB'),
 'app/qxg.apk': dict(
   cls='B', note='权限狗 AppOps 工具（com.web1n.permissiondog），预装第三方工具，未运行',
   ev='较可信', how='可禁用；权限调试需要时再启用', grade_note='无进程 + 无入向引用'),
 'app/Guide': dict(
   cls='B', note='开机引导（device_provisioned=1、user_setup_complete=1，已完成使命）',
   ev='已验证', how='可禁用（已过引导阶段）', grade_note='settings 实测 + Guide 引用 GenieChildren'),
 'priv-app/StorageManager': dict(
   cls='B', note='存储管理 UI（AOSP），非服务端依赖',
   ev='较可信', how='可禁用', grade_note='无入向引用 + 无进程'),
 'priv-app/MtpDocumentsProvider': dict(
   cls='B', note='MTP 文档提供者（PC 复制文件用）',
   ev='较可信', how='可禁用；需 MTP 时再启用', grade_note='无入向引用'),
 'priv-app/StatementService': dict(
   cls='B', note='App Links 数字资产校验（com.android.statementservice）',
   ev='较可信', how='可禁用；不用 App Links 无影响', grade_note='无入向引用'),
 'priv-app/VpnDialogs': dict(
   cls='B', note='VPN 授权对话框',
   ev='较可信', how='可禁用', grade_note='无入向引用'),
 'app/BluetoothMidiService': dict(
   cls='B', note='BLE-MIDI 服务，无入向引用、无进程',
   ev='较可信', how='可禁用；无 MIDI 外设无影响', grade_note='无入向引用'),
 'app/CaptivePortalLogin': dict(
   cls='B', note='强制门户登录页，局域网直连场景无用',
   ev='较可信', how='可禁用；接入需认证 Wi-Fi 时再启用', grade_note='无入向引用'),
 'app/CompanionDeviceManager': dict(
   cls='B', note='伴生设备配对（BLE 配对引导）',
   ev='较可信', how='可禁用', grade_note='无入向引用'),
 'app/PacProcessor': dict(
   cls='B', note='PAC 代理脚本解析服务（framework 仅在配置 PAC 时绑定）',
   ev='较可信', how='可禁用；不配 PAC 无影响', grade_note='无入向引用'),
 'app/GenieRTC': dict(
   cls='C', note='RTC/音视频通话（RTCNotifyService 常驻 22MB），被 smartapp/GenieAicare/GenieAlbums/GenieIoT 引用；系统内为 prebuilt，设备上已被 /data/app 版本覆盖',
   ev='已验证', how='暂留：断链风险未排除', grade_note='meminfo 22MB + services_all RTCNotifyService + 更新覆盖'),
 'app/Waft': dict(
   cls='C', note='H5 技能运行时（当前前台为 WaftTplActivity），疑似由 smartapp/launcher 拉起，无直接显式引用',
   ev='较可信', how='暂留：AI 技能页渲染依赖未证实', grade_note='dumpsys activity 前台 activity'),
 'app/AliVideoPlayer': dict(
   cls='C', note='视频播放器（com.ailabs.youku.iot，45MB）：smartapp 引用其 NewsPlayer/CommonPlayer/ShortVideo 三个播放器 Activity，GenieScreensaver 引用 PlayerProxyService（降噪后 4 处组件 + 1 处 action，来自 2 个包）',
   ev='较可信', how='暂留：内容播放链路待动态验证', grade_note='跨包组件引用（非 SDK 噪声）'),
 'app/GenieScreensaver': dict(
   cls='C', note='屏保/白日梦：入向 2 处（GenieAicare 组件引用、authority），且 services.vdex 含其包名',
   ev='较可信', how='暂留：屏保链路', grade_note='跨包组件引用 + framework 字符串'),
 'app/GenieAlbums': dict(
   cls='C', note='相册（含 com.tld.albumprovider），GenieScreensaver 引用',
   ev='较可信', how='暂留：屏保取图依赖', grade_note='入向组件引用'),
 'app/GenieBrowser': dict(
   cls='C', note='浏览器（UC 内核，含 sandboxed 进程服务），UI 入口之一',
   ev='未知', how='暂留：与 Waft/webview 关系待定', grade_note='无入向引用但含前台 UI 能力'),
 'app/GenieChildren': dict(
   cls='C', note='儿童模式（16 处入向引用：Guide/S1Settings/smartapp/AliSystemUI）',
   ev='较可信', how='暂留：设置与语音均有入口', grade_note='跨包组件引用'),
 'app/GenieAicare': dict(
   cls='C', note='亲情关怀/远程看护，被 smartapp 侧引用',
   ev='较可信', how='暂留：技能入口未确认下线', grade_note='spk 引用'),
 'app/Emode': dict(
   cls='C', note='工厂 MMI/老化测试（MASTER_CLEAR、REBOOT 等系统权限），产线与维修依赖',
   ev='较可信', how='暂留：工厂/维修入口，禁用需产线确认', grade_note='manifest 权限 + S1Settings/AliProvision 引用'),
 'app/AliSpKey': dict(
   cls='C', note='安全密钥服务（system uid，0.13MB）',
   ev='未知', how='暂留：密钥/签名链路不明', grade_note='无引用但 uid 为 system'),
 'app/UUID': dict(
   cls='C', note='设备 UUID 注册（com.aliyun.uuid，system uid，boot 接收器）',
   ev='较可信', how='暂留：云端设备身份', grade_note='manifest boot receiver'),
 'priv-app/AliProvision': dict(
   cls='C', note='YunOS 出厂配置（com.yunos.tv.provision，framework 字符串含包名）',
   ev='较可信', how='暂留：framework 有引用', grade_note='services.vdex 字符串'),
 'app/KeyChain': dict(
   cls='C', note='密钥链 UI（android.security.KeyChain 后端 UI）',
   ev='未知', how='暂留：TLS 客户端证书场景', grade_note='AOSP 组件，无引用'),
 'app/CertInstaller': dict(
   cls='C', note='证书安装器（用户证书）',
   ev='未知', how='暂留：抓包/证书注入场景可能用到', grade_note='AOSP 组件'),
 'app/UserDictionaryProvider': dict(
   cls='C', note='输入法用户词典 Provider',
   ev='未知', how='暂留：输入法依赖未验证', grade_note='authority user_dictionary'),
 'priv-app/FusedLocation': dict(
   cls='C', note='融合定位 provider（framework 绑定）',
   ev='未知', how='暂留：定位类技能', grade_note='framework 依赖'),
 'priv-app/ProxyHandler': dict(
   cls='C', note='全局 HTTP 代理处理（framework 绑定）',
   ev='未知', how='暂留：抓包/代理调试可能用到', grade_note='AOSP 组件'),
 'app/magisk.apk': dict(
   cls='C', note='Magisk 安装包副本（实际运行版本为 /data/app 27.0），保留作 root 恢复手段',
   ev='已验证', how='暂留：删除不回收空间但失去离线恢复包', grade_note='pm path /data/app + pm path 系统副本'),
 'app/ES.apk': dict(
   cls='A', note='ES 文件浏览器（com.estrongs.android.pop）：第三方预装，唯一 LAUNCHER 入口为自身，无入向引用、无进程、无系统权限',
   ev='较可信', how='可删除（或先禁用观察）', grade_note='bundled 过滤后 0 入向；meminfo 无进程'),
 'app/raShow': dict(
   cls='C', note='raShow（com.alira.info，含 DreamerReceiver/WRITE_SECURE_SETTINGS，0.79MB）',
   ev='未知', how='暂留：功能与依赖均不明', grade_note='仅 manifest'),
}

for e in apps:
    if e['dir'] not in CLASS:
        raise SystemExit('unclassified: ' + e['dir'])


def fmt_mb(b):
    return '%.2f' % (b / 1048576)


rows = []
for e in apps:
    d = e['dir']
    m = e['manifest']
    pkg = m['package']
    c = CLASS[d]
    comps = len(m['activities']) + len(m['services']) + len(m['receivers']) + len(m['providers'])
    inbound = refs2['inbound'].get(d, [])
    strong = [x for x in inbound if x['kind'] in ('component', 'authority')
              and not (x['kind'] == 'authority' and x['token'].split('.')[0] in ('com.android', 'media', 'settings'))]
    act = [x for x in inbound if x['kind'] == 'action']
    amb = [x for x in inbound if x['kind'] == 'action_amb']
    running = {p: v for p, v in pss.items()
               if p == pkg or p.startswith(pkg + ':') or p.startswith(pkg + '.')}
    rows.append({
        'dir': d, 'pkg': pkg, 'version': m['versionName'], 'cls': c['cls'],
        'apk_mb': fmt_mb(e['breakdown']['apk']), 'lib_mb': fmt_mb(e['breakdown']['lib']),
        'oat_mb': fmt_mb(e['breakdown']['odex'] + e['breakdown']['vdex'] + e['breakdown']['oat_other']),
        'total_mb': fmt_mb(e['total_bytes']), 'comps': comps,
        'persistent': bool(m['persistent']) or 'PERSISTENT' in flags.get(pkg, {}).get('flags', ''),
        'uid': m['sharedUserId'] or '', 'min_sdk': m['minSdk'], 'target': m['targetSdk'],
        'device_path': pmpaths.get(pkg, '未安装/无路径'),
        'pss_kb': sum(running.values()), 'pss_detail': running,
        'cpu': CPU.get(pkg, 0.0), 'services_running': sorted(running_services.get(pkg, [])),
        'ref_strong': len(strong), 'ref_action': len(act), 'ref_amb': len(amb),
        'ref_detail': {'component_or_authority': strong[:8], 'action': act[:8]},
        'note': c['note'], 'ev': c['ev'], 'how': c['how'], 'grade_note': c['grade_note'],
        'has_oat': e.get('has_oat', False), 'abis': e.get('abis', []),
        'boot_receivers': [x['name'] for x in m['receivers'] if x.get('boot')],
        'launcher': [x['name'] for x in m['activities'] if x.get('launcher')],
        'providers': [{'name': p['name'], 'authorities': p['authorities'], 'exported': p['exported']}
                      for p in m['providers']],
        'permissions': m['permissions'],
    })

rows.sort(key=lambda r: (r['cls'], r['dir']))
os.makedirs(DOC, exist_ok=True)

with open(os.path.join(DOC, 'app_inventory.csv'), 'w', newline='', encoding='utf-8-sig') as f:
    w = csv.writer(f)
    w.writerow(['dir', 'package', 'version', 'class', 'apk_MB', 'lib_MB', 'oat_MB', 'total_MB',
                'components', 'persistent', 'sharedUserId', 'minSdk', 'targetSdk', 'device_path',
                'pss_kb', 'cpu_pct', 'ref_strong', 'ref_action', 'ref_amb', 'evidence', 'note'])
    for r in rows:
        w.writerow([r['dir'], r['pkg'], r['version'], r['cls'], r['apk_mb'], r['lib_mb'], r['oat_mb'],
                    r['total_mb'], r['comps'], r['persistent'], r['uid'], r['min_sdk'], r['target'],
                    r['device_path'], r['pss_kb'], r['cpu'], r['ref_strong'], r['ref_action'],
                    r['ref_amb'], r['ev'], r['note']])

json.dump(rows, open(os.path.join(DOC, 'app_inventory.json'), 'w', encoding='utf-8'),
          indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- aggregates
by_cls = {}
for r in rows:
    a = by_cls.setdefault(r['cls'], {'n': 0, 'total': 0.0, 'apk': 0.0, 'lib': 0.0, 'oat': 0.0, 'pss': 0})
    a['n'] += 1
    a['total'] += float(r['total_mb'])
    a['apk'] += float(r['apk_mb'])
    a['lib'] += float(r['lib_mb'])
    a['oat'] += float(r['oat_mb'])
    a['pss'] += r['pss_kb']

summary = {
    'packages': len(rows),
    'total_mb': round(sum(float(r['total_mb']) for r in rows), 2),
    'by_class': {k: {'packages': v['n'], 'total_mb': round(v['total'], 2), 'apk_mb': round(v['apk'], 2),
                     'lib_mb': round(v['lib'], 2), 'oat_mb': round(v['oat'], 2),
                     'pss_mb': round(v['pss'] / 1024, 1)} for k, v in sorted(by_cls.items())},
    'device_total_ram_mb': 984.99,
    'device_used_pss_mb': round(879079 / 1024, 1),
    'device_free_mb': round(223708 / 1024, 1),
    'wakelocks': wakelocks, 'top_alarms': alarms,
}
json.dump(summary, open(os.path.join(DOC, 'summary_stats.json'), 'w', encoding='utf-8'),
          indent=1, ensure_ascii=False)
print(json.dumps(summary['by_class'], indent=1, ensure_ascii=False))
print('packages', summary['packages'], 'total MB', summary['total_mb'])
