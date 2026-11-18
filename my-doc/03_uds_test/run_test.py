#!/usr/bin/env python3
"""run_test.py -- orchestrate the PC-side PCM bypass prototype (AF_UNIX).

Every scenario is: one sink process + one synthetic source process, then a
comparison of what the two ends measured. The sink is never allowed to be the
reason the source blocks; the `naive` scenario is the deliberate negative
control that shows what a blocking design would do instead.

usage:
    python run_test.py --scenario baseline --secs 600
    python run_test.py --scenario all
    python run_test.py --scenario stall --proto dgram   # Linux only
"""
import argparse
import json
import os
import platform
import subprocess
import sys
import tempfile
import time

HERE = os.path.dirname(os.path.abspath(__file__))
IS_WIN = platform.system() == "Windows"
EXE = ".exe" if IS_WIN else ""


def bin_path(name):
    p = os.path.join(HERE, name + EXE)
    if not os.path.exists(p):
        sys.exit(f"[!] missing binary: {p}\n    build first: see README.md")
    return p


class Proc:
    """Child process whose stdout is parsed line by line after it exits."""

    def __init__(self, argv, log_path):
        self.argv = argv
        self.log_path = log_path
        self.log = open(log_path, "w", encoding="utf-8", errors="replace")
        self.p = subprocess.Popen(argv, stdout=self.log, stderr=subprocess.STDOUT)
        self.lines = []

    def wait(self, timeout):
        try:
            self.p.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            self.p.kill()
            self.p.wait()
            self.lines.append("[!] killed after timeout")
        self.log.close()
        with open(self.log_path, "r", encoding="utf-8", errors="replace") as f:
            self.lines = f.read().splitlines()
        return self.lines

    def kill(self):
        if self.p.poll() is None:
            self.p.kill()
            try:
                self.p.wait(timeout=5)
            except subprocess.TimeoutExpired:
                pass


def wait_ready(proc, sock_path, timeout=10.0):
    """Wait for the sink's <sock>.ready marker (no stdout race)."""
    marker = sock_path + ".ready"
    t0 = time.time()
    while time.time() - t0 < timeout:
        if proc.p.poll() is not None:
            return False
        if os.path.exists(marker):
            return True
        time.sleep(0.02)
    return False


def pick(lines, prefix):
    for ln in lines:
        if ln.startswith(prefix):
            try:
                return json.loads(ln[len(prefix):].strip())
            except json.JSONDecodeError:
                return None
    return None


def run_scenario(name, sink_args, src_args, secs, out_dir, proto):
    sock = os.path.join(out_dir, f"{name}.sock")
    cap = os.path.join(out_dir, f"{name}.cap")
    sink_log = os.path.join(out_dir, f"{name}.sink.log")
    src_log = os.path.join(out_dir, f"{name}.source.log")

    for p in (sock, cap):
        if os.path.exists(p):
            os.remove(p)

    sink_argv = [bin_path("uds_sink"), "--path", sock, "--proto", proto,
                 "--secs", str(secs + 4), "--capture", cap]
    if sink_args:
        sink_argv += sink_args

    sink = Proc(sink_argv, sink_log)
    if not wait_ready(sink, sock):
        sink.kill()
        print(f"[!] {name}: sink did not become ready; see {sink_log}")
        return None

    src_argv = [bin_path("uds_source"), "--path", sock, "--proto", proto,
                "--secs", str(secs), "--warmup-ms", "150"]
    if src_args:
        src_argv += src_args

    src = Proc(src_argv, src_log)
    src.wait(timeout=secs + 30)
    sink.wait(timeout=30)

    s_sink = pick(sink.lines, "SUMMARY ")
    s_src = pick(src.lines, "SUMMARY ")
    res = {
        "scenario": name,
        "proto": proto,
        "sink_argv": " ".join(sink_argv),
        "source_argv": " ".join(src_argv),
        "sink": s_sink,
        "source": s_src,
    }
    with open(os.path.join(out_dir, f"{name}.json"), "w", encoding="utf-8") as f:
        json.dump(res, f, ensure_ascii=False, indent=2)
    return res


