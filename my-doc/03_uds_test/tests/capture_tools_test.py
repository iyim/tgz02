#!/usr/bin/env python3
"""capture_tools_test.py -- T3 capture 校验工具（Python）的回归测试

被测对象（不改动、不复制实现，直接执行发布脚本）：
  * my-doc/03_uds_test/verify_capture.py
  * my-doc/04_device_t3/cap_audio_stats.py

重点：**尾部残帧**（文件长度不是 1320 B 整数倍）必须被判为不完整：
  * verify_capture.py  -> 退出码非 0
  * cap_audio_stats.py -> 退出码非 0（不再报 PASS）
两者的完整性判断必须一致（对同一输入，一个 PASS 另一个也必须 PASS）。

判 PASS/FAIL 用的是**进程退出码**，不是"输出里出现某个字符串"。

    python tests/capture_tools_test.py
"""
import math
import os
import struct
import subprocess
import sys
import tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
UDS = os.path.dirname(HERE)                      # my-doc/03_uds_test
VERIFY = os.path.join(UDS, "verify_capture.py")
AUDIO = os.path.join(UDS, "..", "04_device_t3", "cap_audio_stats.py")

MAGIC = 0x325A4754
VER = 2
HDR = 40
PAYLOAD = 1280
MSG = HDR + PAYLOAD
SPF = 640
HDR_FMT = "<IBBH I Q I I H H I I".replace(" ", "")

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


def fnv1a(b):
    h = 2166136261
    for x in b:
        h = ((h ^ x) * 16777619) & 0xFFFFFFFF
    return h


def payload_for(seq):
    """真实 PCM 风格的确定性载荷：非零、逐帧不同（flags=0，不触发 synthetic 重算）"""
    out = bytearray()
    for i in range(SPF):
        v = int(2000.0 * math.sin(2.0 * math.pi * (i + seq * 7) / 40.0))
        out += struct.pack("<h", v)
    return bytes(out)


def frame(seq, epoch=0xA1B2C3D4, ts=None):
    if ts is None:
        ts = 1000000 + seq * 40000
    body = payload_for(seq)
    return struct.pack(HDR_FMT, MAGIC, VER, 0, HDR, seq, ts, epoch,
                       16000, 1, 16, PAYLOAD, fnv1a(body)) + body


def capture(nframes, start_seq=1):
    return b"".join(frame(start_seq + i) for i in range(nframes))


def run(script, path):
    """返回 (rc, stdout) —— rc 就是被测脚本的 PASS/FAIL 判定"""
    p = subprocess.run([sys.executable, script, path],
                       stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                       encoding="utf-8", errors="replace")
    return p.returncode, p.stdout


def check_case(name, blob, expect_ok, expect_rest):
    path = os.path.join(TMP, name + ".cap")
    with open(path, "wb") as f:
        f.write(blob)

    vrc, vout = run(VERIFY, path)
    arc, aout = run(AUDIO, path)

    print("\n[%s] size=%d  verify_rc=%d  audio_rc=%d" % (name, len(blob), vrc, arc))

    # 1) 两个脚本各自的结论
    if expect_ok:
        eq(vrc, 0, "%s: verify_capture PASS (rc=0)" % name)
        eq(arc, 0, "%s: cap_audio_stats PASS (rc=0)" % name)
    else:
        ok(vrc != 0, "%s: verify_capture FAIL (rc!=0)" % name, "rc=%d" % vrc)
        ok(arc != 0, "%s: cap_audio_stats FAIL (rc!=0)" % name, "rc=%d" % arc)

    # 2) 两个脚本的完整性判断必须一致
    eq(vrc == 0, arc == 0, "%s: 两个脚本完整性判断一致" % name)

    # 3) 残帧字节数必须被明确报出来
    if expect_rest:
        ok(str(expect_rest) in vout, "%s: verify 输出残留字节数 %d" % (name, expect_rest))
        ok(str(expect_rest) in aout, "%s: audio 输出残留字节数 %d" % (name, expect_rest))

    # 4) 任何情况下都不允许抛异常（空文件也不例外）
    ok("Traceback" not in vout, "%s: verify 无异常栈" % name)
    ok("Traceback" not in aout, "%s: audio 无异常栈" % name)

    # 5) 残帧时不允许把结果报成完整/有效
    if expect_rest:
        ok("PASS" not in aout.split("RESULT")[-1],
           "%s: audio 的 RESULT 行不得出现 PASS" % name)
        ok("INCOMPLETE" in vout.upper(), "%s: verify 明确标记 incomplete" % name)
    return vrc, arc, vout, aout


TMP = tempfile.mkdtemp(prefix="t3_cap_test_")


def main():
    print("capture_tools_test.py")
    print("  verify : %s" % os.path.normpath(VERIFY))
    print("  audio  : %s" % os.path.normpath(AUDIO))
    print("  tmpdir : %s" % TMP)
    for p in (VERIFY, AUDIO):
        ok(os.path.exists(p), "被测脚本存在: %s" % os.path.basename(p))

    base = capture(3)

    # 1) 正常完整 capture
    check_case("full3", base, True, 0)
    # 2) 末尾追加 1 字节
    check_case("plus1", base + b"\x00", False, 1)
    # 3) 末尾追加 1319 字节（差 1 字节就又是一整帧）
    check_case("plus1319", base + bytes(1319), False, 1319)
    # 4) 空文件
    check_case("empty", b"", False, 0)
    # 5) 多帧完整 capture
    check_case("multi8", capture(8), True, 0)

    # 6) 一致性总表：任意输入下两个脚本的结论必须相同
    print("\n[consistency] 汇总")
    for name, blob in (("full3", base), ("plus1", base + b"\x00"),
                       ("plus1319", base + bytes(1319)), ("empty", b""),
                       ("multi8", capture(8)), ("plus660", base + bytes(660)),
                       ("tiny100", bytes(100))):
        path = os.path.join(TMP, "cons_" + name + ".cap")
        with open(path, "wb") as f:
            f.write(blob)
        vrc, _ = run(VERIFY, path)
        arc, _ = run(AUDIO, path)
        eq(vrc == 0, arc == 0, "consistency %s (%d B): verify=%d audio=%d"
           % (name, len(blob), vrc, arc))

    print("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
    if fail_n:
        print("\n".join("  - " + f for f in failures))
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
