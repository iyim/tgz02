/*
 * BackendService.java -- T9-10: the product backend, in its own process (:backend).
 *
 * Shape (decided by the T9-09 measurements, not by preference):
 *
 *   V2 UI ──AIDL/Binder──> BackendService ──file bus──> ai_worker (root, init-started)
 *                                                        └─> TtsExec → factory :core
 *
 * Why the service and not the worker:
 *   the worker must stay a root process started by init -- it writes the executor's control file
 *   (the security root of the targeted stop) and reads /data/local/tmp. An Android service can
 *   never be root (see T9-09 §4.4), so the only correct split is: service = Binder facade and
 *   poller, worker = the party with the privileges.
 *
 * What moved here from the UI:
 *   the polling loop. Before T9-10 every screen that called VoiceBridgeClient.start() polled the
 *   same files; now exactly one process polls, and every page receives the same events over
 *   Binder. The UI keeps VoiceBridgeClient only as the parser and as the fallback path.
 *
 * What is deliberately NOT here:
 *   no model calls, no TTS, no root, no database writes. The SQLite layer stays in DataService
 *   owned by the UI uid; this service never touches tgz02.db.
 */
package com.tgz02.voice;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.IBinder;
import android.os.Process;
import android.util.Log;

import com.tgz02.voice.ipc.ITgBackend;
import com.tgz02.voice.ipc.ITgBackendListener;

