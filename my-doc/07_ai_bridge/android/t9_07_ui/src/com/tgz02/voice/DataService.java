/*
 * DataService.java -- T9-UI-03: the ONE data access layer for structured product data.
 *
 * Everything the UI does with memory / alarms / schedules / skills goes through this class;
 * no page writes SQL, no page touches the DB helper.  After every successful mutation the
 * service republishes the snapshots the worker reads (memory.public.json / alarms.public.json)
 * so the C side never opens SQLite.
 *
 * Migration: skills_alarms.json (T9-UI-02's early validation file) is imported once on first
 * run, verified, then renamed to .imported -- it is never used as a data source again and can
 * never produce duplicate rows.
 */
package com.tgz02.voice;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class DataService {

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
    }

    /* --------------------------------------------------------------- singleton */

    private static DataService sInst;
    private final Context ctx;

    static synchronized DataService get(Context c) {
        if (sInst == null) sInst = new DataService(c.getApplicationContext());
        return sInst;
    }

    private DataService(Context c) { ctx = c; migrateLegacyFiles(); }

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
            "SELECT id,time,label,enabled,created_ms FROM alarms ORDER BY time", null);
        try {
            while (cur.moveToNext()) {
                Alarm a = new Alarm();
                a.id = Db.lng(cur, "id");
                a.time = Db.str(cur, "time");
                a.label = Db.str(cur, "label");
                a.enabled = Db.bool(cur, "enabled") == 1;
                a.createdMs = Db.lng(cur, "created_ms");
                out.add(a);
            }
        } finally { cur.close(); }
        return out;
    }

    long alarmAdd(String time, String label, boolean enabled) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("time", time);
        v.put("label", label == null ? "" : label);
        v.put("enabled", enabled ? 1 : 0);
        v.put("created_ms", Db.now());
        long id = db.insert("alarms", null, v);
        if (id > 0) publishAlarmSnapshot();
        return id;
    }

    boolean alarmSetEnabled(long id, boolean on) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", on ? 1 : 0);
        int n = db.update("alarms", v, "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishAlarmSnapshot();
        return n > 0;
    }

    boolean alarmDelete(long id) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        int n = db.delete("alarms", "id=?", new String[]{ String.valueOf(id) });
        if (n > 0) publishAlarmSnapshot();
        return n > 0;
    }

    /* ================================================================ skills */

    boolean skillSetEnabled(String id, boolean on) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("enabled", on ? 1 : 0);
        v.put("last_used_ms", Db.now());
        int n = db.update("skills", v, "id=?", new String[]{ id });
        if (n == 0) {                           /* first touch: register the row */
            v.put("id", id);
            v.put("name", id);
            v.put("state", "on");
            n = (int) db.insertWithOnConflict("skills", null, v,
                    SQLiteDatabase.CONFLICT_REPLACE);
        }
        publishSkillSnapshot();
        return n > 0;
    }

    void skillTouch(String id) {
        SQLiteDatabase db = Db.get(ctx).getWritableDatabase();
        ContentValues v = new ContentValues();
        v.put("last_used_ms", Db.now());
        db.update("skills", v, "id=?", new String[]{ id });
    }

    /* ================================================================ snapshots */

    /** worker-readable memory snapshot; published after every memory mutation */
    private void publishMemorySnapshot() {
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
            Db.exportSnapshot(ctx, "memory.public.json", root.toString());
        } catch (Throwable ignored) { }
    }

    private void publishAlarmSnapshot() {
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
            Db.exportSnapshot(ctx, "alarms.public.json", root.toString());
        } catch (Throwable ignored) { }
    }

    private void publishSkillSnapshot() {
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
            Db.exportSnapshot(ctx, "skills.public.json", root.toString());
        } catch (Throwable ignored) { }
    }

    /* ================================================================ migration */

    /**
     * One-time import of the T9-UI-02 legacy JSON files into the unified DB:
     *   skills_alarms.json -> alarms, skills.json -> skills.
     * After a verified import the source file is renamed to .imported so it can never be
     * re-imported into duplicates; a failed import leaves it in place for the next start.
     */
    private void migrateLegacyFiles() {
        importAlarms();
        importSkills();
    }

    private void importAlarms() {
        File f = new File(ctx.getFilesDir(), "skills_alarms.json");
        if (!f.isFile()) return;
        try {
            String raw = readAll(f);
            JSONObject root = new JSONObject(raw);
            JSONArray arr = root.optJSONArray("alarms");
            int n = 0;
            if (arr != null) {
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject o = arr.optJSONObject(i);
                    if (o == null) continue;
                    String time = o.optString("time", "");
                    if (time.length() == 0) continue;
                    alarmAdd(time, o.optString("label", ""), o.optBoolean("on", true));
                    n++;
                }
            }
            if (renameImported(f)) {
                android.util.Log.i("T9DATA", "alarms migrated: " + n);
            }
        } catch (Throwable t) {
            /* leave the file in place: the next start retries */
            android.util.Log.w("T9DATA", "alarm migration failed: " + t);
        }
    }

    private void importSkills() {
        File f = new File(ctx.getFilesDir(), "skills.json");
        if (!f.isFile()) return;
        try {
            String raw = readAll(f);
            JSONObject root = new JSONObject(raw);
            JSONObject skills = root.optJSONObject("skills");
            int n = 0;
            if (skills != null) {
                java.util.Iterator<String> it = skills.keys();
                while (it.hasNext()) {
                    String id = it.next();
                    JSONObject o = skills.optJSONObject(id);
                    boolean on = o == null ? true : o.optBoolean("enabled", true);
                    skillSetEnabled(id, on);
                    n++;
                }
            }
            if (renameImported(f)) {
                android.util.Log.i("T9DATA", "skills migrated: " + n);
            }
        } catch (Throwable t) {
            android.util.Log.w("T9DATA", "skill migration failed: " + t);
        }
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
