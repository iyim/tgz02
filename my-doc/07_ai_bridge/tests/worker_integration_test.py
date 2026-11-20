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


def worker_cmd(exe, work, state, extra):
    cmd = [exe, "--work-dir", work, "--state-dir", state,
           "--poll-ms", "25", "--status-every-ms", "150"]
    cmd.extend(extra)
    return cmd


def run_once(exe, work, state, extra, timeout=60):
    t0 = time.time()
    proc = subprocess.run(worker_cmd(exe, work, state, extra),
                          stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                          timeout=timeout)
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
    assert_in("stale lock removed", out, "stale lock taken over")
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
def i11_provider_failure(exe):
    """Mock Provider 失败 → 只计数，消费者继续"""
    work = path_of("i11/work")
    state = path_of("i11/state")
    os.makedirs(work, exist_ok=True)
    os.makedirs(state, exist_ok=True)
    write_events("i11/work/events.jsonl",
                 [rec(i + 1, 4242, "t5b-4242-b%03d-g1" % i, "p%d" % i) for i in range(5)])
    rc, out, _ = run_once(exe, work, state,
                          ["--idle-exit-ms", "300", "--mock-fail-from", "3"])
    assert_eq(rc, 0, "worker exit code stays 0")
    c = counters_of(state)
    assert_eq(c.get("events_processed"), 5, "all events consumed despite provider errors")
    assert_eq(c.get("provider_ok"), 2, "first 2 ok")
    assert_eq(c.get("provider_err"), 3, "last 3 failed")
    assert_in("mock failure", status_of(state).get("last_error", ""), "provider failure in status")
    return "provider errors 3/5, consumer unaffected"

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

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--exe", default=DEFAULT_EXE)
    ap.add_argument("--keep", action="store_true", help="keep run directory")
    ap.add_argument("--only", default=None, help="run only cases whose name contains this")
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

    if not args.keep:
        pass   # 保留目录便于取证；由调用方决定是否清理
    return 0 if failures == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
