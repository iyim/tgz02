import sqlite3, sys, os

db = r'D:\tgz02\OS\evidence\t9-19\ApplistDb.db'
c = sqlite3.connect(db)
print('=== tables ===')
for (name, sql) in c.execute("select name, sql from sqlite_master where type='table'"):
    print('--', name)
    print(sql)
    try:
        n = c.execute('select count(*) from "%s"' % name).fetchone()[0]
        print('   rows =', n)
    except Exception as e:
        print('   count failed:', e)
print()
print('=== rows ===')
for (name,) in c.execute("select name from sqlite_master where type='table'").fetchall():
    print('----', name)
    try:
        cur = c.execute('select * from "%s"' % name)
        cols = [d[0] for d in cur.description]
        print('   cols:', cols)
        for i, row in enumerate(cur):
            if i >= 40:
                print('   ... more rows')
                break
            print('   ', row)
    except Exception as e:
        print('   read failed:', e)
