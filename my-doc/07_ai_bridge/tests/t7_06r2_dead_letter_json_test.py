#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
t7_06r2_dead_letter_json_test.py -- 用标准解析器验证 dead_letter.jsonl 的每一行

为什么单独写一个 Python 解析器测试：
    C 单元测试只能断言"字节长得像期望"，不能证明"这是合法 JSON"。
    验收要求是"每行必须能被标准 JSON 解析器独立解析"，所以这里用 json.loads
    （严格模式，不做容错）逐行解析，并检查字段名、类型和取值是否原样回来。

覆盖：
    1) C 单元测试产出的样例行（引号/反斜杠/换行/制表/控制字符/非 ASCII/非法 UTF-8/
       结构注入/墙钟时间戳）
    2) 并发追加：多个进程同时往同一个文件追加，行与行不许互相插入（T7-08 A3）
    3) 端到端：真实 ai_worker 运行产生的 dead_letter.jsonl（--e2e 传入）
    4) 反向证据：把 T7-06-R1 那种"引号换成单引号"的行喂给同一个解析器，必须报错

用法：
    py -3 t7_06r2_dead_letter_json_test.py --samples out/t7_06r2_dead_letter_samples.jsonl \
                                          [--e2e <state_dir>/dead_letter.jsonl] \
                                          [--unit <unit_test.exe>] [--concurrency 6x100]
