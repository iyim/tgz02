import re, sys, os

SRC = {
    'A3': r"D:\tgz02\OS\_analysis\t503\cap_A3\cap_A3\logcat.txt",
    'B1': r"D:\tgz02\OS\_analysis\t503\cap_B1\cap_B1\logcat.txt",
    'C1': r"D:\tgz02\OS\_analysis\t503\cap_C1\cap_C1\logcat.txt",
}
OUT = r"D:\tgz02\OS\system\my-doc\06_t5\evidence_t503"

TAGS = [
    'XEGNLocalEngine.cpp', 'AGSpeechEngine', 'AGSpeechEngineProxy', 'CloudASRManager',
    'LocalASRManager', 'VadStateMachine', 'GcsManager', 'Websocket-gateway', 'ProtocolParser',
    'Performance', 'TtsManager', 'SessionManager', 'LocalSession', 'OfflineDecision',
    'webrtc', 'AudioRecord', 'NativeUIManager', 'GenieAssistantUIManager', 'AkAudioRecord',
]
NOISY = [
    # keep tag line but drop high-frequency data-pump chatter
    'VadStateMachine: handleSpeech,395',
    'VadStateMachine: handleSpeech,434',
    'onUserTrace',
]

REDACT = [
    (re.compile(r'"uuid":\s*"[0-9A-Fa-f]{16,}"'), '"uuid": "<redacted>"'),
    (re.compile(r'"logId":\s*"[0-9a-f]{16,}"'), '"logId": "<redacted>"'),
    (re.compile(r'"requestId":\s*"[0-9a-f]{16,}"'), '"requestId": "<redacted>"'),
    (re.compile(r'"digest":\s*"[0-9a-f]{32,}"'), '"digest": "<redacted>"'),
    (re.compile(r'[0-9a-f]{32}'), '<hexid>'),
    # device uuid and any other long hex token (recordId, logId, ...)
    (re.compile(r'\b[0-9A-Fa-f]{24,}\b'), '<id>'),
]

def redact(line):
    for rx, rep in REDACT:
        line = rx.sub(rep, line)
    return line

def main():
    for tag, src in SRC.items():
        lines = open(src, encoding='utf-8', errors='replace').read().splitlines()
        keep = []
        for ln in lines:
            if not any(t in ln for t in TAGS):
                continue
            if any(n in ln for n in NOISY):
                continue
            keep.append(redact(ln))
        dst = os.path.join(OUT, 'exp_%s_pipeline_events.txt' % tag.lower())
        with open(dst, 'w', encoding='utf-8', newline='\n') as f:
            f.write('\n'.join(keep) + '\n')
        print(tag, len(lines), '->', len(keep), os.path.basename(dst))

if __name__ == '__main__':
    main()
