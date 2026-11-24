/*
 * Probe.java -- T9-04 minimal AIDL client for the factory voice backend.
 *
 * What it does, in this order, and logs every step of it:
 *   1. explicit Intent  component = com.alibaba.ailabs.genie.smartapp /
 *                                    com.alibaba.ailabs.geniesdk.NativeService
 *                       action    = com.yunos.tv.alitvasr.service
 *   2. bindService(BIND_AUTO_CREATE)   -- records the return value, onNullBinding, onBindingDied
 *   3. records the returned IBinder class, pingBinder(), getInterfaceDescriptor()
 *   4. IAliTVASR.Stub.asInterface(binder)
 *   5. playTTS(text)                      transaction 4
 *   6. playTTSWithCallback(text, cb)      transaction 9   (cb counts start/stop/exception)
 *   7. stopTTS()                          transaction 5
 *   8. playTTSWithCallback(text2, cb2)    second round, to see whether it repeats
 *
 * Every result line starts with "RESULT " so the device evidence can be parsed mechanically.
 * The probe never changes anything: no Activity of the factory app is started, no factory
 * configuration is written, no process is killed.
 */
package com.tgz02.aidltest;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.Process;
import android.os.RemoteException;
import android.util.Log;

import com.yunos.tv.alitvasr.IAliTVASR;
import com.yunos.tv.alitvasr.IAliTVASRTTSCallback;

import java.io.FileInputStream;
import java.util.List;

public final class Probe implements ServiceConnection {

    public static final String TAG = "T904";
    static final String PKG = "com.alibaba.ailabs.genie.smartapp";
    static final String ACTION = "com.yunos.tv.alitvasr.service";
    static final String CLS = "com.alibaba.ailabs.geniesdk.NativeService";

    static final long WAIT_TTS_MS = 12000;

    final Context ctx;
    final String mode;
    final boolean exitWhenDone;
    final long t0 = System.currentTimeMillis();

    Handler h;
    IAliTVASR api;
    IBinder binder;
    boolean bound, connected, finished;
    Cb cb1, cb2, cbBg;

    public Probe(Context ctx, String mode, boolean exitWhenDone) {
        this.ctx = ctx;
        this.mode = mode;
        this.exitWhenDone = exitWhenDone;
    }

    /* ------------------------------------------------------------- logging */

    static void log(String s) {
        Log.i(TAG, s);
        System.out.println("T904: " + s);
        System.out.flush();
    }

