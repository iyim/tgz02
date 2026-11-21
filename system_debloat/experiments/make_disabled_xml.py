import xml.dom.minidom as md

SRC = 'package-restrictions.orig.xml'
DST = 'package-restrictions.iot-disabled.xml'
PKG = 'com.alibaba.ailabs.genie.iot'

s = open(SRC, encoding='utf-8').read()
old = '<pkg name="%s" ceDataInode="-4294959387" />' % PKG
new = '<pkg name="%s" ceDataInode="-4294959387" enabled="3" />' % PKG
if old not in s:
    raise SystemExit('iot entry not found; aborting')
s2 = s.replace(old, new, 1)
md.parseString(s2.encode('utf-8'))
open(DST, 'w', encoding='utf-8').write(s2)
print('ok; changed line:')
print([l for l in s2.splitlines() if PKG in l][0])
print('total enabled attrs:', s2.count('enabled="'))
