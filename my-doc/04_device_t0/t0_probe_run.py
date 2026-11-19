#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
t0_probe_run.py -- 驱动 t0_probe*.js（只读探测）+ 以 UTF-8 落盘日志

用法：
    python t0_probe_run.py <js文件名> <观察秒数> <日志路径>

要点：
  * 日志由 Python 自己以 UTF-8 写入文件，不经 PowerShell 控制台解码，
    避免中文在 Windows 控制台编码转换时被替换成 U+FFFD。
  * Frida 的 console.log 由 python 绑定直接写到 stdout（不走 on_message），
    所以这里用 Tee 接管 sys.stdout，才能把脚本输出完整收进日志。

做：
  1. 连接 127.0.0.1:27042 的 frida-server（已由 adb forward 转发到设备）
  2. attach 到 com.alibaba.ailabs.genie.smartapp:core
  3. 载入指定 JS，收集全部输出
  4. 到点后 unload + detach

不做：改内存、调原函数、建 socket、发 PCM。
"""
import io
import os
import sys
import time

import frida

TARGET = "com.alibaba.ailabs.genie.smartapp:core"
HOST = "127.0.0.1:27042"
HERE = os.path.dirname(os.path.abspath(__file__))

_lines = []


class Tee(object):
    def __init__(self, stream):
        self.stream = stream
        self.buf = ""

    def write(self, s):
        try:
            self.stream.write(s)
            self.stream.flush()
        except Exception:
            pass
        self.buf += s
        while "\n" in self.buf:
            line, self.buf = self.buf.split("\n", 1)
            _lines.append(line)

    def flush(self):
        try:
            self.stream.flush()
        except Exception:
            pass


def log(s):
    sys.stdout.write(s + "\n")


def flush(path):
    if sys.stdout.buf:
        _lines.append(sys.stdout.buf)
    with io.open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(_lines) + "\n")
    sys.stdout.buf = ""


def main():
    js_name = sys.argv[1] if len(sys.argv) > 1 else "t0_probe.js"
    run_s = int(sys.argv[2]) if len(sys.argv) > 2 else 40
    logpath = sys.argv[3] if len(sys.argv) > 3 else os.path.join(HERE, "t0_run.log")

    real_stdout = sys.stdout
    sys.stdout = Tee(real_stdout)

    dev = frida.get_device_manager().add_remote_device(HOST)
    pid = None
    for p in dev.enumerate_processes():
        if p.name == TARGET:
            pid = p.pid
            break
    if pid is None:
        log("[!] 目标进程不在: %s" % TARGET)
        flush(logpath)
        return 2
    log("[i] js = %s" % js_name)
    log("[i] target pid = %d" % pid)

    session = dev.attach(pid)
    log("[i] attached")

    with io.open(os.path.join(HERE, js_name), "r", encoding="utf-8") as f:
        src = f.read()

    script = session.create_script(src)

    def on_message(msg, data):
        if msg.get("type") == "send":
            log("[js] %s" % msg.get("payload"))
        elif msg.get("type") == "error":
            log("[js:error] %s" % (msg.get("stack") or msg.get("description")))

    script.on("message", on_message)
    script.load()
    log("[i] script loaded, watching %ds ..." % run_s)

    t_end = time.time() + run_s + 8
    while time.time() < t_end:
        time.sleep(1)

    try:
        script.unload()
    except Exception as e:
        log("[!] unload: %s" % e)
    try:
        session.detach()
    except Exception as e:
        log("[!] detach: %s" % e)
    log("[i] driver exit")
    flush(logpath)
    real_stdout.write("[i] log written: %s\n" % logpath)
    return 0


if __name__ == "__main__":
    sys.exit(main())
