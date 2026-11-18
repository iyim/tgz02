#!/usr/bin/env python3
"""capture_pcm.py -- capture raw PCM from TG-Z02 :core process via Frida.

Hooks AGSpeechEngine::feed(uint, const void*, int) at libsmartbox.so+0xd455c
(verified in-device: 25 frames/s, 5120 bytes/frame, 16kHz/4ch/16bit).

Usage:
    python capture_pcm.py --pid 1144 --duration 30 --out pcm.raw
"""
import argparse
import os
import sys
import time

import frida

JS = r"""
'use strict';
var mod = 'libsmartbox.so';
var base = Module.findBaseAddress(mod);
if (base === null) { send({t: 'error', msg: 'libsmartbox.so not loaded'}); }
var LIMIT = 8 * 1024 * 1024;
var total = 0, frames = 0, T0 = Date.now();
var target = base.add(0xd455c);   // AGSpeechEngine::feed(uint, void const*, int)

Interceptor.attach(target, {
    onEnter: function (args) {
        var len = args[3].toInt32();
        if (len > 0 && total < LIMIT) {
            var buf = args[2].readByteArray(len);
            send({ t: 'pcm', len: len, ts: Date.now() - T0 }, buf);
            total += len;
            frames++;
        }
    }
});
send({ t: 'ready', base: base.toString(), target: target.toString() });
"""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--host', default='127.0.0.1:27042')
    ap.add_argument('--pid', type=int, default=0, help='explicit pid; 0 = look up by name')
    ap.add_argument('--name', default='com.alibaba.ailabs.genie.smartapp:core')
    ap.add_argument('--duration', type=float, default=30.0)
    ap.add_argument('--out', default='pcm.raw')
    ap.add_argument('--meta', default='pcm_meta.txt')
    args = ap.parse_args()

    dev = frida.get_device_manager().add_remote_device(args.host)

    pid = args.pid
    if not pid:
        procs = dev.enumerate_processes()
        hit = [p for p in procs if p.name == args.name]
        if not hit:
            print('[!] target process not found. candidates:', file=sys.stderr)
            for p in procs:
                if 'ailabs' in p.name or 'smartapp' in p.name:
                    print(f'    {p.pid}\t{p.name}', file=sys.stderr)
            sys.exit(2)
        pid = hit[0].pid
        print(f'[i] resolved {args.name} -> pid {pid}', flush=True)

    session = dev.attach(pid)

    out = open(args.out, 'wb')
    meta = open(args.meta, 'w', encoding='utf-8')
    state = {'bytes': 0, 'frames': 0, 'lens': {}, 't0': time.time()}

    def on_message(msg, data):
        if msg.get('type') != 'send':
            print('[msg]', msg, file=sys.stderr)
            return
        p = msg.get('payload') or {}
        t = p.get('t')
        if t == 'ready':
            print(f"[i] hooked base={p.get('base')} target={p.get('target')}", flush=True)
            print('[i] CAPTURING - speak now', flush=True)
            return
        if t == 'pcm':
            n = p.get('len', 0)
            if data:
                out.write(data)
                state['bytes'] += len(data)
            state['frames'] += 1
            state['lens'][n] = state['lens'].get(n, 0) + 1
            meta.write(f"{state['frames']}\t{p.get('ts')}\t{n}\n")
            if state['frames'] % 125 == 0:
                el = time.time() - state['t0']
                print(f"[{el:5.1f}s] frames={state['frames']} bytes={state['bytes']} "
                      f"({state['bytes']/max(el,0.001)/1024:.1f} KB/s)", flush=True)

    script = session.create_script(JS)
    script.on('message', on_message)
    script.load()

    end = time.time() + args.duration
    try:
        while time.time() < end:
            time.sleep(0.2)
    except KeyboardInterrupt:
        pass

    try:
        script.unload()
    except Exception:
        pass
    try:
        session.detach()
    except Exception:
        pass

    out.close()
    meta.close()
    el = time.time() - state['t0']
    print(f"\n[done] {state['frames']} frames, {state['bytes']} bytes in {el:.1f}s "
          f"({state['bytes']/max(el,0.001)/1024:.1f} KB/s)")
    print(f"[done] lens={state['lens']}")
    print(f"[done] out={os.path.abspath(args.out)}")


if __name__ == '__main__':
    main()
