"""Emit dependency_edges.csv (filtered cross-package evidence, machine readable)."""
import csv
import json
import os

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DOC = r'D:\tgz02\OS\system\my-doc\07_system_debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
refs2 = json.load(open(os.path.join(OUT, 'refs2.json'), encoding='utf-8'))
PKG = {r['dir']: r['pkg'] for r in rows}
SDK_PREFIX = ('com.xiaomi.', 'com.taobao.', 'org.android.agoo', 'com.google.android.gms',
              'com.google.firebase', 'mtopsdk.', 'anetwork.', 'com.uc.', 'com.amap.',
              'com.alipay.mobile.', 'com.taobao.accs', 'org.eclipse.paho', 'com.talkingdata.',
              'com.huawei.', 'com.baidu.', 'com.sina.', 'com.tencent.', 'com.umeng.')
PLATFORM_AUTH = ('media', 'downloads', 'settings', 'com.android.contacts', 'com.android.calendar',
                 'com.android.providers.contacts', 'com.android.providers.media',
                 'com.android.providers.downloads', 'com.android.providers.settings',
                 'user_dictionary', 'call_log', 'com.android.providers.telephony',
                 'telephony', 'mms-sms')

out = []
for dst, items in refs2['inbound'].items():
    for x in items:
        if x['kind'] not in ('component', 'authority', 'action', 'action_amb'):
            continue
        cls = 'app'
        if x['token'].startswith(SDK_PREFIX):
            cls = 'sdk_noise'
        elif x['kind'] == 'authority' and x['token'] in PLATFORM_AUTH:
            cls = 'platform_provider'
        elif x['kind'] == 'action_amb':
            cls = 'ambiguous'
        out.append([PKG.get(dst, dst), PKG.get(x['src'], x['src']), x['kind'], x['token'], cls])

out.sort(key=lambda r: (r[4], r[0], r[1], r[2]))
p = os.path.join(DOC, 'dependency_edges.csv')
with open(p, 'w', newline='', encoding='utf-8-sig') as f:
    w = csv.writer(f)
    w.writerow(['target_package', 'source_package', 'kind', 'token', 'evidence_class'])
    w.writerows(out)
print('edges', len(out))
from collections import Counter
print(Counter(r[4] for r in out))