"""
import argparse
import json
import os
import subprocess
import sys
import tempfile
import time

KEYS = {"ts", "event_id", "seq", "attempts", "error_class", "error_bytes", "invalid_utf8"}

# C 单元测试写入样例行的顺序（索引 -> (说明, 期望的 event_id 解码后取值, invalid_utf8)）
SAMPLE_EXPECT = [
    ("plain", "t5b-4242-f000-g1", 0),
    ("quote", 'a"b', 0),
    ("backslash", "a\\b", 0),
    ("control", "a\nb\tc\rd\be\ff", 0),
    ("utf8", "\u4f60\u597d", 0),
    ("badutf8", "???????A", 1),
    ("inject", '"},"seq":999,{"x":"', 0),
    ("wallclock", "wall-clock", 0),
]

failures = []
checks = 0


def check(cond, what, detail=""):
    global checks
    checks += 1
    if cond:
        print("PASS %s" % what)
    else:
        print("FAIL %s%s" % (what, (" -- " + detail) if detail else ""))
        failures.append(what)


def parse_lines(path):
    """按行解析：每个非空行都必须独立构成一个 JSON 对象。"""
    with open(path, "rb") as f:
        raw = f.read()
    check(raw.endswith(b"\n"), "%s: file ends with a newline" % path)
    check(b"\r" not in raw, "%s: no raw CR byte" % path)
    check(all(len(x) <= 2048 for x in raw.split(b"\n")), "%s: every line <= 2048 bytes" % path)
    out = []
    for idx, line in enumerate(raw.split(b"\n")):
        if line == b"":
            continue
        try:
            obj = json.loads(line)                # 严格解析，行内必须是合法 UTF-8 JSON
        except Exception as exc:                  # noqa: BLE001 - 要的就是"任何异常都算失败"
            check(False, "%s: line %d parses" % (path, idx + 1), repr(exc))
            continue
        out.append((idx + 1, obj, line))
    return out


def check_epoch_ms(obj, label):
    """ts 必须是墙钟（Epoch 毫秒），不是单调计数器。"""
    ts = obj.get("ts")
    now_ms = time.time() * 1000.0
    check(isinstance(ts, int), "%s: ts is integer" % label, repr(ts))
    if not isinstance(ts, int):
        return
    check(ts > 1_600_000_000_000, "%s: ts looks like Epoch ms (> 2020-09)" % label, repr(ts))
    check(abs(now_ms - ts) < 3_600_000, "%s: ts within 1h of now (wall clock)" % label,
          "ts=%d now=%.0f" % (ts, now_ms))


def concurrency(unit_exe, spec, workdir):
    """多个进程同时追加：每行都必须完整、可解析、且 event_id 唯一。"""
    if not unit_exe or not os.path.exists(unit_exe):
        check(False, "concurrency: unit test binary available", str(unit_exe))
        return
    try:
        procs_n, per = spec.lower().split("x")
        procs_n, per = int(procs_n), int(per)
    except ValueError:
        procs_n, per = 6, 100

    path = os.path.join(workdir, "concurrent.jsonl")
    if os.path.exists(path):
        os.unlink(path)

    procs = []
    for i in range(procs_n):
        procs.append(subprocess.Popen(
            [unit_exe, "appendloop", path, str(per), "w%d" % i],
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT))
    rcs = [p.wait() for p in procs]
    check(all(rc == 0 for rc in rcs), "concurrency: all writers exited 0", str(rcs))

    with open(path, "rb") as f:
        raw = f.read()
    lines = [ln for ln in raw.split(b"\n") if ln]
    check(len(lines) == procs_n * per, "concurrency: %d lines (no loss, no merge)" % (procs_n * per),
          "got %d" % len(lines))

    ids = set()
    bad = 0
    unbalanced = 0
    for ln in lines:
        try:
            obj = json.loads(ln)
        except Exception:
            bad += 1
            continue
        if ln.count(b"{") != 1 or ln.count(b"}") != 1:
            unbalanced += 1
        ids.add(obj.get("event_id"))
    check(bad == 0, "concurrency: every line parses", "%d bad" % bad)
    check(unbalanced == 0, "concurrency: no line contains two records glued together",
          "%d unbalanced" % unbalanced)
    check(len(ids) == procs_n * per, "concurrency: event_ids unique (%d)" % (procs_n * per),
          "got %d" % len(ids))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", default="out/t7_06r2_dead_letter_samples.jsonl")
    ap.add_argument("--e2e", default="")
    ap.add_argument("--unit", default="")
    ap.add_argument("--concurrency", default="")
    args = ap.parse_args()

    print("=== dead letter JSON parser test (T7-06-R2 + T7-08) ===")
    print("samples: %s" % args.samples)

    rows = parse_lines(args.samples)
    check(len(rows) == len(SAMPLE_EXPECT),
          "samples: line count == %d" % len(SAMPLE_EXPECT), "got %d" % len(rows))

    for i, (name, want_event_id, want_invalid) in enumerate(SAMPLE_EXPECT):
        if i >= len(rows):
            break
        lineno, obj, _line = rows[i]
        check(isinstance(obj, dict), "samples/%s: is a JSON object" % name)
        check(set(obj.keys()) == KEYS, "samples/%s: exact key set" % name,
              repr(sorted(obj.keys())))
        check(isinstance(obj.get("seq"), int), "samples/%s: seq is integer" % name)
        check(isinstance(obj.get("attempts"), int), "samples/%s: attempts is integer" % name)
        check(isinstance(obj.get("error_bytes"), int), "samples/%s: error_bytes is integer" % name)
        check(obj.get("event_id") == want_event_id,
              "samples/%s: event_id round-trips" % name,
              repr(obj.get("event_id")))
        check(obj.get("invalid_utf8") == want_invalid,
              "samples/%s: invalid_utf8 == %d" % (name, want_invalid),
              repr(obj.get("invalid_utf8")))
        check(isinstance(obj.get("error_class"), str),
              "samples/%s: error_class is string" % name)
        if name == "wallclock":
            check_epoch_ms(obj, "samples/%s" % name)
        else:
            check(isinstance(obj.get("ts"), int), "samples/%s: ts is integer" % name)

    # 反向证据：T7-06-R1 的写法（把所有 '"' 换成 '\''）必须被同一个解析器拒绝
    legacy_src = ('{"ts":1700000000000,"event_id":"t5b-4242-f000-g1","seq":7,'
                  '"attempts":4,"error_class":"http_503","error_bytes":42}')
    legacy = "".join(("'" if (ch == '"' and i > 0) else ch)
                     for i, ch in enumerate(legacy_src)).encode("utf-8")
    legacy_rejected = False
    try:
        json.loads(legacy)
    except Exception:
        legacy_rejected = True
    check(legacy_rejected, "regression: legacy quote-mangled line is NOT valid JSON")
    print("       legacy line: %s" % legacy.decode("utf-8"))

    # T7-08 A3：并发追加
    if args.concurrency:
        with tempfile.TemporaryDirectory() as td:
            concurrency(args.unit, args.concurrency, td)

    # 端到端：真实 worker 写出来的文件
    if args.e2e:
        print("e2e    : %s" % args.e2e)
        erows = parse_lines(args.e2e)
        check(len(erows) >= 1, "e2e: at least one dead letter written")
        for lineno, obj, _line in erows:
            check(set(obj.keys()) == KEYS, "e2e/%d: exact key set" % lineno,
                  repr(sorted(obj.keys())))
            eid = obj.get("event_id", "")
            check(isinstance(eid, str) and eid != "", "e2e/%d: event_id present" % lineno)
            check(all(c.isalnum() or c in "._:-" for c in eid),
                  "e2e/%d: event_id charset" % lineno, eid)
            check(obj.get("invalid_utf8") == 0, "e2e/%d: invalid_utf8 == 0" % lineno)
            check(isinstance(obj.get("attempts"), int) and obj["attempts"] >= 1,
                  "e2e/%d: attempts >= 1" % lineno, repr(obj.get("attempts")))
            check_epoch_ms(obj, "e2e/%d" % lineno)

    print("checks=%d fail=%d" % (checks, len(failures)))
    if failures:
        print("RESULT: FAIL")
        return 1
    print("RESULT: PASS")
    return 0


if __name__ == "__main__":
    sys.exit(main())