def fmt_row(r):
    if not r or not r.get("sink") or not r.get("source"):
        return f"{r['scenario']:<12} (incomplete)"
    k, s = r["sink"], r["source"]
    return (f"{r['scenario']:<10} {r['proto']:<6} "
            f"sent={s['send_ok']:<7} recv={k['accepted']:<7} "
            f"miss={k['missing']:<6} ringdrop={s['ring_drop']:<5} "
            f"wb={s['send_drop_wb']:<5} "
            f"lat p50/p95/max={k['lat_us']['p50']}/{k['lat_us']['p95']}/{k['lat_us']['max']}us "
            f"tick_late_max={s['tick_late_max_us']}us "
            f"ts_delta={s['ts_delta_ms']['min']:.1f}-{s['ts_delta_ms']['max']:.1f}ms")


SCENARIOS = {
    # name          sink extra args                                 source extra args
    # stall/naive shrink both socket buffers so a 3 s receiver freeze really
    # overflows them: the ring design must drop, the naive one must block.
    "baseline": ([], []),
    "stall":    (["--max-age-ms", "0", "--rcvbuf", "8192",
                  "--stall-at", "8", "--stall-len", "3"], ["--sndbuf", "8192"]),
    "naive":    (["--max-age-ms", "0", "--rcvbuf", "8192",
                  "--stall-at", "8", "--stall-len", "3"], ["--sndbuf", "8192", "--naive"]),
    # 生产语义：超过 200 ms 的帧直接丢，验证"不堆积旧语音"
    "stale":    (["--max-age-ms", "200", "--rcvbuf", "8192",
                  "--stall-at", "6", "--stall-len", "3"], ["--sndbuf", "8192"]),
    "skip":     ([], ["--skip-every", "100"]),
    "ringfull": ([], ["--ring", "4", "--consumer-pause-at", "5",
                      "--consumer-pause-ms", "1000"]),
    "slow":     (["--max-age-ms", "0", "--slow-us", "60000"], []),
    # same slow consumer, but the SEND buffer is capped at ~6 frames:
    # the queue lives in the kernel send buffer, so that is the knob that sets
    # the latency ceiling (measured below).
    "slowbuf":  (["--max-age-ms", "0", "--slow-us", "60000"], ["--sndbuf", "8192"]),
}

DEFAULT_SECS = {
    "baseline": 600,
    "stall": 40,
    "stale": 30,
    "naive": 40,
    "skip": 20,
    "ringfull": 20,
    "slow": 20,
    "slowbuf": 20,
}


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--scenario", default="baseline",
                    help="|".join(SCENARIOS) + "|all")
    ap.add_argument("--secs", type=int, default=0, help="override duration")
    ap.add_argument("--proto", default="stream", choices=["stream", "dgram"])
    ap.add_argument("--out-dir", default=os.path.join(HERE, "_run"))
    args = ap.parse_args()

    os.makedirs(args.out_dir, exist_ok=True)
    names = list(SCENARIOS) if args.scenario == "all" else [args.scenario]
    for n in names:
        if n not in SCENARIOS:
            sys.exit(f"unknown scenario: {n}")

    results = []
    for n in names:
        secs = args.secs or DEFAULT_SECS[n]
        sink_extra, src_extra = SCENARIOS[n]
        print(f"[i] {n}: sink{len(sink_extra)} source{src_extra} for {secs}s ...", flush=True)
        r = run_scenario(n, sink_extra, src_extra, secs, args.out_dir, args.proto)
        results.append(r)
        print("    " + fmt_row(r), flush=True)

    print("\n=== summary ===")
    for r in results:
        print(fmt_row(r))
    with open(os.path.join(args.out_dir, "all_results.json"), "w", encoding="utf-8") as f:
        json.dump(results, f, ensure_ascii=False, indent=2)
    print(f"\n[i] raw logs + caps in {args.out_dir}")


if __name__ == "__main__":
    main()
