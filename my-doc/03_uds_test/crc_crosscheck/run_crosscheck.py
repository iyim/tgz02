#!/usr/bin/env python3
"""run_crosscheck.py -- build both sides, run both, diff the CRCs.

    python run_crosscheck.py

Steps:
  1. gen_cases.py        -> cases.bin (fixed PCM buffers, incl. real ch0)
  2. gcc crc_c.c         -> crc_c        (uses ../tgz2_frame.h, tgz2_fnv1a)
  3. node crc_test.js    -> JS side      (extracts FNV from pcm_bridge_draft.js)
  4. compare line by line; also run the --naive variant to show it diverges
"""
import json
import os
import subprocess
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
GCC = r"C:\TDM-GCC-64\bin\gcc.exe"
PY = sys.executable
NODE = "node"


def run(cmd, cwd=HERE):
    p = subprocess.run(cmd, cwd=cwd, capture_output=True, text=True)
    return p.returncode, p.stdout, p.stderr


def parse(out):
    rows = {}
    for line in out.splitlines():
        parts = line.split("\t")
        if len(parts) == 4 and parts[0].isdigit():
            rows[int(parts[0])] = (int(parts[1]), parts[2], parts[3])
    return rows


def main():
    print("[1/4] generating cases.bin ...")
    rc, out, err = run([PY, "gen_cases.py"])
    print(out.rstrip() or err.rstrip())
    if rc != 0:
        return 1

    print("\n[2/4] building crc_c ...")
    exe = os.path.join(HERE, "crc_c.exe" if os.name == "nt" else "crc_c")
    rc, out, err = run([GCC, "-O2", "-Wall", "-o", exe, "crc_c.c"])
    if rc != 0:
        print("build failed:\n" + out + err)
        return 1
    print("ok -> " + os.path.basename(exe))

    print("\n[3/4] running both sides ...")
    rc_c, out_c, err_c = run([exe, "cases.bin"])
    if rc_c != 0:
        print("crc_c failed:\n" + err_c)
        return 1
    rc_j, out_j, err_j = run([NODE, "crc_test.js", "cases.bin"])
    if rc_j != 0:
        print("crc_test.js failed:\n" + err_j)
        return 1
    print(out_c.splitlines()[0])
    print(out_j.splitlines()[0])

    C = parse(out_c)
    J = parse(out_j)

    print("\n[4/4] comparing ...")
    hdr = f"{'#':>2}  {'len':>4}  {'C (tgz2_fnv1a)':<14} {'JS (Math.imul)':<14} {'match':<5} name"
    print(hdr)
    print("-" * len(hdr))
    bad = 0
    for i in sorted(C):
        ln, cc, nm = C[i]
        _, jc, _ = J.get(i, (0, "-", ""))
        ok = (cc == jc)
        bad += 0 if ok else 1
        print(f"{i:>2}  {ln:>4}  0x{cc:<12} 0x{jc:<12} {'YES' if ok else 'NO':<5} {nm}")

    # negative control: plain multiplication must diverge on this data
    rc_n, out_n, _ = run([NODE, "crc_test.js", "--naive", "cases.bin"])
    N = parse(out_n)
    diverged = sum(1 for i in C if N.get(i, (0, "", ""))[1] != C[i][1])
    print(f"\ncontrol (naive `h * 16777619`): {diverged}/{len(C)} cases differ from C")

    result = {
        "cases": len(C),
        "match": len(C) - bad,
        "mismatch": bad,
        "naive_diverged": diverged,
        "pass": bad == 0 and diverged > 0,
        "rows": [{"idx": i, "len": C[i][0], "c": C[i][1], "js": J.get(i, (0, "", ""))[1],
                  "name": C[i][2]} for i in sorted(C)],
    }
    with open(os.path.join(HERE, "crosscheck_result.json"), "w", encoding="utf-8") as f:
        json.dump(result, f, indent=2)

    print("\nRESULT:", "PASS" if bad == 0 else f"FAIL ({bad} mismatches)")
    print(f"  Math.imul  : {result['match']}/{result['cases']} 与 C 一致")
    print(f"  普通乘法   : {result['naive_diverged']}/{result['cases']} 与 C 不一致（说明修正是必要的）")
    return 0 if result["pass"] else 1


if __name__ == "__main__":
    sys.exit(main())
