"""Build the rev5.3 device baseline artefacts (read-only data only).

Inputs (all committed under system_debloat/):
  device_baseline/raw/pm_list_f_i_U.txt   pm list packages -f -i -U
  device_baseline/raw/pm_system.txt       pm list packages -s -f
  device_baseline/raw/pm_thirdparty.txt   pm list packages -3 -f
  device_baseline/raw/pm_disabled.txt     pm list packages -d -f
  device_baseline/raw/pm_users.txt        pm list users
  device_baseline/raw/getprop.txt         getprop
  device_baseline/raw/dumpsys_packages.txt  dumpsys package <pkg> for every package
  device_baseline/raw/sizes.txt           ls -l <apk> + du -sk <dir> per package
  device_baseline/raw/manifest_facts.json static AXML parse of the image APKs
  app_inventory.json / summary_stats.json / dependency_edges.csv

Outputs:
  device_baseline/package_inventory.json/.md
  device_baseline/core_components.json/.md
  device_baseline/component_inventory.json/.md
  device_baseline/dependency_graph.json/.md

Nothing here talks to the device: it only parses the captured text files.
"""
import csv
import json
import os
import re

DOC = r'D:\tgz02\OS\system\system_debloat'
RAW = os.path.join(DOC, 'device_baseline', 'raw')

inv_rows = {r['pkg']: r for r in json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))}
stats = json.load(open(os.path.join(DOC, 'summary_stats.json'), encoding='utf-8'))
manifest = json.load(open(os.path.join(RAW, 'manifest_facts.json'), encoding='utf-8'))
edges = list(csv.DictReader(open(os.path.join(DOC, 'dependency_edges.csv'), encoding='utf-8-sig')))

PROTECTED = {
    'com.dangbei1.tvlauncher': '当贝桌面', 'bin.mt.plus': 'MT 管理器',
    'com.estrongs.android.pop': 'ES 文件管理器', 'com.web1n.permissiondog': '权限狗',
    'com.shere.assistivetouch': 'EasyTouch', 'com.topjohnwu.magisk': 'Magisk',
}

# ---------------------------------------------------------------- parse pm lists
def parse_pm_list(path):
    out = {}
    for line in open(path, encoding='utf-8', errors='replace'):
        line = line.strip()
        if not line.startswith('package:'):
            continue
        body = line[len('package:'):]
        # package:/path=name  installer=x uid:1234
        # /data/app paths contain '==' segments, so split the trailing fields first
        m = re.search(r'\s+installer=(.*?)\s+uid:(\d+)\s*$', body)
        inst = uid = None
        if m:
            inst = m.group(1) if m.group(1) != 'null' else None
            uid = int(m.group(2))
            body = body[:m.start()]
        else:
            m = re.search(r'\s+uid:(\d+)\s*$', body)
            if m:
                uid = int(m.group(1))
                body = body[:m.start()]
        if '=' not in body:
            continue
        pth, pkg = body.rsplit('=', 1)
        out[pkg] = {'code_path': pth, 'installer': inst, 'uid': uid}
    return out

pm_all = parse_pm_list(os.path.join(RAW, 'pm_list_f_i_U.txt'))
pm_system = parse_pm_list(os.path.join(RAW, 'pm_system.txt'))
pm_third = parse_pm_list(os.path.join(RAW, 'pm_thirdparty.txt'))
pm_disabled = parse_pm_list(os.path.join(RAW, 'pm_disabled.txt'))

# ---------------------------------------------------------------- parse dumpsys
text = open(os.path.join(RAW, 'dumpsys_packages.txt'), encoding='utf-8', errors='replace').read()
blocks = re.split(r'^=== ', text, flags=re.M)[1:]
dumpsys = {}
for b in blocks:
    name = b.split('\n', 1)[0].strip()
    dumpsys[name] = b

PKG_HDR = re.compile(r'^  Package \[(?P<pkg>[^\]]+)\] \([0-9a-f]+\):', re.M)


