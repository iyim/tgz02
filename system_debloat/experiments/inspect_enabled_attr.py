import re

s = open('package-restrictions.orig.xml', encoding='utf-8').read()
pat = re.compile(r'<pkg name="([^"]+)"[^>]*?enabled="(\d)"')
found = pat.findall(s)
for name, val in found:
    print('attr-enabled=%s  %s' % (val, name))
print('total:', len(found))
