"""TG-Z02 system image app inventory + manifest fact extraction + cross-package reference scan.

Evidence source: the unpacked system tree itself (D:\tgz02\OS\system).
Nothing is written into the image; output goes to _analysis/debloat/out/.
"""
import json
import os
import struct
import sys
import zipfile

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import axml

ROOT = r'D:\tgz02\OS\system'
OUT = r'D:\tgz02\OS\_analysis\debloat\out'
os.makedirs(OUT, exist_ok=True)

SCAN_DIRS = ['app', 'priv-app', 'vendor/app', 'vendor/priv-app', 'system_ext/app', 'system_ext/priv-app']
SKIP_DIR_SUFFIX = ('_decompiled',)

u32 = lambda b, o: struct.unpack_from('<I', b, o)[0]


# ---------------------------------------------------------------- manifest facts
def comp_facts(e, kind):
    a = e['attrs']
    f = {
        'kind': kind,
        'name': a.get('name'),
        'exported': a.get('exported'),
        'permission': a.get('permission'),
        'process': a.get('process'),
        'enabled': a.get('enabled'),
        'directBootAware': a.get('directBootAware'),
        'actions': [],
        'categories': [],
        'authorities': a.get('authorities'),
        'readPermission': a.get('readPermission'),
        'writePermission': a.get('writePermission'),
        'grantUriPermissions': a.get('grantUriPermissions'),
        'syncable': a.get('syncable'),
        'priority': None,
        'intent_filters': 0,
    }
    for ch in e['children']:
        if ch['tag'] == 'intent-filter':
            f['intent_filters'] += 1
            if ch['attrs'].get('priority') is not None:
                f['priority'] = ch['attrs'].get('priority')
            for g in ch['children']:
                if g['tag'] == 'action' and g['attrs'].get('name'):
                    f['actions'].append(g['attrs']['name'])
                elif g['tag'] == 'category' and g['attrs'].get('name'):
                    f['categories'].append(g['attrs']['name'])
                elif g['tag'] == 'data':
                    d = {k: g['attrs'][k] for k in ('scheme', 'host', 'path', 'pathPrefix', 'mimeType', 'port')
                         if k in g['attrs']}
                    if d:
                        f.setdefault('data', []).append(d)
    return f


def manifest_facts(elems):
    root = elems[0]
    ra = root['attrs']
    facts = {
        'package': ra.get('package'),
        'versionName': ra.get('versionName'),
        'versionCode': ra.get('versionCode'),
        'sharedUserId': ra.get('sharedUserId'),
        'installLocation': ra.get('installLocation'),
        'minSdk': None, 'targetSdk': None, 'compileSdk': ra.get('compileSdkVersion'),
        'permissions': [], 'permissions_maxsdk': {}, 'declared_permissions': [],
        'uses_libraries': [], 'features': [],
        'persistent': False, 'process': None, 'allowBackup': None, 'debuggable': None,
        'hasCode': None, 'extractNativeLibs': None, 'largeHeap': None,
        'activities': [], 'services': [], 'receivers': [], 'providers': [],
        'meta': {},
    }
    for e in elems[1:]:
        t = e['tag']
        a = e['attrs']
        if t == 'uses-sdk':
            facts['minSdk'] = a.get('minSdkVersion')
            facts['targetSdk'] = a.get('targetSdkVersion')
        elif t == 'uses-permission':
            n = a.get('name')
            if n:
                facts['permissions'].append(n)
                if 'maxSdkVersion' in a:
                    facts['permissions_maxsdk'][n] = a['maxSdkVersion']
        elif t == 'uses-permission-sdk-23':
            n = a.get('name')
            if n:
                facts['permissions'].append('sdk23:' + n)
        elif t == 'permission':
            facts['declared_permissions'].append(
                {'name': a.get('name'), 'protectionLevel': a.get('protectionLevel')})
        elif t == 'uses-library':
            facts['uses_libraries'].append({'name': a.get('name'), 'required': a.get('required')})
        elif t == 'uses-feature':
            facts['features'].append(a.get('name'))
        elif t == 'application':
            facts['persistent'] = bool(a.get('persistent'))
            facts['process'] = a.get('process')
            facts['allowBackup'] = a.get('allowBackup')
            facts['debuggable'] = a.get('debuggable')
            facts['hasCode'] = a.get('hasCode')
            facts['extractNativeLibs'] = a.get('extractNativeLibs')
            facts['largeHeap'] = a.get('largeHeap')
            facts['label_ref'] = a.get('label')
            facts['app_flags_attrs'] = {k: v for k, v in a.items() if k not in (
                'name', 'label', 'icon', 'theme', 'persistent', 'process', 'allowBackup',
                'debuggable', 'hasCode', 'extractNativeLibs', 'largeHeap', 'allowClearUserData',
                'supportsRtl', 'usesCleartextTraffic', 'networkSecurityConfig', 'requestLegacyExternalStorage',
                'testOnly', 'vmSafeMode', 'backupAgent', 'banner', 'description', 'enabled')}
            for ch in e['children']:
                ct = ch['tag']
                if ct in ('activity', 'activity-alias', 'service', 'receiver', 'provider'):
                    key = {'activity': 'activities', 'activity-alias': 'activities',
                           'service': 'services', 'receiver': 'receivers', 'provider': 'providers'}[ct]
                    facts[key].append(comp_facts(ch, ct))
                elif ct == 'meta-data':
                    facts['meta'][ch['attrs'].get('name')] = ch['attrs'].get('value')
    for c in facts['activities'] + facts['services'] + facts['receivers']:
        if 'android.intent.category.LAUNCHER' in c['categories'] or 'android.intent.category.HOME' in c['categories']:
            c['launcher'] = True
        if 'android.intent.action.BOOT_COMPLETED' in c['actions']:
            c['boot'] = True
        if 'android.intent.action.LOCKED_BOOT_COMPLETED' in c['actions']:
            c['boot_direct'] = True
    return facts


