#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""collect.py -- T5-05C evidence collector (scratch tool).

For each case tag:
  * trim <tag>.out into <tag>_trace.txt (drop repeated identical [stat] lines)
  * summarise counters into <tag>_summary.json
Also writes c5_queue_samples.txt (queue_depth over time) when c5 data exists.
"""
import io
import json
import os
import re
import sys

P1 = os.path.dirname(os.path.abspath(__file__))
TAGS = ['c1', 'c2', 'c3', 'c4', 'c5',
        'c6_badid', 'c6_badcrc', 'c6_badtype', 'c6_dup',
        'c6_error', 'c6_reject', 'c6_rejectnull', 'c6_silent']

KEYRE = re.compile(r'([A-Za-z_]+)=([^\s]+)')


def parse_stat(line):
    m = line.split(']', 2)
    body = line.split('[stat]', 1)[1] if '[stat]' in line else line
    body = body.split(']', 1)[-1]
    return {k: v for k, v in KEYRE.findall(body)}


def main():
    out_dir = sys.argv[1] if len(sys.argv) > 1 else os.path.join(P1, 'evidence')
    os.makedirs(out_dir, exist_ok=True)
    all_summary = {}

    for tag in TAGS:
        out_path = os.path.join(P1, tag + '.out')
        jsonl_path = os.path.join(P1, tag + '.jsonl')
        if not os.path.exists(out_path):
            continue

        kept, last_key, stats = [], None, []
        for line in io.open(out_path, encoding='utf-8'):
            line = line.rstrip('\n')
            if line.startswith('[stat]'):
                body = line.split('[stat]', 1)[1]
                key = re.sub(r'lastErr=\S+', '', body)
                if key == last_key:
                    continue
                last_key = key
                stats.append(parse_stat(line))
                kept.append(line)
                continue
            if re.match(r'^\[(conn|sent|ack|rejected|retry|drop|ack_mismatch|frame_rejected|'
                        r'precheck|ready|stopped|runner|error|fatal)\]', line):
                kept.append(line)
        io.open(os.path.join(out_dir, tag + '_trace.txt'), 'w', encoding='utf-8').write(
            '\n'.join(kept) + '\n')

        recs = []
        if os.path.exists(jsonl_path):
            for line in io.open(jsonl_path, encoding='utf-8'):
                try:
                    recs.append(json.loads(line))
                except Exception:
                    pass

        final = [r for r in recs if r.get('t') in ('final_stats', 'pre_stop_stats')]
        pre_unload = [r for r in recs if r.get('t') == 'pre_unload_stats']
        summary = {
            'tag': tag,
            'stat_lines': len(stats),
            'max_queue_depth': max([int(s.get('q', 0)) for s in stats], default=None),
            'max_pending_seen': None,
            'last_stat': stats[-1] if stats else None,
            'final_stats': final[-1]['stats'] if final else None,
            'pre_unload_stats': pre_unload[-1]['stats'] if pre_unload else None,
            'pre_unload_wall': pre_unload[-1]['wall'] if pre_unload else None,
            'sends': [r for r in recs if r.get('t') == 'sent'],
            'acks': [r for r in recs if r.get('t') == 'ack'],
            'rejected': [r for r in recs if r.get('t') == 'rejected'],
            'frame_rejected': [r for r in recs if r.get('t') == 'frame_rejected'],
            'retries': [r for r in recs if r.get('t') == 'retry'],
            'drops': [r for r in recs if r.get('t') == 'drop'],
            'mismatches': [r for r in recs if r.get('t') == 'ack_mismatch'],
            'unloads': [r for r in recs if r.get('t') in ('runner_unload', 'runner_stop',
                                                          'runner_load')],
        }
        io.open(os.path.join(out_dir, tag + '_summary.json'), 'w',
                encoding='utf-8').write(json.dumps(summary, ensure_ascii=False, indent=1))
        all_summary[tag] = summary

        if tag == 'c5' and stats:
            lines = ['t_index q ovf final stored retry connErr lastErr']
            for i, s in enumerate(stats):
                lines.append('%4d %3s %3s %5s %6s %5s %7s %s' % (
                    i, s.get('q'), s.get('ovf'), s.get('final'), s.get('stored'),
                    s.get('retry'), s.get('connErr'), s.get('lastErr')))
            lines.append('max_queue_depth = %s' % summary['max_queue_depth'])
            io.open(os.path.join(out_dir, 'c5_queue_samples.txt'), 'w',
                    encoding='utf-8').write('\n'.join(lines) + '\n')

    io.open(os.path.join(out_dir, 'all_summary.json'), 'w', encoding='utf-8').write(
        json.dumps(all_summary, ensure_ascii=False, indent=1))
    print('collected %d tags -> %s' % (len(all_summary), out_dir))


if __name__ == '__main__':
    main()
