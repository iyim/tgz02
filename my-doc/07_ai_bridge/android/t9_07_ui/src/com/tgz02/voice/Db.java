/*
 * Db.java -- T9-UI-03: the unified SQLite persistence layer (tgz02.db).
 *
 * Architecture decision (auditor, T9-UI-03 amendment):
 *   - ONE database for all structured product data; no per-feature JSON files.
 *   - The DB lives in the app's private storage (databases/tgz02.db), owned by this app's
 *     uid; no other app can touch it.  The UI never writes SQL directly -- every access
 *     goes through DataService (the in-process data service).
 *   - The worker (root, C) never opens the DB.  It reads exported snapshots
 *     (memory.public.json / alarms.public.json under the t9_ui dir) that DataService
 *     republishes atomically after every change -- the same pattern as status.public.json.
 *   - WAL mode for safe concurrent readers; version-gated migrations in one place.
 *
 * Tables (v1):
 *   memory_items   long-term memory: tag/text/enabled/pending/src/hits/timestamps
 *   alarms         alarm tasks: time/label/enabled/last_fired_ms
 *   schedules      calendar events: start_ms/title/place/repeat
 *   skills         skill registry: id/name/enabled/state/sort
 *   execution_logs execution records of skills (T10 will write these)
 */
package com.tgz02.voice;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

final class Db extends SQLiteOpenHelper {

    static final String NAME = "tgz02.db";
    static final int VERSION = 2;   /* v2: alarms.repeat (T9-16 自有闹钟) */

    /* ------------------------------------------------------------------ schema */

    private static final String SQL_MEMORY =
        "CREATE TABLE memory_items (" +
        "  id INTEGER PRIMARY KEY AUTOINCREMENT," +
        "  tag TEXT NOT NULL DEFAULT '事实'," +
        "  text TEXT NOT NULL," +
        "  enabled INTEGER NOT NULL DEFAULT 1," +
        "  pending INTEGER NOT NULL DEFAULT 0," +
        "  src TEXT NOT NULL DEFAULT '手动添加'," +
        "  hits INTEGER NOT NULL DEFAULT 0," +
        "  created_ms INTEGER NOT NULL," +
        "  updated_ms INTEGER NOT NULL)";

    private static final String SQL_ALARMS =
        "CREATE TABLE alarms (" +
        "  id INTEGER PRIMARY KEY AUTOINCREMENT," +
        "  time TEXT NOT NULL," +                 /* HH:MM */
        "  label TEXT NOT NULL DEFAULT ''," +
        "  enabled INTEGER NOT NULL DEFAULT 1," +
        "  last_fired_ms INTEGER NOT NULL DEFAULT 0," +
        "  repeat INTEGER NOT NULL DEFAULT 0," +   /* T9-16: bit0=周一..bit6=周日, 0=一次性 */
        "  snooze_count INTEGER NOT NULL DEFAULT 0," + /* T9-16: 连续贪睡计数 */
        "  created_ms INTEGER NOT NULL)";

    private static final String SQL_SCHEDULES =
        "CREATE TABLE schedules (" +
        "  id INTEGER PRIMARY KEY AUTOINCREMENT," +
        "  start_ms INTEGER NOT NULL," +
        "  title TEXT NOT NULL," +
        "  place TEXT NOT NULL DEFAULT ''," +
        "  repeat TEXT NOT NULL DEFAULT ''," +   /* '' | 每周一、三 | ... */
        "  remind_ms INTEGER NOT NULL DEFAULT 600000," +
        "  created_ms INTEGER NOT NULL)";

    private static final String SQL_SKILLS =
        "CREATE TABLE skills (" +
        "  id TEXT PRIMARY KEY," +               /* 'alarm' | 'calendar' | ... */
        "  name TEXT NOT NULL," +
        "  enabled INTEGER NOT NULL DEFAULT 0," +
        "  state TEXT NOT NULL DEFAULT 'planned'," +  /* on|unavailable|planned */
        "  sort INTEGER NOT NULL DEFAULT 0," +
        "  last_used_ms INTEGER NOT NULL DEFAULT 0)";

    private static final String SQL_EXELOG =
        "CREATE TABLE execution_logs (" +
        "  id INTEGER PRIMARY KEY AUTOINCREMENT," +
        "  skill TEXT NOT NULL," +
        "  action TEXT NOT NULL," +
        "  detail TEXT NOT NULL DEFAULT ''," +
        "  ok INTEGER NOT NULL DEFAULT 1," +
        "  ts_ms INTEGER NOT NULL)";

    /* ------------------------------------------------------------------ singleton */

    private static Db sInst;

    static synchronized Db get(Context c) {
        if (sInst == null) sInst = new Db(c.getApplicationContext());
        return sInst;
    }

    private Db(Context c) {
        super(c, NAME, null, VERSION);
        setWriteAheadLoggingEnabled(true);      /* WAL: readers never block the writer */
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL(SQL_MEMORY);
        db.execSQL(SQL_ALARMS);
        db.execSQL(SQL_SCHEDULES);
        db.execSQL(SQL_SKILLS);
        db.execSQL(SQL_EXELOG);
        db.execSQL("CREATE INDEX idx_memory_pending ON memory_items(pending)");
        db.execSQL("CREATE INDEX idx_memory_enabled ON memory_items(enabled)");
        db.execSQL("CREATE INDEX idx_alarms_enabled ON alarms(enabled)");
        db.execSQL("CREATE INDEX idx_schedules_start ON schedules(start_ms)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldV, int newV) {
        /* v1 is the first version; future migrations go here, one step per version.
         * Never drop user data in a migration. */
        if (oldV < 2) {
            /* T9-16: 自有闹钟的重复规则位（bit0=周一 ... bit6=周日，0=一次性）。
             * 旧列已在 v1；老数据 repeat 默认 0 = 一次性，行为不变。 */
            db.execSQL("ALTER TABLE alarms ADD COLUMN repeat INTEGER NOT NULL DEFAULT 0");
            db.execSQL("ALTER TABLE alarms ADD COLUMN snooze_count INTEGER NOT NULL DEFAULT 0");
            db.execSQL("CREATE INDEX idx_alarms_repeat ON alarms(repeat)");
        }
    }

    /* ------------------------------------------------------------------ helpers */

    static long now() { return System.currentTimeMillis(); }

    static String str(Cursor cur, String col) {
        return cur.getString(cur.getColumnIndexOrThrow(col));
    }

    static long lng(Cursor cur, String col) {
        return cur.getLong(cur.getColumnIndexOrThrow(col));
    }

    static int bool(Cursor cur, String col) {
        return cur.getInt(cur.getColumnIndexOrThrow(col));
    }

    static int intCol(Cursor cur, String col) {
        return cur.getInt(cur.getColumnIndexOrThrow(col));
    }

    /** atomic tmp+rename export of a snapshot file readable by the worker (0644).
     *  The snapshots/ subdir is prepared once by the deploy script (owned by this app's
     *  uid), exactly like the inbox/ dir -- the t9_ui top dir itself is root-owned. */
    static boolean exportSnapshot(Context c, String name, String json) {
        try {
            File dir = new File("/data/local/tmp/t9_ui/snapshots");
            if (!dir.isDirectory() && !dir.mkdirs()) return false;
            File tmp = new File(dir, "." + name + ".tmp");
            File dst = new File(dir, name);
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(json.getBytes("UTF-8"));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(dst)) { tmp.delete(); return false; }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }
}
