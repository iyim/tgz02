# t9_28_corpus_stats.py -- T9-28: 现有真实语料的规模统计（只读）
#
# 目的：判定 T9-27 提出的"≥300 条标注语料"门槛能不能用仓库/设备上已有的数据满足。
# 输入：evidence/t9-28/corpus/*.jsonl（从设备 /data/local/tmp/t5_bridge/work 原样拉取）
# 输出：stdout 报告 + corpus_unique.txt（去重后的真实话术，供人工标注）
import json, os, sys, hashlib, collections

HERE = os.path.dirname(os.path.abspath(__file__))
CORPUS = os.path.join(HERE, "corpus")
OUT = os.path.join(HERE, "corpus_unique.txt")

files = sorted(f for f in os.listdir(CORPUS) if f.endswith(".jsonl"))
total = 0
by_type = collections.Counter()
texts = []
bad = 0

for f in files:
    with open(os.path.join(CORPUS, f), "rb") as fh:
        for line in fh:
            line = line.strip()
            if not line:
                continue
            try:
                e = json.loads(line.decode("utf-8"))
            except Exception:
                bad += 1
                continue
            total += 1
            by_type[e.get("event_type", "?")] += 1
            if e.get("event_type") == "asr_final":
                t = (e.get("text") or "").strip()
                if t:
                    texts.append(t)

uniq = []
seen = set()
for t in texts:
    k = hashlib.sha1(t.encode("utf-8")).hexdigest()
    if k in seen:
        continue
    seen.add(k)
    uniq.append(t)

lens = collections.Counter(len(t) for t in uniq)
short = sum(1 for t in uniq if len(t) <= 2)
long_ = sum(1 for t in uniq if len(t) > 15)

print("files                 : %d (%s)" % (len(files), ", ".join(files)))
print("lines parsed          : %d" % total)
print("parse failures        : %d" % bad)
print("by event_type         : %s" % dict(by_type))
print("asr_final with text   : %d" % len(texts))
print("unique texts          : %d" % len(uniq))
print("text len <=2 (noise)  : %d" % short)
print("text len >15          : %d" % long_)
print("len distribution      : %s" % dict(sorted(lens.items())))

with open(OUT, "w", encoding="utf-8", newline="\n") as fh:
    fh.write("# T9-28: unique real asr_final texts (from device events, %d total)\n" % len(uniq))
    for t in uniq:
        fh.write(t + "\n")
print("\nunique list written   : %s" % OUT)
