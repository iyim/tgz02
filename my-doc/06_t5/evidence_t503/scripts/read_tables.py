import struct, sys

path = r"D:\tgz02\OS\system\app\smartapp\lib\arm\libagmmi.so"
data = open(path, 'rb').read()

# ELF32 header
assert data[:4] == b'\x7fELF'
e_shoff = struct.unpack_from('<I', data, 0x20)[0]
e_shentsize = struct.unpack_from('<H', data, 0x2E)[0]
e_shnum = struct.unpack_from('<H', data, 0x30)[0]
e_shstrndx = struct.unpack_from('<H', data, 0x32)[0]

secs = []
for i in range(e_shnum):
    off = e_shoff + i * e_shentsize
    name, typ, flags, addr, offset, size, link, info, align, entsize = struct.unpack_from('<IIIIIIIIII', data, off)
    secs.append(dict(name=name, typ=typ, addr=addr, offset=offset, size=size, entsize=entsize, link=link))

shstr = secs[e_shstrndx]
def sname(n):
    p = shstr['offset'] + n
    e = data.index(b'\0', p)
    return data[p:e].decode('latin1')

for s in secs:
    s['sname'] = sname(s['name'])

byname = {s['sname']: s for s in secs}
print("sections:", [ (s['sname'], hex(s['addr']), s['size']) for s in secs if s['sname'] in ('.text','.rodata','.data','.data.rel.ro','.rel.dyn','.dynstr') ])

def v2o(va):
    for s in secs:
        if s['addr'] and s['addr'] <= va < s['addr'] + s['size'] and s['typ'] != 8:
            return s['offset'] + (va - s['addr'])
    return None

def rd_str(va):
    o = v2o(va)
    if o is None:
        return None
    e = data.index(b'\0', o)
    return data[o:e].decode('utf-8', 'replace')

# build relocation map (RELATIVE) from .rel.dyn
rel = byname.get('.rel.dyn')
relmap = {}
if rel:
    n = rel['size'] // 8
    for i in range(n):
        off, info = struct.unpack_from('<II', data, rel['offset'] + i * 8)
        typ = info & 0xff
        sym = info >> 8
        relmap[off] = (typ, sym)
print("rel.dyn entries:", len(relmap))

dynsym = byname['.dynsym']
dynstr = byname['.dynstr']
def symname(idx):
    o = dynsym['offset'] + idx * 16
    st_name = struct.unpack_from('<I', data, o)[0]
    p = dynstr['offset'] + st_name
    e = data.index(b'\0', p)
    return data[p:e].decode('utf-8','replace')

def read_ptr(va):
    o = v2o(va)
    if o is None:
        return None
    val = struct.unpack_from('<I', data, o)[0]
    if val == 0 and va in relmap:
        typ, sym = relmap[va]
        # RELATIVE: addend stored at target location for REL? ARM uses REL (no addend field) -> addend in place
        return val
    return val

tables = {
    'gNameSpace': (0xce0f8, 0x74),
    'gCmdName': (0xce1a4, 0x34),
    'gEventName': (0xce16c, 0x38),
    'gWakeupType': (0xce07c, 0x48),
    'gUserType': (0xce074, 0x8),
    'gPlayerStatusEvent': (0xce0c4, 0x34),
}
for tname,(va,size) in tables.items():
    print("=== %s @ %#x ===" % (tname, va))
    n = size // 4
    for i in range(n):
        ent = va + i*4
        val = read_ptr(ent)
        reloc = relmap.get(ent)
        s = rd_str(val) if val else None
        if s is None and reloc:
            # try addend stored at location
            s = "<reloc typ=%d sym=%s>" % (reloc[0], symname(reloc[1]) if reloc[1] else '-')
        print("  [%2d] %#010x -> %r %s" % (i, val or 0, s, ("REL:"+str(reloc)) if reloc else ""))
