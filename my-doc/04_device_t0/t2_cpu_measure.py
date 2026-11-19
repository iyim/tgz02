#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
t2_cpu_measure.py -- T2 CPU 开销的原始采样（可独立复核）

每个窗口都记录：
  窗口起止墙钟时间、/proc/<pid>/stat 的 utime/stime 起止值、jiffies 增量、计算式与结果。

USER_HZ 的确认方式（两条独立证据）：
  1. 设备内核是 Linux 4.4.95 32 位 ARM，procfs 的 tick 单位按 ARM 约定为 USER_HZ=100；
     若 /proc/config.gz 可读，一并记录 CONFIG_HZ。
  2. 交叉核对：同一时刻用 `top -b -n 2 -d 1 -p <pid>` 的瞬时 %CPU 与
     jiffies 法算出的 %CPU 比对；若 HZ 取得不对（例如 10 或 1000），两者会差一个数量级。

用法：python t2_cpu_measure.py <输出日志路径>
前置：adb 可用、frida-server 已在 127.0.0.1:27042、设备已 su、目标进程在跑。
"""
import io
import os
import re
import subprocess
import sys
import time

ADB = r"D:\GreenSoft\platform-tools\adb.exe"
SERIAL = "192.168.1.9:5555"
PID = 0            # 运行时用 pidof 自动解析（进程可能重启过）


def resolve_pid():
    out = (sh("pidof com.alibaba.ailabs.genie.smartapp:core").stdout or "").strip()
    return int(out.split()[0]) if out.split() else 0
HZ = 100.0
HERE = os.path.dirname(os.path.abspath(__file__))
DRIVER = os.path.join(HERE, "t2_pcm_dryrun_run.py")

lines = []


def log(s):
    print(s)
    lines.append(str(s))


def adb(args, timeout=60):
    return subprocess.run([ADB, "-s", SERIAL] + args, capture_output=True, text=True, timeout=timeout)


def sh(cmd, timeout=60):
    return adb(["shell", 'su -c "%s"' % cmd], timeout=timeout)


def stat_utime_stime(pid=None, retries=4):
    if pid is None:
        pid = PID
    out = ""
    for _ in range(retries):
        out = (sh("cat /proc/%d/stat" % pid).stdout or "").strip()
        if out:
            break
        time.sleep(0.6)
    if not out:
        return None
    rest = out[out.rfind(")") + 2:].split()
    return int(rest[11]), int(rest[12])


def top_cpu(pid=PID):
    """top 第二次迭代的瞬时 %CPU"""
    out = (sh("top -b -n 2 -d 1 -p %d 2>/dev/null | tail -3" % pid).stdout or "")
    for ln in out.splitlines():
        m = re.match(r"\s*%d\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+\S+\s+([0-9.]+)" % pid, ln)
        if m:
            return float(m.group(1))
    return None


def window(label, seconds, driver_mode=None):
    proc = None
    if driver_mode:
        proc = subprocess.Popen(
            [sys.executable, DRIVER, str(seconds + 8),
             os.path.join(HERE, "_cpu_run_%s.log" % driver_mode), driver_mode],
            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        time.sleep(6)          # 等 attach / start / 首个统计窗口

    a = stat_utime_stime()
    t_a = time.time()
    time.sleep(seconds)
    b = stat_utime_stime()
    t_b = time.time()

    if proc is not None:
        try:
            proc.wait(timeout=40)
        except Exception:
            proc.kill()

    if a is None or b is None:
        log("[!] %s: /proc/%d/stat unreadable" % (label, PID))
        return None
    dj = (b[0] + b[1]) - (a[0] + a[1])
    dw = t_b - t_a
    cpu = dj / (HZ * dw) * 100.0
    log("%-18s utime %d->%d  stime %d->%d  djiffies=%d  wall=%.3fs  cpu=%.2f%%"
        % (label, a[0], b[0], a[1], b[1], dj, dw, cpu))
    return {"label": label, "cpu": cpu, "dj": dj, "dw": dw}


def main():
    global PID
    logpath = sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, "t2_cpu_measure.log")
    PID = resolve_pid()
    if not PID:
        print("[!] cannot resolve :core pid"); return 2
    log("=== T2 CPU measurement (raw samples, independently re-checkable) ===")
    log("time  = %s" % time.strftime("%Y-%m-%d %H:%M:%S"))
    log("adb   = %s" % ADB)
    log("serial= %s   pid=%d" % (SERIAL, PID))
    log("")

    log("--- 0) environment ---")
    log("kernel: %s" % (sh("cat /proc/version").stdout or "").strip())
    cfg = (sh("gzip -dc /proc/config.gz 2>/dev/null | grep -E '^CONFIG_HZ'").stdout or "").strip()
    log("kernel CONFIG_HZ (if /proc/config.gz readable): %s" % (cfg if cfg else "not available"))
    log("procfs tick unit assumed USER_HZ=100 (32-bit ARM convention)")
    log("")

    log("--- 1) USER_HZ cross-check: jiffies-derived vs top instantaneous ---")
    a = stat_utime_stime()
    t_a = time.time()
    tc = top_cpu()
    time.sleep(5)
    b = stat_utime_stime()
    t_b = time.time()
    if a and b:
        dj = (b[0] + b[1]) - (a[0] + a[1])
        dw = t_b - t_a
        cj = dj / (HZ * dw) * 100.0
        log("jiffies window: utime %d->%d stime %d->%d djiffies=%d wall=%.3fs -> %.2f%% (HZ=100)"
            % (a[0], b[0], a[1], b[1], dj, dw, cj))
        log("top instantaneous %%CPU at same time: %s" % (("%.1f%%" % tc) if tc is not None else "n/a"))
        if tc is not None:
            bad10 = dj / (10.0 * dw) * 100.0
            bad1000 = dj / (1000.0 * dw) * 100.0
            log("if HZ were 10 -> %.2f%%, if HZ were 1000 -> %.2f%%  (top close to the HZ=100 value => USER_HZ=100)"
                % (bad10, bad1000))
    log("")

    log("--- 2) measurement windows (15 s each, no audio stimulus) ---")
    r = []
    r.append(window("baseline_no_hook", 15))
    r.append(window("countonly", 15, driver_mode="countonly"))
    r.append(window("blockcopy", 15, driver_mode="blockcopy"))
    log("")

    log("--- 3) formula and results ---")
    log("cpu_percent = (utime+stime delta in jiffies) / (USER_HZ * wall_seconds) * 100")
    base = r[0]["cpu"] if r[0] else None
    for x in r:
        if x and base is not None:
            log("%-18s cpu=%.2f%%  delta_vs_baseline=%+.2f pp" % (x["label"], x["cpu"], x["cpu"] - base))
    log("")
    log("limitations: single-shot 15 s windows, +-1-2 pp noise; windows run back-to-back on the same")
    log("             device, so ambient load drift is not fully excluded.")

    with io.open(logpath, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(lines) + "\n")
    print("[i] log written: %s" % logpath)
    return 0


if __name__ == "__main__":
    sys.exit(main())
