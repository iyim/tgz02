#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
t505b_runner.py -- 加载 T5-05B 发送脚本、记录所有消息、结束时取最终统计并优雅停止

用法：
    python t505b_runner.py <sender.js> <pid|--name 进程名> <duration_s> <out.jsonl>

做的事：
  1. 连 frida-server（remote 127.0.0.1:27042，与 T5-04 同一路径）
  2. 加载发送脚本，把所有 send() 消息（含 t=stat / sent / ack / rejected）写进 JSONL
  3. 到时调用 rpc.exports.stats() 与 rpc.exports.stop()，把结果写进同一份 JSONL
  4. detach

不播放语音、不改设备文件；编排播放由外部脚本负责。
"""
import datetime
import io
import json
import sys
import time

import frida


def stamp():
    return datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]


def main():
    if len(sys.argv) < 5:
        print(__doc__)
        return 2

    script_path = sys.argv[1]
    target = sys.argv[2]
    duration = float(sys.argv[3])
    out_path = sys.argv[4]

    dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')

    if target.startswith('--name='):
        pname = target.split('=', 1)[1]
        pid = None
        for p in dev.enumerate_processes():
            if p.name == pname:
                pid = p.pid
                break
        if pid is None:
            print('[runner] process not found:', pname)
            return 1
    else:
        pid = int(target)

    session = dev.attach(pid)
    src = io.open(script_path, encoding='utf-8').read()
    script = session.create_script(src)

    out = io.open(out_path, 'w', encoding='utf-8', newline='\n')
    t0 = time.time()

    def emit(rec):
        out.write(json.dumps(rec, ensure_ascii=False) + '\n')
        out.flush()

    def on_message(msg, data):
        rec = {'wall': stamp(), 'rel': round(time.time() - t0, 3)}
        if msg.get('type') == 'send':
            rec.update(msg['payload'])
        elif msg.get('type') == 'error':
            rec['t'] = 'script_error'
            rec['description'] = msg.get('description')
            rec['stack'] = msg.get('stack')
        else:
            rec['t'] = 'other'
            rec['raw'] = str(msg)
        emit(rec)
        t = rec.get('t')
        if t == 'stat':
            print('[stat] ' + str(rec.get('line')))
        elif t in ('ack', 'rejected', 'sent', 'conn', 'retry', 'drop', 'ack_mismatch', 'fatal'):
            print('[%s] %s' % (t, json.dumps({k: v for k, v in rec.items()
                                              if k not in ('wall', 'rel', 'stats')},
                                             ensure_ascii=False)))

    script.on('message', on_message)
    script.load()
    print('[runner] loaded on pid=%d, running %.1fs' % (pid, duration))

    rc = 0
    try:
        deadline = t0 + duration
        while time.time() < deadline:
            time.sleep(0.2)
    except KeyboardInterrupt:
        print('[runner] interrupted')
    finally:
        try:
            s = script.exports_sync.stats()
            emit({'t': 'final_stats', 'wall': stamp(), 'rel': round(time.time() - t0, 3),
                  'stats': s})
            print('[runner] final stats: ' + json.dumps(s, ensure_ascii=False))
        except Exception as ex:
            print('[runner] stats() failed: %r' % (ex,))
            rc = 1
        try:
            t = script.exports_sync.stop()
            emit({'t': 'teardown', 'wall': stamp(), 'rel': round(time.time() - t0, 3),
                  'teardown': t})
            print('[runner] teardown: pending=%s queue=%s' %
                  (t.get('pending_count'), t.get('queue_depth')))
        except Exception as ex:
            print('[runner] stop() failed: %r' % (ex,))
            rc = 1
        try:
            session.detach()
        except Exception:
            pass
        emit({'t': 'end', 'wall': stamp()})
        out.close()
        print('[runner] detached')
    return rc


if __name__ == '__main__':
    sys.exit(main())
