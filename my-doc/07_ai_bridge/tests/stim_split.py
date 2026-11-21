#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""stim_split.py -- 把整句语音刺激（"天猫精灵 + 指令"）拆成"唤醒词 / 指令"两段

为什么需要：
  真机上"唤醒词和指令一口气连着说"的整句刺激唤醒率明显偏低；
  拆成 wake（≈0.88 s，"天猫精灵"）+ 静默 3 s + cmd（剩余指令）后稳定唤醒。

用法：
    python stim_split.py <stim_dir> <out_dir>            # 按能量谷底自动找切点
    python stim_cut.py  <one.wav> <cut_seconds> <out_dir> [pad_seconds]   # 定点切（标定用）

输出：<name>_wake.wav / <name>_cmd.wav（22.05 kHz mono 16-bit，需与源文件一致）

标定结论（TG-Z02 出厂音色）：切点 0.88 s、pad 0.0 时，识别结果为
"天猫精灵您现在几点了"，唤醒词干净、指令完整。step=0.05 s 内波动不影响唤醒。

T5-06D 报告 §7.5 记录了这条结论与原因。
"""
import os
import struct
import sys
import wave


def read_wav(path):
    with wave.open(path, "rb") as w:
        assert w.getnchannels() == 1, "expect mono: %s" % path
        assert w.getsampwidth() == 2, "expect 16-bit: %s" % path
        rate = w.getframerate()
        data = w.readframes(w.getnframes())
    return rate, struct.unpack("<%dh" % (len(data) // 2), data)


def write_wav(path, rate, samples):
    with wave.open(path, "wb") as w:
        w.setnchannels(1)
        w.setsampwidth(2)
        w.setframerate(rate)
        w.writeframes(struct.pack("<%dh" % len(samples), *samples))


def frames(samples, rate, win_ms=10):
    win = max(1, rate * win_ms // 1000)
    out = []
    for i in range(0, len(samples) - win + 1, win):
        chunk = samples[i:i + win]
        out.append((i, sum(abs(s) for s in chunk) / float(win)))
    return out, win


def find_split(samples, rate):
    """在两峰之间取平滑能量谷底作为唤醒词/指令的切点。"""
    fr, win = frames(samples, rate)
    energies = [e for _, e in fr]
    if len(energies) < 30:
        return None
    sm = []
    for i in range(len(energies)):
        lo, hi = max(0, i - 2), min(len(energies), i + 3)
        sm.append(sum(energies[lo:hi]) / float(hi - lo))
    peak = max(sm)
    if peak <= 0:
        return None
    p1 = sm.index(peak)
    p2 = max(range(min(len(sm) - 1, p1 + 15), len(sm)), key=lambda i: sm[i])
    if p2 <= p1 + 15 or sm[p2] < peak * 0.25:
        return None
    cut_i = min(range(p1 + 5, p2), key=lambda i: sm[i])
    return cut_i * win


def cut(src, cut_s, out_dir, pad_s=0.0):
    os.makedirs(out_dir, exist_ok=True)
    rate, samples = read_wav(src)
    cut = int(rate * cut_s)
    pad = int(rate * pad_s)
    base = os.path.splitext(os.path.basename(src))[0]
    write_wav(os.path.join(out_dir, base + "_wake.wav"), rate, samples[:cut + pad])
    write_wav(os.path.join(out_dir, base + "_cmd.wav"), rate, samples[cut:])
    return base, rate, len(samples) / float(rate)


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        return 2
    stim, out = sys.argv[1], sys.argv[2]
    for name in sorted(f for f in os.listdir(stim) if f.lower().endswith(".wav")):
        path = os.path.join(stim, name)
        rate, samples = read_wav(path)
        cutn = find_split(samples, rate)
        if not cutn:
            print("%-10s SKIP (no clear boundary)" % name)
            continue
        cut(path, cutn / float(rate), out, 0.0)
        print("%-10s cut=%.2fs total=%.2fs" % (name, cutn / float(rate), len(samples) / float(rate)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
