import json, re, os, glob, hashlib, datetime

SRC = r"D:\tgz02\OS\_analysis\t504"
DST = r"D:\tgz02\OS\system\my-doc\06_t5\evidence_t504"
os.makedirs(DST, exist_ok=True)

HEX = re.compile(r'\b[0-9A-Fa-f]{24,}\b')

TAGSET = [
    'SessionManager', 'SessionDispatch', 'SessionProxy', 'Performance', 'TtsManager',
    'AGSpeechEngine', 'AGSpeechEngineProxy', 'CloudASRManager', 'LocalASRManager',
    'VadStateMachine', 'XEGNLocalEngine.cpp', 'GcsManager', 'Websocket-gateway',
    'ProtocolParser', 'AudioStateManager', 'AudioSystem', 'GenieAssistantUIManager',
    'NativeUIManager', 'AudioRecord', 'AGSpeechEngineProxy'
]
NOISY = ['handleSpeech,395', 'handleSpeech,434', 'onUserTrace', 'mainProcess,1737']


def redact(s):
    s = re.sub(r'"asrLogId":"[0-9a-f]{16,}"', '"asrLogId":"<redacted>"', s)
    s = re.sub(r'"logId":\s*"[0-9a-f]{16,}"', '"logId":"<redacted>"', s)
    s = re.sub(r'"uuid":\s*"[0-9A-Fa-f]{16,}"', '"uuid":"<redacted>"', s)
    s = re.sub(r'"requestId":\s*"[0-9a-f]{16,}"', '"requestId":"<redacted>"', s)
    s = re.sub(r'"digest":\s*"[0-9a-f]{32,}"', '"digest":"<redacted>"', s)
    return HEX.sub('<id>', s)


def probe_jsonl(src, dst):
    out = []
    for ln in open(os.path.join(SRC, src), encoding='utf-8'):
        ln = ln.strip()
        if not ln:
            continue
        try:
            rec = json.loads(ln)
        except Exception:
            continue
        if rec.get('asr_log_id'):
            rec['asr_log_id'] = '<redacted>'
        out.append(json.dumps(rec, ensure_ascii=False))
    open(os.path.join(DST, dst), 'w', encoding='utf-8', newline='\n').write('\n'.join(out) + '\n')
    return len(out)


def logcat_extract(src, dst):
    keep = []
    for ln in open(os.path.join(SRC, src), encoding='utf-8', errors='replace'):
        if not any(t in ln for t in TAGSET):
            continue
        if any(n in ln for n in NOISY):
            continue
        keep.append(redact(ln.rstrip('\n')))
    open(os.path.join(DST, dst), 'w', encoding='utf-8', newline='\n').write('\n'.join(keep) + '\n')
    return len(keep)


def copy_text(src, dst):
    data = open(os.path.join(SRC, src), encoding='utf-8', errors='replace').read()
    open(os.path.join(DST, dst), 'w', encoding='utf-8', newline='\n').write(redact(data))


if __name__ == '__main__':
    n1 = probe_jsonl('A.log', 't504_test_a_hits.jsonl')
    n2 = probe_jsonl('BC.log', 't504_test_bc_hits.jsonl')
    n3 = probe_jsonl('C2.log', 't504_test_c2_hits.jsonl')
    e1 = logcat_extract(r'cap_A\logcat_A.txt', 't504_logcat_a_extract.txt')
    e2 = logcat_extract(r'cap_BC\logcat_BC.txt', 't504_logcat_bc_extract.txt')
    e3 = logcat_extract(r'cap_C2\logcat_C2.txt', 't504_logcat_c2_extract.txt')
    e4 = logcat_extract(r'cap_E\logcat_E.txt', 't504_logcat_e_extract.txt')
    for a, b in [('A_play.log', 't504_test_a_play_log.txt'), ('BC_play.log', 't504_test_bc_play_log.txt'),
                 ('C2_play.log', 't504_test_c2_play_log.txt'), ('E_play.log', 't504_test_e_play_log.txt')]:
        copy_text(a, b)
    print('probe hits: A=%d BC=%d C2=%d' % (n1, n2, n3))
    print('logcat lines: A=%d BC=%d C2=%d E=%d' % (e1, e2, e3, e4))
