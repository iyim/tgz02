import json, os, collections

BASE = r"D:\tgz02\OS\_analysis\t504"
DST = r"D:\tgz02\OS\system\my-doc\06_t5\evidence_t504"
files = [('A', 'A.log'), ('B/C', 'BC.log'), ('C2', 'C2.log')]

rows = []
per_hook = collections.Counter()
per_hook_type = collections.Counter()

for label, fn in files:
    recs = []
    for ln in open(os.path.join(BASE, fn), encoding='utf-8'):
        ln = ln.strip()
        if not ln:
            continue
        r = json.loads(ln)
        if r.get('t') != 'asr':
            continue
        recs.append(r)
        per_hook[r['hook']] += 1
        per_hook_type[(r['hook'], r.get('result_type'))] += 1
    sessions = collections.OrderedDict()
    for r in recs:
        sid = r.get('session_id')
        sessions.setdefault(sid, []).append(r)
    for sid, rs in sessions.items():
        h1 = [x for x in rs if x['hook'] == 'H1']
        if not h1:
            continue
        partials = [x for x in h1 if x.get('result_type') == 'partial']
        finals = [x for x in h1 if x.get('result_type') == 'final']
        last_partial = partials[-1]['text'] if partials else ''
        final_text = finals[0]['text'] if finals else ''
        rows.append({
            'run': label, 'sid': sid, 'h1_hits': len(h1),
            'partials': len(partials), 'finals': len(finals),
            'last_partial': last_partial, 'final': final_text,
            'final_equals_last_partial': (last_partial == final_text),
            'final_is_superstring': (last_partial in final_text) if last_partial else None,
            'first_ts': h1[0]['ts'], 'final_ts': finals[0]['ts'] if finals else ''
        })

lines = ['# T5-04 逐会话汇总（只统计 H1 `SessionManager::onStream`，它带回 isFinished 标志）', '',
         '| 实验 | sessionId | H1 回调数 | partial | final | 最后一个 partial | final 文本 | final==最后 partial |',
         '|---|---|---|---|---|---|---|---|']
for r in rows:
    lines.append('| %s | %s | %d | %d | %d | %s | %s | %s |' % (
        r['run'], r['sid'], r['h1_hits'], r['partials'], r['finals'],
        r['last_partial'], r['final'], '是' if r['final_equals_last_partial'] else '否'))

lines += ['', '## 各 Hook 命中统计（全部三个实验合计）', '',
          '| Hook | 函数 | 命中 | partial | final | post_final | 说明 |', '|---|---|---|---|---|---|---|']
desc = {
    'H1': '主钩子，带 isFinished，final 判定以它为准',
    'H2': '无 final 标志（第 4 参 ABI 未落定）；8 条 post_final 实为 8 个会话的 final 事件，非重复',
    'H3': '引擎侧 dirty 文本；比 H1 少 11 条（引擎侧对部分中间结果有合并/丢弃，规则未确认）',
    'H4': '带 asrLogId；比 H1 多 9 条 post_final（同一 final 之后仍有引擎侧投递）',
}
for h in ['H1', 'H2', 'H3', 'H4']:
    lines.append('| %s | 见脚本 | %d | %d | %d | %d | %s |' % (
        h, per_hook[h], per_hook_type[(h, 'partial')], per_hook_type[(h, 'final')],
        per_hook_type[(h, 'post_final')], desc[h]))

lines += ['', '> `post_final` 是**顺序标签**（该 Hook 的文本出现在本会话 final 之后），',
          '> 只有 H1 的 `final` 是原厂 isFinished=1 的权威判定。']

open(os.path.join(DST, 't504_session_summary.md'), 'w', encoding='utf-8', newline='\n').write('\n'.join(lines) + '\n')
print('\n'.join(lines))