# ---------------------------------------------------------------- dex / vdex strings
def dex_strings(data):
    try:
        d = axml.DexStrings(data)
        return d.strings
    except Exception:
        return []


def vdex_strings(path):
    with open(path, 'rb') as f:
        b = f.read()
    if b[:4] != b'vdex':
        return []
    n, dex_size, deps, quick = struct.unpack_from('<IIII', b, 8)
    dex_start = 24 + 4 * n
    out = []
    p = dex_start
    for _ in range(n):
        if p + 0x70 > len(b):
            break
        fsz = u32(b, p + 32)
        if fsz <= 0 or p + fsz > len(b):
            break
        out.extend(dex_strings(b[p:p + fsz]))
        p += fsz
    return out


def collect_code_strings(pkg_dir, apks):
    """All strings from apk dex + vdex for one package directory."""
    strings = set()
    for apk in apks:
        try:
            strings |= axml.apk_strings(apk)
        except Exception:
            pass
    oat = os.path.join(pkg_dir, 'oat')
    if os.path.isdir(oat):
        for dirpath, _, files in os.walk(oat):
            for fn in files:
                if fn.endswith('.vdex'):
                    try:
                        strings |= set(vdex_strings(os.path.join(dirpath, fn)))
                    except Exception:
                        pass
    return strings


# ---------------------------------------------------------------- filesystem inventory
def dir_size(path, skip_suffix=()):
    total = 0
    files = []
    for dirpath, dirnames, filenames in os.walk(path):
        dirnames[:] = [d for d in dirnames if not d.endswith(skip_suffix)]
        for fn in filenames:
            fp = os.path.join(dirpath, fn)
            try:
                sz = os.path.getsize(fp)
            except OSError:
                continue
            total += sz
            files.append((os.path.relpath(fp, path).replace('\\', '/'), sz))
    return total, files


def artifact_breakdown(files):
    b = {'apk': 0, 'odex': 0, 'vdex': 0, 'oat_other': 0, 'lib': 0, 'other': 0}
    for rel, sz in files:
        low = rel.lower()
        if low.endswith('.apk'):
            b['apk'] += sz
        elif low.endswith('.odex'):
            b['odex'] += sz
        elif low.endswith('.vdex'):
            b['vdex'] += sz
        elif '/oat/' in low:
            b['oat_other'] += sz
        elif low.startswith('lib/'):
            b['lib'] += sz
        else:
            b['other'] += sz
    return b


