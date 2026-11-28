#!/system/bin/sh
# T9-19: take the appbox catalogue offline so it stops reinstalling apps.
#   1. stop smartapp (it owns ApplistDb.db) so the file is consistent
#   2. copy the db out with the journal removed
D=/data/data/com.alibaba.ailabs.genie.smartapp/databases
B=/data/local/tmp/t9_19_bak
mkdir -p $B
echo "=== stop smartapp ==="
am force-stop com.alibaba.ailabs.genie.smartapp
sleep 3
echo "left: $(ps -A | grep 'genie.smartapp' | grep -v grep | wc -l) procs"
echo
echo "=== backup ==="
cp -f $D/ApplistDb.db $B/ApplistDb.db.orig
cp -f $D/ApplistDb.db-journal $B/ApplistDb.db-journal.orig 2>/dev/null
cp -f $D/ApplistDb.db /data/local/tmp/t9_19_applist_edit.db
chmod 644 /data/local/tmp/t9_19_applist_edit.db $B/ApplistDb.db.orig
rm -f /data/local/tmp/t9_19_applist_edit.db-journal
ls -l $B
ls -l /data/local/tmp/t9_19_applist_edit.db
