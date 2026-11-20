"""Emit dependency_edges.csv (filtered cross-package evidence, machine readable)."""
import csv
import json
import os
import sys
from collections import Counter

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import filters

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
DOC = r'D:\tgz02\OS\system\system_debloat'
rows = json.load(open(os.path.join(DOC, 'app_inventory.json'), encoding='utf-8'))
refs2 = json.load(open(os.path.join(OUT, 'refs2.json'), encoding='utf-8'))
PKG = {r['dir']: r['pkg'] for r in rows}

out = []
for dst, items in refs2['inbound'].items():
    for x in items:
        if x['kind'] not in ('component', 'authority', 'action', 'action_amb'):
            continue
        cls = filters.classify_evidence(x['kind'], x['token'],
                                        ambiguous=(x['kind'] == 'action_amb'))
        out.append([PKG.get(dst, dst), PKG.get(x['src'], x['src']), x['kind'], x['token'], cls])

out.sort(key=lambda r: (r[4], r[0], r[1], r[2]))
p = os.path.join(DOC, 'dependency_edges.csv')
with open(p, 'w', newline='', encoding='utf-8-sig') as f:
    w = csv.writer(f)
    w.writerow(['target_package', 'source_package', 'kind', 'token', 'evidence_class'])
    w.writerows(out)
print('edges', len(out))
print(Counter(r[4] for r in out))
