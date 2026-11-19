#!/usr/bin/env python3
"""T4-07 进程级停止路径测试（secs 超时 / SIGINT / SIGTERM / 连续启停）。

为什么单独做进程级测试：真实信号只能打在**真实进程**上，drain_test 里的
`g_stop = 1` 是普通变量赋值，不能拿来冒充信号测试。

每个用例：
  1. 在设备前台启动 t4_receiver（阻塞式 adb 会话 A），退出后自己的日志里留下 `EXIT=<code>`；
  2. 需要信号的用例从会话 B 用 `kill -INT|-TERM $(pidof t4_receiver)` 打真实信号；
  3. 等待会话 A 结束（带超时 = 死锁检测），然后解析 SUMMARY 并断言：
        EXIT == 0
        received == accepted
        accepted == processed + queue_drop
        queue_depth == 0
        segment_write_errors == 0
     带 --bridge 时还要求 received > 0（真的收到了 PCM）。

Windows 上运行（只需要 adb），设备侧二进制需事先 push 到 DEV_DIR。
"""
import argparse
import json
import re
import subprocess
import sys
import tempfile
import time

ADB_DEFAULT = r"D:\GreenSoft\platform-tools\adb.exe"
SERIAL_DEFAULT = "192.168.1.9:5555"
DEV_DIR_DEFAULT = "/data/local/tmp/t4/stop_test"
BRIDGE_DEFAULT = r"D:\tgz02\OS\system\my-doc\04_device_t3\run_t3_uds.py"
PY_DEFAULT = r"C:\Program Files\Python311\python.exe"

pass_n = 0
fail_n = 0
lines = []


def log(msg):
    lines.append(msg)
    print(msg, flush=True)


def check(cond, name, extra=""):
    global pass_n, fail_n
    if cond:
        pass_n += 1
        log("  ok   %s" % name)
    else:
        fail_n += 1
        log("  FAIL %s %s" % (name, extra))


class Device:
    def __init__(self, adb, serial, dev_dir):
        self.adb = adb
        self.serial = serial
        self.dir = dev_dir

    def shell(self, cmd, timeout=120):
        p = subprocess.run([self.adb, "-s", self.serial, "shell", cmd],
                           stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                           encoding="utf-8", errors="replace", timeout=timeout)
        return p.stdout

    def popen_shell(self, cmd):
        return subprocess.Popen([self.adb, "-s", self.serial, "shell", cmd],
                                stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                                encoding="utf-8", errors="replace")

    def pid(self):
        out = self.shell("pidof t4_receiver").strip()
        return out.split()[0] if out else None


def parse_summary(text):
    for line in text.splitlines():
        line = line.strip()
        if line.startswith('{"type":"SUMMARY"'):
            try:
                return json.loads(line)
            except ValueError:
                return None
    return None


def parse_exit(text):
    m = re.findall(r"EXIT=(-?\d+)", text)
    return int(m[-1]) if m else None


def get_log(dev, tag):
    return dev.shell("cat %s/run_%s.log 2>/dev/null" % (dev.dir, tag))


