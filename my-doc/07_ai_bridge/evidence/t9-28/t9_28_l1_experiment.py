# t9_28_l1_experiment.py -- T9-28: L1 本地语义匹配的可行性验证（设计验证集，不是生产精度）
#
# 审查意见（T9-28 §二.2）指出：T9-27 的"字符 bigram Dice + 4 正例 4 负例"不足以支撑语义匹配。
# 这个脚本用一组**人工标注的 42 句验证集**把问题量化：
#   M1 = T9-27 原方案（bigram Dice，accept>=0.62，margin>=0.08）
#   M2 = 结构化模板（触发词族 + 槽位剥离 + 否决条件），即"模板匹配"
#   M3 = M2 优先、M1 仅在 M2 弃权时作候选（并计算两者一致率）
# 输出：每句的判定、错误清单、以及三条方法的准确率/误接管（factory 被本地抢）计数。
#
# 说明：验证集是我按审查意见里的例子 + 现有真实语料（275 条去重话术）里的典型说法手写的。
# 它只能证明"哪种方法在哪些形态上会错"，不能当作线上准确率；线上精度需要 ≥300 条带标注的真实语料。
import unicodedata

WAKE = ["天猫精灵", "你好天猫", "布丁布丁", "小精灵"]
FILLER = ["嗯", "呃", "啊", "那个", "麻烦你", "请帮我", "请", "帮我", "我想", "我要", "能不能", "可以"]

# ---------------- 归一化 ----------------
def norm(s):
    s = unicodedata.normalize("NFKC", s)
    for w in WAKE:
        s = s.replace(w, "")
    for f in FILLER:
        s = s.replace(f, "")
    out = []
    for ch in s:
        if ch.isalnum():          # 汉字/字母/数字（与 ef_normalize 的取向一致）
            out.append(ch.lower())
    return "".join(out)

def bigrams(s):
    if len(s) < 2:
        return {s} if s else set()
    return {s[i:i+2] for i in range(len(s)-1)}

def dice(a, b):
    A, B = bigrams(a), bigrams(b)
    if not A or not B:
        return 0.0
    return 2.0 * len(A & B) / (len(A) + len(B))

# ---------------- 技能例句（T9-27 的形态：每技能 4 正例） ----------------
SKILLS = {
    "music.play": ["播放周杰伦的晴天", "来点动静", "放首歌听听", "我想听点轻的"],
    "music.ctrl": ["暂停", "继续播放", "下一曲", "换首歌"],
    "device.status": ["还剩多少电", "你运行多久了", "电池电量多少", "开机多长时间"],
    "memory.add": ["记住我不吃香菜", "帮我记住明天买牛奶", "记一下密码是六个八", "记住我的车牌"],
}

# ---------------- M2：结构化模板（示意实现，用于对比 Dice） ----------------
MUSIC_PLAY_V = ["怎么", "为什么", "什么", "推荐", "介绍", "好听", "是什么"]
MUSIC_VERB = ["播放", "放首", "放一", "放点", "来一首", "来首", "来点", "听", "播首", "唱首", "放"]
MUSIC_NOUN = ["歌", "曲", "音乐", "专辑", "周杰伦", "晴天", "dj"]
CTRL = {
    "pause": ["暂停", "别放了", "停止播放", "关掉音乐", "音乐关了", "把音乐关"],
    "resume": ["继续播", "接着放", "接着播", "继续"],
    "next": ["下一首", "下一曲", "下首", "切歌", "换首", "换一", "换歌", "下个"],
    "prev": ["上一首", "上一曲", "上首", "前一首"],
    "stop": ["别放了", "停止播放", "关掉音乐"],
}
VOL_HINT = ["音量", "声音", "喇叭", "大声", "小声", "太吵", "太响", "轻一点", "大点", "小点"]
WEATHER = ["天气", "下雨", "气温", "带伞", "多少度", "适合出门", "穿什么"]
ALARM = ["闹钟", "叫我起床", "提醒我", "定个闹", "设个闹"]
TIME = ["几点", "什么时间", "星期几", "几号", "日期", "今天几"]
MEM_VERB = ["记住", "记一下", "记个"]

