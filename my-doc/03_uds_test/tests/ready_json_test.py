#!/usr/bin/env python3
"""ready_json_test.py -- dgram_server.c 的 READY 行必须是合法 JSON

做法：
  1. 编译 tests_c/ready_json_harness.c —— 它 #include 真正发布的 dgram_server.c，
     调用的就是设备上跑的 print_ready() / json_write_string()（不是复制粘贴的副本）；
  2. 用 harness 生成不同 capture 路径下的 READY 行；
  3. 用 **json.loads()** 逐行真实解析，并检查字段值与转义是否原样往返。

覆盖：
  1. 普通路径 /data/local/tmp/capture.pcm
  2. 含空格的路径
  3. 含双引号的路径
  4. 含反斜杠的路径
  5. 未指定 capture -> JSON null
  另含：含制表符 / 控制字符的路径（转义为 \\t / \\u00xx）

    python tests/ready_json_test.py [--cc PATH]
"""
import argparse
import json
import os
import shutil
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
UDS = os.path.dirname(HERE)                       # my-doc/03_uds_test
HARNESS = os.path.join(UDS, "tests_c", "ready_json_harness.c")
COMPAT = os.path.join(UDS, "tests_c", "compat", "win32")

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
    cands += ["gcc", "cc", "clang"]
    # 本机（Windows）已知的 TDM-GCC；找不到 gcc 时兜底
    cands.append(r"C:\TDM-GCC-64\bin\gcc.exe")
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
    exe = os.path.join(outdir, "ready_json_harness.exe" if os.name == "nt"
                       else "ready_json_harness")
    cmd = [cc, "-O2", "-Wall", "-Wextra"]
    if os.name == "nt":
        # harness 故意把 POSIX 目标的 dgram_server.c 编到 Windows：winsock 的
        # setsockopt/recv 形参与 POSIX 不同，这两类告警来自平台差异，不是本次改动的代码。
        cmd += ["-Wno-incompatible-pointer-types", "-Wno-pointer-sign",
                "-I", COMPAT]
    cmd += ["-o", exe, HARNESS]
    if os.name == "nt":
        cmd += ["-lws2_32"]
    print("  build: %s" % " ".join(cmd))
    r = subprocess.run(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                       encoding="utf-8", errors="replace")
    ok(r.returncode == 0, "harness 编译成功", r.stdout[-800:])
    if r.stdout.strip():
        print("  build output: %s" % r.stdout.strip())
    ok(r.returncode == 0 and os.path.exists(exe), "harness 可执行文件存在")
    return exe


def run_lines(exe, args, stdin_text=None):
    p = subprocess.run([exe] + args, input=stdin_text,
                       stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                       encoding="utf-8", errors="replace")
    lines = [ln for ln in p.stdout.splitlines() if ln.strip()]
    return p.returncode, lines, p.stderr


def parse_line(line, ctx):
    try:
        obj = json.loads(line)
    except ValueError as e:
        ok(False, "%s: json.loads 解析成功" % ctx, "%s -> %r" % (e, line[:160]))
        return None
    ok(True, "%s: json.loads 解析成功" % ctx)
    ok(isinstance(obj, dict), "%s: 顶层是 JSON 对象" % ctx)
    return obj


def check_common(obj, ctx):
    eq(obj.get("type"), "READY", "%s: type == READY" % ctx)
    eq(obj.get("role"), "server", "%s: role == server" % ctx)
    eq(obj.get("mode"), "abstract", "%s: mode == abstract" % ctx)
    eq(obj.get("name"), "tgz2_pcm", "%s: name == tgz2_pcm" % ctx)
    eq(obj.get("rcvbuf_req"), 8192, "%s: rcvbuf_req 字段保留" % ctx)
    eq(obj.get("rcvbuf_eff"), 16384, "%s: rcvbuf_eff 字段保留" % ctx)
    eq(obj.get("max_age_ms"), 500, "%s: max_age_ms 字段保留" % ctx)
    ok(str(obj.get("payload_policy", "")).startswith("synthetic="),
       "%s: payload_policy 字段保留" % ctx)
    ok("capture" in obj, "%s: capture 字段存在" % ctx)


CAPTURE_PREFIX = "CAPTURE "


def parse_capture_line(line, ctx):
    """CAPTURE 行的前缀是 `CAPTURE `，其后的对象必须能被 json.loads 直接解析"""
    has_prefix = line.startswith(CAPTURE_PREFIX)
    ok(has_prefix, "%s: 行前缀是 'CAPTURE '" % ctx, repr(line[:48]))
    body = line[len(CAPTURE_PREFIX):] if has_prefix else line
    try:
        obj = json.loads(body)
    except ValueError as e:
        ok(False, "%s: CAPTURE 段 json.loads 解析成功" % ctx,
           "%s -> %r" % (e, body[:160]))
        return None
    ok(True, "%s: CAPTURE 段 json.loads 解析成功" % ctx)
    ok(isinstance(obj, dict), "%s: 顶层是 JSON 对象" % ctx)
    return obj


