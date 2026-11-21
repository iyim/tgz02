#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
worker_integration_test.py -- AI Worker 主机集成测试（真起进程、真读写文件）

覆盖任务书 §7 "主机测试" 里必须真起进程才能验证的部分：
  I1  正常读取多条 JSONL，且绝不修改 events.jsonl
  I2  半行写入时等待，补全后立刻消费
  I3  非法 JSON 被跳过并计数，进程不退出
  I4  重复 event_id 只处理一次（重启后重复读也不会重处理）
  I5  seq 缺口被记录（范围 + 条数），不补造事件
  I6  处理过程中进程被强杀（模拟崩溃）→ 重启后从上次进度继续，不丢不重
  I7  重启后新增事件能继续消费
  I8  events.jsonl 被截断 → 检测并重新扫描
  I9  events.jsonl 被删除重建 → 检测 inode/文件索引变化
  I10 消费状态文件损坏 → 留档 .corrupt-*，从 0 重新扫，不静默跳过
  I11 Mock Provider 返回失败 → 只计数，消费者继续跑
  I12 超长记录 → 跳过并计数
  I13 重复启动 → 第二个实例退出码 3，不产生重复处理
  I14 长跑（3000 条）内存不持续增长

用法：
  python worker_integration_test.py [--exe PATH] [--keep]

