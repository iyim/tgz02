import sys, time, json, io, os, datetime
import frida

def main():
    script_path = sys.argv[1]
    pid = int(sys.argv[2])
    duration = float(sys.argv[3])
    out_path = sys.argv[4]

    dev = frida.get_device_manager().add_remote_device('127.0.0.1:27042')
    session = dev.attach(pid)
    src = open(script_path, encoding='utf-8').read()
    script = session.create_script(src)

    out = io.open(out_path, 'w', encoding='utf-8', newline='\n')
    t0 = time.time()

    def on_message(msg, data):
        now = datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]
        rec = {'wall': now, 'rel': round(time.time() - t0, 3)}
        if msg.get('type') == 'send':
            rec.update(msg['payload'])
        else:
            rec['t'] = 'script_error'
            rec['payload'] = msg.get('description') or str(msg)
        line = json.dumps(rec, ensure_ascii=False)
        out.write(line + '\n')
        out.flush()
        print(line)

    script.on('message', on_message)
    script.load()
    print('[runner] loaded, running %.1fs on pid %d' % (duration, pid))
    try:
        time.sleep(duration)
    finally:
        try:
            session.detach()
        except Exception:
            pass
        out.write(json.dumps({'t': 'end', 'wall': datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S.%f')[:-3]}) + '\n')
        out.close()
        print('[runner] detached')

if __name__ == '__main__':
    main()