import org.json.JSONObject;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class BackendService extends Service {

    static final String TAG = "T910BACKEND";
    static final int API_LEVEL = 1;
    static final String API_VERSION = "1.0.0";

    private static final String CHANNEL = "tg-backend";
    private static final int NOTIF_ID = 0x7910;

    private final CopyOnWriteArrayList<ITgBackendListener> listeners =
            new CopyOnWriteArrayList<ITgBackendListener>();

    /** T9-10-R1: accepted-id bookkeeping (accept -> write -> commit; failure releases) */
    private final RequestLedger ledger = new RequestLedger();

    private VoiceBridgeClient bridge;
    private final long startedAt = System.currentTimeMillis();

    private final VoiceBridgeClient.Listener bridgeListener = new VoiceBridgeClient.Listener() {
        public void onReceipt(VoiceBridgeClient.Receipt r) {
            broadcast("receipt", BackendJson.receipt(r));
        }
        public void onTurn(VoiceBridgeClient.Turn t) {
            broadcast("turn", BackendJson.turn(t));
        }
        public void onPlay(VoiceBridgeClient.Play p) {
            broadcast("play", BackendJson.play(p));
        }
        public void onStatus(VoiceBridgeClient.Status s) {
            /* T9-16：语音闹钟请求监控（幂等、ts_ms 单调，无新请求时近乎零开销） */
            AlarmRequestMonitor.poll(BackendService.this);
            broadcast("status", BackendJson.status(s));
        }
        public void onDiag(String line) {
            broadcast("diag", line == null ? "" : line);
        }
    };

    private final ITgBackend.Stub binder = new ITgBackend.Stub() {

        public int apiLevel() { return API_LEVEL; }

        public String apiVersion() { return API_VERSION; }

        public String healthJson() {
            long now = System.currentTimeMillis();
            VoiceBridgeClient.Status s = bridge == null ? null : bridge.status();
            boolean workerFresh = s != null && s.present && s.tsMs > 0 && (now - s.tsMs) < 15000;
            try {
                JSONObject o = new JSONObject();
                JSONObject b = new JSONObject();
                b.put("pid", Process.myPid());
                b.put("uid", Process.myUid());
                b.put("proc", procName());
                b.put("uptime_ms", now - startedAt);
                b.put("api_level", API_LEVEL);
                b.put("api_version", API_VERSION);
                b.put("listeners", listeners.size());
                b.put("submitted_ids", ledger.size());
                o.put("backend", b);
                JSONObject w = new JSONObject();
                w.put("connected", workerFresh);
                w.put("pid", s == null ? -1 : s.pid);
                w.put("status_ts_ms", s == null ? 0 : s.tsMs);
                w.put("dialog", s == null ? "" : s.dialog);
                o.put("worker", w);
                JSONObject inbox = new JSONObject();
                inbox.put("dir", VoiceBridgeClient.INBOX_DIR);
                inbox.put("writable", new java.io.File(VoiceBridgeClient.INBOX_DIR).canWrite());
                o.put("inbox", inbox);
                return o.toString();
            } catch (Throwable t) {
                return "{}";
            }
        }

        public String submitAsk(String eventId, String text) { return accept(eventId, "ask", text, 0, null); }

        public String submitSay(String eventId, String text) { return accept(eventId, "say", text, 0, null); }

        public String submitStop(String eventId, int ttsId) { return accept(eventId, "stop", null, ttsId, null); }

        public String submitModelTest(String eventId, String modelId) { return accept(eventId, "modeltest", null, 0, modelId); }

        public String statusJson() {
            VoiceBridgeClient.Status s = bridge == null ? null : bridge.status();
            return (s == null || !s.present) ? "" : BackendJson.status(s);
        }

        public String playJson() {
            VoiceBridgeClient.Play p = bridge == null ? null : bridge.play();
            return p == null ? "" : BackendJson.play(p);
        }

        public String receiptJson(String eventId) {
            if (!VoiceBridgeClient.validEventId(eventId)) return "";
            String raw = VoiceBridgeClient.readAll(
                    new java.io.File(VoiceBridgeClient.RESULT_DIR, eventId + ".json"));
            return raw == null ? "" : raw;
        }

        public void registerListener(ITgBackendListener l) {
            if (l == null) return;
            if (!listeners.contains(l)) listeners.add(l);
            Log.i(TAG, "listener added, count=" + listeners.size());
        }

        public void unregisterListener(ITgBackendListener l) {
            listeners.remove(l);
            Log.i(TAG, "listener removed, count=" + listeners.size());
        }

        public int listenerCount() {
            return listeners.size();
        }
    };

    // ------------------------------------------------------------------ lifecycle

    @Override public void onCreate() {
        super.onCreate();
        startForegroundInternal();
        bridge = new VoiceBridgeClient(this, "backend");
        bridge.setListener(bridgeListener);
        bridge.start();
        Log.i(TAG, "onCreate pid=" + Process.myPid() + " proc=" + procName());
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override public IBinder onBind(Intent intent) {
        Log.i(TAG, "onBind pid=" + Process.myPid());
        return binder;
    }

    @Override public void onDestroy() {
        if (bridge != null) bridge.stopPolling();
        listeners.clear();
        Log.i(TAG, "onDestroy pid=" + Process.myPid());
        super.onDestroy();
    }

    // ------------------------------------------------------------------ helpers

    /**
     * T9-10-R1: ONE path for all four request kinds -- accept, write, then commit.
     *
     * The id is recorded as accepted only after the file actually landed, so a failed write
     * releases the id and the identical request can be retried. (Before this fix submitStop and
     * submitModelTest marked the id before writing and never released it on failure: one failed
     * write made that request permanently "duplicate".)
     */
    private String accept(String eventId, String kind, String text, int ttsId, String modelId) {
        if (!VoiceBridgeClient.validEventId(eventId)) return "err:invalid_arg:bad event_id";
        if (("ask".equals(kind) || "say".equals(kind)) && (text == null || text.length() == 0))
            return "err:invalid_arg:text is empty";
        if ("stop".equals(kind) && ttsId <= 0) return "err:invalid_arg:tts_id must be > 0";

        if (ledger.seen(eventId)) {
            Log.i(TAG, "duplicate ignored kind=" + kind + " id=" + eventId);
            return eventId;                  // accepted before: never write it twice
        }

        String written;
        if ("ask".equals(kind) || "say".equals(kind)) {
            written = bridge.submitKind(text, kind, eventId);
        } else if ("stop".equals(kind)) {
            written = bridge.requestStop(eventId, ttsId) == null ? eventId : null;
        } else {
            written = bridge.requestModelTest(eventId, modelId) == null ? eventId : null;
        }

        if (written == null) {
            ledger.release(eventId);
            Log.w(TAG, "write failed, id released for retry: kind=" + kind + " id=" + eventId);
            return "err:inbox_unwritable:inbox not writable";
        }
        ledger.commit(eventId);
        Log.i(TAG, "accepted kind=" + kind + " id=" + eventId);
        return written;
    }



    private void broadcast(String kind, String json) {
        if (json == null) return;
        for (ITgBackendListener l : listeners) {
            try {
                l.onEvent(kind, json);
            } catch (Throwable t) {
                // a dead UI (force-stopped, crashed) must not take the backend down
                Log.w(TAG, "listener failed, dropping: " + t);
                listeners.remove(l);
            }
        }
    }

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
            nm.createNotificationChannel(new NotificationChannel(CHANNEL, "TG-Z02 后台",
                    NotificationManager.IMPORTANCE_MIN));
        }
        Notification.Builder b = (Build.VERSION.SDK_INT >= 26)
                ? new Notification.Builder(this, CHANNEL)
                : new Notification.Builder(this);
        b.setContentTitle("TG-Z02 语音后台")
         .setContentText("后台服务运行中")
         .setSmallIcon(android.R.drawable.stat_sys_data_bluetooth)
         .setOngoing(true);
        startForeground(NOTIF_ID, b.build());
    }
}
