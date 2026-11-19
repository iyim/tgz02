#!/usr/bin/env python3
"""receiver_test.py -- T4 接收端协议/队列/WAV 的本机自动测试

被测对象是**生产代码** rx_core.c（由 receiver_harness.c 直接调用，不复制实现）：
  * 帧分类与统计（长度/magic/ver/hdr/参数/CRC/序号/epoch）
  * 有界队列的 drop-new 策略与高水位
  * SUMMARY 的 JSON 形状
  * WAV 头与实际 PCM 长度

Windows 内核不支持 AF_UNIX DGRAM，所以本测试**不**声称验证了 socket 收发：
真实 socket 路径在真机上跑（见 README §真机测试），本文件只验证可移植逻辑。

    python tests/receiver_test.py [--cc PATH]
"""
import argparse
import json
import os
import shutil
import struct
import subprocess
import sys
import tempfile
import wave

HERE = os.path.dirname(os.path.abspath(__file__))
T4 = os.path.dirname(HERE)                       # my-doc/05_t4
HARNESS_SRC = os.path.join(HERE, "receiver_harness.c")
RX_CORE_C = os.path.join(T4, "android", "rx_core.c")

HDR = 40
PAYLOAD = 1280
MSG = HDR + PAYLOAD
SPF = 640

pass_n = 0
fail_n = 0
failures = []


def ok(cond, name, detail=""):
    global pass_n, fail_n
    if cond:
        pass_n += 1
        print("  ok   %s" % name)
    else:
        fail_n += 1
        failures.append(name + ((" :: " + detail) if detail else ""))
        print("  FAIL %s%s" % (name, (" :: " + detail) if detail else ""))


def eq(a, b, name):
    ok(a == b, name, "got=%r want=%r" % (a, b))


def find_cc(explicit):
    cands = []
    if explicit:
        cands.append(explicit)
    if os.environ.get("CC"):
        cands.append(os.environ["CC"])
    cands += ["gcc", "cc", "clang", r"C:\TDM-GCC-64\bin\gcc.exe"]
    for c in cands:
        path = c if os.path.isabs(c) else shutil.which(c)
        if not path or not os.path.exists(path):
            continue
        try:
            r = subprocess.run([path, "--version"], stdout=subprocess.DEVNULL,
                               stderr=subprocess.DEVNULL)
            if r.returncode == 0:
                return path
        except OSError:
            continue
    return None


def build(cc, outdir):
    exe = os.path.join(outdir, "receiver_harness.exe" if os.name == "nt"
                       else "receiver_harness")
    cmd = [cc, "-O2", "-Wall", "-Wextra", "-o", exe, HARNESS_SRC, RX_CORE_C]
    if os.name == "nt":
        cmd += ["-lws2_32"]          # tgz2_frame.h 在 Windows 上包含 winsock2
    print("  build: %s" % " ".join(cmd))
    r = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                       encoding="utf-8", errors="replace")
    ok(r.returncode == 0, "harness 编译成功", r.stdout[-600:])
    if r.stdout.strip():
        print("  build output: %s" % r.stdout.strip())
    ok(r.returncode == 0 and os.path.exists(exe), "harness 可执行文件存在")
    return exe


def run(exe, args):
    p = subprocess.run([exe] + args, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                       encoding="utf-8", errors="replace")
    lines = [ln for ln in p.stdout.splitlines() if ln.strip()]
    return p.returncode, lines, p.stderr


def parse(lines, typ, ctx):
    objs = []
    for ln in lines:
        try:
            o = json.loads(ln)
        except ValueError as e:
            ok(False, "%s: 输出行可 json.loads 解析" % ctx, "%s -> %r" % (e, ln[:120]))
            continue
        if o.get("type") == typ:
            objs.append(o)
    ok(len(objs) >= 1, "%s: 至少有一行 type=%s" % (ctx, typ), "lines=%d" % len(lines))
    return objs


