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
    rc, lines, err = run(exe, ["--wav", wavdir, "--frames", str(frames), "--seg", "7"])
    eq(rc, 0, "wav: harness 退出码 0")
    eq(err.strip(), "", "wav: stderr 为空")
    w = parse(lines, "WAV", "wav")
    if w:
        w = w[0]
        path = w["path"]
        ok(os.path.exists(path), "wav: 文件已生成")
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
