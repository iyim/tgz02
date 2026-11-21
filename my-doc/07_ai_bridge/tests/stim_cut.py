#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""stim_cut.py -- 定点切分语音刺激（标定用）

    python stim_cut.py <one.wav> <cut_seconds> <out_dir> <pad_seconds>

落在同目录的 stim_split.py 提供 read_wav/write_wav；本脚本用于按标定值（0.88 s）批量切。
"""
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import stim_split as S


def main():
    if len(sys.argv) < 5:
        print(__doc__)
        return 2
    src, cut_s, outdir, pad_s = sys.argv[1], float(sys.argv[2]), sys.argv[3], float(sys.argv[4])
    os.makedirs(outdir, exist_ok=True)
    rate, samples = S.read_wav(src)
    cut = int(rate * cut_s)
    pad = int(rate * pad_s)
    base = os.path.splitext(os.path.basename(src))[0]
    wake = samples[:cut + pad]
    cmd = samples[cut:]
    S.write_wav(os.path.join(outdir, base + "_wake.wav"), rate, wake)
    S.write_wav(os.path.join(outdir, base + "_cmd.wav"), rate, cmd)
    print("%s cut=%.2f pad=%.2f wake=%.2fs cmd=%.2fs"
          % (base, cut_s, pad_s, len(wake) / float(rate), len(cmd) / float(rate)))
    return 0


if __name__ == "__main__":
    sys.exit(main())
