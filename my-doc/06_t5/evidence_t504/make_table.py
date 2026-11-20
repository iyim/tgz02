import os, importlib.util

BASE = r"D:\tgz02\OS\_analysis\t504"
spec = importlib.util.spec_from_file_location('lat', os.path.join(BASE, 'latency.py'))
lat = importlib.util.module_from_spec(spec)
spec.loader.exec_module(lat)

runs = [
    ('A（Hook ON，3 句独立会话）', os.path.join(BASE, 'cap_A', 'logcat_A.txt')),
    ('B/C（Hook ON，连续 3 句 + 用户长录音）', os.path.join(BASE, 'cap_BC', 'logcat_BC.txt')),
    ('C2（Hook ON，6.8 s 连续长句）', os.path.join(BASE, 'cap_C2', 'logcat_C2.txt')),
    ('E（Hook OFF 对照）', os.path.join(BASE, 'cap_E', 'logcat_E.txt')),
]

lines = []
lines.append('# T5-04 会话与延迟实测（由 t504_latency.py 从设备 logcat 计算）')
lines.append('')
lines.append('锚点：同一会话内第一条 `[WAKEUP_ENGINE] xengine.cpp:769` 唤醒日志。')
lines.append('延迟：`SessionManager.cpp:onStream:641` 的原厂日志时间戳（与探针读取同一函数、同一时刻）。')
lines.append('')
lines.append('| 实验 | sessionId | 唤醒→首个 partial | 唤醒→final | 唤醒→TTS | partial 条数 | final 文本 |')
lines.append('|---|---|---|---|---|---|---|')

for label, path in runs:
    for s in lat.sessions(path):
        final_text = s['final'][1] if s['final'] else '（无 final）'
        lines.append('| %s | %s | %s ms | %s ms | %s | %d | %s |' % (
            label, s['sid'],
            s.get('lat_first_ms'), s.get('lat_final_ms'),
            (str(s.get('lat_tts_ms')) + ' ms') if s.get('lat_tts_ms') else '—',
            s['texts'], final_text))

lines.append('')
lines.append('## 汇总')
lines.append('')
first = []
for label, path in runs:
    for s in lat.sessions(path):
        if s.get('lat_first_ms'):
            first.append((label, s['lat_first_ms']))
on = [v for k, v in first if not k.startswith('E')]
off = [v for k, v in first if k.startswith('E')]
lines.append('- Hook ON 会话数 %d，唤醒→首个 partial：min %d / max %d / 均值 %.0f ms' % (
    len(on), min(on), max(on), sum(on) / len(on)))
lines.append('- Hook OFF 对照（E）：%s ms' % ', '.join(str(v) for v in off))
lines.append('- T5-03 无 Hook 基线（上一轮记录）：309 ms（C1）/ 355 ms（A3）')
lines.append('')
lines.append('> 说明：唤醒锚点取同一次唤醒爆发的第一条 xengine 日志，该爆发本身有约 90 ms 抖动，')
lines.append('> 因此毫秒级差异不能单独归因于 Hook；判定见报告 §7。')

out = os.path.join(r"D:\tgz02\OS\system\my-doc\06_t5\evidence_t504", 't504_latency_table.md')
open(out, 'w', encoding='utf-8', newline='\n').write('\n'.join(lines) + '\n')
print('\n'.join(lines))
