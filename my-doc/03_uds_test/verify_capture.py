#!/usr/bin/env python3
"""verify_capture.py -- independent offline check of a .cap file written by uds_sink.

The wire format is re-implemented here in Python (no C code reused), so this
also proves the protocol description is precise enough to reimplement:

    python verify_capture.py _run/baseline.cap

Checks, per file: magic / ver / header length / rate / ch / bits / payload
length, FNV-1a CRC, deterministic payload compare, per-epoch sequence
continuity (gaps = dropped frames), and capture-timestamp cadence.
"""
import argparse
import struct
import sys

MAGIC = 0x325A4754
VER = 2
HDR = 40
PAYLOAD = 1280
MSG = HDR + PAYLOAD
SPF = 640

HDR_FMT = "<IBBH I Q I I H H I I".replace(" ", "")   # 12 fields = 40 bytes, no padding


def fnv1a(b):
    h = 2166136261
    for x in b:
        h = ((h ^ x) * 16777619) & 0xFFFFFFFF
    return h


def xorshift(state):
    x = state & 0xFFFFFFFF
    x ^= (x << 13) & 0xFFFFFFFF
    x ^= x >> 17
    x ^= (x << 5) & 0xFFFFFFFF
    return x & 0xFFFFFFFF


def expect_payload(seq):
    st = (seq * 2654435761 + 0x9E3779B9) & 0xFFFFFFFF
    out = bytearray(PAYLOAD)
    for i in range(SPF):
        st = xorshift(st if st else 0x1234567)
        v = ((st >> 17) - 16384) & 0xFFFF
        out[i * 2] = v & 0xFF
        out[i * 2 + 1] = (v >> 8) & 0xFF
    return bytes(out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("cap", help="capture file written by uds_sink --capture")
    ap.add_argument("--no-payload-check", action="store_true",
                    help="skip the 640-sample regenerate/compare (faster)")
    args = ap.parse_args()

    blob = open(args.cap, "rb").read()
    n = len(blob) // MSG
    rest = len(blob) % MSG
    print(f"file       : {args.cap}")
    print(f"bytes      : {len(blob)}  frames={n}  trailing={rest}")
    if n == 0:
        print("[!] no complete frame")
        return 1

    bad = {"magic": 0, "ver": 0, "hdr": 0, "len": 0, "crc": 0, "payload": 0}
    epochs = []          # [(epoch, [seq...], [ts...])]
    for i in range(n):
        m = blob[i * MSG:(i + 1) * MSG]
        magic, ver, flags, hlen, seq, ts, epoch, rate, ch, bits, plen, crc = \
            struct.unpack_from(HDR_FMT, m, 0)
        if magic != MAGIC:
            bad["magic"] += 1
            continue
        if ver != VER:
            bad["ver"] += 1
        if hlen != HDR:
            bad["hdr"] += 1
        if plen != PAYLOAD or rate != 16000 or ch != 1 or bits != 16:
            bad["len"] += 1
        body = m[HDR:]
        if fnv1a(body) != crc:
            bad["crc"] += 1
        if not args.no_payload_check and expect_payload(seq) != body:
            bad["payload"] += 1

        if not epochs or epochs[-1][0] != epoch:
            epochs.append((epoch, [], []))
        epochs[-1][1].append(seq)
        epochs[-1][2].append(ts)

    print(f"epochs     : {len(epochs)}  {[e[0] for e in epochs][:6]}")
    total_gap = 0
    total_dup = 0
    total_back = 0
    for k, (ep, seqs, tss) in enumerate(epochs):
        gaps = [b - a for a, b in zip(seqs, seqs[1:]) if b - a > 1]
        dups = sum(1 for a, b in zip(seqs, seqs[1:]) if b == a)
        back = sum(1 for a, b in zip(seqs, seqs[1:]) if b < a)
        miss = sum(g - 1 for g in gaps)
        total_gap += miss
        total_dup += dups
        total_back += back
        print(f"  session {k}: epoch=0x{ep:08x} first={seqs[0]} last={seqs[-1]} "
              f"count={len(seqs)} missing={miss} dup={dups} reorder={back}")
        if gaps:
            print(f"             gap sizes={sorted(set(gaps))[:10]}")
        dt = [(b - a) / 1000.0 for a, b in zip(tss, tss[1:])]
        if dt:
            dts = sorted(dt)
            print(f"             cadence mean={sum(dt)/len(dt):.2f}ms min={min(dt):.2f}ms "
                  f"p95={dts[int(0.95*(len(dts)-1))]:.2f}ms max={max(dt):.2f}ms")

    print(f"dup={total_dup} reorder={total_back} missing_total={total_gap}")
    print(f"rejects    : {bad}")
    ok = (not any(bad.values())) and total_dup == 0 and total_back == 0
    print("RESULT     :", "PASS" if ok else "FAIL")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