本脚本只跑 Mock Provider（不发网络、不读 key），报告里必须写成 "Mock 测试"。
"""

import argparse
import hashlib
import json
import os
import shutil
import subprocess
import sys
import time
import traceback

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)                      # my-doc/07_ai_bridge
DEFAULT_EXE = os.path.join(ROOT, "android", "out", "ai_worker.exe")

CASES = []
RESULTS = []
RUN_DIR = None


def case(fn):
    CASES.append(fn)
    return fn


# ---------------------------------------------------------------- 工具

def rec(seq, pid, event_id, text, session="1000", is_final=True):
    return (json.dumps({
        "version": 1, "rec": "asr_final", "event_id": event_id,
        "event_type": "asr_final", "pid": pid, "session_id": session,
        "text": text, "text_bytes": len(text.encode("utf-8")),
        "text_chars": len(text), "is_final": is_final,
        "received_at_ms": 1000 + seq, "recv_at_ms": 2000 + seq,
        "stored_at_ms": 3000 + seq, "seq": seq,
    }, ensure_ascii=False, separators=(",", ":")) + "\n")


def path_of(*parts):
    return os.path.join(RUN_DIR, *parts)


def write_events(name, lines, mode="wb"):
    """name 相对 RUN_DIR，例如 "i1/work/events.jsonl" """
    p = path_of(name)
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, mode) as f:
        for ln in lines:
            f.write(ln.encode("utf-8"))
    return p


def append_events(name, lines):
    return write_events(name, lines, mode="ab")


def read_json(p, default=None):
    try:
        with open(p, "r", encoding="utf-8") as f:
            return json.load(f)
    except (OSError, ValueError):
        return default


def status_of(state_dir):
    return read_json(os.path.join(state_dir, "ai_worker_status.json"), {}) or {}


def counters_of(state_dir):
    return (status_of(state_dir).get("counters") or {})


def state_of(state_dir):
    return read_json(os.path.join(state_dir, "consumer_state.json"), {}) or {}


def durable_offset(state_dir):
    """磁盘上真正落盘的消费偏移；没有状态文件 = 0（什么都还没持久化）"""
    st = state_of(state_dir)
    return st.get("offset", 0) if st else 0


def worker_cmd(exe, work, state, extra):
    cmd = [exe, "--work-dir", work, "--state-dir", state,
           "--poll-ms", "25", "--status-every-ms", "150"]
    cmd.extend(extra)
    return cmd


def run_once(exe, work, state, extra, timeout=90, env=None):
    t0 = time.time()
    e = dict(os.environ)
    if env:
        e.update(env)
    proc = subprocess.run(worker_cmd(exe, work, state, extra),
                          stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                          timeout=timeout, env=e)
    out = proc.stdout.decode("utf-8", "replace")
    return proc.returncode, out, time.time() - t0


def start_bg(exe, work, state, extra, log_name):
    log_path = path_of(log_name)
    log = open(log_path, "wb")
    proc = subprocess.Popen(worker_cmd(exe, work, state, extra),
                            stdout=log, stderr=subprocess.STDOUT)
    proc._log_handle = log
    proc._log_path = log_path
    return proc


def stop_bg(proc, kill=False):
    if proc.poll() is None:
        if kill:
            proc.kill()
        else:
            proc.terminate()
        try:
            proc.wait(timeout=10)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=10)
    try:
        proc._log_handle.close()
    except Exception:
        pass
    return proc.returncode


def wait_until(fn, timeout=20.0, interval=0.05, what="condition"):
    t0 = time.time()
    while time.time() - t0 < timeout:
        if fn():
            return True
        time.sleep(interval)
    raise AssertionError("timeout waiting for %s (%.1fs)" % (what, timeout))


def rss_kb(pid):
    """返回进程常驻内存 KB；平台不支持时返回 -1"""
    try:
        if os.name == "nt":
            import ctypes
            from ctypes import wintypes

            class PROCESS_MEMORY_COUNTERS(ctypes.Structure):
                _fields_ = [("cb", wintypes.DWORD),
                            ("PageFaultCount", wintypes.DWORD),
                            ("PeakWorkingSetSize", ctypes.c_size_t),
                            ("WorkingSetSize", ctypes.c_size_t),
                            ("QuotaPeakPagedPoolUsage", ctypes.c_size_t),
                            ("QuotaPagedPoolUsage", ctypes.c_size_t),
                            ("QuotaPeakNonPagedPoolUsage", ctypes.c_size_t),
                            ("QuotaNonPagedPoolUsage", ctypes.c_size_t),
                            ("PagefileUsage", ctypes.c_size_t),
                            ("PeakPagefileUsage", ctypes.c_size_t)]

            PROCESS_QUERY_INFORMATION = 0x0400
            kernel32 = ctypes.WinDLL("kernel32", use_last_error=True)
            psapi = ctypes.WinDLL("psapi", use_last_error=True)
            h = kernel32.OpenProcess(PROCESS_QUERY_INFORMATION, False, pid)
            if not h:
                return -1
            try:
                pmc = PROCESS_MEMORY_COUNTERS()
                pmc.cb = ctypes.sizeof(pmc)
                if not psapi.GetProcessMemoryInfo(h, ctypes.byref(pmc), pmc.cb):
                    return -1
                return int(pmc.WorkingSetSize // 1024)
            finally:
                kernel32.CloseHandle(h)
        with open("/proc/%d/status" % pid, "r", encoding="utf-8") as f:
            for line in f:
                if line.startswith("VmRSS:"):
                    return int(line.split()[1])
    except Exception:
        return -1
    return -1


def snapshot(path):
    st = os.stat(path)
    with open(path, "rb") as f:
        return st.st_size, st.st_mtime_ns, f.read()


def assert_eq(got, want, what):
    if got != want:
        raise AssertionError("%s: got %r want %r" % (what, got, want))


def assert_ge(got, want, what):
    if not got >= want:
        raise AssertionError("%s: got %r want >= %r" % (what, got, want))


def assert_in(needle, hay, what):
    if needle not in hay:
        raise AssertionError("%s: %r not in output:\n%s" % (what, needle, hay))


# ---------------------------------------------------------------- 用例

@case
def i1_basic_consume_and_readonly(exe):
    """正常读取多条 JSONL，且绝不修改 events.jsonl"""
    work = path_of("i1/work")
    state = path_of("i1/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lines = [rec(i + 1, 4242, "t5b-4242-100%d-g1" % i, "第%d句话" % (i + 1)) for i in range(10)]
    ev = write_events("i1/work/events.jsonl", lines)
    before = snapshot(ev)

    rc, out, dt = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "exit code")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 10, "events_processed")
    assert_eq(c.get("duplicates"), 0, "duplicates")
    assert_eq(c.get("invalid_lines"), 0, "invalid_lines")
    assert_eq(c.get("gaps"), 0, "gaps")
    st = state_of(state)
    assert_eq(st.get("offset"), before[0], "state offset == file size")
    assert_eq(st.get("processed_total"), 10, "processed_total")

    after = snapshot(ev)
    assert_eq(after[0], before[0], "events.jsonl size unchanged")
    assert_eq(after[2], before[2], "events.jsonl bytes unchanged (worker is read-only)")
    assert_eq(after[1], before[1], "events.jsonl mtime unchanged")

    # 再跑一次：不应重复处理
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(counters_of(state).get("events_processed"), 0, "second run processes nothing")
    return "%d events, file untouched, rerun is a no-op" % 10


@case
def i2_half_line(exe):
    """半行写入时等待，补全后消费"""
    work = path_of("i2/work")
    state = path_of("i2/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    full = rec(1, 4242, "t5b-4242-2001-g1", "半行测试")
    ev = write_events("i2/work/events.jsonl", [full[:len(full) // 2]])

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "6000"], "i2/worker.log")
    try:
        time.sleep(1.0)
        st = status_of(state)
        assert_eq(st.get("state"), "running", "worker still running on half line")
        assert_eq(counters_of(state).get("events_processed"), 0, "half line not processed")
        # 补全
        append_events("i2/work/events.jsonl", [full[len(full) // 2:]])
        wait_until(lambda: counters_of(state).get("events_processed") == 1, 10,
                   what="half line consumed")
    finally:
        stop_bg(proc)
    assert_eq(state_of(state).get("offset"), os.path.getsize(ev), "offset at EOF")
    return "half line waited ~1s then consumed after completion"


@case
def i3_invalid_json(exe):
    """非法 JSON 跳过并计数，进程不退出"""
    work = path_of("i3/work")
    state = path_of("i3/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lines = [rec(1, 4242, "t5b-4242-3001-g1", "ok1"),
             "{ this is not json\n",
             rec(2, 4242, "t5b-4242-3002-g1", "ok2")]
    write_events("i3/work/events.jsonl", lines)
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "exit code")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 2, "valid events processed")
    assert_eq(c.get("invalid_lines"), 1, "invalid line counted")
    assert_in("bad_json", out, "reason logged")
    return "1 invalid line skipped, 2 valid processed"


@case
def i4_duplicate_event_id(exe):
    """重复 event_id 只处理一次"""
    work = path_of("i4/work")
    state = path_of("i4/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    same = rec(1, 4242, "t5b-4242-4001-g1", "同一句话")
    other = rec(2, 4242, "t5b-4242-4002-g1", "另一句话")
    write_events("i4/work/events.jsonl", [same, same, other])
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "exit code")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 2, "two unique events processed")
    assert_eq(c.get("duplicates"), 1, "duplicate counted")
    return "duplicate event_id skipped, counted"


@case
def i5_seq_gap(exe):
    """seq 缺口被记录（范围 + 条数），不补造事件"""
    work = path_of("i5/work")
    state = path_of("i5/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lines = [rec(1, 4242, "t5b-4242-5001-g1", "a"),
             rec(2, 4242, "t5b-4242-5002-g1", "b"),
             rec(5, 4242, "t5b-4242-5005-g1", "c"),   # 缺 3,4
             rec(6, 4242, "t5b-4242-5006-g1", "d")]
    write_events("i5/work/events.jsonl", lines)
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "exit code")
    c = counters_of(state)
    st = status_of(state)
    assert_eq(c.get("events_processed"), 4, "all 4 events processed")
    assert_eq(c.get("gaps"), 1, "one gap recorded")
    assert_eq(c.get("gap_missing_total"), 2, "two missing seq numbers")
    assert_eq(st.get("last_gap_from"), 3, "gap from")
    assert_eq(st.get("last_gap_to"), 4, "gap to")
    assert_in("seq gap", out, "gap logged")
    return "gap [3,4] recorded, no fabricated events"


@case
def i6_crash_and_resume(exe):
    """处理过程中进程被强杀 → 重启后从上次进度继续"""
    work = path_of("i6/work")
    state = path_of("i6/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lines = [rec(i + 1, 4242, "t5b-4242-60%02d-g1" % i, "第%d句" % (i + 1)) for i in range(20)]
    ev = write_events("i6/work/events.jsonl", lines)

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "8000", "--mock-delay-ms", "40"],
                    "i6/worker1.log")
    wait_until(lambda: counters_of(state).get("events_processed", 0) >= 5, 20,
               what=">=5 events processed before kill")
    stop_bg(proc, kill=True)                     # 模拟 kill -9 / 崩溃：不走正常退出
    time.sleep(0.2)
    processed_before = counters_of(state).get("events_processed", 0)
    offset_before = state_of(state).get("offset", 0)

    # 崩溃后锁文件还在（持有者已死）：下一个实例必须能识别陈旧锁并接管
    lock = os.path.join(state, "ai_worker.lock")
    if not os.path.exists(lock):
        raise AssertionError("expected stale lock file to exist after kill")

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "400"])
    assert_eq(rc, 0, "restart exit code")
    assert_in("previous owner pid=", out, "kernel released the flock, new owner acquired it")
    c = counters_of(state)
    st = state_of(state)
    dup = c.get("duplicates", 0)
    total = st.get("processed_total", 0)
    # processed_total 跨运行累计：20 条事件全部恰好处理一次（崩溃重读只体现为 duplicates）
    assert_eq(total, 20, "every event processed exactly once (cumulative)")
    if dup > 1:
        raise AssertionError("too many re-reads after crash: %d" % dup)
    assert_eq(st.get("offset"), os.path.getsize(ev), "offset at EOF after resume")
    return ("killed after %d processed (offset=%d), resumed to cumulative total=%d, dup=%d"
            % (processed_before, offset_before, total, dup))


@case
def i7_resume_after_clean_exit(exe):
    """重启后新增事件能继续消费"""
    work = path_of("i7/work")
    state = path_of("i7/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i7/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-70%02d-g1" % i, "old%d" % i) for i in range(3)])
    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "first run exit")
    assert_eq(counters_of(state).get("events_processed"), 3, "first run processed 3")

    append_events("i7/work/events.jsonl",
                  [rec(i + 4, 4242, "t5b-4242-70%02d-g1" % (i + 3), "new%d" % i) for i in range(2)])
    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "second run exit")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 2, "only the 2 new events processed")
    assert_eq(c.get("duplicates"), 0, "no duplicates on append")
    assert_eq(state_of(state).get("processed_total"), 5, "5 total")
    return "append after restart consumed incrementally (2 new)"


@case
def i8_truncation(exe):
    """events.jsonl 被截断 → 检测并重新扫描"""
    work = path_of("i8/work")
    state = path_of("i8/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i8/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-80%02d-g1" % i, "x%d" % i) for i in range(5)])
    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "first run")
    assert_eq(counters_of(state).get("events_processed"), 5, "5 processed")

    # 桥接端重启并修复尾部：文件变短（这里等价于整个文件被重写）
    write_events("i8/work/events.jsonl", [rec(1, 4242, "t5b-4242-8099-g1", "after-truncate")])
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "second run")
    c = counters_of(state)
    assert_eq(c.get("truncations"), 1, "truncation detected")
    assert_eq(c.get("events_processed"), 1, "rescanned file, processed the one new record")
    assert_eq(state_of(state).get("offset"), os.path.getsize(path_of("i8/work/events.jsonl")),
              "offset at new EOF")
    return "truncation detected, rescan from 0, 1 record processed"


@case
def i9_recreated(exe):
    """events.jsonl 被删除重建 → 检测身份变化（同大小也要能发现）"""
    work = path_of("i9/work")
    state = path_of("i9/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = write_events("i9/work/events.jsonl",
                      [rec(1, 4242, "t5b-4242-9001-g1", "first-file-content")])
    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "first run")
    size1 = os.path.getsize(ev)

    os.remove(ev)
    write_events("i9/work/events.jsonl",
                 [rec(1, 4242, "t5b-4242-9002-g1", "first-file-contend")])   # 与上一条等长（18B）
    size2 = os.path.getsize(ev)
    assert_eq(size1, size2, "same size on purpose (only identity can tell)")

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "second run")
    c = counters_of(state)
    assert_eq(c.get("replacements"), 1, "replacement detected by identity")
    assert_eq(c.get("events_processed"), 1, "new file rescanned and processed")
    return "same-size recreated file detected via file identity"


@case
def i10_corrupt_state(exe):
    """消费状态损坏 → 留档 .corrupt-*，从 0 重扫，不静默跳过"""
    work = path_of("i10/work")
    state = path_of("i10/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i10/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-a%03d-g1" % i, "c%d" % i) for i in range(4)])
    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "first run")
    sp = os.path.join(state, "consumer_state.json")
    with open(sp, "w", encoding="utf-8") as f:
        f.write("{broken state file")

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "250"])
    assert_eq(rc, 0, "second run survives corrupt state")
    assert_in("corrupted", out, "corruption reported")
    backups = [n for n in os.listdir(state) if ".corrupt-" in n]
    assert_eq(len(backups), 1, "one backup file kept")
    c = counters_of(state)
    # 状态损坏 = 最近窗口（recent_ids）一起丢了，所以重扫会重新处理这 4 条。
    # 这是明确的设计取舍：宁可重处理（Mock 阶段无副作用），也不静默跳过未处理事件。
    assert_eq(c.get("events_processed"), 4, "rescan from 0 reprocessed 4 records")
    assert_eq(c.get("duplicates"), 0, "dedup window was lost with the state file")
    assert_eq(c.get("state_errors"), 1, "state error counted")
    return "corrupt state archived as %s, rescanned from 0 (4 records reprocessed)" % backups[0]


@case
def i11_provider_retry_recover(exe):
    """Provider 前两次失败、第三次成功 → 事件只计成功一次，偏移最终到 EOF"""
    work = path_of("i11/work")
    state = path_of("i11/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i11/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-b%03d-g1" % i, "p%d" % i) for i in range(3)])
    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "400", "--mock-fail-times", "2", "--verbose",
                           "--provider-backoff-ms", "20", "--provider-backoff-max-ms", "50"])
    assert_eq(rc, 0, "worker exit code stays 0")
    c = counters_of(state)
    st = state_of(state)
    assert_eq(c.get("events_processed"), 3, "all 3 events processed exactly once")
    assert_eq(c.get("provider_ok"), 3, "3 successes (failed attempts are not successes)")
    assert_eq(c.get("provider_err"), 2, "2 failed attempts")
    assert_eq(c.get("provider_retries"), 2, "2 retries scheduled")
    assert_eq(c.get("provider_stuck"), 0, "never stuck")
    assert_eq(st.get("processed_total"), 3, "processed_total counted once per event")
    assert_eq(st.get("offset"), os.path.getsize(path_of("i11/work/events.jsonl")),
              "offset reached EOF after recovery")
    assert_eq(st.get("recent_n"), 3, "all three event ids remembered")
    assert_in("retrying", out, "retry logged")
    return "2 failed attempts then recovery; 3 events processed exactly once"


@case
def i11b_provider_stuck_no_skip(exe):
    """Provider 永久失败 → 卡在该事件：不推进偏移、不记 recent_ids、不越过它"""
    work = path_of("i11b/work")
    state = path_of("i11b/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    lines = [rec(i + 1, 4242, "t5b-4242-f%03d-g1" % i, "s%d" % i) for i in range(3)]
    ev = write_events("i11b/work/events.jsonl", lines)

    rc, out, _ = run_once(exe, work, state,
                          ["--max-runtime-ms", "2500", "--mock-fail-from", "1",
                           "--provider-retry-max", "2",
                           "--provider-backoff-ms", "20", "--provider-backoff-max-ms", "50"])
    assert_eq(rc, 0, "worker exits normally on max-runtime")
    c = counters_of(state)
    st = state_of(state)
    sst = status_of(state)
    assert_eq(c.get("events_processed"), 0, "nothing was consumed")
    assert_eq(c.get("provider_stuck"), 1, "event reported stuck")
    assert_eq(durable_offset(state), 0, "offset did not move")
    assert_eq(sst.get("pending_event_id"), "t5b-4242-f000-g1", "first event kept, not skipped")
    assert_eq(st.get("recent_n", 0), 0, "failed event must NOT be in recent_ids")
    assert_eq(st.get("processed_total", 0), 0, "processed_total unchanged")
    assert_in("stuck", out, "stuck reported")

    # 换一个不失败的上游重启：卡住的事件必须还在，并被重新处理（顺序不变）
    rc, out2, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "restart exit")
    st2 = state_of(state)
    c2 = counters_of(state)
    assert_eq(st2.get("processed_total"), 3, "all three events processed after recovery")
    assert_eq(st2.get("offset"), os.path.getsize(ev), "offset reached EOF")
    assert_eq(c2.get("duplicates"), 0, "nothing was half-processed before")
    return "stuck at [t5b-4242-f000-g1], offset 0, recent_n 0; recovered after restart"


@case
def i11c_kill9_keeps_failed_event(exe):
    """Provider 失败期间 kill -9：失败事件仍在，重启后重试并成功"""
    work = path_of("i11c/work")
    state = path_of("i11c/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = write_events("i11c/work/events.jsonl",
                      [rec(1, 4242, "t5b-4242-g001-g1", "keepme")])

    proc = start_bg(exe, work, state,
                    ["--mock-fail-from", "1", "--provider-retry-max", "100",
                     "--provider-backoff-ms", "20", "--provider-backoff-max-ms", "50"],
                    "i11c/worker1.log")
    try:
        wait_until(lambda: counters_of(state).get("provider_err", 0) >= 3, 15,
                   what="provider attempts while failing")
        assert_eq(durable_offset(state), 0, "offset stayed at 0 while failing")
        assert_eq(state_of(state).get("recent_n", 0), 0, "no recent id while failing")
    finally:
        stop_bg(proc, kill=True)

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "restart exit")
    st = state_of(state)
    assert_eq(st.get("processed_total"), 1, "the failed event was processed after restart")
    assert_eq(st.get("offset"), os.path.getsize(ev), "offset at EOF")
    assert_in("previous owner pid=", out, "lock taken over after kill -9")
    return "killed while retrying; event survived and completed after restart"

@case
def i12_oversize(exe):
    """超长记录 → 跳过并计数"""
    work = path_of("i12/work")
    state = path_of("i12/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    huge = '{"version":1,"rec":"asr_final","text":"' + ("z" * 5000) + '"}\n'
    lines = [rec(1, 4242, "t5b-4242-c001-g1", "ok"),
             huge,
             rec(2, 4242, "t5b-4242-c002-g1", "ok2")]
    write_events("i12/work/events.jsonl", lines)
    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "300", "--max-record-bytes", "1024"])
    assert_eq(rc, 0, "exit code")
    c = counters_of(state)
    assert_eq(c.get("oversize_lines"), 1, "oversize line counted")
    assert_eq(c.get("events_processed"), 2, "valid neighbours still processed")
    assert_in("oversize", out, "oversize logged")
    return "1 oversize line skipped (limit 1024), neighbours processed"


@case
def i13_double_start(exe):
    """重复启动 → 第二个实例退出码 3"""
    work = path_of("i13/work")
    state = path_of("i13/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i13/work/events.jsonl", [rec(1, 4242, "t5b-4242-d001-g1", "single")])

    first = start_bg(exe, work, state, ["--idle-exit-ms", "6000"], "i13/worker1.log")
    try:
        wait_until(lambda: status_of(state).get("state") == "running", 10, what="first running")
        rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "200"], timeout=20)
        assert_eq(rc, 3, "second instance refused")
        assert_in("another ai_worker is running", out, "refusal reason")
        wait_until(lambda: counters_of(state).get("events_processed") == 1, 10,
                   what="first instance processed the single event")
        assert_eq(counters_of(state).get("duplicates"), 0, "no duplicate processing")
    finally:
        stop_bg(first)
    return "second instance exits 3, lock held by first"


@case
def i14_memory_stable(exe):
    """长跑（3000 条）内存不持续增长"""
    work = path_of("i14/work")
    state = path_of("i14/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    n = 3000
    big_text = "长" * 120
    write_events("i14/work/events.jsonl",
                 [rec((i % 500) + 1, 4242, "t5b-4242-e%04d-g1" % i, big_text) for i in range(n)])

    proc = start_bg(exe, work, state,
                    ["--idle-exit-ms", "3000", "--state-sync-every", "100"],
                    "i14/worker.log")
    samples = []
    try:
        wait_until(lambda: counters_of(state).get("events_processed", 0) >= n // 3, 90,
                   what="1/3 processed")
        samples.append(rss_kb(proc.pid))
        wait_until(lambda: counters_of(state).get("events_processed", 0) >= n, 120,
                   what="all processed")
        samples.append(rss_kb(proc.pid))
        samples.append(rss_kb(proc.pid))
    finally:
        stop_bg(proc)
    valid = [s for s in samples if s >= 1024]      # 进程退出后的采样(≈0)不参与统计
    if len(valid) < 2:
        return "memory sampling unsupported on this platform (samples=%r)" % (samples,)
    growth = max(valid) - min(valid)
    if growth > 4096:      # 4 MB
        raise AssertionError("RSS grew by %d KB over %d events: %r" % (growth, n, samples))
    c = counters_of(state)
    assert_eq(c.get("events_processed"), n, "all %d processed" % n)
    return "RSS %r KB, growth %d KB over %d events" % (samples, growth, n)


# ---------------------------------------------------------------- 主流程

@case
def i15_half_line_oversize(exe):
    """半行超过长度上限（P2-1）：先等待，补全并出现换行后才跳过整行"""
    work = path_of("i15/work")
    state = path_of("i15/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i15/work/events.jsonl")
    head = '{"version":1,"rec":"asr_final","text":"' + ("z" * 8500)
    with open(ev, "wb") as f:
        f.write(head.encode("utf-8"))                 # 8500+ 字节，无换行

    proc = start_bg(exe, work, state,
                    ["--max-record-bytes", "8192", "--idle-exit-ms", "8000"],
                    "i15/worker.log")
    try:
        time.sleep(1.0)
        c = counters_of(state)
        assert_eq(c.get("oversize_lines"), 0, "half line must NOT be counted as oversize")
        assert_eq(durable_offset(state), 0, "offset must not advance on a half line")

        with open(ev, "ab") as f:
            f.write(("y" * 200).encode("utf-8"))
            f.write(b"\n")
        wait_until(lambda: counters_of(state).get("oversize_lines") == 1, 10,
                   what="oversize after newline arrived")
        assert_eq(state_of(state).get("offset"), os.path.getsize(ev), "whole line skipped")
        assert_eq(counters_of(state).get("events_processed"), 0, "nothing fabricated")

        append_events("i15/work/events.jsonl", [rec(9, 4242, "t5b-4242-h009-g1", "after")])
        wait_until(lambda: counters_of(state).get("events_processed") == 1, 10,
                   what="valid neighbour processed")
    finally:
        stop_bg(proc)
    return "8500B half line waited; skipped only after newline; next record processed"


@case
def i16_file_deleted_while_running(exe):
    """运行中文件被删除再重建（先短后长，P2-2）：必须识别身份变化并从 0 重读"""
    work = path_of("i16/work")
    state = path_of("i16/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i16/work/events.jsonl")
    write_events("i16/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-k%03d-g1" % i, "old%d" % i) for i in range(2)])

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "9000"], "i16/worker.log")
    try:
        wait_until(lambda: counters_of(state).get("events_processed") == 2, 15,
                   what="first file consumed")

        # 1) 删除：必须观察到"文件不存在"，同时保留偏移与身份
        os.remove(ev)
        wait_until(lambda: status_of(state).get("file_size") == -1, 10,
                   what="file absent detected")
        assert_ge(durable_offset(state), 1, "offset kept while file is absent")
        assert_eq(counters_of(state).get("replacements"), 0, "absence is not a replacement")

        # 2) 更短的新文件：身份变化 → 从头读，第一条不能被跳过
        write_events("i16/work/events.jsonl",
                     [rec(1, 4242, "t5b-4242-m001-g1", "short-1")])
        wait_until(lambda: counters_of(state).get("replacements") == 1, 10,
                   what="replacement detected after recreation")
        wait_until(lambda: durable_offset(state) == os.path.getsize(ev), 10,
                   what="shorter file consumed from offset 0")
        assert_ge(counters_of(state).get("events_processed", 0), 3,
                  "old 2 + new 1 processed (counters accumulate within one run)")

        # 3) 更长的重建文件：同样必须识别（只靠 size 会漏）
        os.remove(ev)
        wait_until(lambda: status_of(state).get("file_size") == -1, 10,
                   what="file absent detected again")
        write_events("i16/work/events.jsonl",
                     [rec(i + 1, 4242, "t5b-4242-n%03d-g1" % i, "long-%d" % i) for i in range(3)])
        wait_until(lambda: counters_of(state).get("replacements") == 2, 10,
                   what="replacement detected for longer file")
        wait_until(lambda: durable_offset(state) == os.path.getsize(ev), 10,
                   what="longer file consumed from offset 0")
        assert_ge(counters_of(state).get("events_processed", 0), 6,
                  "old 2 + short 1 + long 3 processed")
    finally:
        stop_bg(proc)
    return "absent -> shorter -> longer recreation all detected via file identity"


@case
def i17_state_persist_failure(exe):
    """进度落盘失败（P1-3）：不得继续推进偏移，带错误退出（退出码 5）"""
    results = []
    for fault in ("create", "write", "fsync", "rename", "dirfsync"):
        work = path_of("i17/%s/work" % fault)
        state = path_of("i17/%s/state" % fault)
        os.makedirs(work, exist_ok=True)
        os.makedirs(state, exist_ok=True)
        lines = [rec(i + 1, 4242, "t5b-4242-p%03d-g1" % i, "f%d" % i) for i in range(3)]
        write_events("i17/%s/work/events.jsonl" % fault, lines)

        rc, out, _ = run_once(exe, work, state,
                              ["--state-fail-exit-ms", "400", "--state-retry-ms", "50"],
                              env={"T6B_FAULT_STATE": fault})
        assert_eq(rc, 5, "%s: exit code must be 5 (state persist failed)" % fault)
        assert_in("state save failed", out, "%s: failure logged" % fault)
        st = status_of(state)
        c = counters_of(state)
        assert_eq(c.get("state_persist_failed"), 1, "%s: status marks persist failure" % fault)
        assert_eq(st.get("state"), "error", "%s: state becomes error" % fault)
        assert_ge(c.get("state_errors", 0), 1, "%s: state_errors counted" % fault)
        # 关键性质：失败之后**不再继续消费**（最多处理到触发失败的那一条）
        assert_ge(c.get("events_processed", 0), 1, "%s: it did try one event" % fault)
        if c.get("events_processed", 0) > 1:
            raise AssertionError("%s: worker kept consuming after a persist failure (%r)"
                                 % (fault, c.get("events_processed")))
        ev_size = os.path.getsize(path_of("i17/%s/work/events.jsonl" % fault))
        off = durable_offset(state)
        if off >= ev_size:
            raise AssertionError("%s: claimed full progress on disk (%d >= %d)"
                                 % (fault, off, ev_size))
        results.append("%s: rc=5, processed<=1, durable offset=%d/%d" % (fault, off, ev_size))

    assert_eq(len(results), 5, "all five fault stages exercised")
    return "; ".join(results)


# ---------------------------------------------------------------- P2-2 前缀指纹

def prefix_hash_of(path, upto):
    """独立实现：对文件 [0,upto) 算 FNV-1a 64，用来核对状态文件里的指纹

    常量必须与 worker_util.h 的 WU_HASH64_SEED 一致（本项目自己的 64 位常量）。
    """
    h = 1469598103934665603
    left = upto
    with open(path, "rb") as f:
        while left > 0:
            chunk = f.read(min(4096, left))
            if not chunk:
                break
            for b in chunk:
                h = ((h ^ b) * 1099511628211) & 0xFFFFFFFFFFFFFFFF
            left -= len(chunk)
    return h


@case
def i18_recreate_longer_while_running(exe):
    """运行期间删除并立刻创建**更长**的新文件：必须从新文件第一条开始读（P2-2 核心）"""
    work = path_of("i18/work")
    state = path_of("i18/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i18/work/events.jsonl")
    write_events("i18/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-r1%02d-g1" % i, "old-%d" % i) for i in range(2)])

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "12000", "--verbose"], "i18/worker.log")
    try:
        wait_until(lambda: counters_of(state).get("events_processed") == 2, 15,
                   what="old file consumed")
        off_before = durable_offset(state)
        assert_ge(off_before, 1, "old offset is durable")

        # 新文件明显更长（3 条，每条 text 也更长），前缀与旧文件不同
        os.remove(ev)
        write_events("i18/work/events.jsonl",
                     [rec(i + 1, 4242, "t5b-4242-r2%02d-g1" % i,
                          "brand-new-file-record-%d-longer" % i) for i in range(3)])
        new_size = os.path.getsize(ev)
        assert_ge(new_size, off_before + 1, "new file must be longer than the old offset")

        wait_until(lambda: counters_of(state).get("events_processed") >= 5, 20,
                   what="new file consumed from its first record")
        c = counters_of(state)
        assert_eq(c.get("events_processed"), 5, "2 old + 3 new, nothing skipped")
        st = status_of(state)
        assert_eq(st.get("offset"), new_size, "reached the end of the new file")
        assert_eq(st.get("prefix_hash"), "%016x" % prefix_hash_of(ev, new_size),
                  "status prefix hash matches the new file")
        assert_eq(st.get("prefix_hash_valid"), 1, "prefix hash flagged valid")
        per_run = c.get("events_processed") - 2
    finally:
        stop_bg(proc)
    with open(path_of("i18/worker.log"), "rb") as f:
        log = f.read().decode("utf-8", "replace")
    assert_in("t5b-4242-r200-g1", log, "log shows the first record of the new file was read")
    return "offset %d -> new file %d B, %d records read from record 1" % (
        off_before, new_size, per_run)


@case
def i19_absent_then_recreated_longer(exe):
    """先观察到文件不存在，再创建更长的新文件：必须从第一条重读"""
    work = path_of("i19/work")
    state = path_of("i19/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i19/work/events.jsonl")
    write_events("i19/work/events.jsonl",
                 [rec(1, 4242, "t5b-4242-a100-g1", "first-life")])

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "12000"], "i19/worker.log")
    try:
        wait_until(lambda: counters_of(state).get("events_processed") == 1, 15,
                   what="first life consumed")
        off_before = durable_offset(state)

        os.remove(ev)
        wait_until(lambda: status_of(state).get("file_size") == -1, 10,
                   what="absent observed")
        time.sleep(0.4)                    # 明确处于"文件不存在"状态
        write_events("i19/work/events.jsonl",
                     [rec(i + 1, 4242, "t5b-4242-a2%02d-g1" % i,
                          "second-life-record-number-%d" % i) for i in range(3)])
        new_size = os.path.getsize(ev)
        assert_ge(new_size, off_before + 1, "recreated file is longer")

        wait_until(lambda: counters_of(state).get("events_processed") >= 4, 20,
                   what="second life consumed")
        assert_eq(counters_of(state).get("events_processed"), 4, "1 + 3 processed")
        assert_eq(status_of(state).get("offset"), new_size, "end of new file")
        return "absent window seen; recreated file consumed from record 1"
    finally:
        stop_bg(proc)


@case
def i20_restart_detects_recreate(exe):
    """Worker 停止期间删除并重建更长文件：重启后必须靠前缀指纹识别并从 0 重扫"""
    work = path_of("i20/work")
    state = path_of("i20/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i20/work/events.jsonl")
    write_events("i20/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-s1%02d-g1" % i, "old-%d" % i) for i in range(2)])

    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "first run exit code")
    st = state_of(state)
    assert_eq(st.get("version"), 2, "state upgraded to v2")
    assert_eq(len(st.get("prefix_hash", "")), 16, "prefix hash stored as 16 hex chars")
    off_before = st.get("offset")
    assert_ge(off_before, 1, "offset durable")

    # worker 不在时换文件：更长、前缀不同
    os.remove(ev)
    write_events("i20/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-s2%02d-g1" % i,
                      "replacement-record-with-longer-text-%d" % i) for i in range(4)])
    new_size = os.path.getsize(ev)
    assert_ge(new_size, off_before + 1, "replacement is longer than the saved offset")

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "400"])
    assert_eq(rc, 0, "second run exit code")
    assert_in("content identity changed", out, "restart logged the identity change")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 4, "all 4 records of the new file processed")
    assert_ge(c.get("identity_resets", 0), 1, "identity_resets counted")
    assert_eq(state_of(state).get("offset"), new_size, "end of new file")
    return "saved offset %d ignored, new file %d B consumed from 0" % (off_before, new_size)


@case
def i21_identical_prefix_keeps_offset(exe):
    """新文件截至旧 offset 的前缀完全相同 → 继续读是安全的，不得误判为换文件"""
    work = path_of("i21/work")
    state = path_of("i21/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i21/work/events.jsonl")
    head = [rec(i + 1, 4242, "t5b-4242-t1%02d-g1" % i, "head-%d" % i) for i in range(3)]
    write_events("i21/work/events.jsonl", head)

    rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
    assert_eq(rc, 0, "first run exit code")
    off_before = state_of(state).get("offset")
    assert_eq(off_before, os.path.getsize(ev), "consumed the whole head")

    # 停止期间"重建"文件，但前 off 字节完全相同，只是在后面追加
    with open(ev, "rb") as f:
        same_prefix = f.read()
    os.remove(ev)
    with open(ev, "wb") as f:
        f.write(same_prefix)
    append_events("i21/work/events.jsonl",
                  [rec(i + 4, 4242, "t5b-4242-t2%02d-g1" % i, "tail-%d" % i) for i in range(2)])
    new_size = os.path.getsize(ev)

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "400"])
    assert_eq(rc, 0, "second run exit code")
    c = counters_of(state)
    assert_eq(c.get("identity_resets"), 0, "identical prefix must NOT reset the offset")
    assert_eq(c.get("events_processed"), 2, "only the two appended records processed")
    assert_eq(c.get("duplicates"), 0, "no duplicate work")
    assert_eq(state_of(state).get("offset"), new_size, "end of file")
    return "prefix identical up to %d, appended 2 records processed, 0 resets" % off_before


@case
def i22_legacy_state_migration(exe):
    """旧 version=1 状态（无指纹）：安全迁移，从 0 重扫并保留 recent_ids"""
    work = path_of("i22/work")
    state = path_of("i22/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    ev = path_of("i22/work/events.jsonl")
    lines = [rec(i + 1, 4242, "t5b-4242-v1%02d-g1" % i, "legacy-%d" % i) for i in range(3)]
    write_events("i22/work/events.jsonl", lines)

    # 手写一份 v1 状态：offset 越过第一条，recent_ids 里已有第一条
    first_len = len(lines[0].encode("utf-8"))
    legacy = {
        "version": 1, "dev": 1, "ino": 2, "offset": first_len,
        "seq_last": 1, "last_event_id": "t5b-4242-v100-g1",
        "processed_total": 1, "updated_at_ms": 1795164000000,
        "recent_cap": 128, "recent_n": 1, "recent_ids": "t5b-4242-v100-g1",
    }
    with open(os.path.join(state, "consumer_state.json"), "w", encoding="utf-8") as f:
        json.dump(legacy, f, separators=(",", ":"))

    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "400"])
    assert_eq(rc, 0, "exit code")
    assert_in("no prefix fingerprint", out, "legacy state reported, not silently accepted")
    c = counters_of(state)
    assert_ge(c.get("legacy_rescans", 0), 1, "legacy_rescans counted")
    assert_eq(c.get("events_processed"), 2, "records 2 and 3 processed")
    assert_eq(c.get("duplicates"), 1, "record 1 suppressed by recent_ids (bounded duplicate)")
    st = state_of(state)
    assert_eq(st.get("version"), 2, "state rewritten as v2")
    assert_eq(len(st.get("prefix_hash", "")), 16, "fingerprint now present")
    assert_eq(st.get("offset"), os.path.getsize(ev), "reached end of file")
    return "v1 -> v2, rescan from 0, 1 duplicate suppressed, 2 processed"


@case
def i23_prefix_fault_stops(exe):
    """指纹核对/推进失败：必须停止消费并带退出码 6，不许退化成只比 inode"""
    results = []
    for fault, extra in (("read", []), ("fold", ["--idle-exit-ms", "3000"])):
        work = path_of("i23/%s/work" % fault)
        state = path_of("i23/%s/state" % fault)
        os.makedirs(work, exist_ok=True)
        os.makedirs(state, exist_ok=True)
        lines = [rec(i + 1, 4242, "t5b-4242-f%02d-g1" % i, "fault-%d" % i) for i in range(3)]
        write_events("i23/%s/work/events.jsonl" % fault, lines)
        ev = path_of("i23/%s/work/events.jsonl" % fault)

        if fault == "read":
            # 先正常跑一轮留下 v2 状态（含指纹），再在核对阶段注入故障
            rc, _, _ = run_once(exe, work, state, ["--idle-exit-ms", "300"])
            assert_eq(rc, 0, "warm-up run ok")
            off_before = durable_offset(state)
            ev_size = os.path.getsize(ev)
            rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "500"],
                                  env={"T6B_FAULT_PREFIX": "read"})
            assert_eq(rc, 6, "read fault: exit code must be 6 (identity failed)")
            assert_in("cannot be verified", out, "read fault logged")
            st = status_of(state)
            assert_eq(st.get("state"), "error", "read fault: state error")
            assert_eq(durable_offset(state), off_before, "read fault: offset untouched")
            assert_eq(off_before, ev_size, "read fault: had consumed everything before")
            results.append("read: rc=6, offset kept at %d" % off_before)
        else:
            rc, out, _ = run_once(exe, work, state, extra,
                                  env={"T6B_FAULT_PREFIX": "fold"})
            assert_eq(rc, 6, "fold fault: exit code must be 6 (identity failed)")
            assert_in("prefix hash update failed", out, "fold fault logged")
            c = counters_of(state)
            assert_eq(c.get("events_processed"), 0, "fold fault: event not committed")
            assert_eq(durable_offset(state), 0, "fold fault: offset not advanced")
            assert_ge(c.get("io_errors", 0), 1, "fold fault: io_errors counted")
            results.append("fold: rc=6, offset stayed 0")
    return "; ".join(results)


@case
def i24_append_does_not_reset(exe):
    """正常追加写入：指纹延续，绝不能把每次追加误判成文件替换"""
    work = path_of("i24/work")
    state = path_of("i24/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i24/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-ap%02d-g1" % i, "append-%d" % i) for i in range(2)])
    ev = path_of("i24/work/events.jsonl")

    proc = start_bg(exe, work, state, ["--idle-exit-ms", "12000"], "i24/worker.log")
    try:
        wait_until(lambda: counters_of(state).get("events_processed") == 2, 15,
                   what="initial records")
        for k in range(4):
            append_events("i24/work/events.jsonl",
                          [rec(3 + k, 4242, "t5b-4242-ap%02d-g1" % (2 + k), "more-%d" % k)])
            want = 3 + k
            wait_until(lambda: counters_of(state).get("events_processed") == want, 10,
                       what="append %d consumed" % (k + 1))
            assert_eq(status_of(state).get("offset"), os.path.getsize(ev),
                      "offset follows the file after append %d" % (k + 1))
        c = counters_of(state)
        assert_eq(c.get("identity_resets"), 0, "append must never cause a reset")
        assert_eq(c.get("replacements"), 0, "append must never look like a replacement")
        assert_eq(c.get("truncations"), 0, "append must never look like a truncation")
        assert_eq(c.get("events_processed"), 6, "2 + 4 processed exactly once")
        st = status_of(state)
        assert_eq(st.get("prefix_hash"), "%016x" % prefix_hash_of(ev, os.path.getsize(ev)),
                  "incremental prefix hash equals a fresh full computation")
        return "4 appends, 0 resets/replacements/truncations, prefix hash matches"
    finally:
        stop_bg(proc)


@case
def i25_prefix_fold_partial_atomic(exe):
    """指纹提交中途失败（P2-2 复审 P1）：落盘的 offset 与 prefix_hash 必须仍成对自洽"""
    work = path_of("i25/work")
    state = path_of("i25/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)

    first = rec(1, 4242, "t5b-4242-pa01-g1", "atomic-1")
    # 超长行必须长过一个读块（65536）：整行放不进缓存，提交它只能回读文件，
    # 这样才能在"第一块读完、第二块还没读"的位置注入中途失败。
    big = '{"junk":"' + ("q" * 70000) + '"}\n'
    write_events("i25/work/events.jsonl",
                 [first, big, rec(2, 4242, "t5b-4242-pa02-g1", "atomic-2")])
    ev = path_of("i25/work/events.jsonl")
    size = os.path.getsize(ev)
    head = len(first.encode("utf-8"))
    assert_ge(size, head + 70000, "fixture: one oversize line longer than a read chunk")

    # 第一轮：第一条正常消费并落盘，接着提交超长行时中途失败 → 退出码 6
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "3000"],
                          env={"T6B_FAULT_PREFIX": "fold_partial"})
    assert_eq(rc, 6, "mid-way fold fault: exit code must be 6")
    assert_in("prefix hash update failed", out, "mid-way fold fault logged")
    st = state_of(state)
    assert_eq(st.get("version"), 2, "state stays v2 after the fault")
    assert_eq(st.get("offset"), head, "offset stays at the last committed record")
    assert_eq(st.get("prefix_hash"), "%016x" % prefix_hash_of(ev, head),
              "durable offset and prefix hash still describe the same bytes")
    assert_eq(status_of(state).get("exit_reason"), "identity_hash_failed",
              "exit reason recorded in status")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 1, "the failing record was not committed")
    assert_ge(c.get("io_errors", 0), 1, "mid-way fold fault counted as an io error")

    # 第二轮：状态自洽 → 指纹核对通过，没提交成功的超长行重新处理，后面继续消费
    rc2, out2, _ = run_once(exe, work, state, ["--idle-exit-ms", "800"])
    assert_eq(rc2, 0, "restart after a mid-way failure exits cleanly")
    st2 = state_of(state)
    assert_eq(st2.get("offset"), size, "restart: offset reaches end of file")
    assert_eq(st2.get("prefix_hash"), "%016x" % prefix_hash_of(ev, size),
              "restart: fingerprint matches a fresh full computation")
    assert_eq(st2.get("processed_total"), 2, "the retried record was not lost")
    c2 = counters_of(state)
    assert_eq(c2.get("oversize_lines"), 1, "the skipped oversize record was committed on retry")
    assert_eq(c2.get("identity_resets"), 0, "restart must not look like a content change")
    assert_eq(c2.get("events_processed"), 1, "record 3 consumed exactly once")
    return ("rc=6 with offset/hash pair kept at %d, restart completes, "
            "1 record retried" % head)


# ---------------------------------------------------------------- T5-06C Provider

def grep_tree(root, needle):
    """在目录下所有文件里找 needle（用于证明 key 没有落进任何文件）"""
    hits = []
    for dirpath, _dirnames, filenames in os.walk(root):
        for fn in filenames:
            p = os.path.join(dirpath, fn)
            try:
                with open(p, "rb") as f:
                    data = f.read()
            except OSError:
                continue
            if needle.encode("utf-8") in data:
                hits.append(p)
    return hits


@case
def i26_deepseek_missing_key(exe):
    """provider=deepseek 没有 key 文件：初始化失败退出（码 4），绝不退回 mock、绝不发请求"""
    work = path_of("i26/work")
    state = path_of("i26/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i26/work/events.jsonl", [rec(1, 4242, "t5b-4242-ds01-g1", "你好")])
    missing = path_of("i26/no_such_key")

    rc, out, _ = run_once(exe, work, state,
                          ["--provider", "deepseek", "--api-key-file", missing,
                           "--idle-exit-ms", "500"])
    assert_eq(rc, 4, "missing key must fail init (exit 4), never fall back to mock")
    assert_in("provider init failed (deepseek)", out, "init failure logged with provider name")
    assert_in("key file not found", out, "error names the key file problem")
    assert_eq(durable_offset(state), 0, "offset must stay 0: nothing was consumed")
    st = status_of(state)
    assert_eq(st.get("provider"), "deepseek", "status records the real provider")
    assert_eq(st.get("provider_mock"), 0, "provider_mock=0 for deepseek")
    assert_eq(st.get("model"), "deepseek-chat", "default model recorded")
    assert_eq(st.get("exit_reason"), "provider_init_failed", "exit reason recorded")
    assert_eq(counters_of(state).get("events_processed"), 0, "no event was processed")
    return "rc=4, no request, offset untouched, status shows deepseek"


@case
def i27_deepseek_libcurl_unavailable(exe):
    """key 存在但主机没有 libcurl：明确报错（码 4），且 key 不落进任何文件"""
    if os.name != "nt":
        return "skipped: host has POSIX dlopen; libcurl availability depends on the distro"

    work = path_of("i27/work")
    state = path_of("i27/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i27/work/events.jsonl", [rec(1, 4242, "t5b-4242-ds02-g1", "你好")])
    keypath = path_of("i27/key/deepseek_api_key")
    os.makedirs(os.path.dirname(keypath), exist_ok=True)
    dummy_key = "sk-host-test-DUMMY-0123456789"
    with open(keypath, "w", encoding="ascii", newline="\n") as f:
        f.write(dummy_key + "\n")

    rc, out, _ = run_once(exe, work, state,
                          ["--provider", "deepseek", "--api-key-file", keypath,
                           "--deepseek-base-url", "http://127.0.0.1:9/x",
                           "--idle-exit-ms", "500"])
    assert_eq(rc, 4, "no libcurl on the host build -> init fails with exit 4")
    assert_in("curl unavailable", out, "the missing transport is reported explicitly")
    assert_eq(durable_offset(state), 0, "offset untouched")

    # key 只能待在它自己的文件里：状态目录、work 目录、stdout 都不许出现
    assert_eq(grep_tree(state, dummy_key), [], "the api key must never reach the state dir")
    assert_eq(grep_tree(work, dummy_key), [], "the api key must never reach the work dir")
    assert_eq(dummy_key in out, False, "the api key must never appear on stdout")
    return "rc=4, transport error explicit, key absent from stdout/state/work"


@case
def i28_provider_config_errors(exe):
    """配置检查：非法 provider / URL / 空模型 / 超时倒挂 一律退出码 2"""
    work = path_of("i28/work")
    state = path_of("i28/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i28/work/events.jsonl", [rec(1, 4242, "t5b-4242-ds03-g1", "hi")])
    key = path_of("i28/key")
    with open(key, "w", encoding="ascii") as f:
        f.write("sk-config-check\n")

    cases = [
        (["--provider", "openai"], "provider must be"),
        (["--provider", "deepseek", "--api-key-file", key,
          "--deepseek-base-url", "ftp://api.deepseek.com"], "deepseek-base-url invalid"),
        (["--provider", "deepseek", "--api-key-file", key,
          "--deepseek-model", ""], "deepseek-model must not be empty"),
        (["--provider", "deepseek", "--api-key-file", key,
          "--deepseek-connect-timeout-ms", "5000",
          "--deepseek-timeout-ms", "100"], "must be >="),
        (["--provider", "deepseek", "--api-key-file", ""], "api-key-file must not be empty"),
    ]
    for extra, want in cases:
        rc, out, _ = run_once(exe, work, state, extra + ["--idle-exit-ms", "300"])
        assert_eq(rc, 2, "config error for %s" % extra)
        assert_in("config error", out, "usage error reported")
        assert_in(want, out, "message names the problem (%s)" % want)
    return "%d config rejections all exit 2" % len(cases)


@case
def i29_mock_is_still_the_default(exe):
    """provider 默认仍是 mock：状态里 provider_mock=1、model 为空、不发网络"""
    work = path_of("i29/work")
    state = path_of("i29/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i29/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-ds04-g%d" % i, "mock-%d" % i) for i in range(2)])
    rc, out, _ = run_once(exe, work, state, ["--idle-exit-ms", "500"])
    assert_eq(rc, 0, "default provider still works")
    st = status_of(state)
    assert_eq(st.get("provider"), "mock", "default provider is mock")
    assert_eq(st.get("provider_mock"), 1, "provider_mock=1 for mock")
    assert_eq(st.get("model"), "", "mock has no model name")
    assert_eq(st.get("last_http_status"), 0, "mock never talks HTTP")
    assert_eq(counters_of(state).get("events_processed"), 2, "2 events via mock")

    rc2, out2, _ = run_once(exe, work, state, ["--provider", "mock", "--idle-exit-ms", "300"])
    assert_eq(rc2, 0, "explicit --provider mock works too")
    return "mock default/explicit ok, 2 events, no HTTP"


@case
def i30_reply_log_optional(exe):
    """--reply-log：成功的回答按行落盘；失败的事件不写；状态/日志仍不含回答正文"""
    work = path_of("i30/work")
    state = path_of("i30/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    rl = path_of("i30/replies.jsonl")
    write_events("i30/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-rl%d-g1" % i, "rl-%d" % i) for i in range(2)])

    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "600", "--reply-log", rl,
                           "--mock-reply", "fixed-answer"])
    assert_eq(rc, 0, "reply-log run exits cleanly")
    assert_eq(os.path.exists(rl), True, "reply log created")
    lines = [ln for ln in open(rl, encoding="utf-8").read().splitlines() if ln.strip()]
    assert_eq(len(lines), 2, "one line per successful answer")
    for ln, i in zip(lines, range(2)):
        obj = json.loads(ln)
        assert_eq(obj.get("event_id"), "t5b-4242-rl%d-g1" % i, "event id recorded")
        assert_eq(obj.get("text"), "fixed-answer", "answer text stored in the reply log")
        assert_eq(obj.get("text_valid"), 1, "answer text is valid UTF-8")
        assert_eq(obj.get("mock"), 1, "mock flag recorded")
        assert_eq(obj.get("provider"), "mock", "provider recorded")
    st = state_of(state)
    assert_eq("fixed-answer" in json.dumps(st, ensure_ascii=False), False,
              "the answer must not be copied into consumer_state.json")

    # 失败的事件不写回答：新 state/work，provider 永远失败
    work2 = path_of("i30/work_fail")
    state2 = path_of("i30/state_fail")
    rl2 = path_of("i30/replies_fail.jsonl")
    os.makedirs(work2, exist_ok=True)
    os.makedirs(state2, exist_ok=True)
    write_events("i30/work_fail/events.jsonl", [rec(1, 4242, "t5b-4242-rlf-g1", "f")])
    rc2, _, _ = run_once(exe, work2, state2,
                         ["--max-runtime-ms", "1200", "--reply-log", rl2,
                          "--mock-fail-from", "1", "--provider-retry-max", "1",
                          "--provider-backoff-ms", "300"])
    assert_eq(rc2, 0, "stuck provider still exits 0 at max-runtime")
    assert_eq(os.path.exists(rl2), False, "no reply line for a failed event")
    assert_eq(durable_offset(state2), 0, "failed event keeps the offset")
    return "2 answers logged, 0 lines for failures, state stays clean"


@case
def i31_tts_queue_item_written(exe):
    """--tts-queue-dir：成功回答按 event_id 入队（0600、可解析、正文在里面、日志/状态里没有）"""
    work = path_of("i31/work")
    state = path_of("i31/state")
    tts = path_of("i31/tts")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)

    write_events("i31/work/events.jsonl", [rec(1, 4242, "t5b-4242-q1-g1", "q1")])
    rc, out, err = run_once(exe, work, state,
                            ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                             "--mock-reply", "answer-one"])
    assert_eq(rc, 0, "queue run exits cleanly")
    item = os.path.join(tts, "queue", "t5b-4242-q1-g1.json")
    assert_eq(os.path.exists(item), True, "queue item created for the event id")
    obj = json.loads(open(item, encoding="utf-8").read())
    assert_eq(obj.get("v"), 1, "item version")
    assert_eq(obj.get("event_id"), "t5b-4242-q1-g1", "event id in item")
    assert_eq(obj.get("attempts"), 0, "fresh item has attempts=0")
    assert_eq(obj.get("text"), "answer-one", "answer text lives in the local queue item")
    assert_eq(obj.get("reply_bytes"), 10, "reply byte count recorded")

    st = json.loads(open(os.path.join(state, "ai_worker_status.json"),
                         encoding="utf-8").read())
    ctr = st.get("counters", {})
    assert_eq(ctr.get("tts_queued"), 1, "status counts the queued answer")
    assert_eq(ctr.get("tts_enqueue_failed"), 0, "no enqueue failures")
    assert_eq(st.get("tts_queue"), tts, "status reports the queue dir")
    assert_eq("answer-one" in json.dumps(st, ensure_ascii=False), False,
              "answer text must not appear in ai_worker_status.json")
    assert_eq("answer-one" in out, False,
              "answer text must not appear on stdout/log")

    # 第二个事件：同一队列目录继续入队，条目互不覆盖（每个 event_id 一个文件）
    write_events("i31/work2/events.jsonl" if False else os.path.join(work, "events.jsonl"),
                 [rec(1, 4242, "t5b-4242-q1-g1", "q1"), rec(2, 4242, "t5b-4242-q2-g1", "q2")])
    rc2, out2, _ = run_once(exe, work, state,
                            ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                             "--mock-reply", "answer-two"])
    assert_eq(rc2, 0, "second run exits cleanly")
    item2 = os.path.join(tts, "queue", "t5b-4242-q2-g1.json")
    assert_eq(os.path.exists(item2), True, "second event gets its own queue item")
    assert_eq(os.path.exists(item), True, "first item is untouched by later runs")
    objs = [json.loads(open(p, encoding="utf-8").read())
            for p in (item, item2)]
    assert_eq([o.get("text") for o in objs], ["answer-one", "answer-two"],
              "each item keeps its own answer text")
    if os.name != "nt":
        assert_eq(oct(os.stat(item).st_mode & 0o777), "0o600", "queue item is 0600")
    assert_eq("answer-one" in out2 or "answer-two" in out2, False,
              "no answer text on stdout")
    return "1 item per answer, 0600, device-local text, status/logs clean"


@case
def i32_tts_queue_idempotent_by_event_id(exe):
    """同一个 event_id 只会入队一次：done 标记、已在队列、inflight 都算已处理"""
    tts = path_of("i32/tts")
    # 场景 A：队列已有同名条目 → 不重复入队
    work = path_of("i32/work_a")
    state = path_of("i32/state_a")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    os.makedirs(os.path.join(tts, "queue"), exist_ok=True)
    with open(os.path.join(tts, "queue", "t5b-4242-dup-g1.json"), "w",
              encoding="utf-8") as f:
        f.write(u'{"v":1,"event_id":"t5b-4242-dup-g1","attempts":0,"text":"already"}\n')
    write_events("i32/work_a/events.jsonl", [rec(1, 4242, "t5b-4242-dup-g1", "dup")])
    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                           "--mock-reply", "answer-dup"])
    assert_eq(rc, 0, "dedupe run exits cleanly")
    st = json.loads(open(os.path.join(state, "ai_worker_status.json"),
                         encoding="utf-8").read())
    ctr = st.get("counters", {})
    assert_eq(ctr.get("tts_queued"), 0, "nothing queued when the id is already pending")
    assert_eq(ctr.get("tts_skipped"), 1, "skip counter moved instead")
    assert_eq(json.loads(open(os.path.join(tts, "queue", "t5b-4242-dup-g1.json"),
                              encoding="utf-8").read()).get("text"), "already",
              "existing item is left untouched")
    assert_eq(ctr.get("events_processed"), 1, "the event itself is still consumed")

    # 场景 B：done/<id>.ok 已存在（已播报）→ 重放事件也不再播报
    tts2 = path_of("i32/tts_b")
    work2 = path_of("i32/work_b")
    state2 = path_of("i32/state_b")
    os.makedirs(work2, exist_ok=True)
    os.makedirs(state2, exist_ok=True)
    os.makedirs(os.path.join(tts2, "done"), exist_ok=True)
    with open(os.path.join(tts2, "done", "t5b-4242-played-g1.ok"), "w",
              encoding="utf-8") as f:
        f.write("2026-11-20T22:00:00.000+0800\n")
    write_events("i32/work_b/events.jsonl", [rec(1, 4242, "t5b-4242-played-g1", "p")])
    rc2, _, _ = run_once(exe, work2, state2,
                         ["--idle-exit-ms", "600", "--tts-queue-dir", tts2,
                          "--mock-reply", "answer-played"])
    assert_eq(rc2, 0, "replay run exits cleanly")
    st2 = json.loads(open(os.path.join(state2, "ai_worker_status.json"),
                          encoding="utf-8").read())
    assert_eq(st2.get("counters", {}).get("tts_skipped"), 1,
              "already-played event is not enqueued again")
    assert_eq(os.path.exists(os.path.join(tts2, "queue", "t5b-4242-played-g1.json")),
              False, "no duplicate item for a played event")
    return "queue/inflight/done all suppress re-enqueue; offset still advances"


@case
def i33_tts_queue_config_and_failure(exe):
    """配置校验 + 入队失败不提交偏移；故障解除后同一事件只入队一次（P1-2）"""
    work = path_of("i33/work")
    state = path_of("i33/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i33/work/events.jsonl", [rec(1, 4242, "t5b-4242-cfg-g1", "c")])

    # 相对路径直接拒绝
    rc, _, err = run_once(exe, work, state, ["--tts-queue-dir", "relative/tts"])
    assert_eq(rc, 2, "relative tts-queue-dir is a usage error")

    # 入队失败：用一个文件占住目录名，mkdir 必失败 → 回答没有持久位置 → 不许提交偏移
    blocker = path_of("i33/blocker")
    with open(blocker, "w", encoding="utf-8") as f:
        f.write("x")
    rc2, out2, _ = run_once(exe, work, state,
                            ["--max-runtime-ms", "1200", "--provider-retry-max", "2",
                             "--tts-queue-dir", blocker, "--mock-reply", "answer-blocked"],
                            timeout=60)
    assert_eq(rc2, 0, "enqueue failure does not kill the worker (it keeps retrying)")
    ctr = counters_of(state)
    assert_ge(ctr.get("tts_enqueue_failed", 0), 1, "enqueue failure is counted")
    assert_eq(ctr.get("tts_queued"), 0, "no success is counted")
    assert_eq(ctr.get("events_processed"), 0, "event NOT committed while the answer is not durable")
    assert_eq(durable_offset(state), 0, "consumer offset did not move")
    assert_eq(status_of(state).get("counters", {}).get("provider_stuck"), 1,
              "stuck after the retry cap, but still not skipped")
    assert_eq("tts enqueue FAILED" in out2, True, "failure is logged loudly")
    assert_eq("answer-blocked" in out2, False, "answer text never reaches the log")

    # 故障解除（占位文件换成真目录）：同一事件重新入队，且只提交一次
    os.remove(blocker)
    tts = path_of("i33/tts")
    rc3, out3, _ = run_once(exe, work, state,
                            ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                             "--mock-reply", "answer-recovered"])
    assert_eq(rc3, 0, "retry after the fault clears exits cleanly")
    item = os.path.join(tts, "queue", "t5b-4242-cfg-g1.json")
    assert_eq(os.path.exists(item), True, "the same event is queued once the dir works")
    assert_eq(os.path.getsize(item) > 0, True, "queue item is a real file")
    ctr3 = counters_of(state)
    assert_eq(ctr3.get("tts_queued"), 1, "queued once after recovery")
    assert_eq(ctr3.get("events_processed"), 1, "committed exactly once after recovery")
    assert_eq(durable_offset(state) > 0, True, "offset advanced only after the queue write")
    assert_eq("answer-recovered" in out3, False, "answer text still never logged")
    return ("bad dir rejected; enqueue failure keeps event + offset, recovery queues it "
            "exactly once")


@case
def i34_tts_queue_off_by_default(exe):
    """不传 --tts-queue-dir 时行为与 T5-06C 完全一致（不建目录、不计数）"""
    work = path_of("i34/work")
    state = path_of("i34/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i34/work/events.jsonl", [rec(1, 4242, "t5b-4242-off-g1", "o")])
    before = sorted(os.listdir(HERE))
    rc, _, _ = run_once(exe, work, state,
                        ["--idle-exit-ms", "600", "--mock-reply", "answer-off"])
    assert_eq(rc, 0, "default run exits cleanly")
    st = json.loads(open(os.path.join(state, "ai_worker_status.json"),
                         encoding="utf-8").read())
    ctr = st.get("counters", {})
    assert_eq(ctr.get("tts_queued"), 0, "no queueing when disabled")
    assert_eq(ctr.get("tts_enqueue_failed"), 0, "no failures when disabled")
    assert_eq(st.get("tts_queue"), "", "status shows the queue as disabled")
    assert_eq(os.path.exists(os.path.join(state, "tts")), False,
              "no tts directory is created next to the state dir")
    assert_eq(sorted(os.listdir(HERE)), before, "no stray files in the tests dir")
    return "disabled by default: no dirs, no counters, T5-06C behaviour preserved"


@case
def i35_tts_enqueue_file_fsync_fault(exe):
    """P1-3：文件 fsync 失败 = 入队失败（不提交偏移、不留 tmp、不计数成功）"""
    work = path_of("i35/work")
    state = path_of("i35/state")
    tts = path_of("i35/tts")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i35/work/events.jsonl", [rec(1, 4242, "t5b-4242-fsync-g1", "f")])

    rc, out, _ = run_once(exe, work, state,
                          ["--max-runtime-ms", "1200", "--provider-retry-max", "2",
                           "--tts-queue-dir", tts, "--mock-reply", "answer-fsync"],
                          env={"T6B_FAULT_TTSQ": "fsync"}, timeout=60)
    assert_eq(rc, 0, "injected fsync fault keeps the worker alive")
    assert_eq(os.path.exists(os.path.join(tts, "queue", "t5b-4242-fsync-g1.json")), False,
              "no queue item when the file fsync failed")
    assert_eq(os.listdir(os.path.join(tts, "tmp")), [], "failed tmp file is cleaned up")
    ctr = counters_of(state)
    assert_eq(ctr.get("tts_queued"), 0, "no success counted")
    assert_ge(ctr.get("tts_enqueue_failed", 0), 1, "failure counted")
    assert_eq(ctr.get("events_processed"), 0, "event not committed")
    assert_eq(durable_offset(state), 0, "offset not advanced")
    assert_eq("fsync tmp failed" in out, True, "fault is visible in the log")
    assert_eq("tts enqueue failed: fsync tmp failed"
              in json.dumps(status_of(state), ensure_ascii=False), True,
              "status last_error explains the failure")

    # 故障解除：同一事件入队并提交
    rc2, out2, _ = run_once(exe, work, state,
                            ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                             "--mock-reply", "answer-fsync"])
    assert_eq(rc2, 0, "clean retry exits cleanly")
    assert_eq(os.path.exists(os.path.join(tts, "queue", "t5b-4242-fsync-g1.json")), True,
              "event queued after the fault clears")
    assert_eq(counters_of(state).get("tts_queued"), 1, "queued exactly once")
    assert_eq(counters_of(state).get("events_processed"), 1, "committed after the queue write")
    assert_eq(durable_offset(state) > 0, True, "offset advanced")
    return "fsync fault: no item, no tmp, offset 0; after the fault clears: 1 item, 1 commit"


@case
def i36_tts_enqueue_dirfsync_fault_idempotent(exe):
    """P1-2：新建入队的目录 fsync 失败（文件已 rename 可见）→ 幂等分支也必须重新 fsync 成功才提交"""
    work = path_of("i36/work")
    state = path_of("i36/state")
    tts = path_of("i36/tts")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i36/work/events.jsonl", [rec(1, 4242, "t5b-4242-dirsync-g1", "d")])

    # 第 1 次：新建路径 rename 成功但目录 fsync 失败 → 不提交
    rc, out, _ = run_once(exe, work, state,
                          ["--max-runtime-ms", "1500", "--provider-retry-max", "3",
                           "--tts-queue-dir", tts, "--mock-reply", "answer-dirsync"],
                          env={"T6B_FAULT_TTSQ": "dirfsync"}, timeout=60)
    assert_eq(rc, 0, "dirfsync fault keeps the worker alive")
    item = os.path.join(tts, "queue", "t5b-4242-dirsync-g1.json")
    assert_eq(os.path.exists(item), True,
              "item file exists when only the dir fsync failed (rename already happened)")
    body1 = open(item, encoding="utf-8").read()
    assert_eq(json.loads(body1).get("text"), "answer-dirsync", "answer text lives in the item")
    sha1 = hashlib.sha256(body1.encode("utf-8")).hexdigest()
    ctr = counters_of(state)
    assert_ge(ctr.get("tts_enqueue_failed", 0), 1, "the dirfsync failure is counted")
    assert_eq(ctr.get("tts_queued"), 0, "not counted as a successful enqueue")
    assert_eq(ctr.get("tts_skipped"), 0,
              "the idempotent retry also failed its directory fsync, so it is not a skip")
    assert_eq(ctr.get("events_processed"), 0, "event not committed while the dir fsync fails")
    assert_eq(durable_offset(state), 0, "offset not advanced")
    assert_eq("queue directory fsync failed after rename" in out, True,
              "the new-item failure reason is explicit")
    assert_eq("injected dirfsync failure for queue" in out, True,
              "the idempotent retry also hit the injected dir fsync failure")
    assert_eq(len([n for n in os.listdir(os.path.join(tts, "queue")) if n.endswith(".json")]), 1,
              "exactly one queue item for the event id")
    assert_eq(os.listdir(os.path.join(tts, "tmp")), [], "no tmp file left behind")

    # 第 2 次：故障仍在 → 命中幂等分支但目录 fsync 再失败 → 依然不提交
    rc2, out2, _ = run_once(exe, work, state,
                            ["--max-runtime-ms", "1200", "--provider-retry-max", "2",
                             "--tts-queue-dir", tts, "--mock-reply", "answer-dirsync"],
                            env={"T6B_FAULT_TTSQ": "dirfsync"}, timeout=60)
    assert_eq(rc2, 0, "second faulty run exits cleanly")
    ctr2 = counters_of(state)
    assert_eq(ctr2.get("tts_skipped"), 0, "idempotent hit without a durable dir fsync is not a skip")
    assert_ge(ctr2.get("tts_enqueue_failed", 0), 1, "still counted as a failure")
    assert_eq(ctr2.get("events_processed"), 0, "still not committed")
    assert_eq(durable_offset(state), 0, "offset still 0")
    assert_eq("injected dirfsync failure for queue" in out2, True,
              "idempotent path is where it failed this time")

    # 第 3 次：故障解除 → 幂等命中 + 目录 fsync 成功 → 只提交一次
    rc3, out3, _ = run_once(exe, work, state,
                            ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                             "--mock-reply", "answer-dirsync"])
    assert_eq(rc3, 0, "clean run exits cleanly")
    ctr3 = counters_of(state)
    assert_eq(ctr3.get("tts_skipped"), 1, "idempotent hit recognised after the dir fsync works")
    assert_eq(ctr3.get("tts_queued"), 0, "no second item is created")
    assert_eq(ctr3.get("events_processed"), 1, "committed exactly once")
    assert_eq(durable_offset(state) > 0, True, "offset advanced once")
    body3 = open(item, encoding="utf-8").read()
    assert_eq(hashlib.sha256(body3.encode("utf-8")).hexdigest(), sha1,
              "queue item sha256 unchanged across failure, retry and recovery")
    assert_eq(len([n for n in os.listdir(os.path.join(tts, "queue")) if n.endswith(".json")]), 1,
              "queue still holds exactly one item")
    return ("new-item dirfsync fault: item visible but not committed; idempotent retry with the "
            "fault still fails; after recovery the hit re-fsyncs and commits once (sha256 stable)")


@case
def i39_tts_idempotent_stage_dirsync(exe):
    """P1-2：inflight / done / failed 三个幂等命中也必须重新 fsync 目录，失败不得提交"""
    notes = []
    for stage in ("inflight", "done", "failed"):
        work = path_of("i39/%s/work" % stage)
        state = path_of("i39/%s/state" % stage)
        tts = path_of("i39/%s/tts" % stage)
        os.makedirs(work, exist_ok=True)
        os.makedirs(state, exist_ok=True)
        eid = "t5b-4242-%s-hit" % stage
        write_events("i39/%s/work/events.jsonl" % stage, [rec(1, 4242, eid, "s")])
        stage_dir = os.path.join(tts, stage)
        os.makedirs(stage_dir, exist_ok=True)
        if stage == "done":
            open(os.path.join(stage_dir, eid + ".ok"), "w").write("2026-01-01T00:00:00.000+0800\n")
        else:
            with open(os.path.join(stage_dir, eid + ".json"), "w", encoding="utf-8") as f:
                f.write(json.dumps({"v": 1, "event_id": eid, "attempts": 1,
                                    "reply_bytes": 1, "text": "x"}))
        # 故障下：命中该阶段但目录 fsync 失败 → 不提交
        rc, out, _ = run_once(exe, work, state,
                              ["--max-runtime-ms", "900", "--provider-retry-max", "2",
                               "--tts-queue-dir", tts, "--mock-reply", "answer-stage"],
                              env={"T6B_FAULT_TTSQ": "dirfsync"}, timeout=60)
        assert_eq(rc, 0, "%s hit with dirfsync fault keeps the worker alive" % stage)
        assert_eq("injected dirfsync failure for %s" % stage in out, True,
                  "%s idempotent path runs its own dir fsync" % stage)
        assert_eq(counters_of(state).get("tts_skipped"), 0, "%s hit is not a skip" % stage)
        assert_eq(counters_of(state).get("events_processed"), 0, "%s hit not committed" % stage)
        assert_eq(durable_offset(state), 0, "%s hit did not move the offset" % stage)
        # 故障解除：命中成功 → 安全提交一次，不产生新条目
        rc2, out2, _ = run_once(exe, work, state,
                                ["--idle-exit-ms", "600", "--tts-queue-dir", tts,
                                 "--mock-reply", "answer-stage"])
        assert_eq(rc2, 0, "%s clean run exits cleanly" % stage)
        assert_eq(counters_of(state).get("tts_skipped"), 1, "%s hit recognised" % stage)
        assert_eq(counters_of(state).get("tts_queued"), 0, "%s creates no new item" % stage)
        assert_eq(counters_of(state).get("events_processed"), 1, "%s committed once" % stage)
        assert_eq(durable_offset(state) > 0, True, "%s offset advanced" % stage)
        assert_eq(os.path.exists(os.path.join(tts, "queue", eid + ".json")), False,
                  "%s hit must not create a queue copy" % stage)
        notes.append(stage)
    return "inflight/done/failed hits re-fsync their own dir and only then commit (%s)" % ",".join(notes)


@case
def i39b_tts_multi_stage_conflict_rejected(exe):
    """P1-2：同一 event_id 同时存在于多个阶段 → 拒绝静默成功，不提交偏移"""
    work = path_of("i40/work")
    state = path_of("i40/state")
    tts = path_of("i40/tts")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    eid = "t5b-4242-multi-g1"
    write_events("i40/work/events.jsonl", [rec(1, 4242, eid, "m")])
    os.makedirs(os.path.join(tts, "queue"), exist_ok=True)
    os.makedirs(os.path.join(tts, "done"), exist_ok=True)
    with open(os.path.join(tts, "queue", eid + ".json"), "w", encoding="utf-8") as f:
        f.write(json.dumps({"v": 1, "event_id": eid, "attempts": 0,
                            "reply_bytes": 1, "text": "q"}))
    open(os.path.join(tts, "done", eid + ".ok"), "w").write("2026-01-01T00:00:00.000+0800\n")

    rc, out, _ = run_once(exe, work, state,
                          ["--max-runtime-ms", "900", "--provider-retry-max", "2",
                           "--tts-queue-dir", tts, "--mock-reply", "answer-multi"], timeout=60)
    assert_eq(rc, 0, "conflicting state keeps the worker alive (no crash)")
    ctr = counters_of(state)
    assert_ge(ctr.get("tts_enqueue_failed", 0), 1, "conflict is counted as a failure")
    assert_eq(ctr.get("tts_skipped"), 0, "conflict is never treated as an idempotent skip")
    assert_eq(ctr.get("events_processed"), 0, "conflict must not commit")
    assert_eq(durable_offset(state), 0, "conflict must not move the offset")
    assert_eq("multiple TTS queue stages" in out, True, "conflict reason is explicit")
    assert_eq(len([n for n in os.listdir(os.path.join(tts, "queue")) if n.endswith(".json")]), 1,
              "conflicting queue item is left untouched")
    assert_eq(os.path.exists(os.path.join(tts, "done", eid + ".ok")), True,
              "conflicting done marker is left untouched")
    return "queue+done for one event id is refused (no skip, no commit, nothing deleted)"


@case
def i37_tts_enqueue_create_write_rename_faults(exe):
    """P1-2/1-3：create / write / rename 三种失败都不得提交偏移"""
    notes = []
    for fault in ("create", "write", "rename"):
        work = path_of("i37/%s/work" % fault)
        state = path_of("i37/%s/state" % fault)
        tts = path_of("i37/%s/tts" % fault)
        os.makedirs(work, exist_ok=True)
        os.makedirs(state, exist_ok=True)
        eid = "t5b-4242-%s-g1" % fault
        write_events("i37/%s/work/events.jsonl" % fault, [rec(1, 4242, eid, "x")])
        rc, out, _ = run_once(exe, work, state,
                              ["--max-runtime-ms", "900", "--provider-retry-max", "2",
                               "--tts-queue-dir", tts, "--mock-reply", "answer-" + fault],
                              env={"T6B_FAULT_TTSQ": fault}, timeout=60)
        assert_eq(rc, 0, "%s fault keeps the worker alive" % fault)
        assert_eq(os.path.exists(os.path.join(tts, "queue", eid + ".json")), False,
                  "%s fault leaves no queue item" % fault)
        assert_eq(os.listdir(os.path.join(tts, "tmp")), [], "%s fault leaves no tmp" % fault)
        ctr = counters_of(state)
        assert_eq(ctr.get("tts_enqueue_failed") >= 1, True, "%s fault counted" % fault)
        assert_eq(ctr.get("events_processed"), 0, "%s fault must not commit" % fault)
        assert_eq(durable_offset(state), 0, "%s fault must not move the offset" % fault)
        expect = {"create": "open tmp failed",
                  "write": "write tmp failed",
                  "rename": "rename into queue failed"}[fault]
        assert_eq(expect in out, True, "%s fault is visible in the log" % fault)
        assert_eq("answer-" + fault in out, False, "%s fault never logs the answer" % fault)
        notes.append(fault)
    return "create/write/rename faults: no item, no commit, no offset move (%s)" % ",".join(notes)


@case
def i38_tts_fault_env_ignored_when_queue_off(exe):
    """T5-06C 无回归：没启用 --tts-queue-dir 时，故障开关完全不生效"""
    work = path_of("i38/work")
    state = path_of("i38/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i38/work/events.jsonl", [rec(1, 4242, "t5b-4242-off-g2", "o")])
    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "600", "--mock-reply", "answer-off-fault"],
                          env={"T6B_FAULT_TTSQ": "dirfsync"}, timeout=60)
    assert_eq(rc, 0, "queue disabled: fault env is ignored")
    ctr = counters_of(state)
    assert_eq(ctr.get("tts_queued"), 0, "nothing queued")
    assert_eq(ctr.get("tts_enqueue_failed"), 0, "no enqueue failure when disabled")
    assert_eq(ctr.get("events_processed"), 1, "T5-06C behaviour preserved (commits normally)")
    assert_eq(durable_offset(state) > 0, True, "offset advanced as before")
    assert_eq(os.path.exists(os.path.join(state, "tts")), False, "no tts dir next to the state")
    return "T5-06C unchanged: queue off + fault env -> normal commit, no counters, no dirs"


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--exe", default=DEFAULT_EXE)
    ap.add_argument("--keep", action="store_true", help="keep run directory")
    ap.add_argument("--only", default=None, help="run only cases whose name contains this")
    ap.add_argument("--log", default=None, help="also write a readable summary to this file")
    args = ap.parse_args()

    global RUN_DIR
    exe = os.path.abspath(args.exe)
    if not os.path.exists(exe):
        print("worker binary not found: %s" % exe)
        return 2

    stamp = time.strftime("%Y%m%d_%H%M%S")
    RUN_DIR = os.path.join(HERE, "_run", "t506b_" + stamp)
    os.makedirs(RUN_DIR, exist_ok=True)

    print("=== T5-06B worker integration test (host, Mock provider only) ===")
    print("exe : %s" % exe)
    print("run : %s" % RUN_DIR)
    print("")

    failures = 0
    for fn in CASES:
        name = fn.__name__
        if args.only and args.only not in name:
            continue
        t0 = time.time()
        try:
            note = fn(exe) or ""
            dt = time.time() - t0
            print("PASS %-28s %6.2fs  %s" % (name, dt, note))
            RESULTS.append({"case": name, "ok": True, "seconds": round(dt, 2),
                            "note": note})
        except Exception as exc:
            dt = time.time() - t0
            failures += 1
            print("FAIL %-28s %6.2fs  %s" % (name, dt, exc))
            traceback.print_exc(file=sys.stdout)
            RESULTS.append({"case": name, "ok": False, "seconds": round(dt, 2),
                            "error": str(exc)})

    print("")
    print("cases: %d, failed: %d" % (len(RESULTS), failures))
    print("RESULT: %s" % ("PASS" if failures == 0 else "FAIL"))

    with open(os.path.join(RUN_DIR, "results.json"), "w", encoding="utf-8") as f:
        json.dump({"exe": exe, "cases": RESULTS}, f, ensure_ascii=False, indent=2)
    with open(os.path.join(RUN_DIR, "host_integration_test.log"), "w", encoding="utf-8") as f:
        for r in RESULTS:
            f.write(json.dumps(r, ensure_ascii=False) + "\n")

    if args.log:
        with open(args.log, "w", encoding="utf-8") as f:
            f.write("=== T5-06B integration subset (host, Mock provider only) ===\n")
            f.write("exe    : %s\n" % exe)
            f.write("run    : %s\n" % RUN_DIR)
            f.write("filter : %s\n\n" % (args.only or "(all cases)"))
            for r in RESULTS:
                if r["ok"]:
                    f.write("PASS %-32s %6.2fs  %s\n"
                            % (r["case"], r["seconds"], r.get("note", "")))
                else:
                    f.write("FAIL %-32s %6.2fs  %s\n"
                            % (r["case"], r["seconds"], r.get("error", "")))
            f.write("\ncases: %d, failed: %d\n" % (len(RESULTS), failures))
            f.write("RESULT: %s\n" % ("PASS" if failures == 0 else "FAIL"))

    if not args.keep:
        pass   # 保留目录便于取证；由调用方决定是否清理
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
