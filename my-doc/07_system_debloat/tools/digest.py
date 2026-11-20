"""Digest the scan output into a compact, reviewable per-package text report."""
import json
import os

OUT = r'D:\tgz02\OS\_analysis\debloat\out'
apps = {e['dir']: e for e in json.load(open(os.path.join(OUT, 'apps.json'), encoding='utf-8'))}
refs = json.load(open(os.path.join(OUT, 'refs.json'), encoding='utf-8'))
so = json.load(open(os.path.join(OUT, 'so_refs.json'), encoding='utf-8'))
ext = json.load(open(os.path.join(OUT, 'external_refs.json'), encoding='utf-8'))
dev = os.path.join(OUT, 'device')
pmpaths = {}
if os.path.exists(os.path.join(dev, 'pm_paths.txt')):
    for line in open(os.path.join(dev, 'pm_paths.txt'), encoding='utf-8', errors='replace'):
        parts = line.split()
        if len(parts) >= 2 and parts[0].startswith('com.') or (parts and parts[0] == 'android'):
            pmpaths[parts[0]] = parts[1] if len(parts) > 1 else ''

dir_by_pkg = {}
for d, e in apps.items():
    m = e['manifest']
    if m and m['package']:
        dir_by_pkg[m['package']] = d

# inbound references
inbound = {}
for src, r in refs.items():
    for p in r['mentions']:
        inbound.setdefault(dir_by_pkg.get(p), set()).add(src + ' (pkg mention)')
    for x in r['uses_action_of']:
        inbound.setdefault(x['owner'], set()).add(src + ' (action ' + x['action'] + ')')
    for x in r['uses_authority_of']:
        inbound.setdefault(x['owner'], set()).add(src + ' (authority ' + x['authority'] + ')')
    for x in r['uses_component_of']:
        inbound.setdefault(x['owner'], set()).add(src + ' (component ' + x['component'] + ')')

lines = []
for d in sorted(apps):
    e = apps[d]
    m = e['manifest'] or {}
    pkg = m.get('package')
    lines.append('=' * 100)
    lines.append('%s  |  %s  |  v%s (%s)  |  %.2f MB  |  apk=%.2f lib=%.2f oat=%.2f' % (
        d, pkg, m.get('versionName'), m.get('versionCode'), e['total_bytes'] / 1048576,
        e['breakdown']['apk'] / 1048576, e['breakdown']['lib'] / 1048576,
        (e['breakdown']['odex'] + e['breakdown']['vdex'] + e['breakdown']['oat_other']) / 1048576))
    lines.append('  uid=%s target=%s min=%s persistent=%s process=%s abis=%s' % (
        m.get('sharedUserId'), m.get('targetSdk'), m.get('minSdk'), m.get('persistent'),
        m.get('process'), e.get('abis')))
    lines.append('  device_path=%s' % pmpaths.get(pkg, 'NOT ON DEVICE'))
    perms = [p for p in m.get('permissions', []) if p.split('.')[-1] in (
        'RECEIVE_BOOT_COMPLETED', 'SYSTEM_ALERT_WINDOW', 'FOREGROUND_SERVICE', 'WAKE_LOCK',
        'REQUEST_INSTALL_PACKAGES', 'WRITE_SECURE_SETTINGS', 'CAPTURE_AUDIO_OUTPUT',
        'RECORD_AUDIO', 'MODIFY_AUDIO_SETTINGS', 'INTERNET', 'ACCESS_NETWORK_STATE',
        'KILL_BACKGROUND_PROCESSES', 'GET_TASKS', 'REORDER_TASKS', 'BIND_ACCESSIBILITY_SERVICE',
        'PACKAGE_USAGE_STATS')]
    lines.append('  perms(%d): %s' % (len(m.get('permissions', [])), ', '.join(sorted(perms))))
    launcher = [c['name'] for c in m.get('activities', []) if c.get('launcher')]
    boot = [c['name'] for c in m.get('receivers', []) + m.get('services', []) if c.get('boot')]
    lines.append('  LAUNCHER/HOME: %s' % (launcher or '-'))
    lines.append('  BOOT receivers: %s' % (boot or '-'))
    if m.get('services'):
        lines.append('  services(%d):' % len(m['services']))
        for c in m['services'][:14]:
            lines.append('     %s exp=%s actions=%s' % (c['name'], c['exported'], (c['actions'] or '-')[:3]))
    if m.get('receivers'):
        lines.append('  receivers(%d):' % len(m['receivers']))
        for c in m['receivers'][:14]:
            lines.append('     %s exp=%s actions=%s' % (c['name'], c['exported'], (c['actions'] or '-')[:4]))
    if m.get('providers'):
        lines.append('  providers(%d):' % len(m['providers']))
        for c in m['providers']:
            lines.append('     %s auth=%s exp=%s' % (c['name'], c['authorities'], c['exported']))
    if m.get('activities'):
        lines.append('  activities(%d): %s' % (len(m['activities']),
                                               ', '.join(c['name'] for c in m['activities'][:8])))
    libs = so['refs'].get(d, [])
    own = [x['lib'] for x in libs if x['provided_by_app']]
    sysl = [x['lib'] for x in libs if not x['provided_by_app']]
    lines.append('  own .so loaded: %s' % (', '.join(sorted(set(own))[:12]) or '-'))
    lines.append('  system .so referenced: %s' % (', '.join(sorted(set(sysl))[:16]) or '-'))
    r = refs.get(d, {})
    lines.append('  -> refs out: mentions=%s' % (sorted(set(r.get('mentions', [])))[:10]))
    lines.append('     actions_of=%s' % sorted({x['owner'] for x in r.get('uses_action_of', [])}))
    lines.append('     auth_of=%s' % sorted({x['owner'] for x in r.get('uses_authority_of', [])}))
    lines.append('     comp_of=%s' % sorted({x['owner'] for x in r.get('uses_component_of', [])}))
    lines.append('  <- refs in: %s' % (sorted(inbound.get(d, set()))[:12] or '-'))
    if pkg and pkg in ext['boot_scripts']:
        lines.append('  BOOT SCRIPT refs: %s' % ext['boot_scripts'][pkg])
    if pkg and pkg in ext['permissions']:
        lines.append('  etc/permissions refs: %s' % ext['permissions'][pkg])
    if pkg and pkg in ext['sysconfig']:
        lines.append('  etc/sysconfig refs: %s' % ext['sysconfig'][pkg])

open(os.path.join(OUT, 'digest.txt'), 'w', encoding='utf-8').write('\n'.join(lines))
print('written', len(lines), 'lines')
