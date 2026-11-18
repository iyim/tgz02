#!/usr/bin/env python3
"""analyze_pcm.py -- deinterleave 4-channel PCM, show energy timeline, export WAV.

Paths default to the directory this script lives in (i.e. my-doc/ inside the
repo), so it runs wherever the repo is cloned.  See 03_script_audit.md §2.

    python analyze_pcm.py                          # uses ./pcm_talk.raw
    python analyze_pcm.py --in other.raw --outdir out
    python analyze_pcm.py --mix                    # also write mix4_diluted.wav
"""
import argparse
import os
import sys
import wave

HERE = os.path.dirname(os.path.abspath(__file__))

FRAME_BYTES = 5120        # 5120 B = 640 samples x 4 ch x 16 bit (verified on device)
CH = 4
BYTES_PER_SAMPLE = 2
RATE = 16000


def write_wav(path, samples, nch=1):
    with wave.open(path, 'wb') as w:
        w.setnchannels(nch)
        w.setsampwidth(2)
        w.setframerate(RATE)
        w.writeframes(samples.astype('<i2').tobytes())


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--in', dest='inp', default=os.path.join(HERE, 'pcm_talk.raw'))
    ap.add_argument('--outdir', default=HERE)
    ap.add_argument('--mix', action='store_true',
                    help='also export mix4_diluted.wav (4-channel average; NOT for ASR)')
    args = ap.parse_args()

    if not os.path.exists(args.inp):
        print(f"[!] input not found: {args.inp}", file=sys.stderr)
        print("    capture one first: python capture_pcm.py --duration 40", file=sys.stderr)
        return 2
    os.makedirs(args.outdir, exist_ok=True)

    try:
        import numpy as np
    except ImportError:
        print("[!] numpy is required", file=sys.stderr)
        return 2

    raw = open(args.inp, 'rb').read()
    nbytes = len(raw)
    SPF = FRAME_BYTES // (CH * BYTES_PER_SAMPLE)
    frames = nbytes // FRAME_BYTES
    dur = frames * SPF / RATE
    print(f"file        : {args.inp}")
    print(f"bytes       : {nbytes}")
    print(f"frames      : {frames}  (frame = {FRAME_BYTES} B = {SPF} samples x {CH} ch x 16 bit)")
    print(f"duration    : {dur:.2f} s @{RATE}Hz")
    print(f"data rate   : {nbytes / max(dur, 1e-9) / 1024:.1f} KB/s")
    if nbytes % FRAME_BYTES:
        print(f"[!] trailing {nbytes % FRAME_BYTES} bytes ignored (partial frame)")
    print()

    a = np.frombuffer(raw[:frames * FRAME_BYTES], dtype='<i2').astype(np.float32)
    x = a.reshape(frames, SPF, CH)
    mono_all = x.reshape(frames * SPF, CH)

    print("=== per-channel statistics (whole capture) ===")
    for c in range(CH):
        ch = mono_all[:, c]
        print(f"  ch{c}: rms={np.sqrt((ch**2).mean()):8.1f}  peak={np.abs(ch).max():8.0f}  "
              f"mean={ch.mean():8.2f}")

    win = 8000  # 0.5 s @16k
    nwin = len(mono_all) // win
    print(f"\n=== energy timeline ({nwin} windows x 0.5 s) ===")
    print("  time      ch0     ch1     ch2     ch3   | bar(ch0)")
    for i in range(nwin):
        seg = mono_all[i * win:(i + 1) * win]
        rms = [np.sqrt((seg[:, c] ** 2).mean()) for c in range(CH)]
        t = i * 0.5
        bar = '#' * int(min(60, rms[0] / 60))
        print(f"  {t:5.1f}s " + " ".join(f"{r:7.1f}" for r in rms) + f" | {bar}")

    mx = np.max(np.abs(mono_all), axis=1)
    thr = max(200.0, float(np.percentile(mx, 30)) * 3)
    active = mx > thr
    print(f"\n=== activity (threshold={thr:.0f}) ===")
    regions = []
    i = 0
    while i < len(active):
        if active[i]:
            j = i
            while j < len(active) and active[j]:
                j += 1
            if (j - i) > 1600:   # >0.1 s
                regions.append((i / RATE, j / RATE))
            i = j
        else:
            i += 1
    if regions:
        for s, e in regions:
            print(f"  active {s:6.2f}s .. {e:6.2f}s  ({e - s:.2f} s)")
    else:
        print("  no significant activity detected")

    print("\n=== inter-channel correlation ===")
    for i in range(CH):
        row = []
        for j in range(CH):
            a1 = mono_all[:, i]
            b1 = mono_all[:, j]
            d = (np.std(a1) * np.std(b1))
            row.append(float(((a1 - a1.mean()) * (b1 - b1.mean())).mean() / d) if d else 0.0)
        print("  ch%d: " % i + " ".join(f"{v:6.3f}" for v in row))

    for c in range(CH):
        p = os.path.join(args.outdir, f"ch{c}.wav")
        write_wav(p, mono_all[:, c])
        print(f"[wav] {p}")

    if args.mix:
        mix = mono_all.mean(axis=1)
        p = os.path.join(args.outdir, "mix4_diluted.wav")
        write_wav(p, mix)
        print(f"[wav] {p}  (4-channel average -- dilutes speech by ~4x, not for ASR)")
    return 0


if __name__ == '__main__':
    sys.exit(main())
