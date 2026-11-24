/*
 * ProviderProbe.java -- T9-05: can an ordinary (unprivileged) app drive the factory TTS through
 * the existing ContentProvider channel, and can it observe playback completion the same way?
 *
 * The channel is the one the accepted TtsExec already uses:
 *
 *   query  content://com.alibaba.ailabs.genie.assistant.provider/GenieApi
 *          selection = {"method":4,"data":{sessionId,tts,isOpenMic,ignoreMute,feedback,secretKey,pkg,wakeupType}}
 *          extras    = {"data": <tts id>, "ret": <bool>}
 *   insert content://com.alibaba.ailabs.genie.assistant.provider/GenieApi
 *          ContentValues = {"method":5, "sessionId": <tts id>}          (stop)
 *
 * NEW in T9-05: instead of parsing logcat like TtsExec does, the probe registers a
 * ContentObserver on the provider. The factory calls notifyChange on
 *   .../GenieApi/<tts id>?status=<n>
 * on every TTS status change, so completion may be observable from a normal app without root.
 *
 * Three phases, all logged with "RESULT " lines:
 *   P1  play while our UI is on top
 *   P2  play, then stop it mid-way (insert method 5)
 *   P3  play while another app is on top (control: does the channel care about foreground?)
 */
package com.tgz02.providerprobe;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;

