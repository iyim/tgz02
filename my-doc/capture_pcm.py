#!/usr/bin/env python3
"""capture_pcm.py -- capture raw PCM from TG-Z02 :core process via Frida.

Hooks AGSpeechEngine::feed(uint type, const void* data, int len) at
libsmartbox.so+0xd455c (verified in-device: 25 frames/s, 5120 bytes/frame,
16kHz/4ch/16bit).  The signature is confirmed by disassembly:

    0xd4568  mov  r7, r3      ; r3 = len   -> Frida args[3]
    0xd456c  cmp  r2, #0      ; r2 = data  -> Frida args[2]

Revision 2026-11 (see 03_script_audit.md §1): bounded in-flight window with
host acks, --limit instead of a silent cap, try/catch around the copy, early
exit when the module is missing, periodic flush.  Hook offsets unchanged.

Usage:
    python capture_pcm.py --duration 30 --out pcm.raw --meta pcm_meta.txt
    python capture_pcm.py --pid 6934 --duration 40 --limit 0
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
var frames = 0, sent = 0, dropped = 0, readfail = 0, total = 0;
var LIMIT = %(limit)d;            // 0 = 不限
var INFLIGHT = %(inflight)d;
var inflight = 0;
var T0 = Date.now();

function start(target) {
    Interceptor.attach(target, {
        onEnter: function (args) {
            var len = args[3].toInt32();
            if (len <= 0 || (len %% 8) !== 0) return;       // 4ch*2B 交错，非 8 的倍数说明布局变了
            if (LIMIT && total >= LIMIT) {
                if (!this.warned) {
                    this.warned = true;
                    send({ t: 'warn', msg: 'hit limit, no longer capturing', total: total });
                }
                return;
            }
            if (inflight >= INFLIGHT) { dropped++; return; }  // 背压：宿主慢就丢，绝不堆积
            try {
                var buf = args[2].readByteArray(len);
                if (buf === null) return;
            } catch (e) {
                readfail++;
                return;
            }
            inflight++;
            sent++;
            total += len;
            frames++;
            send({ t: 'pcm', len: len, ts: Date.now() - T0 }, buf);
        }
    });
    send({ t: 'ready', base: base.toString(), target: target.toString(),
           limit: LIMIT, inflight: INFLIGHT });
}

if (base === null) {
    send({ t: 'fatal', msg: 'libsmartbox.so not loaded (wrong process?)' });
} else {
    var target = Module.findExportByName(mod, '_ZN14AGSpeechEngine4feedEjPKvi');
    if (target === null) {
        send({ t: 'fatal', msg: 'feed symbol missing' });
    } else {
        var off = target.sub(base).toInt32();
        if (off !== 0xd455c) {
            send({ t: 'fatal', msg: 'offset mismatch: 0x' + off.toString(16) + ' != 0xd455c' });
        } else {
            start(target);
        }
    }
}

recv('ack', function (m) { inflight -= m.n; if (inflight < 0) inflight = 0; });

setInterval(function () {
    send({ t: 'stat', frames: frames, sent: sent, dropped: dropped,
           readfail: readfail, inflight: inflight, total: total });
}, 2000);
"""


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--host', default='127.0.0.1:27042')
    ap.add_argument('--pid', type=int, default=0, help='explicit pid; 0 = look up by name')
    ap.add_argument('--name', default='com.alibaba.ailabs.genie.smartapp:core')
    ap.add_argument('--duration', type=float, default=30.0)
    ap.add_argument('--out', default='pcm.raw')
    ap.add_argument('--meta', default='pcm_meta.txt')
    ap.add_argument('--limit', type=int, default=8 * 1024 * 1024,
                    help='stop capturing after N bytes (0 = unlimited)')
    ap.add_argument('--inflight', type=int, default=64,
                    help='max frames in flight before dropping (host lag protection)')
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
    state = {'bytes': 0, 'frames': 0, 'lens': {}, 't0': time.time(),
             'dropped': 0, 'readfail': 0, 'pending': 0, 'fatal': None}

    def on_message(msg, data):
        if msg.get('type') != 'send':
            print('[msg]', msg, file=sys.stderr)
            return
        p = msg.get('payload') or {}
        t = p.get('t')
        if t == 'ready':
            print(f"[i] hooked base={p.get('base')} target={p.get('target')} "
                  f"limit={p.get('limit')} inflight={p.get('inflight')}", flush=True)
            print('[i] CAPTURING - speak now', flush=True)
            return
        if t == 'warn':
            print(f"[!] {p.get('msg')} at {p.get('total')} bytes", file=sys.stderr, flush=True)
            return
        if t == 'fatal':
            state['fatal'] = p.get('msg')
            print(f"[!!] {p.get('msg')}", file=sys.stderr, flush=True)
            return
        if t == 'stat':
            state['dropped'] = p.get('dropped', 0)
            state['readfail'] = p.get('readfail', 0)
            state['pending'] = p.get('inflight', 0)
            return
        if t == 'pcm':
            n = p.get('len', 0)
            if data:
                out.write(data)
                state['bytes'] += len(data)
            state['frames'] += 1
            state['lens'][n] = state['lens'].get(n, 0) + 1
            meta.write(f"{state['frames']}\t{p.get('ts')}\t{n}\n")
            if state['frames'] % 250 == 0:
                meta.flush()
                out.flush()
            if state['frames'] % 125 == 0:
                el = time.time() - state['t0']
                print(f"[{el:5.1f}s] frames={state['frames']} bytes={state['bytes']} "
                      f"({state['bytes']/max(el,0.001)/1024:.1f} KB/s) "
                      f"drop={state['dropped']} inflight={state['pending']}", flush=True)
            if state['frames'] % 32 == 0:
                try:
                    script.post({'type': 'ack', 'n': 32})
                except Exception:
                    pass

    script = session.create_script(JS % {'limit': args.limit, 'inflight': args.inflight})
    script.on('message', on_message)
    script.load()

    end = time.time() + args.duration
    try:
        while time.time() < end and state['fatal'] is None:
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
    print(f"[done] lens={state['lens']} dropped={state['dropped']} readfail={state['readfail']}")
    print(f"[done] out={os.path.abspath(args.out)}")
    if state['fatal']:
        sys.exit(3)


if __name__ == '__main__':
    main()
