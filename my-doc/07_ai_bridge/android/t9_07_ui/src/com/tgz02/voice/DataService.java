/*
 * DataService.java -- T9-UI-03 + R1: the ONE data access layer for structured product data.
 *
 * Everything the UI does with memory / alarms / schedules / skills goes through this class;
 * no page writes SQL, no page touches the DB helper.  After every successful mutation the
 * service republishes the snapshots the worker reads (memory/alarms/skills.public.json) so
 * the C side never opens SQLite.
 *
 * R1 fixes (auditor review):
 *   - migration idempotence: each legacy import runs in ONE SQLite transaction that also
 *     writes a marker row (migration table); the source file is archived only after the
 *     transaction commits.  A marker with the file still present (crash between commit and
 *     rename, or rename failure) skips import and archives the leftover -- never duplicates.
 *     A partial import from the pre-R1 version is repaired by delete+reimport inside the
 *     same transaction (the legacy file is the source of truth in the migration window).
 *   - snapshot reliability: publish results are checked and logged, failures are retried at
 *     the next mutation and at ensureSnapshots() (called on service init and when the
 *     memory centre opens); publishes are serialized so tmp files cannot race.
 *   - skill semantics: last_used_ms is updated only by skillTouch() (real usage); the
 *     enabled toggle writes state 'on'/'off' and never claims a disabled skill is running.
 *   - startup: all three snapshots are (re)published on service init, including empty data.
 */