import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public final class ProviderProbe extends Activity {

    static final String TAG = "T905";
    static final String AUTH = "com.alibaba.ailabs.genie.assistant.provider";
    static final Uri API = Uri.parse("content://" + AUTH + "/GenieApi");
    static final Uri BASE = Uri.parse("content://" + AUTH);
    static final String SMARTAPP = "com.alibaba.ailabs.genie.smartapp";

    final long t0 = System.currentTimeMillis();
    Handler h;
    TextView view;
    ContentObserver observer;
    final List<String> observerEvents = new ArrayList<String>();
    boolean started;
    int lastId = -1;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ScrollView sv = new ScrollView(this);
        view = new TextView(this);
        view.setTextSize(11f);
        sv.addView(view, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        setContentView(sv);
        h = new Handler(Looper.getMainLooper());
        log("T9-05 provider probe ready, uid=" + android.os.Process.myUid()
                + " pkg=" + getPackageName());
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!started) {
            started = true;
            begin();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        log("--- went to background, probing in 3 s ---");
        h.postDelayed(new Runnable() {
            public void run() {
                phase3();
            }
        }, 3000);
    }

    /* ------------------------------------------------------------------ flow */

    void begin() {
        log("=== BEGIN uid=" + android.os.Process.myUid()
                + " app=" + getPackageName()
                + " sdk=" + android.os.Build.VERSION.SDK_INT);
        log("env top=" + topActivity() + " screenOn=" + screenOn());
        log("provider=" + AUTH + "  observed uri=" + BASE + " (descendants=true)");

        observer = new ContentObserver(new Handler(Looper.getMainLooper())) {
            @Override
            public void onChange(boolean selfChange) {
                onChange(selfChange, null);
            }

            @Override
            public void onChange(boolean selfChange, Uri uri) {
                String u = uri == null ? "null" : uri.toString();
                observerEvents.add(u);
                log("OBSERVER onChange uri=" + u + " t=+" + since() + "ms");
            }
        };
        try {
            getContentResolver().registerContentObserver(BASE, true, observer);
            log("RESULT registerContentObserver=true");
        } catch (Throwable t) {
            log("registerContentObserver threw " + t);
        }

        h.postDelayed(new Runnable() {
            public void run() {
                phase1();
            }
        }, 500);
    }

    void phase1() {
        log("=== P1 play while our UI is on top (top=" + topActivity() + ")");
        int id = play("第一句 普通应用前台播放测试");
        lastId = id;
        log("RESULT P1 tts_id=" + id + " accepted=" + (id > 0) + " observer_events=" + observerEvents.size());
        h.postDelayed(new Runnable() {
            public void run() {
                phase2();
            }
        }, 9000);
    }

    void phase2() {
        log("=== P2 play then stop (insert method=5)");
        int id = play("第二句 这一段会被中途停止 用来验证停止接口");
        log("RESULT P2 play tts_id=" + id);
        final int stopId = id;
        h.postDelayed(new Runnable() {
            public void run() {
                stop(stopId);
            }
        }, 1500);
        h.postDelayed(new Runnable() {
            public void run() {
                log("RESULT P2 observer after stop=" + observerEvents.size());
                log("=== P1/P2 summary: observer_events=" + observerEvents.size()
                        + " last_tts_id=" + lastId);
            }
        }, 6000);
    }

    void phase3() {
        log("=== P3 play while another app is on top (control) top=" + topActivity()
                + " screenOn=" + screenOn());
        int id = play("第三句 后台调用测试");
        log("RESULT P3 tts_id=" + id + " accepted=" + (id > 0));
        h.postDelayed(new Runnable() {
            public void run() {
                log("=== DONE elapsed=" + since() + "ms observer_events=" + observerEvents.size());
                for (String s : observerEvents) log("  event " + s);
            }
        }, 9000);
    }

    /* ------------------------------------------------------------- provider */

    int play(String text) {
        long t = System.currentTimeMillis();
        try {
            JSONObject data = new JSONObject();
            data.put("sessionId", 0);
            data.put("tts", text);
            data.put("isOpenMic", false);
            data.put("ignoreMute", false);
            data.put("feedback", false);
            data.put("secretKey", "");
            data.put("pkg", getPackageName());
            data.put("wakeupType", 1);
            JSONObject req = new JSONObject();
            req.put("method", 4);
            req.put("data", data);
            ContentResolver r = getContentResolver();
            Cursor c = r.query(API, null, req.toString(), null, null);
            int id = -1;
            boolean ret = false;
            String extras = "null";
            if (c != null) {
                try {
                    Bundle b = c.getExtras();
                    if (b != null) {
                        id = b.getInt("data", -1);
                        ret = b.getBoolean("ret", false);
                        extras = b.toString();
                    }
                } finally {
                    c.close();
                }
            } else {
                extras = "cursor=null";
            }
            log("play(\"" + shortText(text) + "\") cursor=" + (c != null) + " extras=" + extras
                    + " cost=" + (System.currentTimeMillis() - t) + "ms");
            return id;
        } catch (Throwable e) {
            log("play(" + shortText(text) + ") threw " + e
                    + " cost=" + (System.currentTimeMillis() - t) + "ms");
            return -1;
        }
    }

    void stop(int id) {
        long t = System.currentTimeMillis();
        try {
            ContentValues cv = new ContentValues();
            cv.put("method", 5);
            cv.put("sessionId", id);
            Uri u = getContentResolver().insert(API, cv);
            log("RESULT stop(method=5, sessionId=" + id + ") returned=" + (u == null ? "null" : u.toString())
                    + " cost=" + (System.currentTimeMillis() - t) + "ms");
        } catch (Throwable e) {
            log("stop(sessionId=" + id + ") threw " + e);
        }
    }

    /* --------------------------------------------------------------- helpers */

    long since() {
        return System.currentTimeMillis() - t0;
    }

    static String shortText(String s) {
        return s.length() <= 12 ? s : s.substring(0, 12) + "…";
    }

    String topActivity() {
        try {
            android.app.ActivityManager am =
                    (android.app.ActivityManager) getSystemService(ACTIVITY_SERVICE);
            List<android.app.ActivityManager.RunningTaskInfo> t = am.getRunningTasks(1);
            if (t != null && !t.isEmpty() && t.get(0).topActivity != null) {
                return t.get(0).topActivity.flattenToShortString();
            }
        } catch (Throwable e) {
            return "err:" + e;
        }
        return "unknown";
    }

    String screenOn() {
        try {
            PowerManager pm = (PowerManager) getSystemService(POWER_SERVICE);
            return String.valueOf(pm.isScreenOn());
        } catch (Throwable e) {
            return "err:" + e;
        }
    }

    void log(final String s) {
        Log.i(TAG, s);
        runOnUiThread(new Runnable() {
            public void run() {
                if (view != null) view.append(s + "\n");
            }
        });
    }
}
