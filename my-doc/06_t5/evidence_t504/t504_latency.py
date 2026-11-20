import re, sys, os, json, datetime

LINERE = re.compile(r'^(\d\d-\d\d) (\d\d:\d\d:\d\d\.\d{3})\s+(\d+)\s+(\d+)\s+([VDIWEF])\s+([^:]+):\s?(.*)$')
WAKE = re.compile(r'xengine\.cpp:769: tik|\[WAKEUP_ENGINE\].*xengine\.cpp:769:')
STREAM = re.compile(r'sessionId = (\d+), text = (.*), isFinished = (\d)')
TTS = re.compile(r'onTtsStart:141.*sessionId = (\d+), isStreaming = \d+, tts = (.*)')


def parse(path):
    wakes, streams, ttss = [], [], []
    for ln in open(path, encoding='utf-8', errors='replace'):
        m = LINERE.match(ln.rstrip('\n'))
        if not m:
            continue
        t = m.group(2)
        tag = m.group(6).strip()
        msg = m.group(7)
        if tag.startswith('XEGNLocalEngine') and 'xengine.cpp:769:' in msg and 'tian mao jing ling' in msg:
            wakes.append(t)
        elif tag == 'SessionManager' and 'onStream:641' in msg:
            mm = STREAM.search(msg)
            if mm:
                streams.append((t, int(mm.group(1)), mm.group(2), int(mm.group(3))))
        elif tag == 'TtsManager':
            mm = TTS.search(msg)
            if mm:
                ttss.append((t, int(mm.group(1)), mm.group(2)))
    return wakes, streams, ttss


def hhmmss(t):
    h, mi, s = t.split(':')
    return int(h) * 3600 + int(mi) * 60 + float(s)


def sessions(path):
    wakes, streams, ttss = parse(path)
    by = {}
    order = []
    for (t, sid, text, fin) in streams:
        if sid not in by:
            by[sid] = {'sid': sid, 'first_partial': None, 'final': None, 'texts': 0}
            order.append(sid)
        by[sid]['texts'] += 1
        if fin == 0 and by[sid]['first_partial'] is None:
            by[sid]['first_partial'] = t
        if fin == 1 and by[sid]['final'] is None:
            by[sid]['final'] = (t, text)
    # assign nearest preceding wakeup
    for sid in order:
        s = by[sid]
        anchor = s['first_partial'] or (s['final'][0] if s['final'] else None)
        if not anchor or not wakes:
            continue
        a = hhmmss(anchor)
        cand = [w for w in wakes if hhmmss(w) <= a]
        if cand:
            s['wakeup'] = cand[-1]
            s['lat_first_ms'] = int((a - hhmmss(s['wakeup'])) * 1000)
        if s['final']:
            s['lat_final_ms'] = int((hhmmss(s['final'][0]) - hhmmss(s['wakeup'])) * 1000)
    for (t, sid, text) in ttss:
        if sid in by:
            by[sid]['tts'] = text
            if 'wakeup' in by[sid]:
                by[sid]['lat_tts_ms'] = int((hhmmss(t) - hhmmss(by[sid]['wakeup'])) * 1000)
    return [by[s] for s in order]


if __name__ == '__main__':
    out = {}
    for name, path in [(a, b) for a, b in zip(sys.argv[1::2], sys.argv[2::2])]:
        out[name] = sessions(path)
    print(json.dumps(out, ensure_ascii=False, indent=1))
