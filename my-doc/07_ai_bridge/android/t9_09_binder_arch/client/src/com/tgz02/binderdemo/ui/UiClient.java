package com.tgz02.binderdemo.ui;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.tgz02.binderdemo.ITgDemo;
import com.tgz02.binderdemo.ITgDemoCallback;

/**
 * T9-09 experiment client: a normal, unprivileged APK that binds our own service, calls it,
 * receives callbacks from it, and drives the C child process behind it.
 *
 * The screen is intentionally plain: it is a measurement instrument, not product UI. Every
 * number shown here is read back over Binder, so the screenshot itself is evidence.
 */
public class UiClient extends Activity {

    private static final String SVC_PKG = "com.tgz02.binderdemo.svc";
    private static final String ACTION = "com.tgz02.binderdemo.BIND";

    private TextView headline;
    private TextView log;
    private TextView connState;
    private StringBuilder buf = new StringBuilder();

    private ITgDemo svc;
    private boolean bound;
    private int cbTicks;

    private final Handler ui = new Handler(Looper.getMainLooper());

    private final ITgDemoCallback cb = new ITgDemoCallback.Stub() {
        @Override public void onTick(int seq, long ts) {
            cbTicks = seq;
            ui.post(() -> refreshHeadline(null));
        }
        @Override public void onNativeLine(final String line) {
            ui.post(() -> append("native> " + line));
        }
    };

    private final ServiceConnection conn = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder binder) {
            svc = ITgDemo.Stub.asInterface(binder);
            bound = true;
            append("bound: " + name.flattenToShortString() + " binder=" + binder.getClass().getName());
            try {
                append("svcInfo: " + svc.svcInfo());
                svc.registerCallback(cb);
                append("callback registered");
            } catch (RemoteException e) {
                append("registerCallback failed: " + e);
            }
            refreshHeadline(null);
        }

        @Override public void onServiceDisconnected(ComponentName name) {
            bound = false;
            svc = null;
            append("DISCONNECTED (process died?) " + name.flattenToShortString());
            refreshHeadline("disconnected");
        }
    };

    @Override protected void onCreate(Bundle b) {
        super.onCreate(b);

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Color.parseColor("#101820"));
        int pad = dp(14);
        root.setPadding(pad, pad, pad, pad);

        headline = new TextView(this);
        headline.setTextColor(Color.parseColor("#8FE3B0"));
        headline.setTextSize(TypedValue.COMPLEX_UNIT_SP, 17);
        root.addView(headline);

        connState = new TextView(this);
        connState.setTextColor(Color.parseColor("#FFC46B"));
        connState.setTextSize(TypedValue.COMPLEX_UNIT_SP, 15);
        root.addView(connState);

        root.addView(buttonRow(new String[]{"bind", "unbind", "echo", "add"},
                new Runnable[]{this::doBind, this::doUnbind, this::doEcho, this::doAdd}));
        root.addView(buttonRow(new String[]{"start C", "ask C", "stop C", "clear"},
                new Runnable[]{this::doStartNative, this::doAskNative, this::doStopNative, this::doClear}));

        Button quit = new Button(this);
        quit.setText("finish UI (service must survive)");
        quit.setAllCaps(false);
        quit.setOnClickListener(v -> {
            append("finishing activity -- service should keep running");
            finish();
        });
        root.addView(quit, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, dp(48)));

        log = new TextView(this);
        log.setTextColor(Color.parseColor("#C8D4E0"));
        log.setTextSize(TypedValue.COMPLEX_UNIT_SP, 13);
        log.setGravity(Gravity.TOP);
        ScrollView sc = new ScrollView(this);
        sc.addView(log);
        root.addView(sc, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        setContentView(root);
        refreshHeadline(null);
        append("ui pid=" + Process.myPid() + " uid=" + Process.myUid());
        doBind();
    }

    @Override protected void onResume() {
        super.onResume();
        // a restarted UI re-attaches to the same service instance
        if (svc == null) doBind();
    }

    @Override protected void onDestroy() {
        try { if (svc != null) svc.unregisterCallback(cb); } catch (Throwable ignored) { }
        if (bound) { try { unbindService(conn); } catch (Throwable ignored) { } }
        super.onDestroy();
    }

    private View buttonRow(String[] labels, Runnable[] actions) {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        for (int i = 0; i < labels.length; i++) {
            Button bt = new Button(this);
            bt.setText(labels[i]);
            bt.setAllCaps(false);
            bt.setTextSize(TypedValue.COMPLEX_UNIT_SP, 14);
            final Runnable r = actions[i];
            bt.setOnClickListener(v -> r.run());
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, dp(52), 1f);
            row.addView(bt, lp);
        }
        return row;
    }

    private void doBind() {
        if (bound) { append("already bound"); return; }
        Intent i = new Intent(ACTION).setPackage(SVC_PKG);
        boolean ok = bindService(i, conn, Context.BIND_AUTO_CREATE);
        append("bindService -> " + ok);
        if (!ok) refreshHeadline("bind refused");
    }

    private void doUnbind() {
        if (!bound) { append("not bound"); return; }
        try { if (svc != null) svc.unregisterCallback(cb); } catch (Throwable ignored) { }
        unbindService(conn);
        bound = false; svc = null;
        append("unbound");
        refreshHeadline("unbound");
    }

    private void doEcho() {
        if (svc == null) { append("no service"); return; }
        try { append("echo -> " + svc.echo("hello-" + System.currentTimeMillis() % 100000)); }
        catch (RemoteException e) { append("echo failed: " + e); }
    }

    private void doAdd() {
        if (svc == null) { append("no service"); return; }
        try { append("add(19,23) -> " + svc.add(19, 23)); }
        catch (RemoteException e) { append("add failed: " + e); }
    }

    private void doStartNative() {
        if (svc == null) { append("no service"); return; }
        try {
            long t0 = System.currentTimeMillis();
            int pid = svc.startNative();
            append("startNative -> pid=" + pid + " (" + (System.currentTimeMillis() - t0) + " ms)");
        } catch (RemoteException e) { append("startNative failed: " + e); }
    }

    private void doAskNative() {
        if (svc == null) { append("no service"); return; }
        try { append("askNative(PING) -> " + svc.askNative("PING")); }
        catch (RemoteException e) { append("askNative failed: " + e); }
    }

    private void doStopNative() {
        if (svc == null) { append("no service"); return; }
        try { append("stopNative -> " + svc.stopNative()); }
        catch (RemoteException e) { append("stopNative failed: " + e); }
    }

    private void doClear() {
        buf.setLength(0);
        log.setText("");
    }

    private void refreshHeadline(String note) {
        String s = "UI pid " + Process.myPid();
        if (svc != null) {
            try {
                s += "   |   SVC pid " + svc.svcPid() + "   |   callbacks " + cbTicks;
            } catch (Throwable t) {
                s += "   |   svc call failed: " + t;
            }
        } else {
            s += "   |   not connected";
        }
        if (note != null) s += "   |   " + note;
        headline.setText(s);
        connState.setText(bound ? "BINDER LINK UP (different process)" : "no binder link");
    }

    private void append(String line) {
        buf.append(line).append('\n');
        log.setText(buf.toString());
    }

    private int dp(int v) {
        return (int) (v * getResources().getDisplayMetrics().density + 0.5f);
    }
}
