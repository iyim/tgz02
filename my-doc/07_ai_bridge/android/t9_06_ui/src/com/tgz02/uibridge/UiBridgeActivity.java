/*
 * UiBridgeActivity.java -- T9-06 minimal UI: submit a line of text to the accepted worker and
 * watch the factory TTS status come back.
 *
 * Path under test (nothing here bypasses the worker):
 *
 *   this app (uid 10xxx, no root, no permission)
 *     -> writes /data/local/tmp/t9_ui/inbox/<event_id>.json  (atomic tmp + rename)
 *     -> worker (root) validates and re-enqueues into tts/queue
 *     -> TtsExec -> official StatusProvider -> factory TTS -> speaker
 *     <- result/<event_id>.json        (accepted / refused + reason)
 *     <- ContentObserver status=1|2|3  (real-time, includes the tts_id)
 *     <- play.public.json              (authoritative: event_id -> tts_id, state)
 *
 * "Stop" is the provider insert method=5 on the current tts_id (verified in T9-05); it does not
 * touch the queue and does not require root.
 */
package com.tgz02.uibridge;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;

public final class UiBridgeActivity extends Activity {

    static final String TAG = "T906UI";
    static final String UI_ROOT = "/data/local/tmp/t9_ui";
    static final File INBOX = new File(UI_ROOT, "inbox");
    static final File RESULT = new File(UI_ROOT, "result");
    static final String PLAY_PUBLIC = "/data/local/tmp/t5_bridge/tts/play.public.json";
    static final String AUTH = "com.alibaba.ailabs.genie.assistant.provider";
    static final Uri API = Uri.parse("content://" + AUTH + "/GenieApi");
    static final Uri BASE = Uri.parse("content://" + AUTH);

    Handler h;
    EditText input;
    TextView log;
    Button send, stop, clear;
    ContentObserver observer;

