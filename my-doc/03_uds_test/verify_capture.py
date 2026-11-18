#!/usr/bin/env python3
"""verify_capture.py -- independent offline check of a .cap file written by uds_sink.

It re-implements the wire format in Python (no C code reused), so it also
proves the protocol description is precise enough to reimplement:

    python verify_capture.py _run/baseline.cap

Checks: magic/version/length fields, FNV-1a CRC, deterministic payload compare,
sequence continuity (gaps = dropped frames), and capture-timestamp cadence.
"""
import argparse
import statistics
import struct
import sys

MAGIC = 0x325A4754
HDR = 40
PAYLOAD = 1280
MSG = HDR + PAYLOAD
SPF = 640


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
    seqs = []
    tss = []
    for i in range(n):
        m = blob[i * MSG:(i + 1) * MSG]
        magic, ver, flags, hlen, seq, ts, ftot, rate, ch, bits, plen, crc = \
            struct.unpack_from("<IBBH I Q I I H H I I".replace(" ", ""), m, 0)
        if magic != MAGIC:
            bad["magic"] += 1
            continue
        if ver != 1:
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
        seqs.append(seq)
        tss.append(ts)

    gaps = [b - a for a, b in zip(seqs, seqs[1:]) if b - a > 1]
    dups = sum(1 for a, b in zip(seqs, seqs[1:]) if b == a)
    back = sum(1 for a, b in zip(seqs, seqs[1:]) if b < a)
    dt = [(b - a) / 1000.0 for a, b in zip(tss, tss[1:])]

    print(f"seq        : first={seqs[0]} last={seqs[-1]} count={len(seqs)}")
    print(f"gaps       : {len(gaps)} events, missing={sum(g - 1 for g in gaps)} frames")
    if gaps:
        print(f"             sizes={sorted(set(gaps))[:10]}")
    print(f"dup={dups} reorder={back}")
    print(f"rejects    : {bad}")
    if dt:
        print(f"cadence    : mean={statistics.mean(dt):.2f}ms "
              f"min={min(dt):.2f}ms max={max(dt):.2f}ms "
              f"p95={sorted(dt)[int(0.95 * (len(dt) - 1))]:.2f}ms")
    ok = (not any(bad.values())) and dups == 0 and back == 0
    print("RESULT     :", "PASS" if ok else "FAIL")
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
