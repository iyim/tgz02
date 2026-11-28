import sqlite3, shutil, os

src = r'D:\tgz02\OS\evidence\t9-19\applist_edit.db'
c = sqlite3.connect(src)

print('=== install-capable rows before ===')
rows = c.execute("select appid, packageName, downloadUrl from applist "
                 "where businessType='apk' and (downloadUrl like 'http%')").fetchall()
for r in rows:
    print(' ', r)

ids = [r[0] for r in rows]
q = ','.join("'%s'" % i for i in ids)
c.execute("delete from applist where appid in (%s)" % q)
c.execute("delete from applistsort where appid in (%s)" % q)
c.commit()

print()
print('=== after ===')
print('applist rows   :', c.execute("select count(*) from applist").fetchone()[0])
print('apk+http rows  :', c.execute("select count(*) from applist "
                                   "where businessType='apk' and (downloadUrl like 'http%')").fetchone()[0])
print('applistsort    :', c.execute("select count(*) from applistsort").fetchone()[0])
print('remaining apk rows:')
for r in c.execute("select appid, packageName, businessType, substr(coalesce(downloadUrl,''),1,60) "
                   "from applist where businessType='apk'"):
    print(' ', r)
print()
print('integrity  :', c.execute('pragma integrity_check').fetchone()[0])
c.close()
print('size       :', os.path.getsize(src))