def main():
    pkgs = []
    for d in SCAN_DIRS:
        base = os.path.join(ROOT, d.replace('/', os.sep))
        if not os.path.isdir(base):
            continue
        for name in sorted(os.listdir(base)):
            p = os.path.join(base, name)
            if os.path.isdir(p) and not name.endswith(SKIP_DIR_SUFFIX):
                apks = sorted(os.path.join(p, f) for f in os.listdir(p)
                              if f.lower().endswith('.apk'))
                if not apks:
                    continue
                pkgs.append({'partition_dir': d, 'dir_name': name, 'path': p, 'apks': apks, 'loose': False})
            elif os.path.isfile(p) and name.lower().endswith('.apk'):
                pkgs.append({'partition_dir': d, 'dir_name': name, 'path': p, 'apks': [p], 'loose': True})

    out = []
    strings_by_dir = {}
    for pk in pkgs:
        entry = {
            'dir': pk['partition_dir'] + '/' + pk['dir_name'],
            'loose_apk': pk['loose'],
            'apk_files': [{'name': os.path.basename(a), 'size': os.path.getsize(a)} for a in pk['apks']],
            'manifest_error': None,
        }
        if pk['loose']:
            sz = os.path.getsize(pk['path'])
            entry['total_bytes'] = sz
            entry['breakdown'] = {'apk': sz, 'odex': 0, 'vdex': 0, 'oat_other': 0, 'lib': 0, 'other': 0}
            entry['has_oat'] = False
            entry['abis'] = []
        else:
            total, files = dir_size(pk['path'], SKIP_DIR_SUFFIX)
            entry['total_bytes'] = total
            entry['breakdown'] = artifact_breakdown(files)
            entry['has_oat'] = os.path.isdir(os.path.join(pk['path'], 'oat'))
            lib = os.path.join(pk['path'], 'lib')
            entry['abis'] = sorted(os.listdir(lib)) if os.path.isdir(lib) else []
            entry['file_list'] = sorted(files, key=lambda x: -x[1])[:12]
        try:
            facts = manifest_facts(axml.read_manifest(pk['apks'][0]))
        except Exception as ex:
            facts = None
            entry['manifest_error'] = repr(ex)
        entry['manifest'] = facts
        strings_by_dir[entry['dir']] = collect_code_strings(
            pk['path'] if not pk['loose'] else os.path.dirname(pk['path']), pk['apks'])
        entry['string_count'] = len(strings_by_dir[entry['dir']])
        out.append(entry)
        print('%-30s %-36s %7.2f MB strings=%-7d comps=%s' % (
            entry['dir'], (facts or {}).get('package') or '?',
            entry['total_bytes'] / 1048576, entry['string_count'],
            (len(facts['activities']) + len(facts['services']) + len(facts['receivers']) + len(facts['providers'])) if facts else 0))

    meta = {e['dir']: e for e in out}
    by_pkg = {}
    for e in out:
        if e['manifest'] and e['manifest']['package']:
            by_pkg[e['manifest']['package']] = e['dir']

    # ------------------------------------------------------------- cross references
    actions = {}       # action -> [owner dir]
    authorities = {}   # authority prefix -> owner dir
    comp_names = {}    # fully-qualified class -> owner dir
    for e in out:
        m = e['manifest']
        if not m:
            continue
        for c in m['activities'] + m['services'] + m['receivers']:
            for act in c['actions']:
                actions.setdefault(act, []).append(e['dir'])
            nm = c['name']
            if nm and nm.startswith('.'):
                nm = m['package'] + nm
            if nm and '.' in nm:
                comp_names.setdefault(nm, e['dir'])
        for p in m['providers']:
            if p.get('authorities'):
                for auth in p['authorities'].split(';'):
                    auth = auth.strip()
                    if auth:
                        authorities[auth] = e['dir']

    import re
    pat_pkg = re.compile('|'.join(re.escape(p) for p in sorted(by_pkg, key=len, reverse=True)))
    pat_act = re.compile('|'.join(re.escape(a) for a in sorted(actions, key=len, reverse=True)))
    pat_auth = re.compile('|'.join(re.escape(a) for a in sorted(authorities, key=len, reverse=True)))
    pat_comp = re.compile('|'.join(re.escape(a) for a in sorted(comp_names, key=len, reverse=True)))

    refs = {}
    for e in out:
        blob = '\n'.join(strings_by_dir[e['dir']])
        found = {'package_mentions': set(), 'actions': set(), 'authorities': set(), 'components': set()}
        for m in pat_pkg.finditer(blob):
            found['package_mentions'].add(m.group(0))
        for m in pat_act.finditer(blob):
            found['actions'].add(m.group(0))
        for m in pat_auth.finditer(blob):
            found['authorities'].add(m.group(0))
        for m in pat_comp.finditer(blob):
            found['components'].add(m.group(0))
        # resolve owners
        res = {'mentions': [], 'uses_action_of': [], 'uses_authority_of': [], 'uses_component_of': []}
        for p in found['package_mentions']:
            if by_pkg.get(p) and by_pkg[p] != e['dir']:
                res['mentions'].append(p)
        for a in found['actions']:
            for owner in actions.get(a, []):
                if owner != e['dir']:
                    res['uses_action_of'].append({'action': a, 'owner': owner})
        for a in found['authorities']:
            owner = authorities.get(a)
            if owner and owner != e['dir']:
                res['uses_authority_of'].append({'authority': a, 'owner': owner})
        for c in found['components']:
            owner = comp_names.get(c)
            if owner and owner != e['dir']:
                res['uses_component_of'].append({'component': c, 'owner': owner})
        refs[e['dir']] = res

    # ------------------------------------------------------------- native lib references
    sys_libs = {}
    for d in ('lib', 'lib/hw', 'lib/vndk-sp', 'vendor/lib'):
        p = os.path.join(ROOT, d.replace('/', os.sep))
        if os.path.isdir(p):
            for fn in os.listdir(p):
                fp = os.path.join(p, fn)
                if os.path.isfile(fp) and fn.endswith('.so'):
                    sys_libs[fn] = (d, os.path.getsize(fp))
    app_libs = {}
    for e in out:
        if e['loose_apk']:
            continue
        libdir = os.path.join(ROOT, e['dir'].replace('/', os.sep), 'lib')
        if os.path.isdir(libdir):
            for abi in os.listdir(libdir):
                for fn in os.listdir(os.path.join(libdir, abi)):
                    app_libs.setdefault(fn, []).append(e['dir'] + '/lib/' + abi)
    so_names = sorted(set(sys_libs) | set(app_libs))
    pat_so = re.compile('|'.join(re.escape(s) for s in so_names))
    so_refs = {}
    for e in out:
        hits = sorted({m.group(0) for m in pat_so.finditer('\n'.join(strings_by_dir[e['dir']]))})
        so_refs[e['dir']] = [{'lib': h,
                              'owner': 'system' if h in sys_libs else app_libs.get(h, []),
                              'provided_by_app': h in app_libs} for h in hits]

    # ------------------------------------------------------------- boot scripts / permissions / props
    boot_ev = {}
    for rel in ('etc/init', 'etc'):
        base = os.path.join(ROOT, rel.replace('/', os.sep))
        if not os.path.isdir(base):
            continue
        for dirpath, _, files in os.walk(base):
            if dirpath.count(os.sep) - base.count(os.sep) > 1:
                continue
            for fn in files:
                if not (fn.endswith('.rc') or fn.endswith('.sh') or fn == 'init.rc'):
                    continue
                fp = os.path.join(dirpath, fn)
                try:
                    txt = open(fp, encoding='utf-8', errors='replace').read()
                except OSError:
                    continue
                for p in by_pkg:
                    if p in txt:
                        boot_ev.setdefault(p, []).append(os.path.relpath(fp, ROOT).replace('\\', '/'))

    ext = {'permissions': {}, 'sysconfig': {}, 'props': {}}
    for rel in ('etc/permissions', 'etc/sysconfig'):
        base = os.path.join(ROOT, rel.replace('/', os.sep))
        if not os.path.isdir(base):
            continue
        for fn in sorted(os.listdir(base)):
            fp = os.path.join(base, fn)
            if not os.path.isfile(fp):
                continue
            try:
                txt = open(fp, encoding='utf-8', errors='replace').read()
            except OSError:
                continue
            for p in by_pkg:
                if p in txt:
                    ext[rel.split('/')[-1]].setdefault(p, []).append(fn)

    with open(os.path.join(OUT, 'apps.json'), 'w', encoding='utf-8') as f:
        json.dump(out, f, indent=1, ensure_ascii=False)
    with open(os.path.join(OUT, 'refs.json'), 'w', encoding='utf-8') as f:
        json.dump(refs, f, indent=1, ensure_ascii=False)
    with open(os.path.join(OUT, 'so_refs.json'), 'w', encoding='utf-8') as f:
        json.dump({'system_libs': sys_libs, 'app_libs': app_libs, 'refs': so_refs}, f, indent=1, ensure_ascii=False)
    with open(os.path.join(OUT, 'external_refs.json'), 'w', encoding='utf-8') as f:
        json.dump({'boot_scripts': boot_ev, 'permissions': ext['permissions'],
                   'sysconfig': ext['sysconfig']}, f, indent=1, ensure_ascii=False)
    print('packages:', len(out))
    print('total bytes: %.2f MB' % (sum(e['total_bytes'] for e in out) / 1048576))
    print('distinct actions:', len(actions), 'authorities:', len(authorities), 'so names:', len(so_names))


if __name__ == '__main__':
    main()