def one_case(dev, tag, args, signal_name=None, signal_after=3.0, wait_limit=30.0,
             expect_min=0.5, expect_max=None, want_frames=False):
    """跑一个停止用例。args: 传给 t4_receiver 的参数串。"""
    dev.shell("mkdir -p %s/seg" % dev.dir)
    cmd = ("cd %s; ./t4_receiver %s > run_%s.log 2>&1; echo EXIT=$? >> run_%s.log"
           % (dev.dir, args, tag, tag))
    t0 = time.time()
    proc = dev.popen_shell(cmd)

    time.sleep(signal_after if signal_name else 0.5)
    if signal_name:
        pid = dev.pid()
        check(pid is not None, "%s: 找到 t4_receiver 进程" % tag)
        if pid:
            out = dev.shell("kill -%s %s; echo killrc=$?" % (signal_name, pid))
            check("killrc=0" in out, "%s: kill -%s 成功" % (tag, signal_name), out.strip())

    try:
        proc.wait(timeout=wait_limit)
        timed_out = False
    except subprocess.TimeoutExpired:
        proc.kill()
        timed_out = True
    elapsed = time.time() - t0

    text = get_log(dev, tag)
    sm = parse_summary(text)
    code = parse_exit(text)

    check(not timed_out, "%s: 进程在 %.0f s 内结束（无死锁）" % (tag, wait_limit))
    check(code == 0, "%s: 退出码 0" % tag, "got=%s" % code)
    check(sm is not None, "%s: 打印了 SUMMARY" % tag)
    check(elapsed >= expect_min, "%s: 运行时长 >= %.1fs（实际 %.2fs）" % (tag, expect_min, elapsed))
    if expect_max is not None:
        check(elapsed <= expect_max, "%s: 停止及时 <= %.1fs（实际 %.2fs）" % (tag, expect_max, elapsed))
    if sm:
        check(sm["received"] == sm["accepted"], "%s: received == accepted" % tag,
              "%s/%s" % (sm["received"], sm["accepted"]))
        check(sm["accepted"] == sm["processed"] + sm["queue_drop"],
              "%s: accepted == processed + queue_drop" % tag,
              "%d vs %d+%d" % (sm["accepted"], sm["processed"], sm["queue_drop"]))
        check(sm["queue_depth"] == 0, "%s: queue_depth == 0" % tag, str(sm["queue_depth"]))
        check(sm["segment_write_errors"] == 0, "%s: segment_write_errors == 0" % tag)
        if want_frames:
            check(sm["received"] > 0, "%s: 真收到 PCM（received>0）" % tag,
                  str(sm["received"]))
        log("       SUMMARY " + json.dumps({k: sm[k] for k in
                                            ("received", "accepted", "processed", "queue_drop",
                                             "queue_depth", "segments", "dur_s")}))
    return sm


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--adb", default=ADB_DEFAULT)
    ap.add_argument("--serial", default=SERIAL_DEFAULT)
    ap.add_argument("--dir", default=DEV_DIR_DEFAULT)
    ap.add_argument("--bridge", action="store_true",
                    help="每个用例同时注入 T3 PCM bridge（需要 frida-server 已在设备上运行）")
    ap.add_argument("--bridge-cmd", default=BRIDGE_DEFAULT)
    ap.add_argument("--python", default=PY_DEFAULT)
    ap.add_argument("--cycles", type=int, default=5)
    ap.add_argument("--hold", type=float, default=0.0,
                    help="每个用例的驻留秒数；0 表示按 --bridge 自动选择"
                         "（有 bridge 12 s，无 bridge 4 s）")
    args = ap.parse_args()

    hold = args.hold if args.hold > 0 else (12.0 if args.bridge else 4.0)
    dev = Device(args.adb, args.serial, args.dir)
    log("== T4-07 process-level stop test (bridge=%s) ==" % args.bridge)
    dev.shell("mkdir -p %s/seg; ls -l %s/t4_receiver 2>/dev/null | head -2" % (dev.dir, dev.dir))

    if args.bridge:
        out = dev.shell("pidof fs32 || echo no-frida")
        check("no-frida" not in out, "前置: frida-server 在跑", out.strip())

    def with_bridge(seconds, tag, fn):
        """bridge 与用例并行跑；bridge 失败不影响停止路径的判定，但要记录下来。"""
        bp = None
        if args.bridge:
            bp = subprocess.Popen([args.python, args.bridge_cmd, str(seconds),
                                   r"D:\tgz02\OS\_analysis\t407_bridge_%s.log" % tag],
                                  stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        try:
            return fn()
        finally:
            if bp is not None:
                try:
                    bp.wait(timeout=seconds + 30)
                except subprocess.TimeoutExpired:
                    bp.kill()

    log("(hold=%.1fs per case)" % hold)

    log("\n[1] secs 超时退出")
    with_bridge(int(hold) + 2, "secs",
                lambda: one_case(dev, "secs", "--secs %d --out %s/seg" % (int(hold), dev.dir),
                                 expect_min=hold - 1.0, expect_max=hold + 10.0,
                                 want_frames=args.bridge))

    log("\n[2] SIGINT")
    with_bridge(int(hold) + 2, "sigint",
                lambda: one_case(dev, "sigint", "--secs 0 --out %s/seg" % dev.dir,
                                 signal_name="INT", signal_after=hold,
                                 expect_min=hold - 1.0, expect_max=hold + 10.0,
                                 want_frames=args.bridge))

    log("\n[3] SIGTERM")
    with_bridge(int(hold) + 2, "sigterm",
                lambda: one_case(dev, "sigterm", "--secs 0 --out %s/seg" % dev.dir,
                                 signal_name="TERM", signal_after=hold,
                                 expect_min=hold - 1.0, expect_max=hold + 10.0,
                                 want_frames=args.bridge))

    log("\n[4] 连续启动/停止 %d 次（SIGINT）" % args.cycles)
    for i in range(1, args.cycles + 1):
        with_bridge(int(hold) + 2, "cyc%d" % i,
                    lambda i=i: one_case(dev, "cyc%d" % i,
                                         "--secs 0 --out %s/seg" % dev.dir,
                                         signal_name="INT", signal_after=hold,
                                         expect_min=hold - 1.0, expect_max=hold + 10.0,
                                         want_frames=args.bridge))

    log("\n=== %d passed, %d failed ===" % (pass_n, fail_n))
    return 0 if fail_n == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