def dump_facts(pkg):
    b = dumpsys.get(pkg, '')
    f = {}
    m = re.search(r'userId=(\d+)', b)
    if m:
        f['uid'] = int(m.group(1))
    m = re.search(r'sharedUser=SharedUserSetting\{[0-9a-f]+ ([^/]+)/(\d+)\}', b)
    f['shared_uid'] = (m.group(1) if m else None)
    m = re.search(r'codePath=(\S+)', b)
    f['code_path'] = m.group(1) if m else None
    m = re.search(r'versionCode=(\d+)\s+minSdk=(\d+)\s+targetSdk=(\d+)', b)
    if m:
        f['version_code'] = int(m.group(1))
        f['min_sdk'] = int(m.group(2))
        f['target_sdk'] = int(m.group(3))
    m = re.search(r'versionName=(\S+)', b)
    f['version_name'] = m.group(1) if m else None
    m = re.search(r'splits=\[([^\]]*)\]', b)
    f['split_apks'] = [s for s in m.group(1).split(',') if s] if m else []
    m = re.search(r'flags=\[([^\]]*)\]', b)
    f['flags'] = m.group(1).split() if m else []
    m = re.search(r'User 0: [^\n]*enabled=(\d+)', b)
    f['enabled_state'] = int(m.group(1)) if m else None
    m = re.search(r'User 0: [^\n]*installed=(true|false)', b)
    f['installed_user0'] = (m.group(1) == 'true') if m else None
    m = re.search(r'User 0: [^\n]*suspended=(true|false)', b)
    f['suspended'] = (m.group(1) == 'true') if m else None
    m = re.search(r'User 0: [^\n]*stopped=(true|false)', b)
    f['stopped'] = (m.group(1) == 'true') if m else None
    # declared components on device
    f['component_counts'] = {
        'activities': len(re.findall(r'^\s{4}[0-9a-f]+ ' + re.escape(pkg) + r'/[\w.$]+ filter', b, re.M)),
    }
    return f


# ---------------------------------------------------------------- parse sizes
sizes = {}
cur = None
for line in open(os.path.join(RAW, 'sizes.txt'), encoding='utf-8', errors='replace'):
    line = line.strip()
    if line.startswith('==='):
        pkg, path = line[4:].split('|', 1)
        cur = pkg
        sizes[cur] = {'apk_size': None, 'dir_size_kb': None, 'apk_path': path}
        continue
    if cur is None:
        continue
    m = re.match(r'^-rw.*?\s(\d+)\s+\d{4}-\d{2}-\d{2}', line)
    if m:
        sizes[cur]['apk_size'] = int(m.group(1))
        continue
    m = re.match(r'^(\d+)\s+(\S+)$', line)
    if m:
        sizes[cur]['dir_size_kb'] = int(m.group(1))
        sizes[cur]['dir_path'] = m.group(2)

BARE_DIRS = ('/system/app', '/system/priv-app')


def dir_size(pkg):
    s = sizes.get(pkg) or {}
    kb, d = s.get('dir_size_kb'), s.get('dir_path')
    if kb is None:
        return None
    if d in BARE_DIRS:      # a bare APK sits directly in app/ or priv-app/
        return s.get('apk_size')
    return kb * 1024


# ---------------------------------------------------------------- package inventory
rows = []
for pkg in sorted(pm_all):
    d = dump_facts(pkg)
    s = sizes.get(pkg) or {}
    code = pm_all[pkg]['code_path'] or d.get('code_path')
    is_sys = pkg in pm_system
    is_priv = bool(code and '/priv-app/' in code)
    rows.append({
        'package_name': pkg,
        'label': None,                       # not resolvable from dumpsys on 8.1; see label_note
        'label_note': 'unknown: dumpsys/PM 不返回 label，未解析 resources.arsc；桌面名称映射见 desktop_app_audit.md',
        'code_path': code,
        'version_name': d.get('version_name'),
        'version_code': d.get('version_code'),
        'uid': pm_all[pkg]['uid'] if pm_all[pkg]['uid'] is not None else d.get('uid'),
        'installer': pm_all[pkg]['installer'],
        'is_system': is_sys,
        'is_privileged': is_priv,
        'enabled_state': d.get('enabled_state'),
        'enabled_state_name': {0: 'DEFAULT', 1: 'ENABLED', 2: 'DISABLED', 3: 'DISABLED_USER',
                               4: 'DISABLED_UNTIL_USED'}.get(d.get('enabled_state')),
        'user_state': {'0': {'installed': d.get('installed_user0'), 'suspended': d.get('suspended'),
                             'stopped': d.get('stopped')}},
        'apk_size': s.get('apk_size'),
        'directory_size': dir_size(pkg),
        'shared_uid': d.get('shared_uid'),
        'split_apks': d.get('split_apks') or [],
        'min_sdk': d.get('min_sdk'), 'target_sdk': d.get('target_sdk'),
        'flags': d.get('flags') or [],
        'in_system_image': pkg in inv_rows,
        'image_total_mb': inv_rows[pkg]['total_mb'] if pkg in inv_rows else None,
        'protected_app': PROTECTED.get(pkg),
        'disabled_listed': pkg in pm_disabled,
    })

