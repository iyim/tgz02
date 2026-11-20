#!/usr/bin/env python3
"""OTA read-only sampler (rev4.1).

Reads only: /proc/<pid>/stat, /proc/uptime, dumpsys meminfo|cpuinfo|activity services|
alarm|power, logcat -d. Never writes to the device: no pm, no kill, no settings change.

Each sample is one JSON line. CPU time comes from utime+stime in /proc/<pid>/stat
(USER_HZ=100); analysis must use deltas per PID and never sum across PIDs.

Usage:
  python ota_observe.py --serial 192.168.1.9:5555 --out <dir> \
         --duration 21900 --interval 300
"""
import argparse
import json
import os
import re
import subprocess
import sys
import time
from datetime import datetime, timezone

PKG = 'com.alibaba.ailabs.genie.osupdate'
LOG_PAT = re.compile(r'osupdate|FOTA_UPDATE|UpdateService|RebootUpdate|UpdateApplication',
                     re.IGNORECASE)


def sh(serial, cmd, timeout=60):
    p = subprocess.run(['adb', '-s', serial, 'shell', cmd],
                       capture_output=True, text=True, timeout=timeout, errors='replace')
    return (p.stdout or '') + (('\n' + p.stderr) if p.stderr.strip() else '')


def sample(serial, last_log_stamp):
    rec = {
        'host_ts': datetime.now(timezone.utc).astimezone().isoformat(timespec='milliseconds'),
        'host_epoch': int(time.time()),
        'uptime_s': None,
        'pids': [],
        'procs': [],
        'pss_kb': None,
        'swap_pss_kb': None,
        'cpuinfo_line': None,
        'svc_records': None,
        'svc_started': None,
        'alarm_hits': None,
        'power_hits': None,
        'log_new': [],
        'errors': [],
    }
    t0 = time.time()
    try:
        up = sh(serial, 'cat /proc/uptime')
        m = re.match(r'\s*([0-9.]+)', up)
        if m:
            rec['uptime_s'] = float(m.group(1))
        else:
            rec['errors'].append('uptime:' + up.strip()[:80])
    except Exception as e:                      # pragma: no cover - device dependent
        rec['errors'].append('uptime:%s' % e)

    try:
        pid_out = sh(serial, 'pidof ' + PKG).strip()
        rec['pids'] = [int(x) for x in pid_out.split() if x.isdigit()]
    except Exception as e:                      # pragma: no cover
        rec['errors'].append('pidof:%s' % e)

    for pid in rec['pids']:
        try:
            stat = sh(serial, 'cat /proc/%d/stat' % pid).strip()
            m = re.match(r'^(\d+)\s+\((.*)\)\s+(\S)\s+(.*)$', stat)
            if not m:
                rec['errors'].append('stat:%d' % pid)
                continue
            rest = m.group(4).split()
            # rest[0]=ppid [1]=pgrp [2]=session [3]=tty [4]=tpgid [5]=flags [6]=minflt
            # [7]=cminflt [8]=majflt [9]=cmajflt [10]=utime [11]=stime [12]=cutime
            # [13]=cstime [14]=prio [15]=nice [16]=threads [17]=itreal [18]=starttime
            # [19]=vsize [20]=rss
            rec['procs'].append({
                'pid': int(m.group(1)),
                'comm': m.group(2),
                'state': m.group(3),
                'minflt': int(rest[6]),
                'majflt': int(rest[8]),
                'utime': int(rest[10]),
                'stime': int(rest[11]),
                'threads': int(rest[16]),
                'starttime': int(rest[18]),
                'rss_pages': int(rest[20]),
                'cpu_ticks': int(rest[10]) + int(rest[11]),
            })
        except Exception as e:                  # pragma: no cover
            rec['errors'].append('stat:%d:%s' % (pid, e))

    try:
        mi = sh(serial, 'dumpsys meminfo ' + PKG)
        m = re.search(r'TOTAL:\s+(\d+)\s+TOTAL SWAP PSS:\s+(\d+)', mi)
        if m:
            rec['pss_kb'] = int(m.group(1))
            rec['swap_pss_kb'] = int(m.group(2))
        else:
            rec['errors'].append('pss:no-total')
    except Exception as e:                      # pragma: no cover
        rec['errors'].append('pss:%s' % e)

    try:
        ci = sh(serial, 'dumpsys cpuinfo')
        for line in ci.splitlines():
            if PKG in line:
                rec['cpuinfo_line'] = line.strip()
                break
    except Exception as e:                      # pragma: no cover
        rec['errors'].append('cpuinfo:%s' % e)

    try:
        sv = sh(serial, 'dumpsys activity services')
        rec['svc_records'] = len(re.findall(r'ServiceRecord\{[^}]*' + re.escape(PKG), sv))
        started = False
        lines = sv.splitlines()
        for i, line in enumerate(lines):
            if PKG + '/.UpdateService' in line:
                for nxt in lines[i:i + 14]:
                    if 'startRequested=true' in nxt:
                        started = True
        rec['svc_started'] = started
    except Exception as e:                      # pragma: no cover
        rec['errors'].append('services:%s' % e)

    for key, cmd in (('alarm_hits', 'dumpsys alarm'), ('power_hits', 'dumpsys power')):
        try:
            out = sh(serial, cmd)
            rec[key] = sum(1 for line in out.splitlines() if PKG in line)
        except Exception as e:                  # pragma: no cover
            rec['errors'].append('%s:%s' % (key, e))

    try:
        logs = sh(serial, 'logcat -d -v time -t 600')
        stamped = []
        for line in logs.splitlines():
            if LOG_PAT.search(line):
                m = re.match(r'^(\d\d-\d\d\s\d\d:\d\d:\d\d\.\d\d\d)', line)
                if m:
                    stamped.append((m.group(1), line.strip()))
        if stamped:
            stamped.sort(key=lambda x: x[0])
            new = [v for k, v in stamped if k > last_log_stamp]
            last_log_stamp = stamped[-1][0]
            rec['log_new'] = new[-25:]
    except Exception as e:                      # pragma: no cover
        rec['errors'].append('logcat:%s' % e)

    rec['sample_cost_s'] = round(time.time() - t0, 2)
    return rec, last_log_stamp


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--serial', default='192.168.1.9:5555')
    ap.add_argument('--out', required=True, help='output directory')
    ap.add_argument('--duration', type=int, default=21900, help='seconds (>=6 h)')
    ap.add_argument('--interval', type=int, default=300, help='seconds between samples')
    args = ap.parse_args()

    os.makedirs(args.out, exist_ok=True)
    samples_path = os.path.join(args.out, 'samples.jsonl')
    log_path = os.path.join(args.out, 'sampler.log')
    last_log_stamp = ''
    start = time.time()
    deadline = start + args.duration
    idx = 0
    with open(log_path, 'a', encoding='utf-8') as log:
        log.write('START %s duration=%ds interval=%ds\n'
                  % (datetime.now().isoformat(timespec='seconds'), args.duration, args.interval))
        log.flush()
        while time.time() < deadline:
            idx += 1
            rec, last_log_stamp = sample(args.serial, last_log_stamp)
            rec['n'] = idx
            with open(samples_path, 'a', encoding='utf-8') as f:
                f.write(json.dumps(rec, ensure_ascii=False) + '\n')
            msg = ('[{ts}] #{n} pids={pids} pss={pss} ticks={ticks} svc={svc}/{started} '
                   'alarm={alarm} power={power} newlogs={logs} cost={cost}s').format(
                ts=datetime.now().strftime('%H:%M:%S'), n=idx,
                pids=','.join(str(p) for p in rec['pids']) or '-',
                pss=rec['pss_kb'], ticks=','.join(str(p['cpu_ticks']) for p in rec['procs']) or '-',
                svc=rec['svc_records'], started=rec['svc_started'],
                alarm=rec['alarm_hits'], power=rec['power_hits'],
                logs=len(rec['log_new']), cost=rec['sample_cost_s'])
            log.write(msg + '\n')
            log.flush()
            sleep = args.interval - rec['sample_cost_s']
            if sleep < 5:
                sleep = 5
            if time.time() + sleep >= deadline:
                break
            time.sleep(sleep)
        log.write('DONE %s samples=%d\n'
                  % (datetime.now().isoformat(timespec='seconds'), idx))
        log.flush()


if __name__ == '__main__':
    sys.exit(main())