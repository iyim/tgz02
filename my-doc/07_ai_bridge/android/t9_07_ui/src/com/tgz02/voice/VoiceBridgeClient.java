/*
 * VoiceBridgeClient.java -- T9-07: everything the product UI needs to talk to the accepted
 * T9-06R1 channel, behind one small API.
 *
 * What it does (and nothing more):
 *
 *   submit(text)  -> <ui>/inbox/<event_id>.json      (atomic tmp + rename, as in T9-06)
 *                 <- <ui>/result/<event_id>.json     (accepted / refused + reason)
 *   subscribe     <- <ui>/events/<seq>.json          (what the user said, what was answered)
 *                 <- <ui>/status.public.json         (worker + AI + dialog status)
 *                 <- <tts>/play.public.json          (event_id -> tts_id, playing/idle, outcome)
 *   stop()         -> provider insert method=5 on the current tts_id  (T9-05, verified)
 *
 * The UI never touches queue directories, never parses the worker log, never runs as root.
 * Everything here is read-only for the app except the inbox submit and the stop insert.
 */
package com.tgz02.voice;

import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.util.Log;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class VoiceBridgeClient {

    static final String TAG = "T907VOICE";

    static final String UI_ROOT      = "/data/local/tmp/t9_ui";
    static final String INBOX_DIR    = UI_ROOT + "/inbox";
    static final String RESULT_DIR   = UI_ROOT + "/result";
    static final String EVENTS_DIR   = UI_ROOT + "/events";
    static final String STATUS_FILE  = UI_ROOT + "/status.public.json";
    static final String PLAY_PUBLIC  = "/data/local/tmp/t5_bridge/tts/play.public.json";

    static final String PROVIDER_AUTH = "com.alibaba.ailabs.genie.assistant.provider";
    static final Uri    PROVIDER_API  = Uri.parse("content://" + PROVIDER_AUTH + "/GenieApi");

    static final long POLL_MS         = 250;
    static final long RECEIPT_WAIT_MS = 8000;

    /* ------------------------------------------------------------------ records */

    public interface Listener {
        void onReceipt(Receipt r);
        void onTurn(Turn t);
        void onPlay(Play p);
        void onStatus(Status s);
        void onDiag(String line);
    }

    public static final class Receipt {
        public String eventId = "", stage = "", reason = "";
        public boolean ok;
        public long tsMs;
    }

    /** one record of <ui>/events/<seq>.json: kind = "turn" | "submit" | "error" */
    public static final class Turn {
        public long seq, tsMs;
        public String kind = "", session = "", eventId = "", route = "", skill = "";
        public String user = "", reply = "";
        public int replyBytes;
    }

    /** one observation of play.public.json */
    public static final class Play {
        public String eventId = "", state = "", outcome = "";
        public int ttsId = -1;
        public long durMs = -1;
    }

    public static final class Status {
        public long tsMs, pid, uptimeMs, latencyMs;
        public String worker = "", provider = "", model = "", dialog = "idle", sc = "", session = "";
        public String lastError = "", lastClass = "";
        public int round, lastHttp;
        public long ok, err, timeout, inboxAccepted, inboxRejected, uiPublished, uiErrors;
        public boolean listening, tap, mock;
        public boolean present;
    }

    /** a submit that has not been answered yet */
    private static final class Pending {
        String eventId;
        long deadlineMs;
    }

    private final Context appCtx;
    private final Map<String, Pending> pending = new HashMap<String, Pending>();

    private Listener listener;
    private Thread poller;
    private volatile boolean running;

    private long lastEventSeq;
    private boolean primed;
    private String lastPlayRaw = "";
    private String lastStatusRaw = "";
    private final Play lastPlay = new Play();
    private final Status lastStatus = new Status();

    VoiceBridgeClient(Context ctx)
    {
        appCtx = ctx.getApplicationContext();
    }

    void setListener(Listener l)
    {
        listener = l;
    }

    Status status()
    {
        return lastStatus;
    }

    Play play()
    {
        return lastPlay;
    }

    /* ------------------------------------------------------------------ lifecycle */

    void start()
    {
        if (running) return;
        running = true;
        poller = new Thread(new Runnable() {
            public void run() { loop(); }
        }, "voicebridge");
        poller.setDaemon(true);
        poller.start();
    }

    void stopPolling()
    {
        running = false;
        Thread t = poller;
        poller = null;
        if (t != null) t.interrupt();
    }

    /* -------------------------------------------------------------------- submit */

    /**
     * Writes one request into the private inbox of this app's uid.
     * Returns the event_id, or null when the file cannot be written (the reason is logged).
     */
    String submit(String text)
    {
        String eventId = "ui-" + System.currentTimeMillis() + "-"
                + Integer.toHexString((int) (Math.random() * 0xFFFF));
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("event_id", eventId);
            o.put("text", text);
            byte[] body = o.toString().getBytes("UTF-8");
            File dir = new File(INBOX_DIR);
            File tmp = new File(dir, "." + eventId + ".json.tmp");
            File dst = new File(dir, eventId + ".json");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(body);
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(dst)) {
                tmp.delete();
                diag("rename failed: " + dst);
                return null;
            }
            Pending p = new Pending();
            p.eventId = eventId;
            p.deadlineMs = System.currentTimeMillis() + RECEIPT_WAIT_MS;
            synchronized (pending) { pending.put(eventId, p); }
            diag("submitted " + eventId + " bytes=" + body.length);
            return eventId;
        } catch (Throwable t) {
            diag("submit failed: " + t);
            return null;
        }
    }

    /**
     * Stop the current playback through the official provider. T9-05 established that an
     * ordinary app may do exactly this and that it is the only supported stop path.
     * Returns an explanation for the UI (shown as a short toast), null when nothing was sent.
     */
    String stop(final int ttsId)
    {
        if (ttsId <= 0) return "还没有可停止的播报";
        Thread t = new Thread(new Runnable() {
            public void run() {
                try {
                    ContentValues cv = new ContentValues();
                    cv.put("method", 5);
                    cv.put("sessionId", ttsId);
                    Uri u = appCtx.getContentResolver().insert(PROVIDER_API, cv);
                    diag("stop sent tts_id=" + ttsId + " insert=" + (u == null ? "null" : u.toString()));
                } catch (Throwable e) {
                    diag("stop failed: " + e);
                }
            }
        }, "voicebridge-stop");
        t.setDaemon(true);
        t.start();
        return null;
    }

    /* ------------------------------------------------------------------- poller */

    private void loop()
    {
        while (running) {
            try {
                pollEvents();
                pollPlays();
                pollStatus();
                pollReceipts();
            } catch (Throwable t) {
                diag("poll error: " + t);
            }
            try { Thread.sleep(POLL_MS); } catch (InterruptedException ignored) { }
        }
    }

    /** <ui>/events/<seq>.json -- one file per event, read strictly in sequence order */
    private void pollEvents()
    {
        File dir = new File(EVENTS_DIR);
        String[] names = dir.list();
        if (names == null || names.length == 0) return;

        List<long[]> seqs = new ArrayList<long[]>();      /* {seq} boxed in arrays to sort */
        List<String> fileNames = new ArrayList<String>();
        long maxSeq = -1;
        for (int i = 0; i < names.length; i++) {
            String n = names[i];
            if (n.length() < 6 || !n.endsWith(".json")) continue;
            long v;
            try { v = Long.parseLong(n.substring(0, n.length() - 5)); }
            catch (Throwable t) { continue; }
            if (v > maxSeq) maxSeq = v;
            if (v <= lastEventSeq) continue;
            seqs.add(new long[]{v});
            fileNames.add(n);
        }
        /* the worker may have restarted with an empty/pruned directory: follow it down */
        if (maxSeq >= 0 && maxSeq < lastEventSeq) lastEventSeq = 0;

        /* First pass: adopt the current head instead of replaying the backlog. The event files
         * are a live channel, not a history store -- the history is the app's own session file.
         * Without this, a fresh install would dump whatever the worker published earlier into
         * today's conversation. */
        if (!primed) {
            primed = true;
            if (maxSeq > lastEventSeq) lastEventSeq = maxSeq;
            return;
        }

        if (seqs.isEmpty()) return;
        final List<String> fn = fileNames;
        Integer[] idx = new Integer[seqs.size()];
        for (int i = 0; i < idx.length; i++) idx[i] = i;
        java.util.Arrays.sort(idx, new Comparator<Integer>() {
            public int compare(Integer a, Integer b) {
                return fn.get(a).compareTo(fn.get(b));   /* zero padded: lexical == numeric */
            }
        });

        for (int k = 0; k < idx.length; k++) {
            String name = fn.get(idx[k]);
            File f = new File(dir, name);
            String raw = readAll(f);
            if (raw == null) continue;
            Turn t = parseTurn(raw);
            if (t == null) continue;
            if (t.seq > lastEventSeq) lastEventSeq = t.seq;
            Listener l = listener;
            if (l != null) l.onTurn(t);
        }
    }

    private void pollPlays()
    {
        String raw = readAll(new File(PLAY_PUBLIC));
        if (raw == null || raw.equals(lastPlayRaw)) return;
        lastPlayRaw = raw;
        try {
            JSONObject o = new JSONObject(raw);
            Play p = new Play();
            p.eventId = o.optString("event_id", "");
            p.ttsId = o.optInt("tts_id", -1);
            p.state = o.optString("state", "");
            p.outcome = o.optString("last_outcome", "");
            p.durMs = o.optLong("dur_ms", -1);
            syncPlay(p);
            Listener l = listener;
            if (l != null) l.onPlay(p);
        } catch (Throwable ignored) { }
    }

    private void pollStatus()
    {
        String raw = readAll(new File(STATUS_FILE));
        if (raw == null || raw.equals(lastStatusRaw)) return;
        lastStatusRaw = raw;
        Status s = parseStatus(raw);
        if (s == null) return;
        syncStatus(s);
        Listener l = listener;
        if (l != null) l.onStatus(s);
    }

    private void pollReceipts()
    {
        List<String> ids;
        synchronized (pending) { ids = new ArrayList<String>(pending.keySet()); }
        if (ids.isEmpty()) return;
        for (int i = 0; i < ids.size(); i++) {
            String id = ids.get(i);
            Pending p;
            synchronized (pending) { p = pending.get(id); }
            if (p == null) continue;
            String raw = readAll(new File(RESULT_DIR, id + ".json"));
            if (raw != null) {
                Receipt r = new Receipt();
                r.eventId = id;
                try {
                    JSONObject o = new JSONObject(raw);
                    r.ok = o.optBoolean("ok", false);
                    r.stage = o.optString("stage", "");
                    r.reason = o.optString("reason", "");
                    r.tsMs = o.optLong("ts_ms", System.currentTimeMillis());
                } catch (Throwable t) {
                    r.ok = false;
                    r.reason = "unreadable receipt";
                }
                synchronized (pending) { pending.remove(id); }
                Listener l = listener;
                if (l != null) l.onReceipt(r);
                continue;
            }
            if (System.currentTimeMillis() > p.deadlineMs) {
                Receipt r = new Receipt();
                r.eventId = id;
                r.ok = false;
                r.reason = "worker 未应答（后台服务可能未运行）";
                synchronized (pending) { pending.remove(id); }
                Listener l = listener;
                if (l != null) l.onReceipt(r);
            }
        }
    }

    /* same-object sync: the UI reads status()/play() from the main thread */
    private synchronized void syncPlay(Play p)
    {
        lastPlay.eventId = p.eventId;
        lastPlay.ttsId = p.ttsId;
        lastPlay.state = p.state;
        lastPlay.outcome = p.outcome;
        lastPlay.durMs = p.durMs;
    }

    private synchronized void syncStatus(Status s)
    {
        lastStatus.tsMs = s.tsMs;
        lastStatus.pid = s.pid;
        lastStatus.uptimeMs = s.uptimeMs;
        lastStatus.worker = s.worker;
        lastStatus.provider = s.provider;
        lastStatus.model = s.model;
        lastStatus.dialog = s.dialog;
        lastStatus.sc = s.sc;
        lastStatus.session = s.session;
        lastStatus.round = s.round;
        lastStatus.listening = s.listening;
        lastStatus.tap = s.tap;
        lastStatus.mock = s.mock;
        lastStatus.ok = s.ok;
        lastStatus.err = s.err;
        lastStatus.timeout = s.timeout;
        lastStatus.lastHttp = s.lastHttp;
        lastStatus.latencyMs = s.latencyMs;
        lastStatus.lastError = s.lastError;
        lastStatus.lastClass = s.lastClass;
        lastStatus.inboxAccepted = s.inboxAccepted;
        lastStatus.inboxRejected = s.inboxRejected;
        lastStatus.uiPublished = s.uiPublished;
        lastStatus.uiErrors = s.uiErrors;
        lastStatus.present = true;
    }

    /* ------------------------------------------------------------------- parsing */

    private static Turn parseTurn(String raw)
    {
        try {
            JSONObject o = new JSONObject(raw);
            Turn t = new Turn();
            t.seq = o.optLong("seq", -1);
            t.tsMs = o.optLong("ts_ms", 0);
            t.kind = o.optString("kind", "");
            t.session = o.optString("session", "");
            t.eventId = o.optString("event_id", "");
            t.route = o.optString("route", "");
            t.skill = o.optString("skill", "");
            t.user = o.optString("user", "");
            t.reply = o.optString("reply", "");
            t.replyBytes = o.optInt("reply_bytes", 0);
            return t.seq > 0 ? t : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static Status parseStatus(String raw)
    {
        try {
            JSONObject o = new JSONObject(raw);
            Status s = new Status();
            s.tsMs = o.optLong("ts_ms", 0);
            s.pid = o.optLong("pid", 0);
            s.uptimeMs = o.optLong("uptime_ms", 0);
            s.worker = o.optString("worker", "");
            JSONObject p = o.optJSONObject("provider");
            if (p != null) {
                s.provider = p.optString("name", "");
                s.model = p.optString("model", "");
                s.mock = p.optInt("mock", 0) == 1;
                s.ok = p.optLong("ok", 0);
                s.err = p.optLong("err", 0);
                s.timeout = p.optLong("timeout", 0);
                s.lastHttp = p.optInt("last_http", 0);
                s.lastError = p.optString("last_error", "");
                s.lastClass = p.optString("last_class", "");
                s.latencyMs = p.optLong("last_latency_ms", 0);
            }
            JSONObject d = o.optJSONObject("dialog");
            if (d != null) {
                s.dialog = d.optString("state", "idle");
                s.sc = d.optString("sc", "");
                s.round = d.optInt("round", 0);
                s.session = d.optString("session", "");
                s.listening = d.optInt("listening", 0) == 1;
                s.tap = d.optInt("tap", 0) == 1;
            }
            JSONObject c = o.optJSONObject("counters");
            if (c != null) {
                s.inboxAccepted = c.optLong("inbox_accepted", 0);
                s.inboxRejected = c.optLong("inbox_rejected", 0);
                s.uiPublished = c.optLong("ui_published", 0);
                s.uiErrors = c.optLong("ui_errors", 0);
            }
            s.present = true;
            return s;
        } catch (Throwable t) {
            return null;
        }
    }

    /* ------------------------------------------------------------------- helpers */

    static String readAll(File f)
    {
        if (f == null || !f.isFile() || !f.canRead()) return null;
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] b = new byte[(int) Math.min(f.length(), 8192)];
            int n = in.read(b);
            if (n <= 0) return null;
            return new String(b, 0, n, "UTF-8");
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) { }
        }
    }

    private void diag(String line)
    {
        Log.i(TAG, line);
        Listener l = listener;
        if (l != null) l.onDiag(line);
    }
}
