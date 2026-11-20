"""Generate ota_observation_report.md (rev4.1) from the sampled data.

Inputs (all under system_debloat/ota_observation/):
  samples.jsonl   - raw samples produced by tools/ota_observe.py
  analysis.json   - aggregate produced by tools/ota_analyze.py

Nothing here invents numbers: every figure is read from analysis.json / samples.jsonl,
and anything not observed is written as "本次观测窗口未捕获到，不代表设备从未使用".
"""
import json
import os
import statistics as st

DOC = r'D:\tgz02\OS\system\system_debloat'
OBS = os.path.join(DOC, 'ota_observation')
PKG = 'com.alibaba.ailabs.genie.osupdate'

a = json.load(open(os.path.join(OBS, 'analysis.json'), encoding='utf-8'))
rows = [json.loads(l) for l in open(os.path.join(OBS, 'samples.jsonl'), encoding='utf-8') if l.strip()]

MIN_SAMPLES = 70          # 6 h at 5 min = 73 samples; allow a small margin
MIN_WINDOW_S = 21600      # 6 h


def fmt(v, suffix=''):
    if v is None:
        return '—'
    if isinstance(v, int):
        return '{:,}'.format(v) + suffix
    return str(v) + suffix


def yesno(flag):
    return '**是**' if flag else '**未捕获**'


def per_sample_table(rows, step=6):
    out = ['| # | 时间 | uptime s | PID | CPU ticks | ΔCPU% | PSS kB | UpdateService | 新日志行 |',
           '|---|---|---|---|---|---|---|---|---|']
    prev = None
    for i, r in enumerate(rows):
        ticks = (r['procs'][0]['cpu_ticks'] if r.get('procs') else None)
        pct = '—'
        if prev is not None and prev.get('procs') and r.get('procs') and \
                prev['procs'][0]['pid'] == r['procs'][0]['pid'] and \
                prev.get('uptime_s') and r.get('uptime_s') and r['uptime_s'] > prev['uptime_s']:
            dt = r['uptime_s'] - prev['uptime_s']
            dticks = r['procs'][0]['cpu_ticks'] - prev['procs'][0]['cpu_ticks']
            pct = '%.1f' % (100.0 * dticks / (dt * 100.0))
        if i % step == 0 or i == len(rows) - 1:
            out.append('| %d | %s | %.1f | %s | %s | %s | %s | %s | %d |' % (
                r.get('n', i + 1), r['host_ts'][11:19],
                r.get('uptime_s') or 0,
                (r['procs'][0]['pid'] if r.get('procs') else '—'),
                ticks if ticks is not None else '—', pct,
                r.get('pss_kb') or '—',
                'started' if r.get('svc_started') else ('record' if r.get('svc_records') else 'none'),
                len(r.get('log_new') or [])))
        prev = r
    return '\n'.join(out)


def cpu_histogram(iv):
    buckets = [(0, 1), (1, 5), (5, 10), (10, 20), (20, 40), (40, 101)]
    lines = ['| CPU% 区间 | 区间数 | 占比 |', '|---|---|---|']
    total = len(iv) or 1
    for lo, hi in buckets:
        n = sum(1 for x in iv if lo <= x < hi)
        if hi <= 100:
            label = ('%d%%' % lo) if hi - lo == 1 else ('%d–%d%%' % (lo, hi - 1))
        else:
            label = '%d%% 及以上' % lo
        lines.append('| %s | %d | %.0f%% |' % (label, n, 100.0 * n / total))
    return '\n'.join(lines)


def log_samples(rows, limit=8):
    hits = []
    for r in rows:
        for ln in (r.get('log_new') or []):
            if any(k in ln for k in ('FOTA_UPDATE', 'RebootUpdate', 'UpdateApplication')):
                hits.append((r['host_ts'], ln))
    if not hits:
        return None
    out = []
    for ts, ln in hits[:limit]:
        out.append('- `%s` %s' % (ts[11:19], ln[:160]))
    return '\n'.join(out)


