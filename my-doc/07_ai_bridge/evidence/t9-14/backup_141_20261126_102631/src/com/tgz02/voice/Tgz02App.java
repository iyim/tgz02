/*
 * Tgz02App.java -- T9-10-R1: process-aware application bootstrap.
 *
 * Every process of an Android app runs its own Application.onCreate(), so before this fix the
 * :backend process also initialised DataService (SQLite + migrations + snapshot publishing) and
 * also called startForegroundService(BackendService) on itself. That contradicted the T9-10
 * architecture rule ("SQLite is owned by the UI process; the backend never touches the database")
 * and could run the migration path twice.
 *
 * Now:
 *   UI process (com.tgz02.voice)          -> theme, DataService (DB/migrations/snapshots), start backend
 *   :backend (com.tgz02.voice:backend)    -> nothing but a log line; BackendService does the rest
 */
package com.tgz02.voice;

import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

import java.io.BufferedReader;
import java.io.FileReader;

public class Tgz02App extends Application {

    static final String TAG = "T910APP";
    static final String BACKEND_SUFFIX = ":backend";

    @Override
    public void onCreate()
    {
        super.onCreate();

        String proc = currentProcessName();
        if (proc != null && proc.endsWith(BACKEND_SUFFIX)) {
            /* The backend process must not create the database, must not run migrations and must
             * not start the service again (it IS the service process). */
            Log.i(TAG, "process=" + proc + " backend: minimal init, no DataService, no service start");
            appendDiag(this, "proc=" + proc + " action=backend-minimal (no DataService, no service start)");
            return;
        }

        Log.i(TAG, "process=" + proc + " ui: DataService + backend service start");
        appendDiag(this, "proc=" + proc + " action=ui (DataService get + backend start)");
        Ui3.setMode(SettingsHomeActivity.readTheme());

        /* T9-UI-03-R1: run migrations and publish all snapshots at process start -- the worker
         * must be able to read memory/alarms/skills even before the user opens any page. */
        DataService.get(this);

        /* T9-10: bring the backend up with the UI process, so the Binder endpoint exists even if
         * the user never opens the home page. START_STICKY + foreground keeps it alive across UI
         * kills; the service itself never runs as root. */
        try {
            Intent i = new Intent(this, BackendService.class);
            if (Build.VERSION.SDK_INT >= 26) startForegroundService(i);
            else startService(i);
            Log.i(TAG, "backend service start requested");
        } catch (Throwable t) {
            Log.w(TAG, "cannot start backend service: " + t);
        }
    }

    /** the process name as the kernel sees it; no permission needed, works on 8.1 (API 15+) */
    static String currentProcessName()
    {
        BufferedReader r = null;
        try {
            r = new BufferedReader(new FileReader("/proc/self/cmdline"));
            String s = r.readLine();
            if (s == null) return null;
            int z = s.indexOf('\0');
            if (z >= 0) s = s.substring(0, z);
            return s.trim();
        } catch (Throwable t) {
            return null;
        } finally {
            if (r != null) try { r.close(); } catch (Throwable ignored) { }
        }
    }

    /**
     * T9-10-R1: the process decision is appended to a small file as well as logcat, because this
     * device's logcat ring is flooded by factory loggers and drops our lines within seconds. The
     * file is the durable evidence that the UI process and the backend process take different
     * bootstrap paths.
     */
    static void appendDiag(android.content.Context ctx, String line)
    {
        java.io.FileOutputStream fos = null;
        try {
            java.io.File f = new java.io.File(ctx.getFilesDir(), "bootstrap.log");
            fos = new java.io.FileOutputStream(f, true);
            String ts = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", java.util.Locale.US)
                    .format(new java.util.Date());
            fos.write((ts + " " + line + "\n").getBytes("UTF-8"));
            fos.flush();
        } catch (Throwable ignored) {
        } finally {
            if (fos != null) try { fos.close(); } catch (Throwable ignored) { }
        }
    }
}