def m2(text):
    n = norm(text)
    # 记忆（App 侧技能，动词开头才算）
    for v in MEM_VERB:
        if n.startswith(v) and len(n) > len(v):
            return "memory.add"
    # 播放控制优先于点歌
    for act, words in CTRL.items():
        if any(w in n for w in words):
            # "换首歌" 既是控制也是点歌；控制语义更强，按控制处理
            return "music.ctrl"
    # 点歌：动词 + (歌/曲/音乐 或 非空残余)
    if any(v in n for v in MUSIC_VERB) and not any(w in n for w in MUSIC_PLAY_V):
        if any(x in n for x in MUSIC_NOUN):
            return "music.play"
    # 设备状态
    if any(w in n for w in ["电量", "电池", "多少电", "运行多", "开机多", "运多"]):
        return "device.status"
    # 原厂能力（模板层只负责"认出来"，不接管）
    if any(w in n for w in WEATHER):
        return "factory.weather"
    if any(w in n for w in ALARM):
        return "factory.alarm"
    if any(w in n for w in TIME):
        return "factory.time"
    if any(w in n for w in VOL_HINT):
        return "factory.volume"
    return "ai"

# ---------------- M1：T9-27 原方案 ----------------
def m1(text, accept=0.62, margin=0.08):
    n = norm(text)
    best, second, best_sk = 0.0, 0.0, None
    for sk, exs in SKILLS.items():
        s = max(dice(n, norm(e)) for e in exs)
        if s > best:
            second, best, best_sk = best, s, sk
        elif s > second:
            second = s
    if best_sk is None or best < accept or (best - second) < margin:
        return "ai", best, best - second
    return best_sk, best, best - second

# ---------------- 标注验证集 ----------------
# label 是"理想归属"；factory.* 表示必须交原厂，ai 表示自由对话
CASES = [
    # 审查意见里点名的四条"同一意图不同说法"
    ("把音乐声音调小一点", "factory.volume"),
    ("现在有点吵", "factory.volume"),
    ("能不能轻一点", "factory.volume"),
    ("声音太大了", "factory.volume"),
    # 点歌的各种说法
    ("播放周杰伦的晴天", "music.play"),
    ("来点动静", "music.play"),
    ("放首歌听听", "music.play"),
    ("我想听点轻的", "music.play"),
    ("播放一首轻音乐", "music.play"),
    ("给我来首粤语歌", "music.play"),
    ("放首周杰伦", "music.play"),
    # 控制
    ("暂停", "music.ctrl"),
    ("继续播放", "music.ctrl"),
    ("下一曲", "music.ctrl"),
    ("换首歌", "music.ctrl"),
    ("把音乐关了", "music.ctrl"),
    ("再放一遍", "music.ctrl"),
    # 设备状态
    ("还剩多少电", "device.status"),
    ("你运行多久了", "device.status"),
    ("开机多长时间", "device.status"),
    ("电量还有吗", "device.status"),
    # 原厂能力（不得被本地/模型抢）
    ("今天天气怎么样", "factory.weather"),
    ("明天会下雨吗", "factory.weather"),
    ("今天适合出门吗", "factory.weather"),
    ("今天北京天气怎么样", "factory.weather"),
    ("明天早上七点叫我起床", "factory.alarm"),
    ("定个闹钟", "factory.alarm"),
    ("现在几点了", "factory.time"),
    ("今天星期几", "factory.time"),
    ("关闭屏幕", "factory.screen"),
    # 记忆
    ("记住我不吃香菜", "memory.add"),
    ("帮我记住明天买牛奶", "memory.add"),
    ("记一下密码是六个八", "memory.add"),
    # AI 自由对话 / 内容生成
    ("给我讲一个恐龙故事", "ai"),
    ("你叫什么名字", "ai"),
    ("给我介绍一下这个设备", "ai"),
    ("东京有什么好玩的", "ai"),
    ("帮我算一下三加五", "ai"),
    # 易混（字面相近但意图不同）
    ("这首歌真好听", "ai"),
    ("播放器怎么设置", "ai"),
    ("音乐是怎么压缩的", "ai"),
    ("电池是什么原理", "ai"),
]