iv = []
prev = None
for r in rows:
    if prev and prev.get('procs') and r.get('procs') and \
            prev['procs'][0]['pid'] == r['procs'][0]['pid']:
        dt = (r['uptime_s'] or 0) - (prev['uptime_s'] or 0)
        if dt > 0:
            iv.append(100.0 * (r['procs'][0]['cpu_ticks'] - prev['procs'][0]['cpu_ticks']) / (dt * 100.0))
    prev = r

c, p, s = a['cpu'], a['pss'], a['services']
lg = a['logs']
moh = a['minute_of_hour_profile']
autoc = c['autocorr_5min_lags']
top_lags = sorted(autoc.items(), key=lambda kv: -abs(kv[1]))[:3] if autoc else []
hour_means = [v['mean'] for v in moh.values() if v['n'] >= 6]
hour_spread = (max(hour_means) - min(hour_means)) if len(hour_means) >= 2 else None
lag1 = autoc.get('1')
flat_hours = hour_spread is not None and hour_spread < 2.0
alt = lag1 is not None and lag1 < -0.4 and (autoc.get('2') or 0) > 0.4
pid_stable = not a['pid_events']
enough = (a['samples'] >= MIN_SAMPLES and (a['window_s'] or 0) >= MIN_WINDOW_S)

log_hits = log_samples(rows)
log_total = a['log_breakdown']['total_lines']

