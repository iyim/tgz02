#!/usr/bin/env python3
"""Analyse OTA observation samples (rev4.1).

Input : samples.jsonl produced by ota_observe.py (one JSON per sample).
Output: analysis.json (machine readable) + a markdown fragment on stdout.

Rules enforced here:
  * CPU% comes from /proc/<pid>/stat utime+stime deltas divided by the uptime delta,
    never from a single dumpsys cpuinfo snapshot;
  * deltas are only computed inside one uninterrupted PID lifetime - a PID change is
    reported as an event and the ticks are not summed across PIDs;
  * PSS is reported as min / max / median / count, not as a promised saving;
  * absence of broadcasts or log keywords is reported as "not captured", never as "unused".
"""
import argparse
import json
import os
import statistics as st

USER_HZ = 100.0


def load(path):
    rows = []
    with open(path, encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if line:
                rows.append(json.loads(line))
    return rows


def ticks_of(rec):
    """Return {pid: cpu_ticks} for this sample."""
    return {p['pid']: p['cpu_ticks'] for p in rec.get('procs', [])}


def cpu_intervals(rows):
    """Per-interval CPU percentages, only within the same PID."""
    out = []
    for prev, cur in zip(rows, rows[1:]):
        if prev.get('uptime_s') is None or cur.get('uptime_s') is None:
            continue
        dt = cur['uptime_s'] - prev['uptime_s']
        if dt <= 0:
            continue
        a, b = ticks_of(prev), ticks_of(cur)
        common = set(a) & set(b)
        if not common:
            out.append({'dt_s': round(dt, 1), 'cpu_pct': None, 'pid': None,
                        'note': 'pid changed or process absent'})
            continue
        pid = sorted(common)[0]
        cpu_s = (b[pid] - a[pid]) / USER_HZ
        out.append({'pid': pid, 'dt_s': round(dt, 1), 'cpu_s': round(cpu_s, 2),
                    'cpu_pct': round(100.0 * cpu_s / dt, 2)})
    return out


def pid_events(rows):
    events = []
    prev = None
    for r in rows:
        pids = r.get('pids') or []
        if prev is not None and pids != prev:
            events.append({'ts': r['host_ts'], 'uptime_s': r.get('uptime_s'),
                           'from': prev, 'to': pids})
        prev = pids
    return events


def autocorr(vals, max_lag=12):
    """Pearson autocorrelation of the CPU series at 1..max_lag sample lags."""
    res = {}
    n = len(vals)
    if n < max_lag + 3:
        return res
    mean = sum(vals) / n
    var = sum((v - mean) ** 2 for v in vals)
    if var == 0:
        return res
    for lag in range(1, max_lag + 1):
        s = sum((vals[i] - mean) * (vals[i + lag] - mean) for i in range(n - lag))
        res[lag] = round(s / var, 3)
    return res


def hour_profile(rows, intervals):
    """Per-hour CPU% summary: mean / min / max / count for intervals ending in that hour."""
    buckets = {}
    for rec, iv in zip(rows[1:], intervals):
        if iv.get('cpu_pct') is None:
            continue
        key = rec['host_ts'][11:13]
        buckets.setdefault(key, []).append(iv['cpu_pct'])
    return {k: {'n': len(v), 'mean': round(sum(v) / len(v), 2),
                'min': round(min(v), 2), 'max': round(max(v), 2)}
            for k, v in sorted(buckets.items())}


def fault_rate(rows):
    """Minor page faults per second and per interval, same-PID only."""
    out = []
    for prev, cur in zip(rows, rows[1:]):
        if not prev.get('procs') or not cur.get('procs'):
            continue
        if prev['procs'][0]['pid'] != cur['procs'][0]['pid']:
            continue
        dt = (cur['uptime_s'] or 0) - (prev['uptime_s'] or 0)
        if dt <= 0:
            continue
        d = cur['procs'][0]['minflt'] - prev['procs'][0]['minflt']
        out.append({'dt_s': round(dt, 1), 'minflt': d, 'per_s': round(d / dt, 1)})
    return out


def log_breakdown(rows):
    """Count captured log tags and upload/fail lines; never infers usage from absence."""
    import collections
    import re
    tags = collections.Counter()
    total = up = fail = 0
    stamps = []
    for r in rows:
        for ln in (r.get('log_new') or []):
            total += 1
            m = re.search(r'([IEWDF])/([A-Za-z_0-9]+)\(', ln)
            tags[(m.group(1) + '/' + m.group(2)) if m else 'other'] += 1
            low = ln.lower()
            if 'upload' in low:
                up += 1
            if 'fail' in low:
                fail += 1
                stamps.append(r['host_ts'])
    hours = sorted(set(s[11:13] for s in stamps))
    return {'total_lines': total, 'tags': dict(tags.most_common(8)),
            'upload_lines': up, 'fail_lines': fail, 'fail_hours': hours}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--samples', required=True)
    ap.add_argument('--out', required=True, help='analysis.json path')
    args = ap.parse_args()

    rows = load(args.samples)
    iv = cpu_intervals(rows)
    cpus = [x['cpu_pct'] for x in iv if x.get('cpu_pct') is not None]
    pss = [r['pss_kb'] for r in rows if r.get('pss_kb')]
    ups = [r['uptime_s'] for r in rows if r.get('uptime_s') is not None]

    summary = {
        'samples': len(rows),
        'first_ts': rows[0]['host_ts'] if rows else None,
        'last_ts': rows[-1]['host_ts'] if rows else None,
        'uptime_first_s': ups[0] if ups else None,
        'uptime_last_s': ups[-1] if ups else None,
        'window_s': round(ups[-1] - ups[0], 1) if len(ups) >= 2 else None,
        'pid_events': pid_events(rows),
        'cpu': {
            'intervals': len(cpus),
            'mean_pct': round(sum(cpus) / len(cpus), 2) if cpus else None,
            'median_pct': round(st.median(cpus), 2) if cpus else None,
            'p90_pct': round(sorted(cpus)[int(0.9 * (len(cpus) - 1))], 2) if cpus else None,
            'max_pct': round(max(cpus), 2) if cpus else None,
            'min_pct': round(min(cpus), 2) if cpus else None,
            'intervals_over_10pct': sum(1 for c in cpus if c >= 10),
            'intervals_over_20pct': sum(1 for c in cpus if c >= 20),
            'autocorr_5min_lags': autocorr(cpus),
        },
        'pss': {
            'count': len(pss),
            'min_kb': min(pss) if pss else None,
            'max_kb': max(pss) if pss else None,
            'median_kb': int(st.median(pss)) if pss else None,
            'mean_kb': int(sum(pss) / len(pss)) if pss else None,
        },
        'services': {
            'samples_with_record': sum(1 for r in rows if (r.get('svc_records') or 0) > 0),
            'samples_with_started': sum(1 for r in rows if r.get('svc_started')),
            'samples_total': len(rows),
        },
        'alarm': {
            'samples_with_hits': sum(1 for r in rows if (r.get('alarm_hits') or 0) > 0),
        },
        'wakelock': {
            'samples_with_hits': sum(1 for r in rows if (r.get('power_hits') or 0) > 0),
        },
        'logs': {
            'samples_with_new_lines': sum(1 for r in rows if r.get('log_new')),
            'total_new_lines': sum(len(r.get('log_new') or []) for r in rows),
            'fota_update_seen': any('FOTA_UPDATE' in ln
                                    for r in rows for ln in (r.get('log_new') or [])),
            'reboot_update_seen': any('RebootUpdate' in ln
                                      for r in rows for ln in (r.get('log_new') or [])),
            'update_application_seen': any('UpdateApplication' in ln
                                           for r in rows for ln in (r.get('log_new') or [])),
        },
        'cpuinfo_lines': sum(1 for r in rows if r.get('cpuinfo_line')),
        'errors': sum(len(r.get('errors') or []) for r in rows),
        'minute_of_hour_profile': hour_profile(rows, iv),
        'faults': (lambda fr: {
            'intervals': len(fr),
            'mean_per_s': round(sum(x['per_s'] for x in fr) / len(fr), 1) if fr else None,
            'total': sum(x['minflt'] for x in fr),
        })(fault_rate(rows)),
        'log_breakdown': log_breakdown(rows),
    }
    with open(args.out, 'w', encoding='utf-8') as f:
        json.dump(summary, f, ensure_ascii=False, indent=2)

    c = summary['cpu']
    p = summary['pss']
    print('samples=%s window=%ss pids=%s'
          % (summary['samples'], summary['window_s'],
             [e['to'] for e in summary['pid_events']] or 'stable'))
    print('CPU%%  n=%s mean=%s median=%s p90=%s max=%s  >=10%%:%s >=20%%:%s'
          % (c['intervals'], c['mean_pct'], c['median_pct'], c['p90_pct'], c['max_pct'],
             c['intervals_over_10pct'], c['intervals_over_20pct']))
    print('PSS   n=%s min=%s max=%s median=%s mean=%s kB'
          % (p['count'], p['min_kb'], p['max_kb'], p['median_kb'], p['mean_kb']))
    print('svc   %s/%s with started=true' % (summary['services']['samples_with_record'],
                                             summary['services']['samples_total']))
    print('alarm %s  wakelock %s  logs=%s (FOTA=%s RebootUpdate=%s)'
          % (summary['alarm']['samples_with_hits'], summary['wakelock']['samples_with_hits'],
             summary['logs']['total_new_lines'], summary['logs']['fota_update_seen'],
             summary['logs']['reboot_update_seen']))
    print('autocorr(5min) %s' % c['autocorr_5min_lags'])


if __name__ == '__main__':
    main()