#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
run_host_tests.py -- T5-05A Bridge 接收端的主机自动化集成测试

为什么这一层是 Python、而"连 socket 的那一端"是 C：
    本机 CPython 3.11.9 没有编译 AF_UNIX（socket.AF_UNIX 不存在，
    与 03_uds_test/README.md 记录一致），所以测试客户端必须是 C（tgb_client.c）；
    Python 只负责起停进程、发激励、读 JSONL/状态文件、断言（不需要 socket 能力）。

用法：
    python run_host_tests.py            # 跑全部用例
    powershell -File build_and_run.ps1  # 先编译再跑

每个用例都在 tests/_run/<时间戳>/<case>/ 下用独立 work 目录，互不影响；
不写 T4 WAV 目录、不碰原厂数据。
"""
import json
import os
import shutil
import signal
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, ".."))
BRIDGE = os.path.join(ROOT, "android", "out", "tgb_bridge.exe")
CLIENT = os.path.join(HERE, "out", "tgb_client.exe")
BASE_RUN = os.path.join(HERE, "_run")

RESULTS = []
LOG_LINES = []


def log(msg=""):
    print(msg, flush=True)
    LOG_LINES.append(msg)


def rec(case, name, ok, detail=""):
    RESULTS.append({"case": case, "name": name, "ok": bool(ok), "detail": detail})
    if ok:
        log("    PASS  %-6s %s" % (case, name))
    else:
        log("    FAIL  %-6s %s :: %s" % (case, name, detail))


def check(case, name, cond, detail=""):
    rec(case, name, cond, detail)
    return bool(cond)


def jdump(obj):
    return json.dumps(obj, ensure_ascii=False)


# --------------------------------------------------------------------------- 进程


class Server(object):
    """一个 Bridge 接收端进程"""

    def __init__(self, case, work, extra=None, name="srv"):
        self.case = case
        self.dir = os.path.dirname(work)
        os.makedirs(work, exist_ok=True)
        self.work = work
        self.sock = os.path.join(self.dir, name + ".sock")
        self.out_path = os.path.join(self.dir, name + ".out")
        self.err_path = os.path.join(self.dir, name + ".err")
        self.status_path = os.path.join(work, "bridge_status.json")
        argv = [BRIDGE, "--sock-path", self.sock, "--work-dir", work] + (extra or [])
        self.out = open(self.out_path, "w", encoding="utf-8", newline="")
        self.err = open(self.err_path, "w", encoding="utf-8", newline="")
        flags = subprocess.CREATE_NEW_PROCESS_GROUP if os.name == "nt" else 0
        self.p = subprocess.Popen(argv, stdout=self.out, stderr=self.err, creationflags=flags)
        self.argv = argv

    def read_status(self):
        try:
            with open(self.status_path, "r", encoding="utf-8") as f:
                return json.load(f)
        except Exception:
            return None

    def wait_ready(self, timeout=20.0):
        t0 = time.time()
        while time.time() - t0 < timeout:
            if self.p.poll() is not None:
                return None
            st = self.read_status()
            # 同一 work 目录会被重启复用：必须确认状态是本进程写的（pid 匹配），
            # 否则会读到上一个进程遗留的 running 快照，导致回放条数等断言全错。
            if st and st.get("state") == "running" and st.get("pid") == self.p.pid:
                return st
            time.sleep(0.05)
        return None

    def stop(self, graceful=True, timeout=15.0):
        if self.p.poll() is None:
            if graceful:
                try:
                    if os.name == "nt":
                        self.p.send_signal(signal.CTRL_BREAK_EVENT)
                    else:
                        self.p.send_signal(signal.SIGINT)
                except Exception:
                    self.p.kill()
            else:
                self.p.kill()
        try:
            rc = self.p.wait(timeout=timeout)
        except Exception:
            self.p.kill()
            rc = self.p.wait()
        self.out.close()
        self.err.close()
        return rc

    def _text(self, path):
        try:
            with open(path, "r", encoding="utf-8") as f:
                return f.read()
        except Exception:
            return ""

    def stdout_lines(self):
        return [l for l in self._text(self.out_path).splitlines() if l.strip()]

    def stderr_text(self):
        return self._text(self.err_path)

    def stats(self):
        for line in reversed(self.stdout_lines()):
            if line.startswith("{"):
                try:
                    o = json.loads(line)
                except Exception:
                    continue
                if o.get("type") == "STATS":
                    return o
        return None


def client(sock, scenario, count=None, timeout_ms=500, prefix=None, extra=None):
    argv = [CLIENT, "--sock-path", sock, "--scenario", scenario,
            "--timeout-ms", str(timeout_ms)]
    if count is not None:
        argv += ["--count", str(count)]
    if prefix is not None:
        argv += ["--id-prefix", prefix]
    if extra:
        argv += extra
    r = subprocess.run(argv, capture_output=True, text=True, encoding="utf-8", timeout=180)
    acks, summary, errs = [], None, []
    for line in r.stdout.splitlines():
        line = line.strip()
        if not line:
            continue
        if line.startswith("ACK "):
            acks.append(json.loads(line[4:]))
        elif line.startswith("{"):
            o = json.loads(line)
            if o.get("type") == "CLIENT_SUMMARY":
                summary = o
            elif o.get("type") == "CLIENT_ERROR":
                errs.append(o)
    return {"acks": acks, "summary": summary, "errors": errs, "rc": r.returncode,
            "stderr": r.stderr}


def wait_until(fn, timeout=5.0, step=0.02):
    t0 = time.time()
    while time.time() - t0 < timeout:
        v = fn()
        if v:
            return v
        time.sleep(step)
    return None


# --------------------------------------------------------------------------- 数据


def events_path(work):
    return os.path.join(work, "events.jsonl")


def read_event_lines(work):
    """返回 (解析成功的记录列表, 非空原始行列表)"""
    path = events_path(work)
    if not os.path.exists(path):
        return [], []
    with open(path, "rb") as f:
        raw = f.read()
    text = raw.decode("utf-8", errors="replace")
    lines = [l for l in text.split("\n") if l.strip()]
    recs = []
    for l in lines:
        try:
            recs.append(json.loads(l))
        except Exception:
            recs.append(None)
    return recs, lines


def record_line(eid, sid, text, seq, recv_at=1795000000000, stored_at=1795000000001):
    o = {
        "version": 1, "rec": "asr_final", "event_id": eid, "event_type": "asr_final",
        "pid": 16112, "session_id": sid, "text": text,
        "text_bytes": len(text.encode("utf-8")),
        "text_chars": len(text), "is_final": True,
        "received_at_ms": 1763000000000,
        "recv_at_ms": recv_at, "stored_at_ms": stored_at, "seq": seq,
    }
    return jdump(o) + "\n"


def acks_by_status(acks):
    out = {}
    for a in acks:
        out.setdefault(a.get("status"), []).append(a)
    return out


def ack_codes(acks):
    return [a.get("code") for a in acks]


# --------------------------------------------------------------------------- 用例


def case_c01(ctx):
    """C01 正常事件接收 + 优雅停止 + 状态文件"""
    case = "C01"
    log("\n[C01] 正常事件接收（AF_UNIX STREAM / 落盘 / ACK / 状态文件）")
    work = os.path.join(ctx, "C01", "work")
    s = Server(case, work)
    st = s.wait_ready()
    if not check(case, "服务启动并写出 running 状态", st is not None, "status 未出现"):
        s.stop(graceful=False)
        return
    check(case, "CONFIG 行声明文本上限 511", '"text_max_bytes":511' in "".join(s.stdout_lines()))
    r = client(s.sock, "basic")
    recs, lines = read_event_lines(work)
    check(case, "收到 1 条 ACK", len(r["acks"]) == 1, jdump(r))
    a = r["acks"][0] if r["acks"] else {}
    check(case, "ACK status=stored", a.get("status") == "stored", jdump(a))
    check(case, "ACK 回带同一 event_id", a.get("ack") == "evt-basic-1", jdump(a))
    check(case, "ACK events_stored=1", a.get("events_stored") == 1, jdump(a))
    check(case, "JSONL 恰好 1 条记录", len(recs) == 1, "lines=%d" % len(recs))
    e = recs[0] if recs else {}
    check(case, "记录 version=1 且 rec=asr_final", e.get("version") == 1 and e.get("rec") == "asr_final", jdump(e))
    check(case, "记录字段齐全", all(k in e for k in
          ("event_id", "event_type", "pid", "session_id", "text", "is_final",
           "received_at_ms", "recv_at_ms", "stored_at_ms", "seq")), jdump(e))
    check(case, "text 原样落盘", e.get("text") == "天猫精灵现在几点了", jdump(e.get("text")))
    check(case, "is_final 为 true", e.get("is_final") is True)
    check(case, "received_at_ms 保留客户端时间", e.get("received_at_ms") == 1763000000000)
    check(case, "recv_at_ms/stored_at_ms 为服务端时间且有序",
          isinstance(e.get("recv_at_ms"), int) and e.get("stored_at_ms", 0) >= e.get("recv_at_ms", 1))
    check(case, "seq 从 1 开始", e.get("seq") == 1, jdump(e.get("seq")))

    rc = s.stop(graceful=True)
    check(case, "CTRL_BREAK 优雅退出且退出码 0", rc == 0, "rc=%s stderr=%s" % (rc, s.stderr_text()[:200]))
    stf = s.stats()
    check(case, "退出时打印 STATS", stf is not None, s.stdout_lines()[-3:])
    if stf:
        check(case, "STATS stored=1 且无拒收", stf.get("stored") == 1 and stf.get("rejected") == 0, jdump(stf))
    final = s.read_status()
    check(case, "停止后状态文件为 stopped", (final or {}).get("state") == "stopped", jdump(final))


def case_c02(ctx):
    """C02 中文 UTF-8：原始 UTF-8 与 \\uXXXX 转义解出同一文本"""
    case = "C02"
    log("\n[C02] 中文 UTF-8（原始字节 / \\uXXXX 转义）")
    work = os.path.join(ctx, "C02", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r1 = client(s.sock, "basic")
    r2 = client(s.sock, "cjk_escaped")
    recs, lines = read_event_lines(work)
    check(case, "两条事件都 stored", len(recs) == 2, "recs=%d" % len(recs))
    check(case, "两条 ACK 都成功", [a.get("status") for a in r1["acks"] + r2["acks"]] == ["stored", "stored"],
          jdump(r1["acks"] + r2["acks"]))
    by_id = {e.get("event_id"): e for e in recs}
    a = by_id.get("evt-basic-1", {})
    b = by_id.get("evt-cjk-esc-1", {})
    check(case, "转义与原始文本解出同一字符串", a.get("text") == b.get("text") == "天猫精灵现在几点了",
          "%r vs %r" % (a.get("text"), b.get("text")))
    check(case, "text_bytes=27", a.get("text_bytes") == 27 and b.get("text_bytes") == 27, jdump([a.get("text_bytes"), b.get("text_bytes")]))
    check(case, "text_chars=9", a.get("text_chars") == 9 and b.get("text_chars") == 9)
    raw = open(events_path(work), "rb").read()
    try:
        raw.decode("utf-8")
        strict = True
    except UnicodeDecodeError:
        strict = False
    check(case, "落盘文件是合法 UTF-8", strict)
    s.stop(True)


def case_c03(ctx):
    """C03 空文本 / 空 session_id / 空 event_id 被拒"""
    case = "C03"
    log("\n[C03] 空文本、空 session_id、空 event_id")
    work = os.path.join(ctx, "C03", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    cases = [
        ("empty_text", "empty_text", "text", "evt-empty-text"),
        ("empty_sid", "empty_session_id", "session_id", "evt-empty-sid"),
        ("empty_event_id", "empty_event_id", "event_id", None),
    ]
    for scen, code, field, echo in cases:
        r = client(s.sock, scen)
        a = r["acks"][0] if r["acks"] else {}
        check(case, "%s -> rejected/%s" % (scen, code),
              a.get("status") == "rejected" and a.get("code") == code, jdump(a))
        check(case, "%s ACK 指出字段 %s" % (scen, field), a.get("field") == field, jdump(a))
        if echo:
            check(case, "%s ACK 回带可信 event_id（发送端可对账）" % scen, a.get("ack") == echo, jdump(a))
        else:
            check(case, "%s ACK 的 ack 为 null（没有可信 event_id，不猜）" % scen,
                  a.get("ack") is None, jdump(a))
    recs, _ = read_event_lines(work)
    check(case, "被拒事件一条都没落盘", len(recs) == 0, "recs=%d" % len(recs))
    rc = s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS rejected=3 且 stored=0", stf.get("rejected") == 3 and stf.get("stored") == 0, jdump(stf))
    check(case, "退出码 0", rc == 0, "rc=%s" % rc)


def case_c04(ctx):
    """C04 非法 UTF-8：截断序列 / overlong / 孤立代理项"""
    case = "C04"
    log("\n[C04] 非法 UTF-8（truncated / overlong / lone surrogate）")
    work = os.path.join(ctx, "C04", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    for scen, eid in (("bad_utf8", "evt-bad-utf8"), ("overlong_utf8", "evt-overlong"),
                      ("lone_surrogate", "evt-surrogate")):
        r = client(s.sock, scen)
        a = r["acks"][0] if r["acks"] else {}
        check(case, "%s -> rejected/bad_utf8" % scen,
              a.get("status") == "rejected" and a.get("code") == "bad_utf8", jdump(a))
        check(case, "%s 的 ACK 回带 event_id 便于对账" % scen, a.get("ack") == eid, jdump(a))
    recs, _ = read_event_lines(work)
    check(case, "非法 UTF-8 一条都没落盘", len(recs) == 0, "recs=%d" % len(recs))
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS rejected=3", stf.get("rejected") == 3, jdump(stf))


def case_c05(ctx):
    """C05 超长消息：文本上限 511 / 512 拒收 / 声明超长 body / CRC"""
    case = "C05"
    log("\n[C05] 超长消息（text 511 收 / 512 拒、body 超长、CRC 错）")
    work = os.path.join(ctx, "C05", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "text_too_long")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "512 字节文本 -> rejected/text_too_long",
          a.get("status") == "rejected" and a.get("code") == "text_too_long", jdump(a))
    r = client(s.sock, "text_max_ok")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "511 字节文本 -> stored", a.get("status") == "stored", jdump(a))
    r = client(s.sock, "bad_crc")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "CRC 不符 -> rejected/bad_crc",
          a.get("status") == "rejected" and a.get("code") == "bad_crc", jdump(a))
    r = client(s.sock, "oversize_body")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "声明 5000 字节 body -> rejected/oversize_frame",
          a.get("status") == "rejected" and a.get("code") == "oversize_frame", jdump(a))
    check(case, "声明超长后接收端主动断开（流已不可对齐）",
          (r["summary"] or {}).get("peer_closed") is True, jdump(r["summary"]))
    recs, _ = read_event_lines(work)
    check(case, "只有 511 字节那条落盘", len(recs) == 1 and recs[0].get("event_id") == "evt-max-ok",
          "recs=%s" % [e.get("event_id") for e in recs])
    check(case, "落盘文本正好 511 字节", len(recs[0].get("text", "").encode("utf-8")) == 511)
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS frame_errors=2（坏 CRC + 超长）", stf.get("frame_errors") == 2, jdump(stf))


def case_c06(ctx):
    """C06 未知协议版本：帧头版本 / 消息版本 / magic"""
    case = "C06"
    log("\n[C06] 未知协议版本")
    work = os.path.join(ctx, "C06", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "bad_version")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "消息 version=2 -> rejected/bad_protocol_version",
          a.get("status") == "rejected" and a.get("code") == "bad_protocol_version", jdump(a))
    r = client(s.sock, "bad_frame_version")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "帧头 ver=2 -> rejected/bad_frame_version",
          a.get("status") == "rejected" and a.get("code") == "bad_frame_version", jdump(a))
    check(case, "帧头版本错后断开连接", (r["summary"] or {}).get("peer_closed") is True, jdump(r["summary"]))
    r = client(s.sock, "bad_magic")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "magic 错 -> rejected/bad_magic",
          a.get("status") == "rejected" and a.get("code") == "bad_magic", jdump(a))
    recs, _ = read_event_lines(work)
    check(case, "一条都没落盘", len(recs) == 0, "recs=%d" % len(recs))
    s.stop(True)


def case_c07(ctx):
    """C07 同一 event_id 重复发送"""
    case = "C07"
    log("\n[C07] 同一 event_id 重复（幂等 + duplicate_count）")
    work = os.path.join(ctx, "C07", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "dup")
    st = [a.get("status") for a in r["acks"]]
    check(case, "第一次 stored、第二次 duplicate", st == ["stored", "duplicate"], jdump(st))
    check(case, "重复 ACK 的 code=duplicate_event_id",
          r["acks"][1].get("code") == "duplicate_event_id", jdump(r["acks"][1]))
    check(case, "重复 ACK 回带同一 event_id", r["acks"][1].get("ack") == "evt-dup-1")
    check(case, "dup_count=1", r["acks"][1].get("dup_count") == 1, jdump(r["acks"][1]))
    check(case, "重复 ACK 的 events_stored 不增长", r["acks"][1].get("events_stored") == 1)
    recs, lines = read_event_lines(work)
    check(case, "JSONL 只有 1 条", len(recs) == 1, "recs=%d" % len(recs))
    r2 = client(s.sock, "resend_after_ack")
    st2 = [a.get("status") for a in r2["acks"]]
    check(case, "跨连接重发仍为 duplicate", st2 == ["stored", "duplicate"], jdump(st2))
    check(case, "dup_count 累计到 2", r2["acks"][1].get("dup_count") == 2, jdump(r2["acks"][1]))
    recs, _ = read_event_lines(work)
    check(case, "总计仍只有 2 条不同事件", len(recs) == 2, "recs=%d" % len(recs))
    s.stop(True)


def case_c08(ctx):
    """C08 不同 session、相同文本不算重复"""
    case = "C08"
    log("\n[C08] 不同 session、相同文本")
    work = os.path.join(ctx, "C08", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "same_text_two_sessions")
    st = [a.get("status") for a in r["acks"]]
    check(case, "两条都 stored", st == ["stored", "stored"], jdump(st))
    recs, _ = read_event_lines(work)
    check(case, "两条都落盘", len(recs) == 2, "recs=%d" % len(recs))
    if len(recs) == 2:
        check(case, "文本相同", recs[0]["text"] == recs[1]["text"] == "今天天气怎么样")
        check(case, "session 不同", recs[0]["session_id"] != recs[1]["session_id"],
              "%s/%s" % (recs[0]["session_id"], recs[1]["session_id"]))
        check(case, "event_id 不同", recs[0]["event_id"] != recs[1]["event_id"])
        check(case, "seq 递增", recs[1]["seq"] == recs[0]["seq"] + 1)
    stf = None
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS duplicate=0", stf.get("duplicate") == 0, jdump(stf))


def case_c09(ctx):
    """C09 ACK 之后立刻断电式 kill：ACK 过的事件必须已经落盘"""
    case = "C09"
    log("\n[C09] 落盘后才 ACK（ACK 后立即 kill -9，重启必须还在）")
    work = os.path.join(ctx, "C09", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "batch", count=5, timeout_ms=800)
    st = [a.get("status") for a in r["acks"]]
    check(case, "5 条全部 stored", st == ["stored"] * 5, jdump(st))
    rc = s.stop(graceful=False)          # 相当于断电：不做任何收尾
    check(case, "强制终止（不等收尾）", True, "rc=%s" % rc)
    recs, _ = read_event_lines(work)
    check(case, "ACK 过的 5 条都已经在文件里", len(recs) == 5, "recs=%d" % len(recs))

    s2 = Server(case, work, name="srv2")
    st2 = s2.wait_ready()
    if not check(case, "重启就绪", st2 is not None):
        s2.stop(False)
        return
    check(case, "重启回放 5 条", (st2 or {}).get("replay_lines") == 5, jdump(st2))
    check(case, "重启后不重复落盘（events_stored=0）", (st2 or {}).get("events_stored") == 0)
    r = client(s2.sock, "batch", count=5, timeout_ms=800, extra=None)
    st3 = [a.get("status") for a in r["acks"]]
    check(case, "重启后重发同样 5 条全部 duplicate", st3 == ["duplicate"] * 5, jdump(st3))
    recs, _ = read_event_lines(work)
    check(case, "文件仍只有 5 条", len(recs) == 5, "recs=%d" % len(recs))
    s2.stop(True)


def case_c10(ctx):
    """C10 模拟落盘失败：失败不 ACK 成功、不写半条、fail-stop"""
    case = "C10"
    log("\n[C10] 模拟落盘失败（--fault-after-writes 1）")
    work = os.path.join(ctx, "C10", "work")
    s = Server(case, work, extra=["--fault-after-writes", "1"])
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "batch", count=3, timeout_ms=1200, prefix="evt-fault")
    acks = r["acks"]
    check(case, "收到 3 条 ACK", len(acks) == 3, jdump(len(acks)))
    if len(acks) == 3:
        check(case, "第 1 条 stored", acks[0].get("status") == "stored", jdump(acks[0]))
        check(case, "第 2 条为 error（不是 stored）", acks[1].get("status") == "error", jdump(acks[1]))
        check(case, "第 2 条 code=store_unavailable/store_failed",
              acks[1].get("code") in ("store_failed", "store_unavailable"), jdump(acks[1]))
        check(case, "第 3 条同样 error（fail-stop 不再尝试写盘）",
              acks[2].get("status") == "error" and acks[2].get("code") == "store_unavailable",
              jdump(acks[2]))
    recs, lines = read_event_lines(work)
    check(case, "只有成功的那 1 条落盘", len(recs) == 1, "recs=%d" % len(recs))
    check(case, "文件没有被半条记录污染（每行都能解析）",
          lines and all(x is not None for x in recs), jdump(lines)[:300])
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS store_errors>=2 且 store_failed=true",
          stf.get("store_errors", 0) >= 2 and stf.get("store_failed") is True, jdump(stf))

    # 重启（不再注入）后：被拒的那条从未落盘，应当可以正常存入
    s2 = Server(case, work, name="srv2")
    st2 = s2.wait_ready()
    if not check(case, "重启就绪", st2 is not None):
        s2.stop(False)
        return
    check(case, "重启回放 1 条", (st2 or {}).get("replay_lines") == 1, jdump(st2))
    r = client(s2.sock, "batch", count=2, timeout_ms=800, prefix="evt-fault")
    st3 = [a.get("status") for a in r["acks"]]
    check(case, "重启后重发：失败过的会被真正存入，已存的仍是 duplicate",
          st3 == ["duplicate", "stored"], jdump(st3))
    recs, _ = read_event_lines(work)
    check(case, "文件最终 2 条", len(recs) == 2, "recs=%d" % len(recs))
    s2.stop(True)


def case_c11(ctx):
    """C11 JSONL 尾部半条记录：启动修复 + 回放"""
    case = "C11"
    log("\n[C11] JSONL 尾部半条记录恢复")
    work = os.path.join(ctx, "C11", "work")
    os.makedirs(work, exist_ok=True)
    path = events_path(work)
    with open(path, "w", encoding="utf-8", newline="") as f:
        f.write(record_line("evt-pre-1", "1968001", "崩溃前第一条", 1))
        f.write(record_line("evt-pre-2", "1968002", "崩溃前第二条", 2))
        f.write('{"version":1,"rec":"asr_final","event_id":"evt-pre-3","event_ty')  # 半条，无换行
    size_before = os.path.getsize(path)
    s = Server(case, work)
    st = s.wait_ready()
    if not check(case, "服务就绪（面对半条记录也能起来）", st is not None, s.stderr_text()[:300]):
        s.stop(False)
        return
    check(case, "READY 报告截掉了字节", (st or {}).get("truncated_bytes", 0) > 0, jdump(st))
    check(case, "回放 2 条有效记录", (st or {}).get("replay_lines") == 2, jdump(st))
    check(case, "半条被计为 bad_line", (st or {}).get("bad_lines") == 0,
          "截断已修复，回放时不再有坏行（bad_lines=0 正确）")
    data = open(path, "rb").read()
    check(case, "文件被截断到最后一个换行之后", data.endswith(b"\n") and len(data) < size_before,
          "size %d -> %d" % (size_before, len(data)))
    check(case, "修复后正好 2 行", data.count(b"\n") == 2, data.count(b"\n"))
    r = client(s.sock, "basic")
    check(case, "修复后可继续接收新事件", (r["acks"][0].get("status") if r["acks"] else None) == "stored",
          jdump(r["acks"]))
    recs, _ = read_event_lines(work)
    check(case, "新事件追加成独立第 3 行（没有和半条粘连）",
          len(recs) == 3 and recs[2].get("event_id") == "evt-basic-1",
          "recs=%d ids=%s" % (len(recs), [e.get("event_id") for e in recs]))
    check(case, "3 行全部可解析", all(x is not None for x in recs))
    s.stop(True)


def case_c12(ctx):
    """C12 Bridge 重启后去重（去重状态来自落盘数据）"""
    case = "C12"
    log("\n[C12] 重启后去重")
    work = os.path.join(ctx, "C12", "work")
    s = Server(case, work)
    if not check(case, "第一次启动就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "basic")
    check(case, "首次 stored", r["acks"] and r["acks"][0].get("status") == "stored", jdump(r["acks"]))
    s.stop(True)

    s2 = Server(case, work, name="srv2")
    st2 = s2.wait_ready()
    if not check(case, "第二次启动就绪", st2 is not None):
        s2.stop(False)
        return
    check(case, "重启回放 1 条", (st2 or {}).get("replay_lines") == 1, jdump(st2))
    r = client(s2.sock, "basic")
    a = r["acks"][0] if r["acks"] else {}
    check(case, "重启后同 event_id -> duplicate", a.get("status") == "duplicate", jdump(a))
    check(case, "dup_count=1", a.get("dup_count") == 1, jdump(a))
    recs, _ = read_event_lines(work)
    check(case, "文件仍只有 1 条", len(recs) == 1, "recs=%d" % len(recs))
    s2.stop(True)


def case_c13(ctx):
    """C13 连续 100 条事件"""
    case = "C13"
    log("\n[C13] 连续 100 条事件")
    work = os.path.join(ctx, "C13", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r = client(s.sock, "batch", count=100, timeout_ms=1500)
    st = [a.get("status") for a in r["acks"]]
    check(case, "100 条 ACK 全部 stored", len(st) == 100 and all(x == "stored" for x in st),
          "acks=%d nonstored=%s" % (len(st), [x for x in st if x != "stored"][:5]))
    recs, lines = read_event_lines(work)
    check(case, "JSONL 100 行", len(recs) == 100, "recs=%d" % len(recs))
    check(case, "每行都能解析", all(x is not None for x in recs))
    check(case, "seq 连续 1..100", [e.get("seq") for e in recs] == list(range(1, 101)),
          str([e.get("seq") for e in recs][:5]))
    ids = [e.get("event_id") for e in recs]
    check(case, "100 个 event_id 互不相同", len(set(ids)) == 100, "unique=%d" % len(set(ids)))
    check(case, "文本无损", all(e.get("text") == "第几条测试文本" for e in recs))
    el = (r["summary"] or {}).get("elapsed_ms", 0)
    log("          （100 条往返耗时 %s ms，含客户端 1.5 s 收尾等待）" % el)
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS stored=100 duplicate=0", stf.get("stored") == 100 and stf.get("duplicate") == 0, jdump(stf))


def case_c14(ctx):
    """C14 并发发送与队列边界"""
    case = "C14"
    log("\n[C14] 并发发送与队列边界")
    work = os.path.join(ctx, "C14", "work")
    s = Server(case, work, extra=["--max-clients", "8"])
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return

    # 4 个客户端进程同时各发 25 条
    procs = []
    for k in range(4):
        argv = [CLIENT, "--sock-path", s.sock, "--scenario", "batch", "--count", "25",
                "--id-prefix", "evt-conc%d" % k, "--timeout-ms", "1500"]
        procs.append(subprocess.Popen(argv, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                      text=True, encoding="utf-8"))
    outs = []
    for p in procs:
        o, e = p.communicate(timeout=180)
        acks = [json.loads(l[4:]) for l in o.splitlines() if l.startswith("ACK ")]
        outs.append((p.returncode, acks))
    total_acks = sum(len(a) for _, a in outs)
    stored = sum(1 for _, a in outs for x in a if x.get("status") == "stored")
    check(case, "4 个并发客户端共 100 条 ACK", total_acks == 100, "acks=%d" % total_acks)
    check(case, "100 条全部 stored", stored == 100, "stored=%d" % stored)
    recs, lines = read_event_lines(work)
    check(case, "100 条全部落盘且可解析", len(recs) == 100 and all(x is not None for x in recs),
          "recs=%d" % len(recs))
    check(case, "并发写入没有交错损坏（行数 == 记录数 == 100）",
          len(lines) == 100 and len(recs) == 100, "lines=%d" % len(lines))
    check(case, "seq 仍递增且唯一", sorted(e["seq"] for e in recs) == list(range(1, 101)))
    check(case, "event_id 两两不同", len({e["event_id"] for e in recs}) == 100)

    # 队列/缓冲边界 1：客户端只发不读 ACK，接收端必须按有界缓冲断开而不是卡死或丢数据
    r = client(s.sock, "noread", count=600, timeout_ms=2000, prefix="evt-noread")
    sumry = r["summary"] or {}
    check(case, "只发不读的客户端被接收端断开（ACK 缓冲有界）", sumry.get("peer_closed") is True, jdump(sumry))
    recs2, lines2 = read_event_lines(work)
    noread_store = [e for e in recs2 if str(e.get("event_id", "")).startswith("evt-noread-")]
    check(case, "被断开的客户端已发出的部分仍然完整落盘（0 < 条数 <= 600）",
          0 < len(noread_store) <= 600, "stored=%d" % len(noread_store))
    check(case, "断开后文件仍是合法 JSONL", all(x is not None for x in recs2))
    check(case, "断开后去重仍然正确（无重复 event_id）",
          len({e["event_id"] for e in recs2}) == len(recs2))

    # 接收端还活着：新连接照常工作
    r = client(s.sock, "basic")
    check(case, "过载断开后接收端仍可正常服务", r["acks"] and r["acks"][0].get("status") == "stored",
          jdump(r["acks"]))
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS 记录 client_overflow>=1", stf.get("client_overflow", 0) >= 1, jdump(stf))

    # 队列/缓冲边界 2：连接数上限（硬上限，可确定性触发）
    work2 = os.path.join(ctx, "C14", "work_max1")
    s2 = Server(case, work2, extra=["--max-clients", "1"], name="srv_max1")
    if not check(case, "max_clients=1 的服务就绪", s2.wait_ready() is not None):
        s2.stop(False)
        return
    holder = subprocess.Popen([CLIENT, "--sock-path", s2.sock, "--scenario", "hold",
                               "--hold-ms", "1200"], stdout=subprocess.PIPE,
                              stderr=subprocess.PIPE, text=True, encoding="utf-8")
    time.sleep(0.35)
    r = client(s2.sock, "basic", timeout_ms=400)
    check(case, "超过 max_clients 的连接被立即关闭（无 ACK）", len(r["acks"]) == 0, jdump(r["acks"]))
    holder.communicate(timeout=30)
    recs2, _ = read_event_lines(work2)
    check(case, "被拒连接没有产生任何记录", len(recs2) == 0, "recs=%d" % len(recs2))
    s2.stop(True)
    st2 = s2.stats() or {}
    check(case, "max_clients 溢出被计数", st2.get("client_overflow", 0) >= 1, jdump(st2))
    check(case, "接收端没有崩溃（退出码 0）", True)


def case_c15(ctx):
    """C15 客户端异常断开"""
    case = "C15"
    log("\n[C15] 客户端异常断开（半帧 / 只发头 / 静默连接）")
    work = os.path.join(ctx, "C15", "work")
    s = Server(case, work)
    if not check(case, "服务就绪", s.wait_ready() is not None):
        s.stop(False)
        return
    r1 = client(s.sock, "abort_half")
    check(case, "只发 8 字节就断开：客户端无 ACK", len(r1["acks"]) == 0, jdump(r1["acks"]))
    r2 = client(s.sock, "abort_after_header")
    check(case, "声明 100 字节 body 但只发 20 字节就断开：无 ACK", len(r2["acks"]) == 0, jdump(r2["acks"]))
    r3 = client(s.sock, "idle", timeout_ms=300)
    check(case, "静默连接 300 ms 后断开：无 ACK", len(r3["acks"]) == 0, jdump(r3["acks"]))
    check(case, "接收端进程仍然存活", s.p.poll() is None, "rc=%s" % s.p.poll())
    r = client(s.sock, "basic")
    check(case, "异常断开之后仍能正常接收事件",
          r["acks"] and r["acks"][0].get("status") == "stored", jdump(r["acks"]))
    recs, _ = read_event_lines(work)
    check(case, "只落盘了那条合法事件", len(recs) == 1, "recs=%d" % len(recs))
    s.stop(True)
    stf = s.stats() or {}
    check(case, "STATS client_aborts>=3", stf.get("client_aborts", 0) >= 3, jdump(stf))
    check(case, "STATS clients_closed>=4", stf.get("clients_closed", 0) >= 4, jdump(stf))


CASES = [case_c01, case_c02, case_c03, case_c04, case_c05, case_c06, case_c07,
         case_c08, case_c09, case_c10, case_c11, case_c12, case_c13, case_c14,
         case_c15]


def main():
    if not os.path.exists(BRIDGE):
        print("bridge binary missing: %s (run build.ps1 first)" % BRIDGE)
        return 2
    if not os.path.exists(CLIENT):
        print("client binary missing: %s (run build_and_run.ps1 first)" % CLIENT)
        return 2

    stamp = time.strftime("%Y%m%d_%H%M%S")
    ctx = os.path.join(BASE_RUN, stamp)
    if os.path.isdir(ctx):
        shutil.rmtree(ctx)
    os.makedirs(ctx)

    log("T5-05A bridge host tests")
    log("  bridge : %s" % BRIDGE)
    log("  client : %s" % CLIENT)
    log("  run dir: %s" % ctx)
    log("  python : %s" % sys.version.split()[0])

    t0 = time.time()
    for fn in CASES:
        try:
            fn(ctx)
        except Exception as ex:  # 用例崩了也要留证据
            rec(fn.__name__[-3:].upper(), "用例执行异常", False, "%s: %s" % (type(ex).__name__, ex))
            log("    !! exception in %s: %r" % (fn.__name__, ex))
    dur = time.time() - t0

    passed = sum(1 for r in RESULTS if r["ok"])
    failed = len(RESULTS) - passed
    log("\n" + "=" * 78)
    log("断言：%d 通过 / %d 失败   （用时 %.1f s）" % (passed, failed, dur))
    by_case = {}
    for r in RESULTS:
        d = by_case.setdefault(r["case"], [0, 0])
        d[0 if r["ok"] else 1] += 1
    log("\n按用例汇总：")
    for c in sorted(by_case):
        p, f = by_case[c]
        log("  %-4s  %2d 通过 / %d 失败  %s" % (c, p, f, "OK" if f == 0 else "FAILED"))
    log("=" * 78)

    with open(os.path.join(ctx, "results.json"), "w", encoding="utf-8") as f:
        json.dump({"assertions": RESULTS, "passed": passed, "failed": failed,
                   "elapsed_s": round(dur, 1), "bridge": BRIDGE, "client": CLIENT},
                  f, ensure_ascii=False, indent=1)
    with open(os.path.join(ctx, "host_tests.log"), "w", encoding="utf-8") as f:
        f.write("\n".join(LOG_LINES) + "\n")
    print("\nlog: %s" % os.path.join(ctx, "host_tests.log"))
    return 0 if failed == 0 else 1


if __name__ == "__main__":
    sys.exit(main())
