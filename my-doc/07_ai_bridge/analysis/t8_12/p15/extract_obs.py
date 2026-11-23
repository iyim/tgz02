#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
T8-12.15 抽取器：把 libtg_hook.c 里的观测模块与 tg_nlp_cb **逐字**抽出来，
给主机单测编译用。不做任何改写，只做：
  1) 按标记 / 函数签名定位并整段复制（保留原缩进与注释）；
  2) 结构和回调实现里出现 I/O / 分配 / 阻塞锁的检查（这些函数里一条都不许有）；
  3) 记录源文件与两段抽取物的 SHA256，供报告引用。

用法： python extract_obs.py <libtg_hook.c> <out_dir>
"""
import hashlib
import os
import re
import sys

BAN = [
    r"\bprintf\s*\(", r"\bfprintf\s*\(", r"\bfopen\s*\(", r"\bopen\s*\(",
    r"\bwrite\s*\(", r"\bread\s*\(", r"\bsend\s*\(", r"\brecv\s*\(",
    r"\bmalloc\s*\(", r"\bcalloc\s*\(", r"\bfree\s*\(",
    r"pthread_mutex_lock", r"pthread_mutex_trylock", r"sem_wait",
    r"__android_log", r"\bsyslog\s*\(", r"\bexit\s*\(",
]


def find_fn(src, sig):
    """按签名定位函数体，返回 (start, end) 半开区间；找不到抛异常。"""
    i = src.find(sig)
    if i < 0:
        raise SystemExit("signature not found: " + sig)
    j = src.find("{", i)
    if j < 0:
        raise SystemExit("no body for: " + sig)
    depth = 0
    k = j
    while k < len(src):
        c = src[k]
        if c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                return i, k + 1
        k += 1
    raise SystemExit("unbalanced braces for: " + sig)


def main():
    if len(sys.argv) != 3:
        raise SystemExit(__doc__)
    src_path, out_dir = sys.argv[1], sys.argv[2]
    src = open(src_path, "r", encoding="utf-8").read()

    b = src.find("/* @@TG-OBS-MODULE-BEGIN@@ */")
    e = src.find("/* @@TG-OBS-MODULE-END@@ */")
    if b < 0 or e < 0 or e < b:
        raise SystemExit("obs module markers not found")
    obs = src[b:e + len("/* @@TG-OBS-MODULE-END@@ */")]

    cs, ce = find_fn(src, "static int tg_nlp_cb(void *self, int sid, int type, void *res)")
    cb = src[cs:ce]

    # INC/GET 必须在生产文件里保持这两行（抽取物用的是同一份定义）
    inc_line = "#define INC(v) __atomic_fetch_add(&(v), 1UL, __ATOMIC_RELAXED)"
    get_line = "#define GET(v) __atomic_load_n(&(v), __ATOMIC_RELAXED)"
    if inc_line not in src or get_line not in src:
        raise SystemExit("INC/GET macro definition changed in production file")

    # 回调路径里禁止出现的调用
    rs, re_ = find_fn(src, "static void obs_record(int sid, int type, int mode, int decision, int res_is_null)")
    rec = src[rs:re_]
    for name, body in (("obs_record", rec), ("tg_nlp_cb", cb)):
        for pat in BAN:
            m = re.search(pat, body)
            if m:
                raise SystemExit("forbidden call in %s: %s" % (name, m.group(0)))

    os.makedirs(out_dir, exist_ok=True)
    out = os.path.join(out_dir, "gen_obs.inc")
    header = (
        "/* 本文件由 extract_obs.py 从 libtg_hook.c 逐字抽取，请勿手工修改。\n"
        " * 源文件 : %s\n"
        " * obs模块: sha256 %s\n"
        " * tg_nlp_cb: sha256 %s\n"
        " */\n"
    ) % (
        os.path.basename(src_path),
        hashlib.sha256(obs.encode("utf-8")).hexdigest(),
        hashlib.sha256(cb.encode("utf-8")).hexdigest(),
    )
    open(out, "w", encoding="utf-8", newline="\n").write(header + obs + "\n\n" + cb + "\n")

    print("source   : %s" % src_path)
    print("source sha256      : %s" % hashlib.sha256(src.encode("utf-8")).hexdigest())
    print("obs module sha256  : %s (%d bytes)" % (hashlib.sha256(obs.encode("utf-8")).hexdigest(), len(obs)))
    print("tg_nlp_cb sha256   : %s (%d bytes)" % (hashlib.sha256(cb.encode("utf-8")).hexdigest(), len(cb)))
    print("forbidden-call scan: obs_record=clean tg_nlp_cb=clean")
    print("written            : %s" % out)


if __name__ == "__main__":
    main()
