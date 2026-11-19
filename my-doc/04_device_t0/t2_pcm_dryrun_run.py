#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
t2_pcm_dryrun_run.py -- T2 DRY_RUN 驱动（正式模式 blockcopy）

用法：
    python t2_pcm_dryrun_run.py <运行秒数> <日志路径> [blockcopy|countonly]

行为：
  1. 连接 127.0.0.1:27042 的 frida-server（需先 adb forward tcp:27042）
  2. 先把 JS 文件的 SHA256 写进日志，保证日志可追溯到实际执行的脚本版本
  3. attach 到 com.alibaba.ailabs.genie.smartapp:core，载入 t2_pcm_dryrun.js
  4. setMode(blockcopy) -> start(ms) 开始采集（地址校验与 attach 都在 start 内完成）
  5. 到时 stop() -> unload -> session.detach()；异常路径同样走清理
  6. 日志以 UTF-8 直接写盘（不经控制台解码）

不做：建 socket、发 PCM、改内存/寄存器、调原函数。
"""
import hashlib
import io
import os
import sys
import time
import traceback

import frida

TARGET = "com.alibaba.ailabs.genie.smartapp:core"
HOST = "127.0.0.1:27042"
HERE = os.path.dirname(os.path.abspath(__file__))
JS = "t2_pcm_dryrun.js"
MODES = ("blockcopy", "countonly")

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
    run_s = int(sys.argv[1]) if len(sys.argv) > 1 else 30
    logpath = sys.argv[2] if len(sys.argv) > 2 else os.path.join(HERE, "t2_pcm_dryrun.log")
    mode = sys.argv[3] if len(sys.argv) > 3 else "blockcopy"

    real_stdout = sys.stdout
    sys.stdout = Tee(real_stdout)

    js_path = os.path.join(HERE, JS)
    js_sha = sha256_file(js_path)

    log("[i] ===== T2 DRY_RUN driver =====")
    log("[i] js_file = %s" % JS)
    log("[i] js_sha256 = %s" % js_sha)
    log("[i] requested_mode = %s" % mode)
    log("[i] requested_run_seconds = %d" % run_s)

    if mode not in MODES:
        log("[!] unsupported mode '%s' (allowed: %s); refusing to run" % (mode, ", ".join(MODES)))
        flush(logpath)
        return 2

    session = None
    script = None
    rc = 0
    t_drv_start = time.time()
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

        with io.open(js_path, "r", encoding="utf-8") as f:
            src = f.read()
        script = session.create_script(src)

        def on_message(msg, data):
            if msg.get("type") == "send":
                log("[js] %s" % msg.get("payload"))
            elif msg.get("type") == "error":
                log("[js:error] %s" % (msg.get("stack") or msg.get("description")))

        script.on("message", on_message)
        script.load()

        if not script.exports_sync.set_mode(mode):
            log("[!] js rejected mode '%s'" % mode)
            rc = 2
        else:
            log("[i] setMode -> ok")
            t_hook0 = time.time()
            ok = script.exports_sync.start(run_s * 1000)
            log("[i] start() -> %s (hook timer started at +%.2fs from driver start)"
                % (ok, t_hook0 - t_drv_start))
            if not ok:
                log("[!] start refused (address check failed)")
                rc = 3
            else:
                # 等待 JS 侧自己的 stopTimer 到点（hook 自动停止），再多等 3 s 让目录输出落盘
                deadline = t_hook0 + run_s + 3
                while time.time() < deadline:
                    time.sleep(0.5)
                log("[i] hook window elapsed: %.2fs (js auto-stop at %ds)"
                    % (time.time() - t_hook0, run_s))
    except Exception:
        log("[!] exception during run:")
        log(traceback.format_exc())
        rc = 4
    finally:
        # 无论成功失败都要清理：stop -> unload -> detach
        if script is not None:
            try:
                res = script.exports_sync.stop()
                log("[i] stop() -> %s" % res)
            except Exception as e:
                log("[!] stop failed: %s" % e)
        if script is not None:
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

        log("[i] driver_exit_after = %.2fs (from driver start)" % (time.time() - t_drv_start))
        log("[i] js_sha256_at_exit = %s" % sha256_file(js_path))
        log("[i] rc = %d" % rc)
        flush(logpath)
        real_stdout.write("[i] log written: %s\n" % logpath)
    return rc


if __name__ == "__main__":
    sys.exit(main())
