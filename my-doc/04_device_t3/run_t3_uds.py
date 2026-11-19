#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
run_t3_uds.py -- T3 驱动：把 pcm_bridge_draft.js 注入原厂 :core 进程，短时发送真实 PCM

用法：
    python run_t3_uds.py <运行秒数> <日志路径>

行为：
  1. 连接 127.0.0.1:27042 的 frida-server（需先 adb forward tcp:27042）
  2. 记录 JS 的 SHA256（日志可追溯到实际执行的脚本版本）
  3. attach 到 com.alibaba.ailabs.genie.smartapp:core，载入 pcm_bridge_draft.js
     （脚本自加载即完成：地址四项校验 -> 预分配 -> attach -> 20 ms 消费定时器）
  4. 等到点后 exports_sync.stats() 取发送端统计，再 stop() / unload() / detach()
  5. 日志以 UTF-8 直接写盘（不经控制台解码，避免非 ASCII 损坏）

不建 socket 以外的任何东西；不改原厂 APK/SO/分区；不改变原厂语音链路。
"""
import hashlib
import io
import json
import os
import sys
import time
import traceback

import frida

TARGET = "com.alibaba.ailabs.genie.smartapp:core"
HOST = "127.0.0.1:27042"
HERE = os.path.dirname(os.path.abspath(__file__))
JS = os.path.join(HERE, "..", "03_uds_test", "pcm_bridge_draft.js")

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
    sys.stdout.write(str(s) + "\n")


def flush(path):
    if sys.stdout.buf:
        _lines.append(sys.stdout.buf)
    with io.open(path, "w", encoding="utf-8", newline="\n") as f:
        f.write("\n".join(_lines) + "\n")
    sys.stdout.buf = ""


def sha256_file(path):
    h = hashlib.sha256()
    with open(path, "rb") as f:
        for chunk in iter(lambda: f.read(65536), b""):
            h.update(chunk)
    return h.hexdigest()


def main():
    run_s = int(sys.argv[1]) if len(sys.argv) > 1 else 10
    logpath = sys.argv[2] if len(sys.argv) > 2 else os.path.join(HERE, "t3_uds_run.log")

    real_stdout = sys.stdout
    sys.stdout = Tee(real_stdout)

    js_sha = sha256_file(JS)
    log("[i] ===== T3 UDS bridge driver =====")
    log("[i] js_file = %s" % os.path.basename(JS))
    log("[i] js_sha256 = %s" % js_sha)
    log("[i] requested_run_seconds = %d" % run_s)

    session = None
    script = None
    rc = 0
    t_drv = time.time()
    stats_mid = None
    try:
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
        log("[i] target_pid = %d" % pid)

        session = dev.attach(pid)
        log("[i] attached")

        with io.open(JS, "r", encoding="utf-8") as f:
            src = f.read()
        script = session.create_script(src)

        def on_message(msg, data):
            typ = msg.get("type")
            if typ == "send":
                log("[js] %s" % json.dumps(msg.get("payload"), ensure_ascii=True))
            elif typ == "log":
                log("[js:log] %s" % msg.get("payload"))
            elif typ == "error":
                log("[js:error] %s" % (msg.get("stack") or msg.get("description")))

        script.on("message", on_message)
        t_load = time.time()
        script.load()
        log("[i] script loaded at +%.2fs" % (time.time() - t_drv))

        st0 = script.exports_sync.stats()
        log("[i] stats@load = %s" % json.dumps(st0, ensure_ascii=True, sort_keys=True))
        if not st0.get("enabled"):
            log("[!] precheck failed: why=%s checks=%s" % (st0.get("why"), st0.get("checks")))
            rc = 3
        else:
            half = max(1, run_s // 2)
            time.sleep(half)
            stats_mid = script.exports_sync.stats()
            log("[i] stats@%ds = %s" % (half, json.dumps(stats_mid, ensure_ascii=True, sort_keys=True)))
            time.sleep(max(0, run_s - half))
            log("[i] hook window elapsed: %.2fs" % (time.time() - t_load))
    except Exception:
        log("[!] exception during run:")
        log(traceback.format_exc())
        rc = 4
    finally:
        if script is not None:
            try:
                stc = script.exports_sync.stats()
                log("[i] stats@stop = %s" % json.dumps(stc, ensure_ascii=True, sort_keys=True))
            except Exception as e:
                log("[!] stats failed: %s" % e)
            try:
                res = script.exports_sync.stop()
                log("[i] stop() -> %s" % json.dumps(res, ensure_ascii=True, sort_keys=True))
            except Exception as e:
                log("[!] stop failed: %s" % e)
            try:
                sta = script.exports_sync.stats()
                log("[i] stats@after-stop = %s" % json.dumps(sta, ensure_ascii=True, sort_keys=True))
            except Exception as e:
                log("[!] stats after stop failed: %s" % e)
            try:
                script.unload()
                log("[i] script unloaded")
            except Exception as e:
                log("[!] unload failed: %s" % e)
        if session is not None:
            try:
                session.detach()
                log("[i] session detached")
            except Exception as e:
                log("[!] detach failed: %s" % e)

        log("[i] driver_elapsed = %.2fs" % (time.time() - t_drv))
        log("[i] js_sha256_at_exit = %s" % sha256_file(JS))
        log("[i] rc = %d" % rc)
        flush(logpath)
        real_stdout.write("[i] log written: %s\n" % logpath)
    return rc


if __name__ == "__main__":
    sys.exit(main())
