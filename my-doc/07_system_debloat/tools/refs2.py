"""Refined dependency model.

Separates evidence classes so that platform intents (android.*) are not mistaken
for app-to-app dependencies:
  component  - explicit ComponentName string of another app's declared component
  authority  - another app's ContentProvider authority string
  action     - another app's app-specific intent action (declared by exactly one app)
  action_amb - app-specific action shared by several apps (vendored SDK)
  pkg_weak   - bare package/class-prefix mention
Also scans framework boot vdex for package references (framework-side coupling hint).
"""
import json
import os
import re
import struct
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import axml

ROOT = r'D:\tgz02\OS\system'
OUT = r'D:\tgz02\OS\_analysis\debloat\out'
apps = json.load(open(os.path.join(OUT, 'apps.json'), encoding='utf-8'))


def vdex_strings(path):
    with open(path, 'rb') as f:
        b = f.read()
    if b[:4] != b'vdex':
        return set()
    n, dex_size, deps, quick = struct.unpack_from('<IIII', b, 8)
    p = 24 + 4 * n
    out = set()
    for _ in range(n):
        if p + 0x70 > len(b):
            break
        fsz = struct.unpack_from('<I', b, p + 32)[0]
        if fsz <= 0 or p + fsz > len(b):
            break
        out |= set(axml.DexStrings(b[p:p + fsz]).strings)
        p += fsz
    return out


def main():
    dir_by_pkg = {}
    actions = {}
    authorities = {}
    comps = {}
    for e in apps:
        m = e['manifest']
        if not m or not m['package']:
            continue
        dir_by_pkg[m['package']] = e['dir']
        for c in m['activities'] + m['services'] + m['receivers']:
            for a in c['actions']:
                actions.setdefault(a, set()).add(e['dir'])
            nm = c['name']
            if nm and nm.startswith('.'):
                nm = m['package'] + nm
            if nm and '.' in nm and len(nm.split('.')) >= 3:
                comps.setdefault(nm, set()).add(e['dir'])
        for p in m['providers']:
            for auth in (p.get('authorities') or '').split(';'):
                auth = auth.strip()
                if auth:
                    authorities.setdefault(auth, set()).add(e['dir'])

    # strings per app, re-derived (apps.json has no strings)
    strings = {}
    for e in apps:
        base = os.path.join(ROOT, e['dir'].replace('/', os.sep))
        apks = []
        vdexs = []
        if e['loose_apk']:
            apks = [base]
        else:
            for fn in os.listdir(base):
                if fn.lower().endswith('.apk'):
                    apks.append(os.path.join(base, fn))
            oat = os.path.join(base, 'oat')
            if os.path.isdir(oat):
                for dp, _, fs in os.walk(oat):
                    vdexs += [os.path.join(dp, f) for f in fs if f.endswith('.vdex')]
        s = set()
        for a in apks:
            try:
                s |= axml.apk_strings(a)
            except Exception:
                pass
        for v in vdexs:
            try:
                s |= vdex_strings(v)
            except Exception:
                pass
        strings[e['dir']] = s

    pkg_re = re.compile('|'.join(re.escape(p) for p in sorted(dir_by_pkg, key=len, reverse=True)))
    auth_re = re.compile('|'.join(re.escape(a) for a in sorted(authorities, key=len, reverse=True)))
    comp_re = re.compile('|'.join(re.escape(c) for c in sorted(comps, key=len, reverse=True)))
    act_re = re.compile('|'.join(re.escape(a) for a in sorted(actions, key=len, reverse=True)))

    def is_platform_action(a):
        return a.startswith(('android.', 'com.android.internal.'))

    def bundled(src_strings, dotted):
        """True when the source contains the class itself (descriptor) -> vendored copy."""
        return ('L' + dotted.replace('.', '/') + ';') in src_strings

    result = {}
    for e in apps:
        s = strings[e['dir']]
        blob = '\n'.join(s)
        me = e['dir']
        found = {'component': [], 'authority': [], 'action': [], 'action_amb': [], 'pkg_weak': [],
                 'component_bundled': []}
        for m in {m.group(0) for m in comp_re.finditer(blob)}:
            owners = comps[m] - {me}
            if not owners:
                continue
            if bundled(s, m):
                found['component_bundled'].append({'token': m, 'owner': sorted(owners)})
            else:
                found['component'].append({'token': m, 'owner': sorted(owners)})
        for m in {m.group(0) for m in auth_re.finditer(blob)}:
            owners = authorities[m] - {me}
            if owners:
                found['authority'].append({'token': m, 'owner': sorted(owners)})
        for m in {m.group(0) for m in act_re.finditer(blob)}:
            if is_platform_action(m):
                continue
            owners = actions[m] - {me}
            if not owners:
                continue
            if len(actions[m]) == 1:
                found['action'].append({'token': m, 'owner': sorted(owners)})
            else:
                found['action_amb'].append({'token': m, 'owner': sorted(owners)})
        for m in {m.group(0) for m in pkg_re.finditer(blob)}:
            owner = dir_by_pkg[m]
            if owner != me:
                found['pkg_weak'].append({'token': m, 'owner': [owner]})
        result[me] = found

    # inbound
    inbound = {e['dir']: [] for e in apps}
    for src, f in result.items():
        for kind in ('component', 'authority', 'action', 'action_amb', 'pkg_weak', 'component_bundled'):
            for item in f[kind]:
                for owner in item['owner']:
                    inbound[owner].append({'src': src, 'kind': kind, 'token': item['token']})

    # framework-side coupling
    fw = {}
    fw_files = [os.path.join(ROOT, 'framework', 'arm', 'boot-framework.vdex'),
                os.path.join(ROOT, 'framework', 'arm', 'boot.vdex'),
                os.path.join(ROOT, 'framework', 'oat', 'arm', 'services.vdex')]
    fw_strings = set()
    used = []
    for f in fw_files:
        if os.path.exists(f):
            try:
                fw_strings |= vdex_strings(f)
                used.append(os.path.relpath(f, ROOT).replace('\\', '/') + ' (%d strings)' % len(fw_strings))
            except Exception as ex:
                used.append(f + ' ERR ' + repr(ex))
    blob = '\n'.join(fw_strings)
    for p in dir_by_pkg:
        hits = len(re.findall(re.escape(p), blob))
        if hits:
            fw[p] = hits

    json.dump({'refs': result, 'inbound': inbound,
               'framework': {'sources': used, 'pkg_hits': fw}},
              open(os.path.join(OUT, 'refs2.json'), 'w', encoding='utf-8'), indent=1, ensure_ascii=False)
    print('framework sources:', used)
    print('packages hitting framework strings:', len(fw))
    for p, n in sorted(fw.items(), key=lambda x: -x[1]):
        print('  %-45s %d' % (p, n))


if __name__ == '__main__':
    main()