package com.tgz02.voice;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class DataService {

    private static final String TAG = "T9DATA";

    /* --------------------------------------------------------------- models */

    static final class Memory {
        public long id;
        public String tag = "事实";
        public String text = "";
        public boolean enabled = true;
        public boolean pending = false;
        public String src = "手动添加";
        public int hits;
        public long createdMs, updatedMs;
    }

    static final class Alarm {
        public long id;
        public String time = "07:00";
        public String label = "";
        public boolean enabled = true;
        public long createdMs;
        /* T9-16：自有闹钟扩展。repeat 位：bit0=周一..bit6=周日，0=一次性；
         * lastFiredMs 用于防系统重投递（60s 内同 id 不重复响）。 */
        public int repeat;
        public long lastFiredMs;
    }

    /* --------------------------------------------------------------- singleton */

    private static DataService sInst;
    private final Context ctx;
    private final Object publishLock = new Object();
    private volatile boolean memorySnapOk, alarmsSnapOk, skillsSnapOk;

    static synchronized DataService get(Context c) {
        if (sInst == null) sInst = new DataService(c.getApplicationContext());
        return sInst;
    }

    private DataService(Context c) {
        ctx = c;
        migrateLegacyFiles();
        ensureSnapshots();          /* P0: snapshots exist from the very first start */
    }

    /* ================================================================ memory */

    List<Memory> memList(boolean includePending) {
        List<Memory> out = new ArrayList<Memory>();
        SQLiteDatabase db = Db.get(ctx).getReadableDatabase();
        Cursor cur = db.rawQuery(
            "SELECT id,tag,text,enabled,pending,src,hits,created_ms,updated_ms FROM memory_items " +
            "ORDER BY pending DESC, updated_ms DESC", null);
        try {
            while (cur.moveToNext()) {
                Memory m = new Memory();
                m.id = Db.lng(cur, "id");
                m.tag = Db.str(cur, "tag");
                m.text = Db.str(cur, "text");
                m.enabled = Db.bool(cur, "enabled") == 1;
                m.pending = Db.bool(cur, "pending") == 1;
                m.src = Db.str(cur, "src");
                m.hits = (int) Db.lng(cur, "hits");
                m.createdMs = Db.lng(cur, "created_ms");
                m.updatedMs = Db.lng(cur, "updated_ms");
                if (includePending || !m.pending) out.add(m);
            }
        } finally { cur.close(); }
        return out;
    }

    int memPendingCount() {
        SQLiteDatabase db = Db.get(ctx).getReadableDatabase();
        Cursor cur = db.rawQuery("SELECT COUNT(*) FROM memory_items WHERE pending=1", null);
        try { cur.moveToFirst(); return (int) Db.lng(cur, "COUNT(*)"); }
        finally { cur.close(); }
    }

    /** add; pending defaults to true for conversation-sourced memories, false for user-added */
    long memAdd(String tag, String text, String src, boolean pending) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("tag", normTag(tag));
        v.put("text", text == null ? "" : text.trim());
        v.put("src", (src == null || src.length() == 0) ? "手动添加" : src);
        v.put("pending", pending ? 1 : 0);
        v.put("enabled", pending ? 0 : 1);       /* pending memories never take effect */
        long now = Db.now();
        v.put("created_ms", now);
        v.put("updated_ms", now);
        long id = db.insert("memory_items", null, v);
        if (id > 0) publishMemorySnapshot();
        return id;
    }

    boolean memUpdate(long id, String tag, String text) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("tag", normTag(tag));
        v.put("text", text == null ? "" : text.trim());
        v.put("updated_ms", Db.now());
        int n = db.update("memory_items", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishMemorySnapshot();
        return n > 0;
    }

    boolean memDelete(long id) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        int n = db.delete("memory_items", "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishMemorySnapshot();
        return n > 0;
    }

    boolean memSetEnabled(long id, boolean on) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", on ? 1 : 0);
        v.put("pending", 0);
        v.put("updated_ms", Db.now());
        int n = db.update("memory_items", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishMemorySnapshot();
        return n > 0;
    }

    /** pending memory: accept -> enabled; reject -> deleted */
    boolean memResolve(long id, boolean accept) {
        if (accept) {
            SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
            ContentValues v = new ContentValues();
            v.put("pending", 0);
            v.put("enabled", 1);
            v.put("updated_ms", Db.now());
            int n = db.update("memory_items", v,
                "id=? AND pending=1", new String[]{ String.valueOf(id) });
            if (n > 0) publishMemorySnapshot();
            return n > 0;
        }
        return memDelete(id);
    }

    int memClear() {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        int n = db.delete("memory_items", null, null);
        publishMemorySnapshot();
        return n;
    }

    /* ================================================================ alarms */

    List<Alarm> alarmList() {
        List<Alarm> out = new ArrayList<Alarm>();
        SQLiteDatabase db = Db.get(ctx).getReadableDatabase();
        Cursor cur = db.rawQuery(
            "SELECT id,time,label,enabled,created_ms,repeat,last_fired_ms FROM alarms ORDER BY time", null);
        try {
            while (cur.moveToNext()) {
                Alarm a = new Alarm();
                a.id = Db.lng(cur, "id");
                a.time = Db.str(cur, "time");
                a.label = Db.str(cur, "label");
                a.enabled = Db.bool(cur, "enabled") == 1;
                a.createdMs = Db.lng(cur, "created_ms");
                a.repeat = Db.intCol(cur, "repeat");
                a.lastFiredMs = Db.lng(cur, "last_fired_ms");
                out.add(a);
            }
        } finally { cur.close(); }
        return out;
    }

    /** T9-16 R6：任何改动闹钟集合的写操作都要立刻重排。
     *  之前只有语音链路（AlarmRequestMonitor）会调 reschedule，UI 里新增/开关/删除
     *  之后要等下一次触发、开机或时间变更才生效——是漏调，不是设计。 */
    private void afterAlarmChange() {
        publishAlarmSnapshot();
        try {
            AlarmScheduler.reschedule(ctx);
        } catch (Throwable t) {
            android.util.Log.w("T916AL", "reschedule after change: " + t);
        }
    }

    long alarmAdd(String time, String label, boolean enabled) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("time", time);
        v.put("label", label == null ? "" : label);
        v.put("enabled", enabled ? 1 : 0);
        v.put("created_ms", Db.now());
        long id = db.insert("alarms", null, v);
        if (id > 0) afterAlarmChange();
        return id;
    }

    boolean alarmSetEnabled(long id, boolean on) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", on ? 1 : 0);
        int n = db.update("alarms", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) afterAlarmChange();
        return n > 0;
    }

    /** T9-16：按 id 取一条闹钟（没有返回 null） */
    Alarm alarmGet(long id) {
        SQLiteDatabase db = Db.get(ctx).getReadableDatabase();
        Cursor cur = db.rawQuery(
            "SELECT id,time,label,enabled,created_ms,repeat,last_fired_ms FROM alarms WHERE id=?",
            new String[]{ String.valueOf(id) });
        try {
            if (!cur.moveToFirst()) return null;
            Alarm a = new Alarm();
            a.id = Db.lng(cur, "id");
            a.time = Db.str(cur, "time");
            a.label = Db.str(cur, "label");
            a.enabled = Db.bool(cur, "enabled") == 1;
            a.createdMs = Db.lng(cur, "created_ms");
            a.repeat = Db.intCol(cur, "repeat");
            a.lastFiredMs = Db.lng(cur, "last_fired_ms");
            return a;
        } finally { cur.close(); }
    }

    /** T9-16：记录本次触发时刻（防重投递）；不改变 enabled。 */
    boolean alarmMarkFired(long id, long firedMs) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("last_fired_ms", firedMs);
        int n = db.update("alarms", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishAlarmSnapshot();
        return n > 0;
    }

    /** T9-16：带重复规则的新增（语音/语音请求监控用）。返回新 id。 */
    long alarmAddRepeat(String time, String label, boolean enabled, int repeat) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("time", time);
        v.put("label", label);
        v.put("enabled", enabled ? 1 : 0);
        v.put("repeat", repeat);
        v.put("created_ms", Db.now());
        long id = db.insert("alarms", null, v);
        if (id > 0) afterAlarmChange();
        return id;
    }

    /** T9-16：修改时间/标签/重复规则。 */
    boolean alarmUpdate(long id, String time, String label, int repeat) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        if (time != null) v.put("time", time);
        if (label != null) v.put("label", label);
        v.put("repeat", repeat);
        int n = db.update("alarms", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) afterAlarmChange();
        return n > 0;
    }

    /** T9-16：关闭全部闹钟（语音关闭所有闹钟用）。返回影响行数。 */
    int alarmDisableAll() {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", 0);
        int n = db.update("alarms", v, "enabled=1", null);
        if (n > 0) afterAlarmChange();
        return n;
    }

    /** T9-16：按时间关闭/删除（语音取消明天的闹钟第一版：匹配 HH:MM 全部关闭）。 */
    int alarmDisableByTime(String time) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", 0);
        int n = db.update("alarms", v, "time=? AND enabled=1", new String[]{ time });
        if (n > 0) afterAlarmChange();
        return n;
    }

    boolean alarmDelete(long id) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        int n = db.delete("alarms", "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) afterAlarmChange();
        return n > 0;
    }

    /* ================================================================ skills */

    /**
     * R1: the enabled toggle changes ONLY enabled + state.  last_used_ms is a usage
     * statistic and is written by skillTouch() when the skill is actually used.
     */
    boolean skillSetEnabled(String id, boolean on) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", on ? 1 : 0);
        v.put("state", on ? "on" : "off");        /* a disabled skill never reads "running" */
        int n = db.update("skills", v, "id=?", new String[]{ id });
        if (n == 0) {                              /* first touch: register the row */
            v.put("id", id);
            v.put("name", id);
            n = (int) db.insertWithOnConflict("skills", null, v,
                    SQLiteDatabase.CONFLICT_REPLACE);
        }
        publishSkillSnapshot();
        return n > 0;
    }

    /** record REAL usage (skill opened/executed); never called for a config change */
    void skillTouch(String id) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("last_used_ms", Db.now());
        int n = db.update("skills", v, "id=?", new String[]{ id });
        if (n == 0) {
            v.put("id", id);
            v.put("name", id);
            v.put("enabled", 0);
            v.put("state", "on");
            db.insertWithOnConflict("skills", null, v, SQLiteDatabase.CONFLICT_REPLACE);
        }
    }

    /* ================================================================ snapshots */

    /**
     * Publish (or re-publish) all three snapshots.  Called on service init and after any
     * publish failure, so a worker that missed an update eventually converges.
     */
    void ensureSnapshots() {
        publishMemorySnapshot();
        publishAlarmSnapshot();
        publishSkillSnapshot();
    }

    /** true when every snapshot is confirmed current (used by pages that want to be sure) */
    boolean snapshotsHealthy() {
        return memorySnapOk && alarmsSnapOk && skillsSnapOk;
    }

    private void publishMemorySnapshot() {
        synchronized (publishLock) {
            try {
                JSONObject root = new JSONObject();
                root.put("v", 1);
                root.put("ts_ms", Db.now());
                int enabled = 0, pending = 0;
                JSONArray arr = new JSONArray();
                for (Memory m : memList(true)) {
                    JSONObject o = new JSONObject();
                    o.put("id", m.id);
                    o.put("tag", m.tag);
                    o.put("text", m.text);
                    o.put("enabled", m.enabled);
                    o.put("pending", m.pending);
                    o.put("src", m.src);
                    o.put("hits", m.hits);
                    o.put("updated_ms", m.updatedMs);
                    arr.put(o);
                    if (m.enabled && !m.pending) enabled++;
                    if (m.pending) pending++;
                }
                root.put("enabled", enabled);
                root.put("pending", pending);
                root.put("memories", arr);
                memorySnapOk = Db.exportSnapshot(ctx, "memory.public.json", root.toString());
                if (!memorySnapOk) Log.w(TAG, "memory snapshot publish FAILED (will retry)");
            } catch (Throwable t) {
                memorySnapOk = false;
                Log.w(TAG, "memory snapshot publish error: " + t);
            }
        }
    }

    /** T9-16：供 AlarmRequestMonitor 在查询动作后主动刷新快照 */
    public void publishAlarmSnapshotPublic() {
        publishAlarmSnapshot();
    }

    private void publishAlarmSnapshot() {
        synchronized (publishLock) {
            try {
                JSONObject root = new JSONObject();
                root.put("v", 1);
                root.put("ts_ms", Db.now());
                JSONArray arr = new JSONArray();
                for (Alarm a : alarmList()) {
                    JSONObject o = new JSONObject();
                    o.put("id", a.id);
                    o.put("time", a.time);
                    o.put("label", a.label);
                    o.put("enabled", a.enabled);
                    arr.put(o);
                }
                root.put("alarms", arr);
                alarmsSnapOk = Db.exportSnapshot(ctx, "alarms.public.json", root.toString());
                if (!alarmsSnapOk) Log.w(TAG, "alarm snapshot publish FAILED (will retry)");
            } catch (Throwable t) {
                alarmsSnapOk = false;
                Log.w(TAG, "alarm snapshot publish error: " + t);
            }
        }
    }

    private void publishSkillSnapshot() {
        synchronized (publishLock) {
            try {
                JSONObject root = new JSONObject();
                root.put("v", 1);
                root.put("ts_ms", Db.now());
                JSONArray arr = new JSONArray();
                SQLiteDatabase db = Db.get(ctx).getReadableDatabase();
                Cursor cur = db.rawQuery(
                    "SELECT id,name,enabled,state,sort FROM skills ORDER BY sort", null);
                try {
                    while (cur.moveToNext()) {
                        JSONObject o = new JSONObject();
                        o.put("id", Db.str(cur, "id"));
                        o.put("name", Db.str(cur, "name"));
                        o.put("enabled", Db.bool(cur, "enabled") == 1);
                        o.put("state", Db.str(cur, "state"));
                        arr.put(o);
                    }
                } finally { cur.close(); }
                root.put("skills", arr);
                skillsSnapOk = Db.exportSnapshot(ctx, "skills.public.json", root.toString());
                if (!skillsSnapOk) Log.w(TAG, "skill snapshot publish FAILED (will retry)");
            } catch (Throwable t) {
                skillsSnapOk = false;
                Log.w(TAG, "skill snapshot publish error: " + t);
            }
        }
    }

    /* ================================================================ migration */

    /**
     * One-time import of the T9-UI-02 legacy JSON files into the unified DB.
     *
     * R1 idempotence contract:
     *   marker row + data inserts commit in ONE transaction; the file is archived only
     *   after that commit.  Therefore:
     *     - crash mid-import        -> no marker, transaction rolled back, retry is clean;
     *     - crash after commit,
     *       before rename (or rename failure) -> marker present, file still there: skip
     *       import and archive the leftover -- never a duplicate;
     *     - multiple restarts       -> after the marker exists, import never runs again.
     *   A partial import left by the pre-R1 build is repaired because the import rewrites
     *   the whole table from the legacy file inside the transaction (the file is the only
     *   source of truth in the migration window; post-migration rows are protected by the
     *   marker).
     */
    private void migrateLegacyFiles() {
        importAlarms();
        importSkills();
    }

    private void importAlarms() {
        File f = new File(ctx.getFilesDir(), "skills_alarms.json");
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ensureMigrationTable(db);
        if (migrationDone(db, "alarms_v1")) {
            if (f.isFile()) renameImported(f);      /* committed earlier, archive leftover */
            return;
        }
        if (!f.isFile()) return;                    /* nothing to migrate */
        try {
            JSONArray arr = new JSONObject(readAll(f)).optJSONArray("alarms");
            db.beginTransaction();
            int n = 0;
            try {
                db.delete("alarms", null, null);    /* repair any partial pre-R1 import */
                if (arr != null) {
                    for (int i = 0; i < arr.length(); i++) {
                        JSONObject o = arr.optJSONObject(i);
                        if (o == null) continue;
                        String time = o.optString("time", "");
                        if (time.length() == 0) continue;
                        ContentValues v = new ContentValues();
                        v.put("time", time);
                        v.put("label", o.optString("label", ""));
                        v.put("enabled", o.optBoolean("on", true) ? 1 : 0);
                        v.put("created_ms", Db.now());
                        db.insert("alarms", null, v);
                        n++;
                    }
                }
                markMigration(db, "alarms_v1", n);
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();                /* crash here = rollback, no marker */
            }
            Log.i(TAG, "alarms migrated: " + n);
            renameImported(f);                      /* only after the commit */
        } catch (Throwable t) {
            Log.w(TAG, "alarm migration failed (will retry next start): " + t);
        }
    }

    private void importSkills() {
        File f = new File(ctx.getFilesDir(), "skills.json");
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ensureMigrationTable(db);
        if (migrationDone(db, "skills_v1")) {
            if (f.isFile()) renameImported(f);
            return;
        }
        if (!f.isFile()) return;
        try {
            JSONObject root = new JSONObject(readAll(f));
            JSONObject skills = root.optJSONObject("skills");
            db.beginTransaction();
            int n = 0;
            try {
                db.delete("skills", null, null);    /* repair any partial pre-R1 import */
                if (skills != null) {
                    java.util.Iterator<String> it = skills.keys();
                    while (it.hasNext()) {
                        String id = it.next();
                        JSONObject o = skills.optJSONObject(id);
                        boolean on = o == null ? true : o.optBoolean("enabled", true);
                        ContentValues v = new ContentValues();
                        v.put("id", id);
                        v.put("name", id);
                        v.put("enabled", on ? 1 : 0);
                        v.put("state", on ? "on" : "off");
                        v.put("sort", n);
                        db.insertWithOnConflict("skills", null, v,
                                SQLiteDatabase.CONFLICT_REPLACE);
                        n++;
                    }
                }
                markMigration(db, "skills_v1", n);
                db.setTransactionSuccessful();
            } finally {
                db.endTransaction();
            }
            Log.i(TAG, "skills migrated: " + n);
            renameImported(f);
        } catch (Throwable t) {
            Log.w(TAG, "skill migration failed (will retry next start): " + t);
        }
    }

    private void ensureMigrationTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE IF NOT EXISTS migration (" +
                   "name TEXT PRIMARY KEY, done_ms INTEGER NOT NULL, items INTEGER NOT NULL)");
    }

    private boolean migrationDone(SQLiteDatabase db, String name) {
        Cursor cur = db.rawQuery("SELECT 1 FROM migration WHERE name=?",
                new String[]{ name });
        try { return cur.moveToFirst(); } finally { cur.close(); }
    }

    private void markMigration(SQLiteDatabase db, String name, int items) {
        ContentValues v = new ContentValues();
        v.put("name", name);
        v.put("done_ms", Db.now());
        v.put("items", items);
        db.insertWithOnConflict("migration", null, v, SQLiteDatabase.CONFLICT_REPLACE);
    }

    private static boolean renameImported(File f) {
        File done = new File(f.getParentFile(), f.getName() + ".imported");
        return f.renameTo(done);
    }

    private static String readAll(File f) {
        try {
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            try {
                byte[] b = new byte[(int) f.length()];
                int n = in.read(b);
                return n <= 0 ? "" : new String(b, 0, n, "UTF-8");
            } finally { in.close(); }
        } catch (Throwable t) {
            return "";
        }
    }

    private static String normTag(String tag) {
        if (tag == null || tag.length() == 0) return "事实";
        if (tag.equals("偏好") || tag.equals("事实") || tag.equals("关系") || tag.equals("设备"))
            return tag;
        return "事实";
    }
}
