#!/usr/bin/env python3
"""cap_audio_stats.py -- 对 TGZ2 v2 capture 里的真实 PCM 做最小音频体检。

用途：证明落盘的 1280 B payload 是**真实采集音频**，不是全零、不是重复帧、
不是只填了帧头的空壳。只读 capture，不连设备。

    python cap_audio_stats.py t3_real_pcm.cap [--wav out.wav]

输出：每帧 RMS 的 min/mean/max、静音帧数、全零帧数、相邻帧完全相同的帧数、
以及首/末帧的采样范围（int16）。
"""
import argparse
import struct
import sys
import wave

HDR = 40
PAYLOAD = 1280
MSG = HDR + PAYLOAD
SPF = 640


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("cap")
    ap.add_argument("--wav", default=None, help="可选：把 payload 拼成 16 kHz mono WAV")
    ap.add_argument("--silent-rms", type=float, default=8.0,
                    help="低于该 RMS 视为静音帧（默认 8.0）")
    ap.add_argument("--spectrum", action="store_true",
                    help="在 100..3000 Hz 上做 Goertzel，打印能量最大的几个频点")
    ap.add_argument("--gaps", action="store_true",
                    help="打印最大的若干采集时间戳间隔（诊断 JS 锁排队 / 采集抖动）")
    args = ap.parse_args()

    blob = open(args.cap, "rb").read()
    n = len(blob) // MSG
    if not n:
        print("[!] no frame")
        return 1

    frames = []
    for i in range(n):
        m = blob[i * MSG:(i + 1) * MSG]
        frames.append(m[HDR:])

    rms = []
    zero_frames = 0
    silent = 0
    same_as_prev = 0
    pcm = bytearray()
    for i, body in enumerate(frames):
        s = struct.unpack("<%dh" % SPF, body)
        pcm += body
        if not any(s):
            zero_frames += 1
        acc = sum(v * v for v in s) / float(SPF)
        r = acc ** 0.5
        rms.append(r)
        if r < args.silent_rms:
            silent += 1
        if i and body == frames[i - 1]:
            same_as_prev += 1

    first = struct.unpack("<%dh" % SPF, frames[0])
    last = struct.unpack("<%dh" % SPF, frames[-1])
    srms = sorted(rms)
    print("frames        : %d  (%.2f s @ 16 kHz)" % (n, n * 0.04))
    print("rms           : min=%.1f mean=%.1f p50=%.1f p95=%.1f max=%.1f"
          % (min(rms), sum(rms) / len(rms), srms[len(srms) // 2],
             srms[int(0.95 * (len(srms) - 1))], max(rms)))
    print("zero_frames   : %d" % zero_frames)
    print("silent_frames : %d  (rms < %.1f)" % (silent, args.silent_rms))
    print("dup_frames    : %d  (与前一帧逐字节相同)" % same_as_prev)
    print("first_frame   : min=%d max=%d" % (min(first), max(first)))
    print("last_frame    : min=%d max=%d" % (min(last), max(last)))
    ok = zero_frames == 0 and same_as_prev == 0 and max(rms) > args.silent_rms
    print("RESULT        :", "PASS (real, varying audio)" if ok else "CHECK")

    if args.spectrum:
        import math
        samples = struct.unpack("<%dh" % (SPF * n), bytes(pcm))
        results = []
        for hz in range(100, 3001, 100):
            w = 2.0 * math.pi * hz / 16000.0
            coeff = 2.0 * math.cos(w)
            s0 = s1 = s2 = 0.0
            for v in samples:
                s0 = v + coeff * s1 - s2
                s2 = s1
                s1 = s0
            power = s1 * s1 + s2 * s2 - coeff * s1 * s2
            results.append((power, hz))
        results.sort(reverse=True)
        print("spectrum      : top5 " + ", ".join("%dHz=%.0f" % (hz, p) for p, hz in results[:5]))
        if results and results[0][0] > 0:
            print("spectrum      : peak=%d Hz (bin 100 Hz)" % results[0][1])

    if args.gaps:
        ts = []
        for i in range(n):
            ts.append(struct.unpack_from("<Q", blob, i * MSG + 12)[0])
        d = [((b - a) / 1000.0, i + 1) for i, (a, b) in enumerate(zip(ts, ts[1:]))]
        d.sort(reverse=True)
        print("gaps>60ms     : %d of %d intervals" % (sum(1 for g, _ in d if g > 60), len(d)))
        print("top gaps      : " + ", ".join("%.1fms@f%d" % (g, i) for g, i in d[:8]))
        buckets = {}
        for g, _ in d:
            k = int(g // 20) * 20
            buckets[k] = buckets.get(k, 0) + 1
        print("gap histogram : " + ", ".join("%d-%dms:%d" % (k, k + 20, v)
                                             for k, v in sorted(buckets.items())))

    if args.wav:
        w = wave.open(args.wav, "wb")
        w.setnchannels(1)
        w.setsampwidth(2)
        w.setframerate(16000)
        w.writeframes(bytes(pcm))
        w.close()
        print("wav           : %s (%d bytes)" % (args.wav, len(pcm) + 44))
    return 0 if ok else 2


if __name__ == "__main__":
    sys.exit(main())