inv = {
    'captured_from': 'adb shell pm list packages -f -i -U / -s / -3 / -d, pm list users, dumpsys package <pkg>, ls -l, du -sk',
    'device': 'TG-Z02 (CCH/AILABS_S1L, MT8167S, Android 8.1, SDK 27)',
    'counts': {
        'total': len(rows),
        'system': sum(1 for r in rows if r['is_system']),
        'privileged': sum(1 for r in rows if r['is_privileged']),
        'third_party': len(pm_third),
        'disabled': len(pm_disabled),
        'in_system_image_inventory': sum(1 for r in rows if r['in_system_image']),
    },
    'users': open(os.path.join(RAW, 'pm_users.txt'), encoding='utf-8', errors='replace').read().strip(),
    'packages': rows,
}
json.dump(inv, open(os.path.join(DOC, 'device_baseline', 'package_inventory.json'), 'w', encoding='utf-8'),
          indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- core components
CORE = [
    ('原厂语音助手（入口）', 'com.aligenie.ags', 'AliGenieService',
     ['lib/arm/libaligenie_ic.so'], '受保护，禁止精简'),
    ('原厂语音技能运行时', 'com.alibaba.ailabs.genie.smartapp', 'smartapp',
     ['libsmartbox.so', 'libaceAsr.so', 'libvad_api.so', 'libvad_bin.so',
      'libwakeup_bin_S1.so', 'libwakeup_bin_S1L_S3.so', 'libwakeup_sync_api_S1.so',
      'libwakeup_sync_api_S1L_S3.so', 'libGenieCommon.so', 'libGenieJson.so'], '受保护，禁止精简'),
    ('TTS（小程序容器内骨架）', 'com.alipay.arome.app', 'AMPE',
     ['libtts_skeleton.so', 'libandroid-stream-apmtts.so'], '容器本身高风险；TTS 库随包'),
    ('默认桌面（HOME）', 'com.alibaba.ailabs.genie.launcher', 'GenieLauncher', [],
     '启动关键组件，禁止精简'),
    ('保护：当贝桌面', 'com.dangbei1.tvlauncher', 'dangbei', [], '受用户保护'),
    ('设置', 'com.android.settings', 'S1Settings', [], '禁止精简'),
    ('SystemUI', 'com.android.systemui', 'AliSystemUI', [], '禁止精简'),
    ('包管理/安装器', 'com.android.packageinstaller', 'PackageInstaller', [], '禁止精简'),
    ('安装容器服务', 'com.android.defcontainer', 'DefaultContainerService', [], '禁止精简'),
    ('存储/媒体 Provider', 'com.android.providers.media', 'MtkMediaProvider', [], '禁止精简'),
    ('外部存储 Provider', 'com.android.externalstorage', 'ExternalStorageProvider', [], '禁止精简'),
    ('原厂视频播放', 'com.ailabs.youku.iot', 'AliVideoPlayer', [], '视频链路，禁止删除'),
    ('设备控制（IoT）', 'com.alibaba.ailabs.genie.iot', 'GenieIoT', [], '设备控制面'),
    ('手势/视觉唤醒/AVE', 'com.alibaba.ailabs.ar.monitor', 'GenieMonitor', [], '含视觉唤醒与控制 Provider'),
    ('蓝牙栈', 'com.android.bluetooth', 'Bluetooth', [], '框架件'),
    ('Wi-Fi/连接', 'com.android.settings', 'S1Settings（设置内的网络页）', [], '框架件'),
    ('音量控制', 'com.android.systemui', 'AliSystemUI（音量面板）', [], '框架件'),
    ('日志/错误上报', 'com.alibaba.ailabs.genie.osupdate', 'Osupdate（另有 LogService）', [], '见 OTA 报告'),
]

core = []
for func, pkg, apk, libs, policy in CORE:
    m = manifest.get(pkg, {})
    d = dump_facts(pkg)
    acts = [c['name'] for c in (m.get('activities') or [])][:3]
    svcs = [c['name'] for c in (m.get('services') or [])][:4]
    recs = [c['name'] for c in (m.get('receivers') or [])][:3]
    provs = [c['name'] for c in (m.get('providers') or [])][:3]
    core.append({
        'function': func, 'package': pkg,
        'apk_dir': (inv_rows.get(pkg) or {}).get('dir') or (pm_all.get(pkg) or {}).get('code_path'),
        'core_activity': acts[0] if acts else None,
        'core_services': svcs, 'core_receivers': recs, 'core_providers': provs,
        'native_libs': libs,
        'protected': pkg in PROTECTED,
        'forbidden': policy,
        'evidence': 'image manifest (AXML) + device dumpsys package + 文件系统扫描',
        'confidence': 'high' if m else 'medium（无静态 manifest，仅设备记录）',
    })
json.dump({'functions': core}, open(os.path.join(DOC, 'device_baseline', 'core_components.json'), 'w',
                                    encoding='utf-8'), indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- component inventory
TARGETS = [
    'com.alibaba.ailabs.genie.children', 'com.alibaba.ailabs.genie.albums',
    'com.android.providers.userdictionary', 'com.alibaba.spkey', 'com.alira.info',
    'com.aliyun.uuid', 'com.yunos.tv.provision', 'com.ailabs.emode',
    'com.android.statementservice', 'com.android.bluetoothmidiservice', 'com.android.pacprocessor',
    'com.android.vpndialogs', 'com.android.captiveportallogin', 'com.android.companiondevicemanager',
    'com.android.storagemanager', 'com.android.mtp', 'com.alibaba.ailabs.genie.osupdate',
    'com.alibaba.ailabs.genie.guide',
]

comp_out = []
for pkg in TARGETS:
    m = manifest.get(pkg, {})
    d = dump_facts(pkg)
    comps = []
    for kind, key in (('activity', 'activities'), ('service', 'services'),
                      ('receiver', 'receivers'), ('provider', 'providers')):
        for c in (m.get(key) or []):
            comps.append({
                'kind': kind, 'name': c['name'], 'exported': c['exported'],
                'permission': c.get('permission'), 'process': c.get('process'),
                'intent_actions': c.get('actions') or [], 'authorities': c.get('authorities'),
                'direct_boot_aware': c.get('directBootAware'),
                'source': 'image manifest (AXML)',
            })
    comp_out.append({
        'package': pkg,
        'in_image': pkg in manifest,
        'persistent': (m.get('persistent') if m else None),
        'shared_uid': (m.get('sharedUserId') if m else d.get('shared_uid')),
        'device_enabled_state': d.get('enabled_state'),
        'component_total': len(comps),
        'components': comps,
        'note': None if pkg in manifest else 'not in system image inventory: components unknown (data-side install)',
    })
json.dump({'targets': TARGETS, 'packages': comp_out},
          open(os.path.join(DOC, 'device_baseline', 'component_inventory.json'), 'w', encoding='utf-8'),
          indent=1, ensure_ascii=False)

# ---------------------------------------------------------------- dependency graph
CONF = {'app': 'high', 'platform_provider': 'low', 'sdk_noise': 'ignore', 'ambiguous': 'low'}
IMPACT = {
    'com.alibaba.ailabs.genie.iot': '语音设备控制技能失败（用户已声明不需要）',
    'com.alibaba.ailabs.ar.monitor': '手势/视觉唤醒/AVE 控制失效',
    'com.ailabs.youku.iot': '点播/新闻/短视频播放失效',
    'com.alibaba.ailabs.genie.children': '儿童模式界面与技能失效',
    'com.alibaba.ailabs.genie.albums': '相册与屏保取图失效',
    'com.alipay.arome.app': '小程序/H5 能力失效',
    'com.android.settings': '设置页功能缺失',
}
deps = []
for e in edges:
    if e['evidence_class'] not in ('app', 'ambiguous'):
        continue
    deps.append({
        'source_package': e['source_package'], 'source_component': None,
        'target_package': e['target_package'], 'target_component': e['token'],
        'dependency_type': e['kind'] + '/' + e['evidence_class'],
        'evidence': 'string hit in target-owner APK (denoised)',
        'confidence': CONF.get(e['evidence_class'], 'unknown'),
        'impact_if_disabled': IMPACT.get(e['target_package'], '未评估'),
    })
json.dump({'generated_from': 'dependency_edges.csv (evidence_class app/ambiguous)',
           'edge_count': len(deps), 'edges': deps},
          open(os.path.join(DOC, 'device_baseline', 'dependency_graph.json'), 'w', encoding='utf-8'),
          indent=1, ensure_ascii=False)

print('package_inventory %d packages' % len(rows))
print('core_components %d functions' % len(core))
print('component_inventory %d packages / %d components'
      % (len(comp_out), sum(c['component_total'] for c in comp_out)))
print('dependency_graph %d edges' % len(deps))
