#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
t505b_p1_runner.py -- T5-05B P1 验证用运行器（不属于仓库代码）

在同一个 frida session 里同时加载：
  1) 发送端生产脚本 t505b_asr_bridge_sender.js
  2) 旁路观测脚本 t505b_p1_sendwatch.js（Hook libc send，记录 flags）

用法：
  python t505b_p1_runner.py <sender.js> <watch.js> <pid> <duration_s> <out.jsonl>
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
    if len(sys.argv) < 6:
        print(__doc__)
        return 2

    sender_path, watch_path = sys.argv[1], sys.argv[2]
    pid = int(sys.argv[3])
    duration = float(sys.argv[4])
    out_path = sys.argv[5]

    dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
    session = dev.attach(pid)
    out = io.open(out_path, 'w', encoding='utf-8', newline='\n')

    def emit(rec):
        out.write(json.dumps(rec, ensure_ascii=False) + '\n')
        out.flush()

    def make_handler(tag):
        def on_message(msg, data):
            if msg.get('type') == 'error':
                line = '[error][%s] %s' % (tag, msg.get('description'))
                print(line)
                emit({'t': 'error', 'tag': tag, 'wall': stamp(),
                      'description': msg.get('description')})
                return
            p = msg.get('payload') or {}
            rec = dict(p)
            rec['tag'] = tag
            rec['wall'] = stamp()
            emit(rec)
            t = rec.get('t')
            if t == 'sendwatch':
                print('[sendwatch] fd=%s len=%s flags=%s' %
                      (rec.get('fd'), rec.get('len'), rec.get('flags_hex')))
            elif t == 'sendret':
                print('[sendret] fd=%s len=%s flags=%s ret=%s errno=%s' %
                      (rec.get('fd'), rec.get('len'), rec.get('flags_hex'),
                       rec.get('ret'), rec.get('errno')))
            elif t == 'stat':
                print('[stat] ' + str(rec.get('line')))
            elif t in ('ack', 'rejected', 'sent', 'conn', 'retry', 'drop',
                       'ack_mismatch', 'fatal', 'close'):
                print('[%s] %s' % (t, json.dumps({k: v for k, v in rec.items()
                                                  if k not in ('wall', 'rel', 'stats')},
                                                 ensure_ascii=False)))
        return on_message

    t0 = time.time()

    watch = session.create_script(io.open(watch_path, encoding='utf-8').read())
    watch.on('message', make_handler('watch'))
    watch.load()

    sender = session.create_script(io.open(sender_path, encoding='utf-8').read())
    sender.on('message', make_handler('sender'))
    sender.load()
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
            s = sender.exports_sync.stats()
            emit({'t': 'final_stats', 'tag': 'sender', 'wall': stamp(),
                  'rel': round(time.time() - t0, 3), 'stats': s})
            print('[runner] final stats: ' + json.dumps(s, ensure_ascii=False))
        except Exception as ex:
            print('[runner] stats() failed: %r' % (ex,))
            rc = 1
        try:
            w = watch.exports_sync.stats()
            emit({'t': 'final_stats', 'tag': 'watch', 'wall': stamp(),
                  'rel': round(time.time() - t0, 3), 'stats': w})
            print('[runner] sendwatch stats: ' + json.dumps(w))
        except Exception as ex:
            print('[runner] watch stats() failed: %r' % (ex,))
        try:
            t = sender.exports_sync.stop()
            emit({'t': 'teardown', 'tag': 'sender', 'wall': stamp(),
                  'teardown': t})
            print('[runner] teardown: pending=%s queue=%s' %
                  (t.get('pending_count'), t.get('queue_depth')))
        except Exception as ex:
            print('[runner] stop() failed: %r' % (ex,))
            rc = 1
        try:
            watch.unload()
        except Exception:
            pass
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
