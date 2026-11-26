/*
 * BackendClient.java -- T9-10: the UI's only business entry point.
 *
 * It speaks the product interface (ITgBackend) to BackendService in another process, and it keeps
 * the old VoiceBridgeClient API so every existing screen keeps compiling and behaving:
 *
 *   client.submit(text) / say(text) / requestStop(id) / requestModelTest(id)   -> over Binder
 *   client.setListener(l)                                                      -> events over Binder
 *   client.status() / play()                                                   -> cached snapshot
 *
 * Fallback: if the service is not reachable within BIND_TIMEOUT_MS (service disabled, backend
 * crashed, install in progress), this class starts a local VoiceBridgeClient and polls the files
 * itself, exactly as before T9-10. The fallback announces itself through onDiag("backend: local
 * fallback ..."), and the report records it as a transitional path -- not a second product entry.
 */
package com.tgz02.voice;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;

import com.tgz02.voice.ipc.ITgBackend;
import com.tgz02.voice.ipc.ITgBackendListener;

import java.util.concurrent.atomic.AtomicInteger;

public final class BackendClient {

    static final String TAG = "T910CLIENT";
    static final long BIND_TIMEOUT_MS = 3000;

    private final Context ctx;
    private final String page;
    private final Handler main = new Handler(Looper.getMainLooper());

    private VoiceBridgeClient.Listener listener;
    private ITgBackend backend;
    private boolean binding;
    private boolean revoked;               // stopPolling(): the page is gone, do not rebind
    private VoiceBridgeClient local;       // fallback poller, only when the service is unreachable
    private int bindRetries;               // consecutive failures before the local fallback starts
    static final int MAX_BIND_RETRIES = 3;

    private final VoiceBridgeClient.Status lastStatus = new VoiceBridgeClient.Status();
    private final VoiceBridgeClient.Play lastPlay = new VoiceBridgeClient.Play();

    private final AtomicInteger seq = new AtomicInteger();

    private final ITgBackendListener remoteListener = new ITgBackendListener.Stub() {
        @Override public void onEvent(final String kind, final String json) {
            main.post(new Runnable() { public void run() { deliver(kind, json); } });
        }
    };

