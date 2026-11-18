import subprocess, time, sys
sys.path.insert(0, r'D:\tgz02\OS\system\my-doc\03_uds_test')
import frida
# spawn a harmless local process and load the probe script; no hooking at all
proc = subprocess.Popen(['cmd.exe', '/c', 'ping -n 40 127.0.0.1 > nul'])
try:
    dev = frida.get_local_device()
    session = dev.attach(proc.pid)
    script = session.create_script(open(r'D:\tgz02\OS\system\my-doc\03_uds_test\_bindweak_probe.js', encoding='utf-8').read())
    msgs = []
    script.on('message', lambda m, data: msgs.append(m))
    script.load()
    t0 = time.time()
    while time.time() - t0 < 8:
        time.sleep(0.2)
    script.unload(); session.detach()
    st = [m['payload'] for m in msgs if m.get('type') == 'send' and m['payload'].get('t') == 'stat']
    print('samples:', len(st))
    if st:
        last = st[-1]
        print('iters=%s  earlyA(tmp {})=%s  earlyB(strong ref)=%s  heap=%sMB' % (last['n'], last['earlyA'], last['earlyB'], last['heapMB']))
        print('VERDICT:', 'unreferenced {} WAS collected during run -> callback fired early' if last['earlyA'] else 'no early GC observed in this window')
finally:
    proc.kill()
