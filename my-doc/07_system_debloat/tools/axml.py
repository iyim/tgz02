"""Minimal binary AndroidManifest.xml (AXML) + DEX string pool reader.

No external deps. Used for static evidence extraction from a system image.
"""
import struct
import zipfile

RES_STRING_POOL = 0x0001
RES_XML = 0x0003
RES_XML_START_NS = 0x0100
RES_XML_END_NS = 0x0101
RES_XML_START_ELEMENT = 0x0102
RES_XML_END_ELEMENT = 0x0103
RES_XML_RESOURCE_MAP = 0x0180


def _u8(buf, off):
    return buf[off]


def _u16(buf, off):
    return struct.unpack_from('<H', buf, off)[0]


def _u32(buf, off):
    return struct.unpack_from('<I', buf, off)[0]


def _len8(buf, p):
    """AOSP 1-or-2-byte length prefix. Returns (value, next_offset)."""
    n = buf[p]
    p += 1
    if n & 0x80:
        n = ((n & 0x7f) << 8) | buf[p]
        p += 1
    return n, p


class StringPool:
    """String pool reader.

    UTF-8 pools store two length prefixes (UTF-16 char count, then byte count);
    some builders in this image store only one. Mode is detected by scoring both
    interpretations over the whole pool.
    """

    def __init__(self, buf, off):
        self.buf = buf
        self.off = off
        hdr = off
        self.size = _u32(buf, hdr + 4)
        self.count = _u32(buf, hdr + 8)
        self.style_count = _u32(buf, hdr + 12)
        self.flags = _u32(buf, hdr + 16)
        self.strings_start = _u32(buf, hdr + 20)
        self.is_utf8 = bool(self.flags & 0x100)
        self.offsets = [_u32(buf, hdr + 28 + 4 * i) for i in range(self.count)]
        self._cache = {}
        self.double_len = True
        if self.is_utf8 and self.count:
            self.double_len = self._detect_double_len()

    def _decode_utf8(self, idx, double_len):
        buf = self.buf
        base = self.off + self.strings_start
        p = base + self.offsets[idx]
        try:
            if double_len:
                _, p = _len8(buf, p)
            n, p = _len8(buf, p)
        except IndexError:
            return None
        raw = buf[p:p + n]
        if len(raw) != n:
            return None
        return raw.decode('utf-8', 'replace')

    @staticmethod
    def _plausible(s):
        if s is None:
            return False
        for ch in s:
            o = ord(ch)
            if o < 0x20 and o not in (0x09, 0x0a):
                return False
            if o == 0xfffd:
                return False
        return True

    def _detect_double_len(self):
        best = None
        for mode in (True, False):
            good = 0
            for i in range(min(self.count, 64)):
                if self._plausible(self._decode_utf8(i, mode)):
                    good += 1
            if best is None or good > best[0]:
                best = (good, mode)
        return best[1]

    def get(self, idx):
        if idx < 0 or idx >= self.count:
            return None
        if idx in self._cache:
            return self._cache[idx]
        buf = self.buf
        if self.is_utf8:
            s = self._decode_utf8(idx, self.double_len)
            if s is None:
                s = ''
        else:
            p = self.off + self.strings_start + self.offsets[idx]
            n = _u16(buf, p)
            p += 2
            if n & 0x8000:
                n = ((n & 0x7fff) << 16) | _u16(buf, p)
                p += 2
            raw = buf[p:p + 2 * n]
            s = raw.decode('utf-16-le', 'replace')
        self._cache[idx] = s
        return s


def _typed_value(buf, off, pool):
    """off -> typed value struct {size u16, res0 u8, dataType u8, data u32}"""
    dtype = buf[off + 3]
    data = _u32(buf, off + 4)
    if dtype == 0x03:
        return pool.get(data)
    if dtype == 0x12:
        return bool(data)
    if dtype in (0x10, 0x11):
        return data if data < 0x80000000 else data - 0x100000000
    if dtype == 0x01:
        return '@0x%08x' % data
    if dtype == 0x02:
        return '?0x%08x' % data
    if dtype == 0x04:
        return struct.unpack('<f', struct.pack('<I', data))[0]
    if dtype == 0x05:
        return 'dim(0x%08x)' % data
    if dtype == 0x06:
        return 'frac(0x%08x)' % data
    return data


