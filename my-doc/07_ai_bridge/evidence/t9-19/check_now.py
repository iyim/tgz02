import sqlite3
c = sqlite3.connect(r'D:\tgz02\OS\evidence\t9-19\applist_now.db')
print('applist rows :', c.execute('select count(*) from applist').fetchone()[0])
print('apk+http     :', c.execute("select count(*) from applist where businessType='apk' and downloadUrl like 'http%'").fetchone()[0])
print()
print('--- install-capable rows now ---')
for r in c.execute("select appid, packageName, businessType, substr(coalesce(downloadUrl,''),1,70) "
                   "from applist where businessType='apk' and downloadUrl like 'http%'"):
    print(' ', r)
print()
print('--- 旭慧生活 present? ---')
print(c.execute("select count(*) from applist where packageName='com.anthouse.ayland'").fetchone()[0])
print()
print('--- all rows ---')
for r in c.execute("select appid, appName, businessType, packageName from applist"):
    print(' ', r)
