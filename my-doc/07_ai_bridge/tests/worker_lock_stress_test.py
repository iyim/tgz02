#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
worker_lock_stress_test.py -- T5-06B P1-1 单实例锁并发压力测试（主机）

每轮：
  1) 同时启动 N=20 个 ai_worker，争抢同一个 state 目录里的锁文件；
  2) 断言：恰好 1 个进程拿到锁（还活着），其余 19 个全部以退出码 3 拒绝；
  3) kill -9（Windows: TerminateProcess）持锁进程；
  4) 立刻再起一个 worker，必须能马上拿到锁（退出码 0）；
  5) 锁文件必须仍然存在（不能被 unlink 掉），且 PID 只用于诊断。

默认 100 轮，可用 --rounds 调整。

用法：
  python worker_lock_stress_test.py [--exe PATH] [--rounds N] [--procs N] [--log PATH]
"""

import argparse
import json
import os
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
DEFAULT_EXE = os.path.join(ROOT, "android", "out", "ai_worker.exe")

RUN_DIR = None


def worker_cmd(exe, work, state, extra):
    cmd = [exe, "--work-dir", work, "--state-dir", state,
           "--poll-ms", "20", "--status-every-ms", "200"]
    cmd.extend(extra)
    return cmd


def rec(name, text):
    line = json.dumps({"key": name, "value": text}, ensure_ascii=False)
    return line


def one_round(exe, work, state, lock_path, procs, rnd, verbose):
    """返回 (winner_pid, 拒绝数, 复查进程 pid)"""
    children = []
    try:
        for i in range(procs):
            p = subprocess.Popen(worker_cmd(exe, work, state,
                                            ["--max-runtime-ms", "30000", "--verbose"]),
                                 stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
            children.append(p)

        # 让竞争收敛：等所有"输家"退出（退出码 3）
        deadline = time.time() + 15
        while time.time() < deadline:
            alive = [c for c in children if c.poll() is None]
            if len(alive) <= 1:
                break
            time.sleep(0.02)

        alive = [c for c in children if c.poll() is None]
        refused = [c for c in children if c.poll() == 3]
        other = [c for c in children if c.poll() not in (None, 3)]

        detail = "round=%d started=%d alive=%d refused=%d other=%d" % (
            rnd, procs, len(alive), len(refused), len(other))
        if len(alive) != 1 or len(refused) != procs - 1 or other:
            raise AssertionError("lock invariant broken: %s (codes=%r)"
                                 % (detail, [c.poll() for c in children]))

        winner = alive[0]
        lock_pid = None
        try:
            with open(lock_path, "r", encoding="utf-8", errors="replace") as f:
                txt = f.read().strip()
            lock_pid = int(txt.splitlines()[0]) if txt else None
        except (OSError, ValueError):
            lock_pid = None
        if lock_pid != winner.pid:
            raise AssertionError("lock file pid (%r) != winner pid (%r)" % (lock_pid, winner.pid))

        # kill -9 持锁进程（不经过信号处理，直接终止）
        winner.kill()
        winner.wait(timeout=15)
        if not os.path.exists(lock_path):
            raise AssertionError("lock file disappeared after kill -9 (must not be unlinked)")

        # 立刻再抢：必须拿到锁（退出码 0），而不是 exit 3
        rc = subprocess.run(worker_cmd(exe, work, state, ["--idle-exit-ms", "150"]),
                            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL,
                            timeout=30).returncode
        if rc != 0:
            raise AssertionError("new worker could not acquire the lock right after kill (rc=%d)" % rc)

        if verbose:
            pass
        return {"detail": detail, "lock_pid": lock_pid, "new_rc": rc}
    finally:
        for c in children:
            if c.poll() is None:
                c.kill()
                try:
                    c.wait(timeout=10)
                except subprocess.TimeoutExpired:
                    pass


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--exe", default=DEFAULT_EXE)
    ap.add_argument("--rounds", type=int, default=100)
    ap.add_argument("--procs", type=int, default=20)
    ap.add_argument("--log", default=None)
    ap.add_argument("--quiet", action="store_true")
    args = ap.parse_args()

    exe = os.path.abspath(args.exe)
    if not os.path.exists(exe):
        print("worker binary not found: %s" % exe)
        return 2

    global RUN_DIR
    RUN_DIR = os.path.join(HERE, "_run", "lock_" + time.strftime("%Y%m%d_%H%M%S"))
    work = os.path.join(RUN_DIR, "work")
    state = os.path.join(RUN_DIR, "state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lock_path = os.path.join(state, "ai_worker.lock")
    with open(os.path.join(work, "events.jsonl"), "wb") as f:
        f.write(b"")

    lines = []
    lines.append("=== T5-06B P1-1 lock stress (host) ===")
    lines.append("exe    : %s" % exe)
    lines.append("rounds : %d, concurrent procs per round: %d" % (args.rounds, args.procs))
    lines.append("run    : %s" % RUN_DIR)
    lines.append("")

    t0 = time.time()
    failures = 0
    for rnd in range(1, args.rounds + 1):
        try:
            r = one_round(exe, work, state, lock_path, args.procs, rnd, not args.quiet)
            line = "%-64s lock_pid=%-7s new_worker_rc=%d  OK" % (
                r["detail"], r["lock_pid"], r["new_rc"])
            if not args.quiet:
                print(line)
            lines.append(line)
        except Exception as exc:
            failures += 1
            print("round %d FAILED: %s" % (rnd, exc))
            lines.append("round %d FAILED: %s" % (rnd, exc))

    dt = time.time() - t0
    lines.append("")
    lines.append("rounds: %d, failed: %d, elapsed: %.1fs (%.2fs/round)"
                 % (args.rounds, failures, dt, dt / max(1, args.rounds)))
    lines.append("invariant: exactly 1 holder, %d refusals (rc=3), lock acquired immediately "
                 "after kill -9, lock file never unlinked" % (args.procs - 1))
    lines.append("RESULT: %s" % ("PASS" if failures == 0 else "FAIL"))
    text = "\n".join(lines) + "\n"
    if args.log:
        with open(args.log, "w", encoding="utf-8") as f:
            f.write(text)
    print("")
    print("rounds: %d, failed: %d, %.1fs" % (args.rounds, failures, dt))
    print("RESULT: %s" % ("PASS" if failures == 0 else "FAIL"))
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