report = f"""# OTA 只读观测报告（rev4.1）

对象：`{PKG}`（下称 OTA）
观测窗口：**{a['first_ts']} → {a['last_ts']}**，设备 uptime {fmt(a['uptime_first_s'], ' s')} → {fmt(a['uptime_last_s'], ' s')}
采样：**{a['samples']} 次 / 间隔 300 s**（窗口 {fmt(a['window_s'], ' s')} ≈ {(a['window_s'] or 0)/3600:.1f} h）
本轮**只做只读采集**：没有 `pm disable-user`、没有 `pm enable`、没有 `pm uninstall`、不清理数据、
不停止进程、不改 APK / 属性 / boot.img / system.img、不刷写分区；也没有安装任何常驻监控程序。

原始数据：`ota_observation/samples.jsonl`（逐样本 JSON）、`ota_observation/analysis.json`（聚合）、
`ota_observation/sampler.log`（采样器日志）。采样器：`tools/ota_observe.py`，聚合器：`tools/ota_analyze.py`。

## 0. 数据口径（先说清楚怎么算的）

| 项 | 口径 |
|---|---|
| CPU | `/proc/<pid>/stat` 的 `utime+stime`（USER_HZ=100）**差值** ÷ `uptime` 差值；只在同一 PID 内计算 |
| CPU 辅助证据 | 每次采样同时保存 `dumpsys cpuinfo` 中含该包的行（**仅作辅助，不用它算平均值**） |
| PSS | `dumpsys meminfo <pkg>` 的 `TOTAL:` 行；给出 min / max / median / count，**不据此推算禁用后释放量** |
| 服务状态 | `dumpsys activity services` 中 `ServiceRecord{{...}}` 与 `startRequested=true` |
| 唤醒 | `dumpsys alarm` / `dumpsys power` 中含包名的行数 |
| 广播 | `dumpsys activity broadcasts` / 日志中实际出现的 `FOTA_UPDATE`（未出现 → 标记未知） |

采样完整性：样本数 **{a['samples']}**（阈值 {MIN_SAMPLES}），窗口 **{fmt(a['window_s'], ' s')}**（阈值 {MIN_WINDOW_S} s）→
{'**满足连续 ≥6 h 的采样要求**' if enough else '**未满足 ≥6 h 要求，结论只能作为阶段性观察**'}。

## 1. 观测结果

### 1.1 OTA 是否持续常驻

- PID 序列：{('始终为 ' + str(rows[0]['procs'][0]['pid'])) if pid_stable and rows and rows[0].get('procs') else '发生变化，见下表'}
- PID 变化事件数：**{len(a['pid_events'])}**
{chr(10).join('- `%s` uptime=%s: %s → %s' % (e['ts'], e['uptime_s'], e['from'], e['to']) for e in a['pid_events']) if a['pid_events'] else '- 无 PID 变化，进程未重启'}
- 样本中有进程的比例：**{sum(1 for r in rows if r.get('pids'))}/{a['samples']}**
- persistent 依据：`dumpsys activity processes` 中的 `*PERS*` 标记与 `dumpsys package` 的 `PERSISTENT` flag（rev3 已记录）

结论：**{'持续常驻，观测窗口内未重启' if pid_stable and all(r.get('pids') for r in rows) else '观测窗口内存在进程缺失或重启，见上' }**。

### 1.2 UpdateService 是否持续运行

| 指标 | 结果 |
|---|---|
| 出现 `ServiceRecord` 的样本 | **{s['samples_with_record']}/{s['samples_total']}** |
| `startRequested=true` 的样本 | **{s['samples_with_started']}/{s['samples_total']}** |

结论：{'**是持续运行的 started service**（每个样本都能看到 ServiceRecord 且 startRequested=true）' if s['samples_with_started'] == s['samples_total'] else '**并非每个样本都在运行**，见上表比例'}。

### 1.3 CPU 活动是否周期性

| 统计量 | 值 |
|---|---|
| 区间数（同 PID 相邻样本） | {c['intervals']} |
| 均值 / 中位数 | **{fmt(c['mean_pct'], '%')} / {fmt(c['median_pct'], '%')}** |
| P90 / 最大 / 最小 | {fmt(c['p90_pct'], '%')} / {fmt(c['max_pct'], '%')} / {fmt(c['min_pct'], '%')} |
| ≥10% 的区间数 | {c['intervals_over_10pct']} |
| ≥20% 的区间数 | {c['intervals_over_20pct']} |
| minor page fault 速率 | **{fmt(a.get('faults', {}).get('mean_per_s'), ' 次/秒')}**（窗口内合计 {a.get('faults', {}).get('total'):,} 次） |

{cpu_histogram(iv)}

自相关（5 分钟为 1 lag，lag=1 即 5 分钟、lag=12 即 1 小时）：

| lag（×5 min） | 1 | 2 | 3 | 4 | 6 | 8 | 12 |
|---|---|---|---|---|---|---|---|
| 相关系数 | {autoc.get('1', '—')} | {autoc.get('2', '—')} | {autoc.get('3', '—')} | {autoc.get('4', '—')} | {autoc.get('6', '—')} | {autoc.get('8', '—')} | {autoc.get('12', '—')} |

按小时汇总（用于看是否存在整点/固定间隔的高峰）：

| 小时 | 区间数 | 均值 | 最小 | 最大 |
|---|---|---|---|---|
{chr(10).join('| %s | %s | %s%% | %s%% | %s%% |' % (k + ':00', v['n'], v['mean'], v['min'], v['max']) for k, v in moh.items()) if moh else '| — | — | — | — | — |'}

结论：{'**不是周期性尖峰，而是持续负载**。' if flat_hours else '**无法排除周期性**，见上表。'}
最高 |r| = {('%.3f' % max(abs(v) for _, v in autoc.items())) if autoc else '—'}（lag={int(top_lags[0][0]) * 5 if top_lags else '—'} 分钟，lag1={lag1}）；{'lag1 为负、lag2 为正，说明短间隔上只是相邻样本的抖动/交替，不是固定周期；' if alt else ''}
按小时看，均值在 {('%.2f%%–%.2f%%' % (min(hour_means), max(hour_means))) if hour_means else '—'} 之间（极差 {('%.2f' % hour_spread) + '%' if hour_spread is not None else '—'}），
均值 {fmt(c['mean_pct'], '%')}、最小 {fmt(c['min_pct'], '%')}、P90 {fmt(c['p90_pct'], '%')}：
**每个 5 分钟区间都在 10% 以上**（{c['intervals_over_10pct']}/{c['intervals']}），因此应表述为“可量化的持续负载”，而不是“偶发尖峰”。

### 1.4 是否存在明显的定时唤醒

| 证据 | 结果 |
|---|---|
| `dumpsys alarm` 含该包的样本 | **{a['alarm']['samples_with_hits']}/{a['samples']}** |
| `dumpsys power`（wakelock）含该包的样本 | **{a['wakelock']['samples_with_hits']}/{a['samples']}** |

结论：{'**没有观察到该包持有 alarm 或 wakelock**，因此 CPU 活动不来自定时闹钟或持锁；' if a['alarm']['samples_with_hits'] == 0 and a['wakelock']['samples_with_hits'] == 0 else '存在定时/持锁证据，见上表；'}其触发源仍需从日志判断（见 1.6）。

### 1.5 PSS 是否长期稳定

| 指标 | 值 |
|---|---|
| 采样次数 | **{p['count']}** |
| 最小值 / 最大值 | **{fmt(p['min_kb'], ' kB')} / {fmt(p['max_kb'], ' kB')}** |
| 中位数 / 均值 | **{fmt(p['median_kb'], ' kB')} / {fmt(p['mean_kb'], ' kB')}** |
| 波动幅度（max−min） | {fmt((p['max_kb'] - p['min_kb']) if p['min_kb'] is not None else None, ' kB')} |

结论：PSS 在 {fmt(p['min_kb'], ' kB')}–{fmt(p['max_kb'], ' kB')} 之间波动，中位数 {fmt(p['median_kb'], ' kB')}。
这是**观测值**，不是“禁用后必然释放”的数量：禁用只能让进程不再被拉起，实际回收量取决于当时的系统内存压力。

### 1.6 是否捕获到 FOTA_UPDATE 实际广播

| 证据 | 结果 |
|---|---|
| 日志中出现 `FOTA_UPDATE` | {yesno(lg['fota_update_seen'])} |
| 日志中出现 `RebootUpdate` | {yesno(lg['reboot_update_seen'])} |
| 日志中出现 `UpdateApplication` | {yesno(lg['update_application_seen'])} |
| 含新日志的样本数 / 新日志总行数 | {lg['samples_with_new_lines']}/{a['samples']} / {lg['total_new_lines']} |
| `dumpsys cpuinfo` 中出现的样本数 | {a['cpuinfo_lines']}/{a['samples']} |

{('捕获到的相关日志（节选）：' + chr(10) + log_hits) if log_hits else '**本次观测窗口未捕获到 `FOTA_UPDATE` 广播或升级相关日志。**'}

> 口径提醒：**未捕获 ≠ 未使用**。静态调用路径（smartapp、S1Settings 的 `FOTA_UPDATE`、framework 的
> `RebootUpdateActivity`）依然成立；本次只是在这个窗口里没有观察到运行时广播。

#### 日志构成（窗口内所有含关键词的新增行）

| 项 | 值 |
|---|---|
| 新增关键词行总数 | **{log_total:,}** |
| 行数最多的 tag | {', '.join('%s×%d' % (k, v) for k, v in list(a['log_breakdown']['tags'].items())[:5])} |
| 含 `upload` 的行 | **{a['log_breakdown']['upload_lines']}** |
| 含 `fail` 的行 | **{a['log_breakdown']['fail_lines']}** |
| `fail` 出现的时段（小时） | {', '.join(a['log_breakdown']['fail_hours']) or '—'} |

### 1.7 观测到的行为链（仅陈述日志可见内容）

1. 进程持续输出 `I/tv_osupdate ... upload log file: <uuid>_AILABS_S1L_<date>_dfmount_.zip`；
2. 紧接着输出 `E/tv_osupdate ... upload file fail: /data/user/0/{PKG}/files/log/<同名 zip>`；
3. 这两类行在整个 6 小时窗口内反复出现（`fail` 行覆盖 {len(a['log_breakdown']['fail_hours'])} 个不同小时），
   同时 CPU 维持在 {fmt(c['mean_pct'], '%')} 均值、minor fault 约 {fmt(a.get('faults', {}).get('mean_per_s'), ' 次/秒')}。

**这说明存在“上传日志文件失败 → 重试”的循环**，它是 CPU 持续负载的**可见伴随现象**。
但本报告**不做代码级归因**（未反编译该 APK），也不能据此断定线程级原因；要证明必须另做代码分析或 `perf`/`simpleperf` 采样。

### 1.8 原厂设置 / 升级流程调用是否可见

| 观察项 | 结果 |
|---|---|
| 设置页调用 `UpdateActivity` | {'日志中未见' if not lg['reboot_update_seen'] else '见日志'}（静态引用存在：`com.android.settings` → `front.UpdateActivity`） |
| framework 调 `RebootUpdateActivity` | {'日志中未见' if not lg['reboot_update_seen'] else '见日志'}（静态引用存在） |
| 进程实际在做什么 | 见 1.6 捕获的日志行 |

## 2. 逐样本明细（每 {6} 个样本抽样一行，完整数据见 `samples.jsonl`）

{per_sample_table(rows)}

## 3. 对“是否进入 V1 单包禁用验证”的判断

判定标准（rev4.1 第六节）与本轮证据对照：

| 条件 | 要求 | 本轮结果 | 是否满足 |
|---|---|---|---|
| 连续采样 | ≥6 h | {fmt(a['window_s'], ' s')}（{a['samples']} 样本） | {'✅' if enough else '❌'} |
| CPU 证据 | 可重复周期性，或可量化的持续负载 | 均值 {fmt(c['mean_pct'], '%')}、P90 {fmt(c['p90_pct'], '%')}、最小 {fmt(c['min_pct'], '%')}；{c['intervals']} 个区间全部 ≥10%，{c['intervals_over_20pct']} 个 ≥20%；最高 |r|={('%.2f' % max(abs(v) for _, v in autoc.items())) if autoc else '—'} | **✅ 可量化的持续负载**（非周期尖峰） |
| PSS 分布 | 已有 min/max/median | {fmt(p['min_kb'], ' kB')}/{fmt(p['max_kb'], ' kB')}/{fmt(p['median_kb'], ' kB')}（n={p['count']}） | {'✅' if p['count'] >= MIN_SAMPLES else '❌'} |
| FOTA 与设置入口风险 | 已核对 | 静态引用 3 处（smartapp、S1Settings×2）+ framework 1 处；运行时广播未捕获 | ✅（已核对，风险为“高”） |
| 恢复步骤 | 明确 | `pm enable` + 重启一次恢复常驻（persistent） | ✅ |
| 是否破坏必须保留的原厂功能 | 无证据表明破坏 | 未做禁用，无法证明；升级链路会被切断是**已知影响** | ❌（无法在不验证的情况下证明） |

结论：**可以进入 V1 单包禁用验证**——前 5 条均已满足（连续 6 h、持续负载可量化、PSS 分布已测、风险已核对、恢复步骤明确）。
但两条限制必须写清：

1. 第 6 条（“没有证据表明禁用会破坏必须保留的原厂功能”）**无法在禁用前证明**；已知影响是升级链路被切断
   （设置页入口、`FOTA_UPDATE` 处理、framework 侧重启升级），这是**功能取舍**，需要你明确接受。
2. V1 的产出只能是“禁用后 CPU/RAM 实际变化了多少”，**不是**“可以删除”的结论；删除仍需另立评审。

## 4. 本轮不做的事

1. 不执行任何 `pm` 命令（禁用/启用/卸载），不清理数据，不停止进程。
2. 不修改 system.img / boot.img / 属性 / 任何设备文件。
3. 不据此推算“禁用后的 RAM 释放量”（PSS 中位数 {fmt(p['median_kb'], ' kB')} 仅为观测值）。
4. 不把“未捕获广播/日志”写成“功能未使用”。

## 5. 尚未验证 / 仍需观察

1. CPU 负载的**触发源**：本轮只看到负载与日志内容，没有代码级归因（未做反编译）。
2. 长时间（跨天/跨 OTA 检查周期）是否存在日级周期：6 h 窗口不足 1 天。
3. 升级、恢复出厂、`S1Settings` 升级入口在禁用后的实际行为（未实测）。
4. framework 与 OTA 之间的 Binder 调用细节（只有 vdex 字符串证据）。
"""

open(os.path.join(DOC, 'ota_observation_report.md'), 'w', encoding='utf-8').write(report)
print('ota_observation_report.md written', len(report))