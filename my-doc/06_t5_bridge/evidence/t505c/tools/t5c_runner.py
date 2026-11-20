#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
t5c_runner.py -- T5-05C 验收用发送端运行器（一次性夹具，不属于仓库生产代码）

功能：
  * 加载 t505b_asr_bridge_sender.js，把所有消息写成 JSONL 并打印关键行
  * 可在指定时刻做「卸载」（forced = script.unload()，不调 stop()；stop = rpc stop()）
  * 可卸载后重新加载一个新实例（gen2），用来验证不重复 Hook / 不重复发送
  * 结束时对当前实例取 stats() 并 stop()

用法：
  python t5c_runner.py --js <sender.js> --pid 16112 --duration 120 --out out.jsonl
         [--unload-at 40] [--unload-mode forced|stop] [--reload] [--reload-delay 3]
         [--stop-at 100]
"""
import argparse
import datetime
import io
import json
import os
import time

import frida


def stamp():
    return datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--js', required=True)
    ap.add_argument('--pid', type=int, required=True)
    ap.add_argument('--duration', type=float, required=True)
    ap.add_argument('--out', required=True)
    ap.add_argument('--unload-at', type=float, default=None)
    ap.add_argument('--unload-mode', default='forced', choices=['forced', 'stop'])
    ap.add_argument('--reload', action='store_true')
    ap.add_argument('--reload-delay', type=float, default=3.0)
    ap.add_argument('--stop-at', type=float, default=None)
    ap.add_argument('--stop-flag', default=None)
    ap.add_argument('--unload-flag', default=None)
    args = ap.parse_args()

    dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
    session = dev.attach(args.pid)

    out = io.open(args.out, 'w', encoding='utf-8', newline='\n')
    src = io.open(args.js, encoding='utf-8').read()
    t0 = time.time()
    state = {'gen': 0, 'script': None}

    def emit(rec):
        out.write(json.dumps(rec, ensure_ascii=False) + '\n')
        out.flush()

    def on_message_factory(gen):
        def on_message(msg, data):
            if msg.get('type') == 'error':
                print('[error][gen%d] %s' % (gen, msg.get('description')))
                emit({'t': 'error', 'gen': gen, 'wall': stamp(),
                      'description': msg.get('description')})
                return
            rec = dict(msg.get('payload') or {})
            rec['gen'] = gen
            rec['wall'] = stamp()
            emit(rec)
            t = rec.get('t')
            if t == 'stat':
                print('[stat][g%d] %s' % (gen, rec.get('line')))
            elif t in ('ack', 'rejected', 'sent', 'conn', 'retry', 'drop',
                       'ack_mismatch', 'fatal', 'frame_rejected', 'stopped',
                       'precheck', 'ready'):
                print('[%s][g%d] %s' % (t, gen, json.dumps(
                    {k: v for k, v in rec.items() if k not in ('wall', 'stats', 'gen')},
                    ensure_ascii=False)))
        return on_message

    def load():
        state['gen'] += 1
        gen = state['gen']
        sc = session.create_script(src)
        sc.on('message', on_message_factory(gen))
        sc.load()
        state['script'] = sc
        print('[runner] script gen%d loaded' % gen)
        emit({'t': 'runner_load', 'gen': gen, 'wall': stamp(),
              'rel': round(time.time() - t0, 3)})
        return sc

    def dump_stats(tag):
        sc = state['script']
        if sc is None:
            return None
        try:
            s = sc.exports_sync.stats()
        except Exception as ex:
            print('[runner] %s stats() failed: %r' % (tag, ex))
            return None
        emit({'t': tag, 'gen': state['gen'], 'wall': stamp(),
              'rel': round(time.time() - t0, 3), 'stats': s})
        print('[runner] %s stats: %s' % (tag, json.dumps(s, ensure_ascii=False)))
        return s

    load()

    def do_unload():
        sc = state['script']
        dump_stats('pre_unload_stats')
        if args.unload_mode == 'stop':
            try:
                r = sc.exports_sync.stop()
                emit({'t': 'runner_stop', 'gen': state['gen'], 'wall': stamp(),
                      'rel': round(time.time() - t0, 3), 'teardown': r})
                print('[runner] stop() -> pending=%s queue=%s' %
                      (r.get('pending_count'), r.get('queue_depth')))
            except Exception as ex:
                print('[runner] stop() failed: %r' % (ex,))
        else:
            try:
                sc.unload()          # 强制卸载：不调 stop()，直接销毁脚本
                print('[runner] FORCED unload of gen%d' % state['gen'])
            except Exception as ex:
                print('[runner] forced unload failed: %r' % (ex,))
        emit({'t': 'runner_unload', 'gen': state['gen'],
              'mode': args.unload_mode, 'wall': stamp(),
              'rel': round(time.time() - t0, 3)})
        state['script'] = None

    unloaded = False
    reloaded = False
    stopped = False
    unload_ts = None

    try:
        while True:
            el = time.time() - t0
            if el >= args.duration:
                break
            if args.stop_flag and os.path.exists(args.stop_flag):
                print('[runner] stop flag seen, finishing gracefully')
                break
            if (not unloaded) and args.unload_at is not None and el >= args.unload_at:
                do_unload()
                unloaded = True
                unload_ts = time.time()
            if (not unloaded) and args.unload_flag and os.path.exists(args.unload_flag):
                do_unload()
                unloaded = True
                unload_ts = time.time()
            # 重新加载的等待时间是"从卸载那一刻起算"，不是从脚本启动起算
            if unloaded and args.reload and not reloaded and unload_ts is not None and \
                    (time.time() - unload_ts) >= args.reload_delay:
                load()
                reloaded = True
            if (not stopped) and args.stop_at is not None and el >= args.stop_at:
                dump_stats('pre_stop_stats')
                try:
                    r = state['script'].exports_sync.stop()
                    emit({'t': 'runner_stop', 'gen': state['gen'], 'wall': stamp(),
                          'rel': round(time.time() - t0, 3), 'teardown': r})
                    print('[runner] stop() -> pending=%s queue=%s' %
                          (r.get('pending_count'), r.get('queue_depth')))
                except Exception as ex:
                    print('[runner] stop() failed: %r' % (ex,))
                stopped = True
            time.sleep(0.2)
    except KeyboardInterrupt:
        print('[runner] interrupted')

    if state['script'] is not None:
        dump_stats('final_stats')
        try:
            r = state['script'].exports_sync.stop()
            emit({'t': 'runner_stop', 'gen': state['gen'], 'wall': stamp(),
                  'rel': round(time.time() - t0, 3), 'teardown': r})
            print('[runner] stop() -> pending=%s queue=%s' %
                  (r.get('pending_count'), r.get('queue_depth')))
        except Exception as ex:
            print('[runner] stop() failed: %r' % (ex,))
        try:
            state['script'].unload()
        except Exception:
            pass

    try:
        session.detach()
    except Exception:
        pass
    emit({'t': 'end', 'wall': stamp()})
    out.close()
    print('[runner] detached')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