    private final ServiceConnection conn = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder binder) {
            ITgBackend b = ITgBackend.Stub.asInterface(binder);
            backend = b;
            binding = false;
            bindRetries = 0;
            cancelFallbackWatchdog();
            stopFallback("binder connected");     // never poll the files while Binder works
            diag("backend: bound pid=" + safePid(b) + " (" + name.flattenToShortString() + ")"
                    + " channel=" + channel());
            try {
                b.registerListener(remoteListener);
                String s = b.statusJson();
                if (s != null && s.length() > 0) {
                    VoiceBridgeClient.Status st = VoiceBridgeClient.parseStatus(s);
                    if (st != null) { copyStatus(st); notifyStatus(st); }
                }
                VoiceBridgeClient.Play p = VoiceBridgeClient.parsePlay(b.playJson());
                if (p != null) { copyPlay(p); notifyPlay(p); }
            } catch (Throwable t) {
                diag("backend: initial snapshot failed: " + t);
            }
        }

        @Override public void onServiceDisconnected(ComponentName name) {
            backend = null;
            diag("backend: service disconnected, channel=" + channel());
            if (!revoked) scheduleBindRetry();
        }

        @Override public void onBindingDied(ComponentName name) {
            backend = null;
            diag("backend: binding died, channel=" + channel());
            if (!revoked) scheduleBindRetry();
        }
    };

    public BackendClient(Context c, String pageName) {
        ctx = c.getApplicationContext();
        page = pageName;
    }

    // ------------------------------------------------------------------ API (same as before)

    public void setListener(VoiceBridgeClient.Listener l) {
        listener = l;
    }

    public VoiceBridgeClient.Status status() { return lastStatus; }

    public VoiceBridgeClient.Play play() { return lastPlay; }

    public void start() {
        revoked = false;
        if (backend != null || binding) return;
        bind();
    }

    public void stopPolling() {
        revoked = true;
        cancelFallbackWatchdog();
        stopFallback("page stopped");
        if (backend != null) {
            try { backend.unregisterListener(remoteListener); } catch (Throwable ignored) { }
            backend = null;
        }
        if (binding) {
            try { ctx.unbindService(conn); } catch (Throwable ignored) { }
            binding = false;
        }
    }

    public String submit(String text) {
        return submitKind(text, "ask");
    }

    public String say(String text) {
        return submitKind(text, "say");
    }

    public String requestStop(int ttsId) {
        if (backend != null) {
            String id = newId("stop");
            try {
                String r = backend.submitStop(id, ttsId);
                if (r != null && r.startsWith("err:")) return describe(r);
                return null;
            } catch (RemoteException e) {
                diag("backend: stop failed: " + e);
                return "后台服务连接中断";
            }
        }
        if (local != null) return local.requestStop(ttsId);
        return "后台服务未连接";
    }

    public String requestModelTest(String modelId) {
        if (backend != null) {
            String id = newId("mt");
            try {
                String r = backend.submitModelTest(id, modelId == null ? "" : modelId);
                if (r != null && r.startsWith("err:")) return describe(r);
                return null;
            } catch (RemoteException e) {
                diag("backend: model test failed: " + e);
                return "后台服务连接中断";
            }
        }
        if (local != null) return local.requestModelTest(modelId);
        return "后台服务未连接";
    }

    /** true while the UI is talking to the service (false = local fallback or nothing) */
    public boolean isBound() { return backend != null; }

    // ------------------------------------------------------------------ internals

    private String submitKind(String text, String kind) {
        if (backend != null) {
            String id = newId("ui");
            try {
                String r = "ask".equals(kind) ? backend.submitAsk(id, text) : backend.submitSay(id, text);
                if (r != null && r.startsWith("err:")) {
                    diag("backend: submit refused: " + r);
                    return null;
                }
                return r;                     // the event_id the service accepted
            } catch (RemoteException e) {
                diag("backend: submit failed: " + e);
                return null;
            }
        }
        if (local != null) return "ask".equals(kind) ? local.submit(text) : local.say(text);
        diag("backend: no service and no fallback yet");
        return null;
    }

    private void bind() {
        binding = true;
        Intent i = new Intent();
        i.setComponent(new ComponentName(ctx.getPackageName(),
                BackendService.class.getName()));
        boolean ok;
        try {
            ok = ctx.bindService(i, conn, Context.BIND_AUTO_CREATE);
        } catch (Throwable t) {
            ok = false;
            diag("backend: bindService threw: " + t);
        }
        if (!ok) {
            binding = false;
            diag("backend: bindService refused");
            startFallback("bind refused");
            return;
        }
        scheduleFallbackWatchdog();
    }

    private Runnable fallbackWatchdog;

    private void scheduleFallbackWatchdog() {
        cancelFallbackWatchdog();
        fallbackWatchdog = new Runnable() {
            public void run() {
                fallbackWatchdog = null;
                if (backend != null) return;
                diag("backend: no service after " + BIND_TIMEOUT_MS + " ms -> local file fallback");
                startFallback("timeout");
            }
        };
        main.postDelayed(fallbackWatchdog, BIND_TIMEOUT_MS);
    }

    private void cancelFallbackWatchdog() {
        if (fallbackWatchdog != null) {
            main.removeCallbacks(fallbackWatchdog);
            fallbackWatchdog = null;
        }
    }

    private void startFallback(String why) {
        if (local != null) return;
        if (revoked) return;
        diag("backend: local fallback (" + why + ") channel=" + channel());
        local = new VoiceBridgeClient(ctx, page + "-fallback");
        local.setListener(new VoiceBridgeClient.Listener() {
            public void onReceipt(VoiceBridgeClient.Receipt r) { notifyReceipt(r); }
            public void onTurn(VoiceBridgeClient.Turn t) { notifyTurn(t); }
            public void onPlay(VoiceBridgeClient.Play p) { copyPlay(p); notifyPlay(p); }
            public void onStatus(VoiceBridgeClient.Status s) { copyStatus(s); notifyStatus(s); }
            public void onDiag(String line) { diag(line); }
        });
        local.start();
    }

    /** T9-10-R1: Binder came back -- stop the fallback poller so only one channel is live */
    private void stopFallback(String why) {
        if (local == null) return;
        local.stopPolling();
        local = null;
        diag("backend: fallback stopped (" + why + ") channel=" + channel());
    }

    /** which channel the UI is actually using right now; printed in every diagnostic line */
    public String channel() {
        if (backend != null) return "binder";
        if (local != null) return "file-fallback";
        return "none";
    }

    private void scheduleBindRetry() {
        bindRetries++;
        diag("backend: bind retry " + bindRetries + "/" + MAX_BIND_RETRIES);
        if (bindRetries > MAX_BIND_RETRIES) {
            startFallback("service unreachable after " + MAX_BIND_RETRIES + " retries");
            return;
        }
        main.postDelayed(new Runnable() {
            public void run() {
                if (revoked || backend != null || binding) return;
                bind();
            }
        }, 1000);
    }

    private void deliver(String kind, String json) {
        if ("turn".equals(kind)) {
            VoiceBridgeClient.Turn t = VoiceBridgeClient.parseTurn(json);
            if (t != null) notifyTurn(t);
        } else if ("status".equals(kind)) {
            VoiceBridgeClient.Status s = VoiceBridgeClient.parseStatus(json);
            if (s != null) { copyStatus(s); notifyStatus(s); }
        } else if ("play".equals(kind)) {
            VoiceBridgeClient.Play p = VoiceBridgeClient.parsePlay(json);
            if (p != null) { copyPlay(p); notifyPlay(p); }
        } else if ("receipt".equals(kind)) {
            String id = "";
            try { id = new org.json.JSONObject(json).optString("event_id", ""); } catch (Throwable ignored) { }
            notifyReceipt(VoiceBridgeClient.parseReceipt(id, json));
        } else if ("diag".equals(kind)) {
            diag(json);
        }
    }

    private void notifyTurn(VoiceBridgeClient.Turn t) {
        VoiceBridgeClient.Listener l = listener;
        if (l != null) l.onTurn(t);
    }

    private void notifyReceipt(VoiceBridgeClient.Receipt r) {
        VoiceBridgeClient.Listener l = listener;
        if (l != null) l.onReceipt(r);
    }

    private void notifyPlay(VoiceBridgeClient.Play p) {
        VoiceBridgeClient.Listener l = listener;
        if (l != null) l.onPlay(p);
    }

    private void notifyStatus(VoiceBridgeClient.Status s) {
        VoiceBridgeClient.Listener l = listener;
        if (l != null) l.onStatus(s);
    }

    private void diag(String line) {
        Log.i(TAG, line);
        VoiceBridgeClient.Listener l = listener;
        if (l != null) l.onDiag(line);
    }

    private long safePid(ITgBackend b) {
        try {
            // cheap: the backend pid is in healthJson, but a failed call must not break binding
            String h = b.healthJson();
            return new org.json.JSONObject(h).optJSONObject("backend").optLong("pid", -1);
        } catch (Throwable t) {
            return -1;
        }
    }

    private String newId(String prefix) {
        return prefix + "-" + System.currentTimeMillis() + "-" + seq.incrementAndGet();
    }

    private String describe(String err) {
        int a = err.indexOf(':');
        int b = err.indexOf(':', a + 1);
        String msg = (b > 0 && b + 1 < err.length()) ? err.substring(b + 1) : err;
        return msg;
    }

    private synchronized void copyStatus(VoiceBridgeClient.Status src) {
        lastStatus.tsMs = src.tsMs; lastStatus.pid = src.pid; lastStatus.uptimeMs = src.uptimeMs;
        lastStatus.worker = src.worker; lastStatus.provider = src.provider; lastStatus.model = src.model;
        lastStatus.dialog = src.dialog; lastStatus.sc = src.sc; lastStatus.session = src.session;
        lastStatus.round = src.round; lastStatus.listening = src.listening; lastStatus.tap = src.tap;
        lastStatus.mock = src.mock; lastStatus.ok = src.ok; lastStatus.err = src.err;
        lastStatus.timeout = src.timeout; lastStatus.lastHttp = src.lastHttp;
        lastStatus.latencyMs = src.latencyMs; lastStatus.lastError = src.lastError;
        lastStatus.lastClass = src.lastClass; lastStatus.inboxAccepted = src.inboxAccepted;
        lastStatus.inboxRejected = src.inboxRejected; lastStatus.uiPublished = src.uiPublished;
        lastStatus.uiErrors = src.uiErrors;
        lastStatus.modelsEnabled = src.modelsEnabled; lastStatus.modelsActive = src.modelsActive;
        lastStatus.modelsId = src.modelsId; lastStatus.modelsVendor = src.modelsVendor;
        lastStatus.modelsLabel = src.modelsLabel; lastStatus.modelsModel = src.modelsModel;
        lastStatus.modelsMode = src.modelsMode; lastStatus.modelsCount = src.modelsCount;
        lastStatus.modelsReloads = src.modelsReloads; lastStatus.modelsError = src.modelsError;
        lastStatus.modelsCalls = src.modelsCalls; lastStatus.modelsOk = src.modelsOk;
        lastStatus.modelsErr = src.modelsErr; lastStatus.modelsTimeout = src.modelsTimeout;
        lastStatus.modelsLastMs = src.modelsLastMs; lastStatus.modelsLastClass = src.modelsLastClass;
        lastStatus.modelsLastError = src.modelsLastError; lastStatus.testId = src.testId;
        lastStatus.testRan = src.testRan; lastStatus.testOk = src.testOk; lastStatus.testMs = src.testMs;
        lastStatus.testReason = src.testReason; lastStatus.present = src.present;
    }

    private synchronized void copyPlay(VoiceBridgeClient.Play src) {
        lastPlay.eventId = src.eventId; lastPlay.ttsId = src.ttsId; lastPlay.state = src.state;
        lastPlay.outcome = src.outcome; lastPlay.durMs = src.durMs;
    }
}
