#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
t1_audio_signal_run.py -- T1 音频信号验证的驱动

用法：
    python t1_audio_signal_run.py <观察秒数> <日志路径>

做：
  1. 连接 127.0.0.1:27042 的 frida-server（需先 adb forward tcp:27042）
  2. attach 到 com.alibaba.ailabs.genie.smartapp:core
  3. 载入 t1_audio_signal_probe.js，收集全部输出（含 console.log）
  4. 打印阶段时间表，方便操作者/播放器对齐
  5. 到点 unload + detach，日志以 UTF-8 直接写盘

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
JS = "t1_audio_signal_probe.js"   # 可被第 4 个参数覆盖

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
    run_s = int(sys.argv[1]) if len(sys.argv) > 1 else 55
    logpath = sys.argv[2] if len(sys.argv) > 2 else os.path.join(HERE, "t1_audio_signal.log")
    js_name = sys.argv[3] if len(sys.argv) > 3 else JS

    real_stdout = sys.stdout
    sys.stdout = Tee(real_stdout)

    dev = frida.get_device_manager().add_remote_device(HOST)
    pid = None
    for p in dev.enumerate_processes():
        if p.name == TARGET:
            pid = p.pid
            break
    if pid is None:
        log("[!] target process not found: %s" % TARGET)
        flush(logpath)
        return 2

    log("[i] js = %s" % js_name)
    log("[i] target pid = %d" % pid)
    log("[i] schedule (relative to hook install):")
    log("[i]   0-10s  QUIET1  keep silent")
    log("[i]  10-20s  SPEAK   normal speech near the mic")
    log("[i]  20-30s  TONE    continuous steady test tone / music")
    log("[i]  30-40s  QUIET2  silent again")
    log("[i]  40-45s  WRAP    finalize")

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
    log("[i] script loaded; watching %ds ..." % run_s)

    t_end = time.time() + run_s
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
