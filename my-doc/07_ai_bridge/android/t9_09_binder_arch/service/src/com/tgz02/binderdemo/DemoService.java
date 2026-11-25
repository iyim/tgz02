package com.tgz02.binderdemo;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.util.Log;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * T9-09 experiment service.
 *
 * Three things are proven by this class:
 *   1. it runs in its own process (:svc), so the UI and the "backend" can be killed separately;
 *   2. it is reachable over AIDL from a different package/signature (the product-UI case);
 *   3. it can host and drive a native (C) child process, which is the "C engine behind a
 *      Binder facade" shape of option C.
 *
 * It deliberately owns no voice code: this experiment must not touch the accepted stack.
 */
public class DemoService extends Service {

    private static final String TAG = "TgBinderDemoSvc";
    private static final String CHANNEL = "tg-demo";
    private static final int NOTIF_ID = 0x7099;
    public static final String ACTION_BIND = "com.tgz02.binderdemo.BIND";

    private final Handler main = new Handler(Looper.getMainLooper());
    private final CopyOnWriteArrayList<ITgDemoCallback> callbacks = new CopyOnWriteArrayList<>();
    private final AtomicInteger ticks = new AtomicInteger();
    private final AtomicInteger cbCount = new AtomicInteger();

    private java.lang.Process nativeProc;
    private BufferedWriter nativeIn;
    private BufferedReader nativeOut;
    private int nativePid = -1;
    private final long startedAt = System.currentTimeMillis();

    private final Runnable ticker = new Runnable() {
        @Override public void run() {
            int seq = ticks.incrementAndGet();
            long ts = System.currentTimeMillis();
            for (ITgDemoCallback cb : callbacks) {
                try {
                    cb.onTick(seq, ts);
                    cbCount.incrementAndGet();
                } catch (Throwable t) {
                    // a dead client must not take the service down
                    Log.w(TAG, "callback failed, dropping: " + t);
                    callbacks.remove(cb);
                }
            }
            main.postDelayed(this, 2000);
        }
    };

    private final ITgDemo.Stub binder = new ITgDemo.Stub() {
        @Override public String echo(String s) {
            return "svc:" + s;
        }

        @Override public int add(int a, int b) {
            return a + b;
        }

        @Override public int svcPid() {
            return Process.myPid();
        }

        @Override public String svcInfo() {
            return "pid=" + Process.myPid()
                 + " uid=" + Process.myUid()
                 + " proc=" + procName()
                 + " sdk=" + Build.VERSION.SDK_INT
                 + " up_ms=" + (System.currentTimeMillis() - startedAt)
                 + " callbacks=" + callbacks.size()
                 + " native_pid=" + nativePid;
        }

        @Override public void registerCallback(ITgDemoCallback cb) {
            if (cb != null && !callbacks.contains(cb)) callbacks.add(cb);
            Log.i(TAG, "registerCallback size=" + callbacks.size());
        }

        @Override public void unregisterCallback(ITgDemoCallback cb) {
            callbacks.remove(cb);
            Log.i(TAG, "unregisterCallback size=" + callbacks.size());
        }

        @Override public int callbackCount() {
            return cbCount.get();
        }

        @Override public int startNative() {
            return doStartNative();
        }

        @Override public int stopNative() {
            return doStopNative();
        }

        @Override public int nativePid() {
            return nativePid;
        }

        @Override public String askNative(String req) {
            if (nativeProc == null || nativeIn == null || nativeOut == null) {
                return "native:not-running";
            }
            try {
                nativeIn.write(req);
                nativeIn.write("\n");
                nativeIn.flush();
                String line = nativeOut.readLine();
                if (line != null) {
                    for (ITgDemoCallback cb : callbacks) {
                        try { cb.onNativeLine(line); } catch (Throwable ignored) { }
                    }
                    return line;
                }
                return "native:eof";
            } catch (Throwable t) {
                Log.w(TAG, "askNative failed", t);
                return "native:error:" + t;
            }
        }
    };

