#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
t7_06r2_dead_letter_json_test.py -- 用标准解析器验证 dead_letter.jsonl 的每一行

为什么单独写一个 Python 解析器测试：
    C 单元测试只能断言"字节长得像期望"，不能证明"这是合法 JSON"。
    验收要求是"每行必须能被标准 JSON 解析器独立解析"，所以这里用 json.loads
    （严格模式，不做容错）逐行解析，并检查字段名、类型和取值是否原样回来。

覆盖：
    1) C 单元测试产出的样例行（引号/反斜杠/换行/制表/控制字符/非 ASCII/非法 UTF-8/注入）
    2) 端到端：真实 ai_worker 运行产生的 dead_letter.jsonl（可选，--e2e 传入）
    3) 反向证据：把 T7-06-R1 那种"引号换成单引号"的行喂给同一个解析器，必须报错

用法：
    py -3 t7_06r2_dead_letter_json_test.py --samples out/t7_06r2_dead_letter_samples.jsonl \
                                          [--e2e <state_dir>/dead_letter.jsonl]
"""
import argparse
import json
import sys

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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--samples", default="out/t7_06r2_dead_letter_samples.jsonl")
    ap.add_argument("--e2e", default="")
    args = ap.parse_args()

    print("=== T7-06-R2 dead letter JSON parser test ===")
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
        check(isinstance(obj.get("ts"), int), "samples/%s: ts is integer" % name)
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

    print("checks=%d fail=%d" % (checks, len(failures)))
    if failures:
        print("RESULT: FAIL")
        return 1
    print("RESULT: PASS")
    return 0


if __name__ == "__main__":
    sys.exit(main())
