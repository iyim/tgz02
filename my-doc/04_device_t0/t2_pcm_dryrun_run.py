#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
t2_pcm_dryrun_run.py -- T2 DRY_RUN 驱动

用法：
    python t2_pcm_dryrun_run.py <运行秒数> <日志路径> [strided|blockcopy]

做：
  1. 连接 127.0.0.1:27042 的 frida-server（需先 adb forward tcp:27042）
  2. attach 到 com.alibaba.ailabs.genie.smartapp:core
  3. 载入 t2_pcm_dryrun.js
  4. 调 rpc.exports.start(ms) 开始采集（地址校验 + attach 都在 start 内完成）
  5. 到点调 rpc.exports.stop()，再 unload/detach
  6. 全程日志以 UTF-8 直接写盘（不经控制台解码）

不做：建 socket、发 PCM、改内存/寄存器、调原函数。
"""
import io
import os
import sys
import time

import frida

TARGET = "com.alibaba.ailabs.genie.smartapp:core"
HOST = "127.0.0.1:27042"
HERE = os.path.dirname(os.path.abspath(__file__))
JS = "t2_pcm_dryrun.js"

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
    run_s = int(sys.argv[1]) if len(sys.argv) > 1 else 30
    logpath = sys.argv[2] if len(sys.argv) > 2 else os.path.join(HERE, "t2_pcm_dryrun.log")

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

    log("[i] js = %s" % JS)
    log("[i] target pid = %d" % pid)
    log("[i] run_seconds = %d" % run_s)
    log("[i] stimulus plan: 0-10s quiet / 10-20s chinese speech / 20-30s 1kHz tone")

    session = dev.attach(pid)
    log("[i] attached")

    with io.open(os.path.join(HERE, JS), "r", encoding="utf-8") as f:
        src = f.read()

    script = session.create_script(src)

    def on_message(msg, data):
        if msg.get("type") == "send":
            log("[js] %s" % msg.get("payload"))
        elif msg.get("type") == "error":
            log("[js:error] %s" % (msg.get("stack") or msg.get("description")))

    script.on("message", on_message)
    script.load()

    mode = sys.argv[3] if len(sys.argv) > 3 else "strided"
    log("[i] copy_mode = %s" % mode)
    log("[i] setMode -> %s" % script.exports_sync.set_mode(mode))
    ok = script.exports_sync.start(run_s * 1000)
    log("[i] start() -> %s" % ok)
    if not ok:
        log("[!] start refused (address check failed); aborting")
        try:
            script.unload()
        except Exception:
            pass
        try:
            session.detach()
        except Exception:
            pass
        flush(logpath)
        return 3

    t_end = time.time() + run_s + 5
    while time.time() < t_end:
        time.sleep(1)

    try:
        res = script.exports_sync.stop()
        log("[i] stop() -> %s" % res)
    except Exception as e:
        log("[!] stop failed: %s" % e)
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