def script_stats(exe, spec, ctx, with_summary=False):
    args = ["--script", spec] + (["--with-summary"] if with_summary else [])
    rc, lines, err = run(exe, args)
    eq(rc, 0, "%s: harness 退出码 0" % ctx)
    eq(err.strip(), "", "%s: stderr 为空" % ctx)
    st = parse(lines, "STATS", ctx)
    return (st[0] if st else None), lines


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cc", default=None, help="C 编译器（默认自动探测 gcc/cc/clang）")
    args = ap.parse_args()

    print("receiver_test.py")
    print("  harness : %s" % HARNESS_SRC)
    print("  rx_core : %s" % RX_CORE_C)
    for p in (HARNESS_SRC, RX_CORE_C):
        ok(os.path.exists(p), "源文件存在: %s" % os.path.basename(p))

    cc = find_cc(args.cc)
    ok(cc is not None, "找到 C 编译器")
    if cc is None:
        print("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
        return 1
    print("  cc      : %s" % cc)

    tmpdir = tempfile.mkdtemp(prefix="t4_rx_test_")
    print("  tmpdir  : %s" % tmpdir)
    exe = build(cc, tmpdir)

    # ---- 1) 合法帧 ----
    print("\n[1] 合法 TGZ2 v2 帧正常接收")
    st, _ = script_stats(exe, "ok,ok,ok", "valid")
    if st:
        eq(st["received"], 3, "valid: received=3")
        eq(st["accepted"], 3, "valid: accepted=3")
        eq(st["bad_len"] + st["bad_crc"] + st["bad_magic"] + st["bad_ver"] +
           st["bad_hdr"] + st["bad_param"], 0, "valid: 没有任何坏帧计数")
        eq(st["missing"], 0, "valid: missing=0")
        eq(st["seq_first"], 1, "valid: seq_first=1")
        eq(st["seq_last"], 3, "valid: seq_last=3")

    # ---- 2) 错误长度 ----
    print("\n[2] 错误长度数据报被拒绝")
    st, _ = script_stats(exe, "badlen", "badlen")
    if st:
        eq(st["received"], 1, "badlen: received=1")
        eq(st["accepted"], 0, "badlen: accepted=0")
        eq(st["bad_len"], 1, "badlen: bad_len=1")

    # ---- 3) 错误 CRC ----
    print("\n[3] 错误 CRC 被拒绝")
    st, _ = script_stats(exe, "ok,badcrc", "badcrc")
    if st:
        eq(st["accepted"], 1, "badcrc: 只有合法帧被接收")
        eq(st["bad_crc"], 1, "badcrc: bad_crc=1")
        eq(st["received"], 2, "badcrc: received=2")

    # ---- 4) 错误 magic / version ----
    print("\n[4] 错误 magic/version 被拒绝")
    st, _ = script_stats(exe, "badmagic,badver", "badmagic+ver")
    if st:
        eq(st["bad_magic"], 1, "badmagic: bad_magic=1")
        eq(st["bad_ver"], 1, "badver: bad_ver=1")
        eq(st["accepted"], 0, "badmagic+ver: accepted=0")
        eq(st["received"], 2, "badmagic+ver: received=2")

    # ---- 5) 序号缺口 ----
    print("\n[5] 序号缺口统计正确（跳过 3 个 seq -> missing += 3）")
    st, _ = script_stats(exe, "ok,ok,gap", "gap")
    if st:
        eq(st["accepted"], 3, "gap: accepted=3")
        eq(st["missing"], 3, "gap: missing=3")
        eq(st["duplicate"], 0, "gap: duplicate=0")
        eq(st["reorder"], 0, "gap: reorder=0")
        eq(st["seq_last"], 6, "gap: seq_last=6（1,2 -> 6）")
    st, _ = script_stats(exe, "ok,dup", "dup")
    if st:
        eq(st["duplicate"], 1, "dup: duplicate=1")
    st, _ = script_stats(exe, "ok,ok,reorder", "reorder")
    if st:
        eq(st["reorder"], 1, "reorder: reorder=1")

    # ---- 6) epoch 切换 ----
    print("\n[6] epoch 切换重置序号判断（不把重启算成丢帧）")
    st, _ = script_stats(exe, "ok,ok,epoch,ok", "epoch")
    if st:
        eq(st["epoch_switches"], 1, "epoch: epoch_switches=1")
        eq(st["missing"], 0, "epoch: 切换后没有凭空产生 missing")
        eq(st["accepted"], 4, "epoch: accepted=4")
        ok(st["epoch"] != 0xA1B2C3D4, "epoch: 新 epoch 值已生效")

    # ---- 7) 队列满：drop-new，不覆盖、不阻塞 ----
    print("\n[7] 队列满时丢弃新帧（不阻塞、不覆盖未处理帧）")
    rc, lines, err = run(exe, ["--queue", "8", "5"])
    eq(rc, 0, "queue: harness 退出码 0")
    q = parse(lines, "QUEUE", "queue")
    if q:
        q = q[0]
        eq(q["cap"], 8, "queue: cap=8")
        eq(q["attempt"], 13, "queue: 共推入 13 帧")
        eq(q["pushed_ok"], 8, "queue: 成功入队 8 帧")
        eq(q["drops"], 5, "queue: 丢弃 5 帧")
        eq(q["high_watermark"], 8, "queue: 高水位=8")
        eq(q["popped"], 8, "queue: 取出 8 帧")
        eq(q["first_seq"], 1, "queue: 队首仍是第 1 帧（未被覆盖）")
        eq(q["last_seq"], 8, "queue: 队尾是第 8 帧")
        eq(q["count_after"], 0, "queue: 取空后 count=0")
    rc, lines, _ = run(exe, ["--queue", "16", "0"])
    q = parse(lines, "QUEUE", "queue-no-drop")
    if q:
        eq(q[0]["drops"], 0, "queue: 未溢出时 drops=0")

    # ---- 8) SUMMARY ----
    print("\n[8] 正常退出时 SUMMARY 可解析")
    st, lines = script_stats(exe, "ok,ok,badcrc", "summary", with_summary=True)
    sm = parse(lines, "SUMMARY", "summary")
    if sm:
        s = sm[0]
        required = ["received", "accepted", "bad_len", "bad_crc", "missing", "duplicate",
                    "reorder", "queue_drop", "queue_high_watermark", "vad_speech_frames",
                    "segments", "segment_write_errors"]
        for k in required:
            ok(k in s, "summary: 字段 %s 存在" % k)
            ok(isinstance(s.get(k), int), "summary: 字段 %s 是整数" % k,
               "type=%s" % type(s.get(k)).__name__)
        eq(s["received"], 3, "summary: received=3")
        eq(s["accepted"], 2, "summary: accepted=2（1 帧坏 CRC 不计）")
        eq(s["bad_crc"], 1, "summary: bad_crc=1")
        eq(s["vad_speech_frames"], 123, "summary: vad_speech_frames 透传")
        eq(s["segments"], 2, "summary: segments 透传")
        ok(isinstance(s.get("noise_rms"), float), "summary: noise_rms 是数字")
        ok(isinstance(s.get("dur_s"), float), "summary: dur_s 是数字")

    # ---- 9) WAV 头与 PCM 长度一致 ----
    print("\n[9] WAV 文件头与 PCM 数据长度一致")
    wavdir = os.path.join(tmpdir, "segments")
    os.makedirs(wavdir, exist_ok=True)
    frames = 5
    rc, lines, err = run(exe, ["--wav", wavdir, "--frames", str(frames), "--seg", "7",
                               "--run-id", "0a0b0c0d"])
    eq(rc, 0, "wav: harness 退出码 0")
    eq(err.strip(), "", "wav: stderr 为空")
    w = parse(lines, "WAV", "wav")
    if w:
        w = w[0]
        path = w["path"]
        ok(os.path.exists(path), "wav: 文件已生成")
        eq(os.path.basename(path), "seg_0a0b0c0d_0007_42.wav",
           "wav: 文件名 = seg_<run_id>_<seg>_<seq>.wav")
        eq(w["frames"], frames, "wav: frames=5")
        eq(w["data_bytes"], frames * PAYLOAD, "wav: data_bytes = 5 * 1280")
        eq(os.path.getsize(path), 44 + frames * PAYLOAD, "wav: 文件大小 = 44 + PCM")

        with open(path, "rb") as f:
            blob = f.read()
        ok(blob[:4] == b"RIFF", "wav: 前 4 字节是 RIFF")
        ok(blob[8:12] == b"WAVE", "wav: 8..12 是 WAVE")
        riff_size = struct.unpack("<I", blob[4:8])[0]
        data_size = struct.unpack("<I", blob[40:44])[0]
        eq(riff_size, len(blob) - 8, "wav: RIFF size = 文件长度 - 8")
        eq(data_size, frames * PAYLOAD, "wav: data size = PCM 长度")
        eq(struct.unpack("<I", blob[24:28])[0], 16000, "wav: 采样率 16000")
        eq(struct.unpack("<H", blob[22:24])[0], 1, "wav: 单声道")
        eq(struct.unpack("<H", blob[34:36])[0], 16, "wav: 16-bit")

        with wave.open(path, "rb") as wf:
            eq(wf.getnchannels(), 1, "wave: nchannels=1")
            eq(wf.getsampwidth(), 2, "wave: sampwidth=2")
            eq(wf.getframerate(), 16000, "wave: framerate=16000")
            eq(wf.getnframes(), frames * SPF, "wave: nframes = frames*640")
            data = wf.readframes(wf.getnframes())
        expect = b"".join(
            struct.pack("<h", ((f * SPF + i) % 30000) - 15000)
            for f in range(frames) for i in range(SPF))
        eq(len(data), frames * PAYLOAD, "wave: 读回字节数 = 5*1280")
        ok(data == expect, "wave: 读回的 PCM 与写入的样本逐字节一致")

    # ---- 10) 乱序/重复/回绕（P2：乱序不得污染序号高水位） ----
    print("\n[10] 序号语义：乱序不倒退高水位、重复单计、uint32 回绕正常")

    def seq_case(spec, ctx):
        st, _ = script_stats(exe, spec, ctx)
        return st or {}

    # 1,2,3,4
    st = seq_case("ok,ok,ok,ok", "seq-1..4")
    eq(st.get("missing"), 0, "seq 1,2,3,4: missing=0")
    eq(st.get("duplicate"), 0, "seq 1,2,3,4: duplicate=0")
    eq(st.get("reorder"), 0, "seq 1,2,3,4: reorder=0")

    # 1,3,2,4 —— 关键回归：收 2 时记乱序，但高水位停在 3，收 4 时不能再算缺口
    st = seq_case("ok,seq=3,ok,seq=2,ok,seq=4,ok", "seq-1324")
    eq(st.get("seq_first"), 1, "seq 1,3,2,4: first=1")
    eq(st.get("seq_last"), 4, "seq 1,3,2,4: last=4（高水位没有被乱序拉回）")
    eq(st.get("reorder"), 1, "seq 1,3,2,4: reorder=1")
    eq(st.get("missing"), 1, "seq 1,3,2,4: missing=1（不是 2 —— 旧的 seq_last=2 写法会算成 2）")
    eq(st.get("duplicate"), 0, "seq 1,3,2,4: duplicate=0")

    # 1,2,2,3
    st = seq_case("ok,ok,dup,ok", "seq-1223")
    eq(st.get("duplicate"), 1, "seq 1,2,2,3: duplicate=1")
    eq(st.get("missing"), 0, "seq 1,2,2,3: missing=0")
    eq(st.get("reorder"), 0, "seq 1,2,2,3: reorder=0")

    # 1,3,4
    st = seq_case("ok,seq=3,ok,ok", "seq-134")
    eq(st.get("missing"), 1, "seq 1,3,4: missing=1")
    eq(st.get("reorder"), 0, "seq 1,3,4: reorder=0")

    # 回绕：0xFFFFFFFE,0xFFFFFFFF,0,1
    st = seq_case("seq=0xFFFFFFFE,ok,ok,ok,ok", "seq-wrap")
    eq(st.get("seq_first"), 4294967294, "wrap: first=0xFFFFFFFE")
    eq(st.get("seq_last"), 1, "wrap: last=1（回绕后继续前进）")
    eq(st.get("missing"), 0, "wrap: missing=0（无虚假缺口）")
    eq(st.get("reorder"), 0, "wrap: reorder=0（回绕不被当成后退）")
    eq(st.get("duplicate"), 0, "wrap: duplicate=0")

    # 回绕 + 跨 0 的缺口：0xFFFFFFFF -> 1 应算 1 个缺口
    st = seq_case("seq=0xFFFFFFFF,ok,seq=1,ok", "seq-wrap-gap")
    eq(st.get("missing"), 1, "wrap-gap: 0xFFFFFFFF -> 1 记 1 个缺口")

    # ---- 11) SUMMARY: processed 与不变式 ----
    print("\n[11] SUMMARY 的 processed 与 accepted == processed + queue_drop")
    st, lines = script_stats(exe, "ok,ok,ok,badcrc", "processed", with_summary=True)
    sm = parse(lines, "SUMMARY", "processed")
    if sm:
        s = sm[0]
        ok("processed" in s, "summary: 字段 processed 存在")
        ok(isinstance(s.get("processed"), int), "summary: processed 是整数")
        eq(s["accepted"], 3, "summary: accepted=3（badcrc 不计）")
        eq(s["processed"], 3, "summary: processed=3")
        eq(s["queue_drop"], 0, "summary: queue_drop=0")
        eq(s["accepted"], s["processed"] + s["queue_drop"],
           "summary: accepted == processed + queue_drop")
        eq(s["queue_depth"], 0, "summary: queue_depth == 0")

    # 队列满场景：150 帧 > cap 128 -> accepted=150, drops=22, processed=128
    spec = ",".join(["ok"] * 150)
    st, lines = script_stats(exe, spec, "processed-drop", with_summary=True)
    sm = parse(lines, "SUMMARY", "processed-drop")
    if sm:
        s = sm[0]
        eq(s["accepted"], 150, "drop-case: accepted=150")
        eq(s["queue_drop"], 22, "drop-case: queue_drop=22（cap 128）")
        eq(s["processed"], 128, "drop-case: processed=128")
        eq(s["accepted"], s["processed"] + s["queue_drop"],
           "drop-case: accepted == processed + queue_drop")
        eq(s["queue_depth"], 0, "drop-case: queue_depth == 0")

    # ---- 12) WAV 文件名唯一（P2：不同运行不覆盖） ----
    print("\n[12] WAV 文件名带 run_id，不同运行不覆盖旧文件")
    uniqdir = os.path.join(tmpdir, "unique")
    os.makedirs(uniqdir, exist_ok=True)

    def wav_run(run_id):
        rc, lines, err = run(exe, ["--wav", uniqdir, "--frames", "2", "--seg", "3",
                                   "--run-id", run_id])
        eq(rc, 0, "unique(%s): harness 退出码 0" % run_id)
        w = parse(lines, "WAV", "unique(%s)" % run_id)
        return (w[0] if w else None)

    w1 = wav_run("aabbccdd")
    w2 = wav_run("aabbccdd")          # 故意用同一个 run_id，模拟"撞车"
    w3 = wav_run("11223344")          # 正常的另一次运行
    if w1 and w2 and w3:
        p1, p2, p3 = w1["path"], w2["path"], w3["path"]
        ok(p1 != p2, "unique: 相同 run_id 第二次也不覆盖（换名 _a1）", p1)
        ok("_a1" in os.path.basename(p2), "unique: 第二个文件名带 _a1 后缀",
           os.path.basename(p2))
        ok(p1 != p3, "unique: 不同 run_id 文件名不同")
        eq(os.path.basename(p1), "seg_aabbccdd_0003_42.wav", "unique: 名称含 run_id")
        eq(os.path.basename(p3), "seg_11223344_0003_42.wav", "unique: 第二个 run_id 生效")
        for pth in (p1, p2, p3):
            ok(os.path.exists(pth), "unique: 文件存在 %s" % os.path.basename(pth))
            ok(os.path.getsize(pth) == 44 + 2 * PAYLOAD,
               "unique: 大小正确 %s" % os.path.basename(pth))
            with wave.open(pth, "rb") as wf:
                eq(wf.getnframes(), 2 * SPF, "unique: 可读回 2 帧 %s"
                   % os.path.basename(pth))
        # 三个文件内容完全相同（同样的合成数据），说明没有被截断成空文件
        d1 = open(p1, "rb").read()
        d2 = open(p2, "rb").read()
        d3 = open(p3, "rb").read()
        ok(d1 == d2 == d3, "unique: 三个文件内容一致（都没有被截断）")

    # ---- 13) 原子独占创建：已有同名文件时绝不覆盖（O_EXCL） ----
    print("\n[13] 原子独占创建（O_EXCL）：已存在同名文件时另起后缀且不改动旧文件")
    atomicdir = os.path.join(tmpdir, "atomic")
    os.makedirs(atomicdir, exist_ok=True)
    base_name = "seg_cafebabe_0009_42.wav"
    base_path = os.path.join(atomicdir, base_name)
    # 手工占位：内容与正常 WAV 完全不同，用来证明"没有被截断/改写"
    placeholder = b"PRESERVE-ME-" + bytes(range(64)) * 4
    with open(base_path, "wb") as f:
        f.write(placeholder)
    before = open(base_path, "rb").read()

    rc, lines, err = run(exe, ["--wav", atomicdir, "--frames", "3", "--seg", "9",
                               "--run-id", "cafebabe"])
    eq(rc, 0, "atomic: harness 退出码 0")
    w = parse(lines, "WAV", "atomic")
    if w:
        w = w[0]
        p_new = w["path"]
        ok(os.path.basename(p_new) != base_name, "atomic: 没有占用已存在的文件名",
           os.path.basename(p_new))
        eq(os.path.basename(p_new), "seg_cafebabe_0009_42_a1.wav",
           "atomic: 自动改用 _a1 后缀")
        after = open(base_path, "rb").read()
        eq(len(after), len(before), "atomic: 旧文件长度未变")
        ok(after == before, "atomic: 旧文件内容逐字节未变（未被截断）")
        ok(os.path.exists(p_new), "atomic: 新文件已创建")
        eq(os.path.getsize(p_new), 44 + 3 * PAYLOAD, "atomic: 新文件大小正确")
        with wave.open(p_new, "rb") as wf:
            eq(wf.getnframes(), 3 * SPF, "atomic: 新文件可被 wave 读取（3 帧）")
        # 连开三次同样参数：必须得到三个不同文件名，且互不覆盖
        seen = {os.path.basename(p_new)}
        for _ in range(2):
            rc, lines, _ = run(exe, ["--wav", atomicdir, "--frames", "3", "--seg", "9",
                                     "--run-id", "cafebabe"])
            eq(rc, 0, "atomic: 连续创建退出码 0")
            w2 = parse(lines, "WAV", "atomic-repeat")
            if w2:
                nm = os.path.basename(w2[0]["path"])
                ok(nm not in seen, "atomic: 连续创建得到新文件名 (%s)" % nm)
                seen.add(nm)
                eq(os.path.getsize(w2[0]["path"]), 44 + 3 * PAYLOAD,
                   "atomic: 连续创建的文件大小正确")
        eq(len(seen), 3, "atomic: 三次创建得到三个不同文件名")
        ok(open(base_path, "rb").read() == before, "atomic: 占位文件始终未被改写")

    # ---- 结论 ----
    print("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
    if fail_n:
        print("\n".join("  - " + f for f in failures))
        return 1
    print("note: 本测试覆盖可移植的协议/队列/WAV 逻辑；"
          "AF_UNIX DGRAM 的真实收发由真机 t4_receiver 验证。")
    return 0


if __name__ == "__main__":
    sys.exit(main())
