#!/usr/bin/env python3
"""gen_cases.py -- build cases.bin: a fixed, reproducible set of PCM test buffers.

Both the C checker (crc_c.c, includes ../tgz2_frame.h) and the JavaScript
checker (crc_test.js, evals the FNV code out of pcm_bridge_draft.js) read this
exact file, so "same PCM data on both sides" is enforced by bytes, not by
recipe.

Layout (little endian):
    magic  8 bytes  b'TGZ2CRC1'
    count  u32
    then per case:  name_len u8, name bytes, data_len u32, data bytes
"""
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
PCM_RAW = os.path.normpath(os.path.join(HERE, "..", "..", "pcm_talk.raw"))
OUT = os.path.join(HERE, "cases.bin")

FRAME_BYTES = 5120
CH = 4
STRIDE = CH * 2          # 8
FRAME_OUT = 1280         # ch0 of one frame
SPF = 640


def ch0_of_frame0():
    """First frame's ch0 out of the real device capture (16 kHz/4ch/16-bit)."""
    if not os.path.exists(PCM_RAW):
        return None, "pcm_talk.raw not found"
    with open(PCM_RAW, "rb") as f:
        raw = f.read(FRAME_BYTES)
    if len(raw) < FRAME_BYTES:
        return None, "pcm_talk.raw too short"
    out = bytearray(FRAME_OUT)
    for i in range(SPF):
        out[i * 2] = raw[i * STRIDE]
        out[i * 2 + 1] = raw[i * STRIDE + 1]
    return bytes(out), "real ch0 (frame 0 of pcm_talk.raw)"


def xorshift_payload(seq):
    """Same generator as tgz2_fill_payload() in tgz2_frame.h."""
    st = (seq * 2654435761 + 0x9E3779B9) & 0xFFFFFFFF
    out = bytearray(FRAME_OUT)
    for i in range(SPF):
        x = st if st else 0x1234567
        x ^= (x << 13) & 0xFFFFFFFF
        x ^= x >> 17
        x ^= (x << 5) & 0xFFFFFFFF
        st = x & 0xFFFFFFFF
        v = ((st >> 17) - 16384) & 0xFFFF
        out[i * 2] = v & 0xFF
        out[i * 2 + 1] = (v >> 8) & 0xFF
    return bytes(out)


def int16_bytes(values):
    return b"".join(struct.pack("<h", v) for v in values)


def build_cases():
    cases = []

    real, why = ch0_of_frame0()
    if real is not None:
        cases.append(("real_ch0", real))
    else:
        print(f"[warn] {why}; skipping real-PCM case", file=sys.stderr)

    cases.append(("zeros_1280", b"\x00" * FRAME_OUT))
    cases.append(("ones_ffff", b"\xff" * FRAME_OUT))
    cases.append(("minus1_x640", int16_bytes([-1] * SPF)))
    cases.append(("min_int16_x640", int16_bytes([-32768] * SPF)))
    cases.append(("max_int16_x640", int16_bytes([32767] * SPF)))
    cases.append(("alt_minmax", int16_bytes([32767, -32768] * (SPF // 2))))
    cases.append(("neg_ramp", int16_bytes([-i for i in range(SPF)])))
    cases.append(("synth_seq0", xorshift_payload(0)))
    cases.append(("synth_seq1", xorshift_payload(1)))
    cases.append(("synth_seq12345", xorshift_payload(12345)))

    # odd lengths: FNV must not depend on 2-byte alignment
    for n in (0, 1, 2, 3, 7, 13, 1023):
        cases.append((f"len{n}", bytes((i * 37 + 11) & 0xFF for i in range(n))))

    return cases


def main():
    cases = build_cases()
    with open(OUT, "wb") as f:
        f.write(b"TGZ2CRC1")
        f.write(struct.pack("<I", len(cases)))
        for name, data in cases:
            nb = name.encode("ascii")
            f.write(struct.pack("<B", len(nb)))
            f.write(nb)
            f.write(struct.pack("<I", len(data)))
            f.write(data)
    print(f"wrote {OUT}: {len(cases)} cases, {os.path.getsize(OUT)} bytes")
    for i, (name, data) in enumerate(cases):
        print(f"  [{i:2d}] {name:<16} len={len(data)}")
    return 0


if __name__ == "__main__":
    sys.exit(main())
