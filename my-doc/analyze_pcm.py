#!/usr/bin/env python3
"""analyze_pcm.py -- deinterleave 4-channel PCM, show energy timeline, export WAV."""
import os
import sys
import wave
import struct

IN = r"D:\tgz02\OS\_analysis\capture\pcm_talk.raw"
OUTDIR = r"D:\tgz02\OS\_analysis\capture"

try:
    import numpy as np
except ImportError:
    np = None

raw = open(IN, 'rb').read()
nbytes = len(raw)
FRAME_BYTES = 5120
CH = 4
BYTES_PER_SAMPLE = 2
SPF = FRAME_BYTES // (CH * BYTES_PER_SAMPLE)      # samples per channel per frame
frames = nbytes // FRAME_BYTES
print(f"file        : {IN}")
print(f"bytes       : {nbytes}")
print(f"frames      : {frames}  (frame = {FRAME_BYTES} B = {SPF} samples x {CH} ch x 16 bit)")
print(f"duration    : {frames * SPF / 16000:.2f} s @16kHz")
print(f"data rate   : {nbytes / (frames * SPF / 16000) / 1024:.1f} KB/s")
print()

if np is None:
    print("numpy not available -> install numpy for detailed analysis")
    sys.exit(0)

a = np.frombuffer(raw[:frames * FRAME_BYTES], dtype='<i2').astype(np.float32)
x = a.reshape(frames, SPF, CH)          # (frames, 640, 4)
mono_all = x.reshape(frames * SPF, CH)  # (samples, 4)

print("=== per-channel statistics (whole capture) ===")
for c in range(CH):
    ch = mono_all[:, c]
    print(f"  ch{c}: rms={np.sqrt((ch**2).mean()):8.1f}  peak={np.abs(ch).max():8.0f}  "
          f"mean={ch.mean():8.2f}")

# --- energy timeline: 0.5 s windows ---
win = 8000  # samples per channel (0.5 s @16k)
nwin = len(mono_all) // win
print(f"\n=== energy timeline ({nwin} windows x 0.5 s) ===")
print("  time      ch0     ch1     ch2     ch3   | bar(ch0)")
for i in range(nwin):
    seg = mono_all[i * win:(i + 1) * win]
    rms = [np.sqrt((seg[:, c] ** 2).mean()) for c in range(CH)]
    t = i * 0.5
    bar = '#' * int(min(60, rms[0] / 60))
    print(f"  {t:5.1f}s " + " ".join(f"{r:7.1f}" for r in rms) + f" | {bar}")

# --- detect speech activity (any channel above threshold) ---
mx = np.max(np.abs(mono_all), axis=1)
thr = max(200.0, float(np.percentile(mx, 30)) * 3)
active = mx > thr
print(f"\n=== activity (threshold={thr:.0f}) ===")
# find contiguous active regions
regions = []
i = 0
while i < len(active):
    if active[i]:
        j = i
        while j < len(active) and active[j]:
            j += 1
        if (j - i) > 1600:   # >0.1 s
            regions.append((i / 16000, j / 16000))
        i = j
    else:
        i += 1
if regions:
    for s, e in regions:
        print(f"  active {s:6.2f}s .. {e:6.2f}s  ({e - s:.2f} s)")
else:
    print("  no significant activity detected")

# --- channel similarity (is this a mic array?) ---
print("\n=== inter-channel correlation ===")
for i in range(CH):
    row = []
    for j in range(CH):
        a1 = mono_all[:, i]
        b1 = mono_all[:, j]
        d = (np.std(a1) * np.std(b1))
        row.append(float(((a1 - a1.mean()) * (b1 - b1.mean())).mean() / d) if d else 0.0)
    print("  ch%d: " % i + " ".join(f"{v:6.3f}" for v in row))

# --- export WAVs ---
def write_wav(path, samples, nch=1):
    with wave.open(path, 'wb') as w:
        w.setnchannels(nch)
        w.setsampwidth(2)
        w.setframerate(16000)
        w.writeframes(samples.astype('<i2').tobytes())

for c in range(CH):
    p = os.path.join(OUTDIR, f"ch{c}.wav")
    write_wav(p, mono_all[:, c])
    print(f"[wav] {p}")

mix = mono_all.mean(axis=1)
p = os.path.join(OUTDIR, "mix4.wav")
write_wav(p, mix)
print(f"[wav] {p}  (average of 4 channels)")
