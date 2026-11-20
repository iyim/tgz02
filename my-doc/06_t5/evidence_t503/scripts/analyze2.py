import os, glob, struct, sys, datetime, collections

CAP = sys.argv[1]
TAGPREFIX = sys.argv[2] if len(sys.argv) > 2 else ""
files = sorted(glob.glob(os.path.join(CAP, TAGPREFIX + "*.pcap")))

def read_pcap(files):
    pkts = []
    for f in files:
        d = open(f, 'rb').read()
        if len(d) < 24:
            continue
        magic = d[:4]
        endian = '<' if magic == b'\xd4\xc3\xb2\xa1' else '>'
        if magic not in (b'\xd4\xc3\xb2\xa1', b'\xa1\xb2\xc3\xd4'):
            print("bad magic", f)
            continue
        off = 24
        while off + 16 <= len(d):
            ts, tus, caplen, origlen = struct.unpack_from(endian + 'IIII', d, off)
            off += 16
            if off + caplen > len(d):
                break
            pkts.append((ts + tus / 1e6, d[off:off + caplen]))
            off += caplen
    return pkts

pkts = read_pcap(files)
print("== %s : %d packets from %d files ==" % (CAP, len(pkts), len(files)))
if not pkts:
    sys.exit()

def ipstr(b):
    return ".".join(str(x) for x in b)

flows = collections.defaultdict(lambda: dict(n=0, up=0, first=None, last=None))
per_sec = collections.defaultdict(int)
t_min = min(p[0] for p in pkts)
t_max = max(p[0] for p in pkts)

for ts, pkt in pkts:
    if len(pkt) < 14:
        continue
    if struct.unpack_from('>H', pkt, 12)[0] != 0x0800:
        continue
    l3 = 14
    ihl = (pkt[l3] & 0x0f) * 4
    total_len = struct.unpack_from('>H', pkt, l3 + 2)[0]
    proto = pkt[l3 + 9]
    src = ipstr(pkt[l3 + 12:l3 + 16])
    dst = ipstr(pkt[l3 + 16:l3 + 20])
    if proto == 6:
        sp, dp = struct.unpack_from('>HH', pkt, l3 + ihl)
        payload = max(0, total_len - ihl - 20)
        key = "%s:%d -> %s:%d" % (src, sp, dst, dp)
        outbound = src == "192.168.1.9" and not dst.startswith("192.168.")
    elif proto == 17:
        sp, dp = struct.unpack_from('>HH', pkt, l3 + ihl)
        payload = max(0, total_len - ihl - 8)
        key = "%s:%d -> %s:%d/udp" % (src, sp, dst, dp)
        outbound = False
    else:
        continue
    f = flows[key]
    f['n'] += 1
    if outbound:
        f['up'] += payload
    if f['first'] is None or ts < f['first']:
        f['first'] = ts
    f['last'] = ts
    per_sec[int(ts)] += payload

print("--- top flows (payload bytes) ---")
for k, v in sorted(flows.items(), key=lambda kv: -(kv[1]['n'] * 100))[:12]:
    t0 = datetime.datetime.utcfromtimestamp(v['first']).strftime('%H:%M:%S.%f')[:-3]
    t1 = datetime.datetime.utcfromtimestamp(v['last']).strftime('%H:%M:%S.%f')[:-3]
    print("%-46s n=%5d dev->wan=%7d B  %s -> %s" % (k, v['n'], v['up'], t0, t1))

print("--- per-second total payload (UTC) ---")
prev = None
for s in range(int(t_min), int(t_max) + 1):
    b = per_sec.get(s, 0)
    print("%s  %6d B" % (datetime.datetime.utcfromtimestamp(s).strftime('%H:%M:%S'), b))
tot_wan = sum(v['up'] for v in flows.values())
print("TOTAL device->WAN payload: %d B over %.1f s" % (tot_wan, t_max - t_min))