    static String procName() {
        try {
            FileInputStream in = new FileInputStream("/proc/self/cmdline");
            byte[] b = new byte[128];
            int n = in.read(b);
            in.close();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < n; i++) {
                if (b[i] == 0) break;
                sb.append((char) b[i]);
            }
            return sb.toString();
        } catch (Throwable t) {
            return "err:" + t;
        }
    }

    static String topActivity(Context ctx) {
        try {
            ActivityManager am = (ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
            List<ActivityManager.RunningTaskInfo> t = am.getRunningTasks(1);
            if (t != null && !t.isEmpty() && t.get(0).topActivity != null) {
                return t.get(0).topActivity.flattenToShortString();
            }
        } catch (Throwable e) {
            return "err:" + e;
        }
        return "unknown";
    }

    static String screenOn(Context ctx) {
        try {
            PowerManager pm = (PowerManager) ctx.getSystemService(Context.POWER_SERVICE);
            return String.valueOf(pm.isScreenOn());
        } catch (Throwable e) {
            return "err:" + e;
        }
    }

    /* ---------------------------------------------------------------- flow */

    public void begin() {
        h = new Handler(Looper.getMainLooper());
        log("=== BEGIN mode=" + mode
                + " pid=" + Process.myPid()
                + " uid=" + Process.myUid()
                + " app=" + ctx.getPackageName()
                + " process=" + procName()
                + " sdk=" + Build.VERSION.SDK_INT);
        log("env top=" + topActivity(ctx) + " screenOn=" + screenOn(ctx));

        Intent i = new Intent();
        i.setComponent(new ComponentName(PKG, CLS));
        i.setAction(ACTION);
        log("bind intent: " + i.toUri(0));
        try {
            bound = ctx.bindService(i, this, Context.BIND_AUTO_CREATE);
        } catch (Throwable t) {
            log("bindService threw " + t);
            bound = false;
        }
        log("RESULT bindService=" + bound);
        if (!bound) done("bind_failed");
    }

    @Override
    public void onServiceConnected(ComponentName name, IBinder service) {
        connected = true;
        log("onServiceConnected component=" + name.flattenToShortString()
                + " binder=" + (service == null ? "null" : service.getClass().getName())
                + " alive=" + (service != null && service.pingBinder()));
        if (service == null) {
            done("null_binder");
            return;
        }
        binder = service;
        String desc;
        try {
            desc = service.getInterfaceDescriptor();
        } catch (Throwable t) {
            desc = "err:" + t;
        }
        log("binder.descriptor=" + desc);
        api = IAliTVASR.Stub.asInterface(service);
        log("RESULT asInterface=" + (api == null ? "null" : api.getClass().getName()));
        if (api == null) {
            done("asInterface_null");
            return;
        }
        h.postDelayed(new Runnable() {
            public void run() {
                stepPlainTts();
            }
        }, 500);
    }

    @Override
    public void onServiceDisconnected(ComponentName name) {
        log("onServiceDisconnected " + name.flattenToShortString());
        api = null;
    }

    @Override
    public void onBindingDied(ComponentName name) {
        log("onBindingDied " + name.flattenToShortString());
    }

    @Override
    public void onNullBinding(ComponentName name) {
        log("onNullBinding (the factory onBind returned null for this intent) " + name.flattenToShortString());
        done("null_binding");
    }

    void stepPlainTts() {
        boolean r;
        try {
            r = api.playTTS("T9 AIDL plain TTS test");
        } catch (Throwable t) {
            log("playTTS threw " + t);
            r = false;
        }
        log("RESULT playTTS(4)=" + r);
        h.postDelayed(new Runnable() {
            public void run() {
                stepCallbackTts(1);
            }
        }, 3000);
    }

    void stepCallbackTts(final int round) {
        Cb cb = new Cb("cb" + round);
        if (round == 1) cb1 = cb;
        else cb2 = cb;
        boolean r;
        String text = round == 1 ? "T9 AIDL 回调测试 第一轮" : "T9 AIDL 回调测试 第二轮";
        try {
            r = api.playTTSWithCallback(text, cb);
        } catch (Throwable t) {
            log("playTTSWithCallback threw " + t);
            r = false;
        }
        log("RESULT playTTSWithCallback(9) round=" + round + " = " + r);
        h.postDelayed(new Runnable() {
            public void run() {
                if (round == 1) stepStop();
                else summarize();
            }
        }, WAIT_TTS_MS);
    }

    void stepStop() {
        Cb c = cb1;
        log("after round 1: onTtsStart=" + (c == null ? -1 : c.nStart)
                + " onTtsStop=" + (c == null ? -1 : c.nStop)
                + " onException=" + (c == null ? -1 : c.nExc));
        try {
            api.stopTTS();
            log("RESULT stopTTS(5)=ok");
        } catch (Throwable t) {
            log("stopTTS threw " + t);
        }
        h.postDelayed(new Runnable() {
            public void run() {
                stepCallbackTts(2);
            }
        }, 2000);
    }

    void summarize() {
        Cb a = cb1, b = cb2;
        log("RESULT round1 start=" + (a == null ? -1 : a.nStart)
                + " stop=" + (a == null ? -1 : a.nStop)
                + " exc=" + (a == null ? -1 : a.nExc));
        log("RESULT round2 start=" + (b == null ? -1 : b.nStart)
                + " stop=" + (b == null ? -1 : b.nStop)
                + " exc=" + (b == null ? -1 : b.nExc));
        done("complete");
    }

    /**
     * Called by the Activity after it went to the background: same call, different top
     * activity. This is the control experiment for the ClientManager.canPlayTts() gate.
     */
    public void backgroundProbe(int delayMs) {
        if (h == null || api == null) {
            log("backgroundProbe skipped (not connected)");
            return;
        }
        h.postDelayed(new Runnable() {
            public void run() {
                log("=== background probe: env top=" + topActivity(ctx) + " screenOn=" + screenOn(ctx));
                cbBg = new Cb("cbBg");
                boolean r;
                try {
                    r = api.playTTSWithCallback("T9 AIDL 后台播放测试", cbBg);
                } catch (Throwable t) {
                    log("background playTTSWithCallback threw " + t);
                    r = false;
                }
                log("RESULT playTTSWithCallback(9) background=" + r);
                h.postDelayed(new Runnable() {
                    public void run() {
                        log("RESULT background start=" + cbBg.nStart + " stop=" + cbBg.nStop + " exc=" + cbBg.nExc);
                    }
                }, WAIT_TTS_MS);
            }
        }, delayMs);
    }

    void done(String verdict) {
        if (finished) return;
        finished = true;
        log("=== DONE verdict=" + verdict + " elapsed=" + (System.currentTimeMillis() - t0) + "ms");
        if (exitWhenDone) {
            h.postDelayed(new Runnable() {
                public void run() {
                    try {
                        if (bound) ctx.unbindService(Probe.this);
                    } catch (Throwable ignored) {
                    }
                    log("=== EXIT");
                    System.exit(0);
                }
            }, 500);
        }
    }

    /* ------------------------------------------------------------ callback */

    static final class Cb extends IAliTVASRTTSCallback.Stub {
        final String name;
        volatile int nStart, nStop, nExc;
        volatile String lastText = "";

        Cb(String name) {
            this.name = name;
        }

        void note(String what) {
            log(name + "." + what
                    + " t=" + (System.currentTimeMillis() - Probe.START.ms) + "ms"
                    + " thread=" + Thread.currentThread().getName()
                    + " pid=" + Process.myPid());
        }

        @Override
        public void onTtsStart(String text) throws RemoteException {
            nStart++;
            lastText = text == null ? "null" : text;
            note("onTtsStart(1) text=" + lastText);
        }

        @Override
        public void onTtsStop() throws RemoteException {
            nStop++;
            note("onTtsStop(2)");
        }

        @Override
        public void onException(String msg) throws RemoteException {
            nExc++;
            note("onException(3) msg=" + msg);
        }
    }

    /** shared clock so cb timestamps are comparable with the run */
    static final class START {
        static final long ms = System.currentTimeMillis();
        static void reset() {
        }
    }
}