def parse_axml(data):
    """Return list of dicts: {tag, attrs:{...}, ns:{...}} in document order."""
    if len(data) < 8 or _u16(data, 0) != RES_XML:
        raise ValueError('not an AXML document')
    total = _u32(data, 4)
    off = 8
    pool = None
    resmap = []
    elems = []
    stack = []
    while off + 8 <= min(total, len(data)):
        ctype = _u16(data, off)
        chdr = _u16(data, off + 2)
        csize = _u32(data, off + 4)
        if csize < 8:
            break
        if ctype == RES_STRING_POOL and pool is None:
            pool = StringPool(data, off)
        elif ctype == RES_XML_RESOURCE_MAP:
            n = (csize - chdr) // 4
            resmap = [_u32(data, off + chdr + 4 * i) for i in range(n)]
        elif ctype == RES_XML_START_ELEMENT:
            # ResXMLTree_node = ResChunk_header(8) + lineNumber(4) + comment(4),
            # the element extension (ns/name/attribute*) follows at off+16.
            body = off + 16
            name_i = _u32(data, body + 4)
            a_start = _u16(data, body + 8)
            a_size = _u16(data, body + 10)
            a_count = _u16(data, body + 12)
            aoff = body + a_start
            attrs = {}
            nsattrs = {}
            for i in range(a_count):
                a = aoff + i * a_size
                if a_size < 20:
                    continue
                ns_i = _u32(data, a)
                nm_i = _u32(data, a + 4)
                raw_i = _u32(data, a + 8)
                nm = pool.get(nm_i) if pool else None
                ns = pool.get(ns_i) if pool else None
                val = _typed_value(data, a + 12, pool)
                if nm is None:
                    continue
                if ns:
                    nsattrs[nm] = val
                if nm not in attrs:
                    attrs[nm] = val
                elif ns and nm in attrs and ns.endswith('android'):
                    attrs[nm] = val
            el = {'tag': pool.get(name_i) if pool else None, 'attrs': attrs, 'android': nsattrs,
                  'children': [], 'parent': stack[-1] if stack else None}
            if stack:
                stack[-1]['children'].append(el)
            elems.append(el)
            stack.append(el)
        elif ctype == RES_XML_END_ELEMENT:
            if stack:
                stack.pop()
        off += csize
    return elems


def read_manifest(apk_path):
    with zipfile.ZipFile(apk_path) as z:
        data = z.read('AndroidManifest.xml')
    return parse_axml(data)


def iter_elements(elems, tag=None):
    for e in elems:
        if tag is None or e['tag'] == tag:
            yield e


def first_root(elems):
    for e in elems:
        return e
    return None


class DexStrings:
    """Read the string_id table of a DEX container (bytes)."""

    def __init__(self, data):
        self.data = data
        self.strings = []
        try:
            self._parse()
        except Exception:
            self.strings = []

    def _parse(self):
        d = self.data
        if len(d) < 0x70 or d[:4] not in (b'dex\n', b'dey\n'):
            raise ValueError('bad dex')
        size = _u32(d, 0x20)
        off = _u32(d, 0x3C)
        count = _u32(d, 0x38)
        if off + 4 * count > size or off + 4 * count > len(d):
            raise ValueError('bad string ids')
        out = []
        for i in range(count):
            p = _u32(d, off + 4 * i)
            if p >= len(d):
                continue
            # uleb128 length
            n = 0
            shift = 0
            while True:
                b = d[p]
                p += 1
                n |= (b & 0x7f) << shift
                if not b & 0x80:
                    break
                shift += 7
            raw = d[p:p + n]
            out.append(raw.decode('utf-8', 'replace'))
        self.strings = out


def apk_strings(apk_path, limit_bytes=64 * 1024 * 1024):
    """Return a set of strings from all classes*.dex inside the APK."""
    out = set()
    with zipfile.ZipFile(apk_path) as z:
        names = [n for n in z.namelist() if n.startswith('classes') and n.endswith('.dex')]
        for n in sorted(names):
            info = z.getinfo(n)
            if info.file_size > limit_bytes:
                continue
            try:
                ds = DexStrings(z.read(n))
            except Exception:
                continue
            out.update(ds.strings)
    return out