def check_capture(obj, ctx, want_path, want_frames):
    eq(set(obj.keys()), {"file", "frames", "bytes"},
       "%s: 字段集合 == {file, frames, bytes}" % ctx)
    eq(obj.get("file"), want_path, "%s: file 原样往返 (%r)" % (ctx, want_path))
    ok(isinstance(obj.get("frames"), int) and not isinstance(obj.get("frames"), bool),
       "%s: frames 是 JSON 整数（不是字符串）" % ctx,
       "type=%s" % type(obj.get("frames")).__name__)
    eq(obj.get("frames"), want_frames, "%s: frames 值 == %d" % (ctx, want_frames))
    ok(isinstance(obj.get("bytes"), int) and not isinstance(obj.get("bytes"), bool),
       "%s: bytes 是 JSON 整数（不是字符串）" % ctx,
       "type=%s" % type(obj.get("bytes")).__name__)
    eq(obj.get("bytes"), want_frames * 1320,
       "%s: bytes 值 == frames * 1320" % ctx)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--cc", default=None, help="C 编译器（默认自动探测 gcc/cc/clang）")
    args = ap.parse_args()

    print("ready_json_test.py")
    print("  harness: %s" % HARNESS)
    ok(os.path.exists(HARNESS), "harness 源文件存在")

    cc = find_cc(args.cc)
    ok(cc is not None, "找到 C 编译器")
    if cc is None:
        print("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
        return 1
    print("  cc     : %s" % cc)

    tmpdir = tempfile.mkdtemp(prefix="t3_ready_json_")
    print("  tmpdir : %s" % tmpdir)
    exe = build(cc, tmpdir)

    # ---- 1) 未指定 capture -> null ----
    print("\n[null] 未指定 --capture")
    rc, lines, err = run_lines(exe, ["--null"])
    eq(rc, 0, "null: harness 退出码 0")
    eq(len(lines), 1, "null: 恰好 1 行输出")
    if lines:
        obj = parse_line(lines[0], "null")
        if obj:
            check_common(obj, "null")
            ok(obj.get("capture") is None, "null: capture 是 JSON null",
               "got=%r" % (obj.get("capture"),))
    eq(err.strip(), "", "null: stderr 为空")

    # ---- 2) 四种路径 ----
    paths = [
        "/data/local/tmp/capture.pcm",
        "/data/local/tmp/with space/capture a.pcm",
        'quote"inside.pcm',
        "C:\\tmp\\back\\slash.pcm",
        "/data/local/tmp/tab\there/ctl\x01.pcm",
    ]
    print("\n[paths] %d 种 capture 路径" % len(paths))
    rc, lines, err = run_lines(exe, ["--stdin"], "\n".join(paths) + "\n")
    eq(rc, 0, "paths: harness 退出码 0")
    eq(len(lines), len(paths), "paths: 输出行数 == 输入路径数")
    eq(err.strip(), "", "paths: stderr 为空")
    for i, want in enumerate(paths):
        if i >= len(lines):
            break
        ctx = "paths[%d]" % i
        obj = parse_line(lines[i], ctx)
        if not obj:
            continue
        check_common(obj, ctx)
        eq(obj.get("capture"), want, "%s: capture 原样往返 (%r)" % (ctx, want))
        ok(len(json.dumps(obj)) > 0, "%s: 对象可再序列化" % ctx)

    # ---- 3) CAPTURE 行（与设备收尾时同一个 print_capture()） ----
    print("\n[capture] %d 种 capture 路径" % len(paths))
    rc, lines, err = run_lines(exe, ["--capture-stdin", "252"],
                               "\n".join(paths) + "\n")
    eq(rc, 0, "capture: harness 退出码 0")
    eq(len(lines), len(paths), "capture: 输出行数 == 输入路径数")
    eq(err.strip(), "", "capture: stderr 为空")
    for i, want in enumerate(paths):
        if i >= len(lines):
            break
        ctx = "capture[%d]" % i
        obj = parse_capture_line(lines[i], ctx)
        if obj:
            check_capture(obj, ctx, want, 252)

    # frames = 0 -> bytes = 0，且两者仍是 JSON 数字
    print("\n[capture-zero] frames=0")
    rc, lines, err = run_lines(exe, ["--capture-stdin", "0"],
                               "/data/local/tmp/capture.pcm\n")
    eq(rc, 0, "capture-zero: harness 退出码 0")
    eq(len(lines), 1, "capture-zero: 恰好 1 行")
    if lines:
        obj = parse_capture_line(lines[0], "capture-zero")
        if obj:
            check_capture(obj, "capture-zero", "/data/local/tmp/capture.pcm", 0)

    # ---- 4) 反面对照：旧写法（裸拼接）不是合法 JSON ----
    print("\n[negative] 旧写法（不加引号/不转义）确实不是合法 JSON")
    bad = ('{"type":"READY","capture":quote"inside.pcm}').strip()
    try:
        json.loads(bad)
        ok(False, "旧 READY 格式应解析失败")
    except ValueError:
        ok(True, "旧 READY 格式（裸拼接）解析失败 -> 证明本测试有区分力")

    bad_cap = '{"file":"quote"inside.pcm","frames":252,"bytes":332640}'
    try:
        json.loads(bad_cap)
        ok(False, "旧 CAPTURE 格式应解析失败")
    except ValueError:
        ok(True, "旧 CAPTURE 格式（裸拼接）解析失败 -> 证明本测试有区分力")

    print("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
    if fail_n:
        print("\n".join("  - " + f for f in failures))
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
