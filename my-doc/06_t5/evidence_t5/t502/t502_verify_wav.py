#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""t502_verify_wav.py -- T5-02 鐠囦焦宓侀弽锟犵崣閿涙瓙AV 缂佹挻鐎?+ SHA256 + 娑?jobs/results 閻ㄥ嫬鍙ч懕?
閸欘亣顕伴崣鏍ㄦ拱閸︽澘娲栭幏澶屾畱閸擃垱婀伴敍灞肩瑝娣囶喗鏁兼禒璁崇秿閺傚洣娆㈤妴?"""
import hashlib
import json
import os
import struct
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
WAV_DIR = os.path.join(HERE, "wav")
JOBS = os.path.join(HERE, "t502_jobs.jsonl")
RESULTS = os.path.join(HERE, "t502_results.jsonl")


def sha256(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for c in iter(lambda: f.read(65536), b""):
            h.update(c)
    return h.hexdigest()


def walk(path):
    size = os.path.getsize(path)
    with open(path, "rb") as f:
        head = f.read(12)
        if len(head) < 12 or head[0:4] != b"RIFF" or head[8:12] != b"WAVE":
            return None
        riff_size = struct.unpack("<I", head[4:8])[0]
        off = 12
        info = {"riff_size": riff_size, "file_size": size, "fmt": None, "data": None}
        while off + 8 <= size:
            f.seek(off)
            ch = f.read(8)
            cid = ch[0:4]
            csz = struct.unpack("<I", ch[4:8])[0]
            body = min(csz, size - off - 8)
            if cid == b"fmt ":
                f.seek(off + 8)
                b = f.read(body)
                if len(b) >= 16:
                    fmt, ch_, sr, brate = struct.unpack("<HHII", b[0:12])
                    balign = struct.unpack("<H", b[12:14])[0]
                    bits = struct.unpack("<H", b[14:16])[0]
                    info["fmt"] = {"format": fmt, "channels": ch_, "sample_rate": sr,
                                   "byte_rate": brate, "block_align": balign,
                                   "bits": bits}
            elif cid == b"data":
                info["data"] = {"offset": off + 8, "size": csz, "avail": body}
                info["duration_s"] = csz / 32000.0 if info["fmt"] and info["fmt"]["sample_rate"] == 16000 and info["fmt"]["channels"] == 1 and info["fmt"]["bits"] == 16 else None
            off += 8 + csz + (csz & 1)
        return info


def load_jsonl(path):
    out = []
    with open(path, "r", encoding="utf-8") as f:
        for line in f:
            line = line.strip()
            if line:
                out.append(json.loads(line))
    return out


def main():
    jobs = load_jsonl(JOBS)
    results = load_jsonl(RESULTS)
    by_id = {}
    for j in jobs:
        by_id.setdefault(j["job_id"], []).append(j)

    ok = True
    print("== WAV structure ==")
    for name in sorted(os.listdir(WAV_DIR)):
        if not name.lower().endswith(".wav"):
            continue
        p = os.path.join(WAV_DIR, name)
        info = walk(p)
        if info is None:
            print("%-28s HEADER_FAIL" % name)
            ok = False
            continue
        f = info["fmt"]
        d = info["data"]
        good = (f is not None and f["format"] == 1 and f["channels"] == 1 and
                f["sample_rate"] == 16000 and f["bits"] == 16 and
                d is not None and d["size"] == d["avail"] and
                info["riff_size"] == info["file_size"] - 8 and
                d["offset"] + d["size"] == info["file_size"])
        ok = ok and good
        print("%-28s size=%-7d riff=%-7d data=%-7d sr=%d ch=%d bits=%d dur=%5.2fs %s  sha256=%s" % (
            name, info["file_size"], info["riff_size"], d["size"] if d else -1,
            f["sample_rate"], f["channels"], f["bits"],
            info.get("duration_s") or 0.0, "OK" if good else "BAD", sha256(p)[:32]))

    print("\n== job / wav association ==")
    pairs = []
    for j in results:
        name = j["name"]
        p = os.path.join(WAV_DIR, name)
        exists = os.path.exists(p)
        size_ok = exists and os.path.getsize(p) == j["size"]
        chain = [r["state"] for r in by_id.get(j["job_id"], [])]
        pairs.append((name, j["job_id"], j["size"], j["state"], j["run_id"], j["seg_id"], j["start_seq"], exists, size_ok, chain))
        if not (exists and size_ok and j["state"] == "SUCCEEDED"):
            ok = False
        print("%-28s job=%s size=%-7d %-9s run=%s seg=%d seq=%-5d file=%s size_match=%s chain=%s" % (
            name, j["job_id"], j["size"], j["state"], j["run_id"], j["seg_id"], j["start_seq"],
            "yes" if exists else "NO", "yes" if size_ok else "NO", "->".join(chain)))

    print("\n== name/size identity check (job_id = fnv1a64(name:size)) ==")
    def fnv1a64(s):
        # 涓?t5_util.c 鐨?t5_fnv1a64() 瀹屽叏涓€鑷达紙娉ㄦ剰鍏?offset basis 瀛楅潰鍊间负
        # 1469598103934665603锛屼笉鏄爣鍑?FNV-1a 鐨?0xcbf29ce484222325锛?
        h = 1469598103934665603
        for b in s.encode("utf-8"):
            h ^= b
            h = (h * 1099511628211) & 0xFFFFFFFFFFFFFFFF
        return h
    for name, jid, size, *_ in pairs:
        want = "%016x" % fnv1a64("%s:%d" % (name, size))
        good = want == jid
        ok = ok and good
        print("%-28s expect=%s got=%s %s" % (name, want, jid, "OK" if good else "MISMATCH"))

    print("\n== totals ==")
    print("wav_files   = %d" % len([n for n in os.listdir(WAV_DIR) if n.lower().endswith(".wav")]))
    print("job_records = %d (jobs.jsonl lines)" % len(jobs))
    print("job_ids     = %d (unique)" % len(by_id))
    print("results     = %d (results.jsonl lines)" % len(results))
    print("states      = %s" % json.dumps(sorted(set(j["state"] for j in jobs))))
    print("\nVERDICT = %s" % ("PASS" if ok else "FAIL"))
    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())