def main():
    bad1 = bad2 = 0
    false_take1 = false_take2 = 0
    print("%-22s %-16s %-18s %-5s %-18s" % ("说法", "标注", "M1(Dice)", "score/margin", "M2(模板)"))
    print("-" * 96)
    m1_only = m2_only = m3 = 0
    for utt, label in CASES:
        p1, s, mg = m1(utt)
        p2 = m2(utt)
        # M3：模板优先；模板弃权时，只允许 Dice 在"本地技能"里补一个候选（factory 一律不补）
        if p2 != "ai":
            p3 = p2
        elif p1 != "ai" and not p1.startswith("factory"):
            p3 = p1
        else:
            p3 = "ai"
        ok1 = (p1 == label)
        ok2 = (p2 == label)
        ok3 = (p3 == label)
        if ok1: m1_only += 1
        if ok2: m2_only += 1
        if ok3: m3 += 1
        if not ok1:
            bad1 += 1
            if label.startswith("factory") and p1 not in ("ai",) and not p1.startswith("factory"):
                false_take1 += 1
        if not ok2:
            bad2 += 1
            if label.startswith("factory") and p2 not in ("ai",) and not p2.startswith("factory"):
                false_take2 += 1
        print("%-22s %-16s %-18s %5.2f/%.2f      %-18s" % (
            utt, label, p1 + ("" if ok1 else " X"), s, mg,
            p2 + ("" if ok2 else " X")))
    n = len(CASES)
    print("-" * 96)
    print("验证集规模        : %d 句（人工标注，非生产精度）" % n)
    print("M1 Dice 正确      : %d/%d = %.1f%%   误接管原厂: %d 句   弃权给上层: %d 句" % (
        m1_only, n, 100.0 * m1_only / n, false_take1, sum(1 for u, l in CASES if m1(u)[0] == "ai")))
    print("M2 模板 正确      : %d/%d = %.1f%%   误接管原厂: %d 句   弃权给上层: %d 句" % (
        m2_only, n, 100.0 * m2_only / n, false_take2, sum(1 for u, l in CASES if m2(u) == "ai")))
    print("M3 模板+Dice 补  : %d/%d = %.1f%%" % (m3, n, 100.0 * m3 / n))

    conflict = 0
    for utt, label in CASES:
        p1, _, _ = m1(utt)
        p2 = m2(utt)
        if p1 != "ai" and p2 != "ai" and p1 != p2:
            conflict += 1
            print("  冲突: %-20s M1=%-18s M2=%s" % (utt, p1, p2))
    print("M1/M2 冲突句数     : %d（需要仲裁规则，不能静默取其一）" % conflict)

    # ---- 过拟合演示：把 6 个失败项逐个补进触发族后能到多少 ----
    # 这不是"方案变好了"，而是证明"补词能让指标好看" —— 所以门槛必须用独立测试集 + 拒识率。
    print("")
    print("过拟合演示（把 M2 的失败项补进词表后重测）：")
    gaps = [(u, l) for u, l in CASES if m2(u) != l]
    print("  当前失败项      : %s" % ("; ".join("%s→%s" % g for g in gaps) or "无"))
    print("  补词后理论正确率: %d/%d = %.1f%%（受限于补词者的想象力，不可持续）" % (
        n, n, 100.0))


if __name__ == "__main__":
    main()