    volatile String pendingEventId = null;
    volatile int lastTtsId = -1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        h = new Handler(Looper.getMainLooper());

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);

        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        input = new EditText(this);
        input.setSingleLine(true);
        input.setText("界面接入测试 一句话");
        row.addView(input, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        send = new Button(this);
        send.setText("发送");
        stop = new Button(this);
        stop.setText("停止");
        clear = new Button(this);
        clear.setText("清屏");
        row.addView(send);
        row.addView(stop);
        row.addView(clear);
        root.addView(row);

        ScrollView sv = new ScrollView(this);
        log = new TextView(this);
        log.setTextSize(11f);
        sv.addView(log);
        root.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        setContentView(root);

        send.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { submit(); }
        });
        stop.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { stopCurrent(); }
        });
        clear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { log.setText(""); }
        });

        append("T9-06 UI bridge ready, uid=" + android.os.Process.myUid()
                + " pkg=" + getPackageName());
        append("inbox=" + INBOX + " (writable=" + INBOX.canWrite()
                + ") result=" + RESULT + " (readable=" + RESULT.canRead() + ")");
        registerObserver();
        handleIntent(getIntent());
    }

    @Override
    protected void onNewIntent(android.content.Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
        handleIntent(intent);
    }

    /**
     * Test hooks (used by the device acceptance script so the run is deterministic):
     *   --es text "..."   prefill the input
     *   --ez auto true    submit 800 ms after the activity is up
     *   --es action stop  press "stop" 800 ms after the activity is up
     * A normal user simply types and taps the buttons.
     */
    void handleIntent(android.content.Intent it) {
        if (it == null) return;
        String text = it.getStringExtra("text");
        if (text != null) input.setText(text);
        String action = it.getStringExtra("action");
        if ("stop".equals(action)) {
            append("--- test hook: stop in 800 ms");
            h.postDelayed(new Runnable() { public void run() { stopCurrent(); } }, 800);
        } else if (it.getBooleanExtra("auto", false)) {
            append("--- test hook: auto submit in 800 ms");
            h.postDelayed(new Runnable() { public void run() { submit(); } }, 800);
        }
    }

    /* ------------------------------------------------------------- observer */

    void registerObserver() {
        observer = new ContentObserver(new Handler(Looper.getMainLooper())) {
            @Override
            public void onChange(boolean selfChange) { onChange(selfChange, null); }

            @Override
            public void onChange(boolean selfChange, Uri uri) {
                String u = uri == null ? "null" : uri.toString();
                int id = parseId(u);
                int status = parseStatus(u);
                /* "ours" is decided only by the id we resolved from play.public.json for a
                 * submit we made; an arbitrary status event must not steal the attribution. */
                String mine = (id > 0 && id == lastTtsId) ? "  <== ours" : "";
                append("status tts_id=" + id + " status=" + status
                        + " (" + statusName(status) + ")" + mine);
            }
        };
        try {
            getContentResolver().registerContentObserver(BASE, true, observer);
            append("ContentObserver registered on " + BASE);
        } catch (Throwable t) {
            append("registerContentObserver failed: " + t);
        }
    }

    static int parseId(String uri) {
        int i = uri.indexOf("/GenieApi/");
        if (i < 0) return -1;
        int s = i + "/GenieApi/".length();
        int e = s;
        while (e < uri.length() && Character.isDigit(uri.charAt(e))) e++;
        try { return Integer.parseInt(uri.substring(s, e)); } catch (Throwable t) { return -1; }
    }

    static int parseStatus(String uri) {
        int i = uri.indexOf("status=");
        if (i < 0) return -1;
        try { return Integer.parseInt(uri.substring(i + 7).replaceAll("[^0-9].*$", "")); }
        catch (Throwable t) { return -1; }
    }

    static String statusName(int s) {
        if (s == 1) return "play";
        if (s == 2) return "complete";
        if (s == 3) return "stop/interrupted/error";
        return "other";
    }

    /* -------------------------------------------------------------- submit */

    void submit() {
        final String text = input.getText().toString().trim();
        if (text.length() == 0) { append("空文本，不提交"); return; }
        final String eventId = "ui-" + System.currentTimeMillis();
        append("--- submit event_id=" + eventId + " bytes=" + utf8Len(text));

        new Thread(new Runnable() {
            public void run() {
                String err = writeRequest(eventId, text);
                if (err != null) { say("提交失败(写 inbox): " + err); return; }
                say("已写入 inbox，等待 worker 应答…");
                String result = awaitResult(eventId, 6000);
                if (result == null) { say("6 s 内没有 result 文件（worker 未运行或未开 inbox）"); return; }
                say("worker 应答: " + result);
                pendingEventId = eventId;
                if (result.contains("\"ok\":true")) {
                    awaitPlayback(eventId, 20000);
                }
            }
        }, "submit").start();
    }

    void say(final String s) { h.post(new Runnable() { public void run() { append(s); } }); }

    /** atomic submit: write <event_id>.json.tmp then rename to <event_id>.json */
    String writeRequest(String eventId, String text) {
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("event_id", eventId);
            o.put("text", text);
            byte[] body = o.toString().getBytes("UTF-8");
            File tmp = new File(INBOX, "." + eventId + ".json.tmp");
            File dst = new File(INBOX, eventId + ".json");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(body);
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(dst)) return "rename failed";
            return null;
        } catch (Throwable t) {
            return String.valueOf(t);
        }
    }

    String awaitResult(String eventId, long timeoutMs) {
        File f = new File(RESULT, eventId + ".json");
        long deadline = System.currentTimeMillis() + timeoutMs;
        while (System.currentTimeMillis() < deadline) {
            String s = readAll(f);
            if (s != null) return s.replace('\n', ' ').trim();
            try { Thread.sleep(200); } catch (InterruptedException ignored) { }
        }
        return null;
    }

    /** correlate event_id -> tts_id through play.public.json (authoritative for the executor) */
    void awaitPlayback(final String eventId, long timeoutMs) {
        long deadline = System.currentTimeMillis() + timeoutMs;
        boolean seenPlaying = false;
        while (System.currentTimeMillis() < deadline) {
            String s = readAll(new File(PLAY_PUBLIC));
            if (s != null) {
                try {
                    JSONObject o = new JSONObject(s);
                    String eid = o.optString("event_id", "");
                    int id = o.optInt("tts_id", -1);
                    String state = o.optString("state", "");
                    if (eventId.equals(eid) && id > 0) {
                        if (lastTtsId != id) {
                            lastTtsId = id;
                            say("play.public.json: event_id=" + eventId + " tts_id=" + id
                                    + " state=" + state);
                        }
                        if ("playing".equals(state)) seenPlaying = true;
                        if (seenPlaying && "idle".equals(state)) {
                            say("play.public.json: 播报结束 outcome="
                                    + o.optString("last_outcome", "?"));
                            return;
                        }
                    }
                } catch (Throwable ignored) { }
            }
            try { Thread.sleep(200); } catch (InterruptedException ignored) { }
        }
        say("play.public.json 在超时内没有给出该 event_id 的播报状态");
    }

    /* ---------------------------------------------------------------- stop */

    void stopCurrent() {
        final int id = lastTtsId;
        if (id <= 0) { append("没有已知的 tts_id，先播一条"); return; }
        new Thread(new Runnable() {
            public void run() {
                try {
                    ContentValues cv = new ContentValues();
                    cv.put("method", 5);
                    cv.put("sessionId", id);
                    Uri u = getContentResolver().insert(API, cv);
                    say("stop 已发出 tts_id=" + id + " (insert 返回 "
                            + (u == null ? "null" : u.toString()) + ")");
                } catch (Throwable t) {
                    say("stop 失败: " + t);
                }
            }
        }, "stop").start();
    }

    /* -------------------------------------------------------------- helpers */

    static int utf8Len(String s) {
        try { return s.getBytes("UTF-8").length; } catch (Throwable t) { return s.length(); }
    }

    static String readAll(File f) {
        if (!f.isFile() || !f.canRead()) return null;
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] b = new byte[(int) Math.min(f.length(), 4096)];
            int n = in.read(b);
            if (n <= 0) return null;
            return new String(b, 0, n, "UTF-8");
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) { }
        }
    }

    void append(final String s) {
        Log.i(TAG, s);
        runOnUiThread(new Runnable() {
            public void run() { if (log != null) log.append(s + "\n"); }
        });
    }
}