    @Override public void onCreate() {
        super.onCreate();
        startForegroundInternal();
        main.postDelayed(ticker, 2000);
        Log.i(TAG, "onCreate pid=" + Process.myPid() + " proc=" + procName());
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        // STICKY: if the system kills the process, it is recreated -- this is the "background
        // service that outlives the UI" property the architecture question asks about.
        return START_STICKY;
    }

    @Override public IBinder onBind(Intent intent) {
        Log.i(TAG, "onBind action=" + (intent == null ? "null" : intent.getAction())
                + " pid=" + Process.myPid());
        return binder;
    }

    @Override public void onDestroy() {
        main.removeCallbacks(ticker);
        doStopNative();
        Log.i(TAG, "onDestroy pid=" + Process.myPid());
        super.onDestroy();
    }

    // ---------------------------------------------------------------- native child

    private synchronized int doStartNative() {
        if (nativeProc != null) return nativePid;
        try {
            ProcessBuilder pb = new ProcessBuilder("/data/local/tmp/tg_echo_daemon");
            pb.redirectErrorStream(true);
            nativeProc = pb.start();
            nativeIn = new BufferedWriter(new OutputStreamWriter(nativeProc.getOutputStream()));
            nativeOut = new BufferedReader(new InputStreamReader(nativeProc.getInputStream()));
            // read the daemon's banner so the pid in its greeting is available immediately
            String banner = nativeOut.readLine();
            nativePid = parsePid(banner);
            Log.i(TAG, "native started banner=" + banner + " pid=" + nativePid);
            return nativePid > 0 ? nativePid : 1;
        } catch (Throwable t) {
            Log.w(TAG, "native start failed", t);
            nativeProc = null; nativeIn = null; nativeOut = null; nativePid = -1;
            return -1;
        }
    }

    private static int parsePid(String banner) {
        if (banner == null) return -1;
        int i = banner.indexOf("pid=");
        if (i < 0) return -1;
        int j = i + 4;
        int k = j;
        while (k < banner.length() && Character.isDigit(banner.charAt(k))) k++;
        if (k == j) return -1;
        try { return Integer.parseInt(banner.substring(j, k)); } catch (Throwable t) { return -1; }
    }

    private synchronized int doStopNative() {
        int pid = nativePid;
        try {
            if (nativeIn != null) {
                nativeIn.write("EXIT\n");
                nativeIn.flush();
            }
        } catch (Throwable ignored) { }
        try { if (nativeProc != null) nativeProc.destroy(); } catch (Throwable ignored) { }
        nativeProc = null; nativeIn = null; nativeOut = null; nativePid = -1;
        return pid;
    }

    // ---------------------------------------------------------------- misc

    private String procName() {
        try {
            java.io.BufferedReader r = new java.io.BufferedReader(
                    new java.io.FileReader("/proc/self/cmdline"));
            String s = r.readLine();
            r.close();
            return s == null ? "?" : s.replace('\0', ' ').trim();
        } catch (Throwable t) {
            return "?";
        }
    }

    private void startForegroundInternal() {
        NotificationManager nm = (NotificationManager) getSystemService(NOTIFICATION_SERVICE);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationChannel ch = new NotificationChannel(CHANNEL, "TG binder demo",
                    NotificationManager.IMPORTANCE_LOW);
            nm.createNotificationChannel(ch);
        }
        Notification.Builder b = (Build.VERSION.SDK_INT >= 26)
                ? new Notification.Builder(this, CHANNEL)
                : new Notification.Builder(this);
        b.setContentTitle("TG binder demo service")
         .setContentText("pid " + Process.myPid() + " -- experiment only")
         .setSmallIcon(android.R.drawable.stat_sys_data_bluetooth)
         .setOngoing(true);
        startForeground(NOTIF_ID, b.build());
    }
}

