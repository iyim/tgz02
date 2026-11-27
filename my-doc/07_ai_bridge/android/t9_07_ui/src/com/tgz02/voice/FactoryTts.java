/*
 * FactoryTts.java -- T9-17: 借原厂 TTS 说一句话（设备上没有系统 TTS 引擎）。
 *
 * 背景：本机 `tts_default_synth` = null、没有任何 TTS_SERVICE，
 * android.speech.tts.TextToSpeech 完全不可用。但原厂 smartapp 自带云端 TTS，
 * 通过它自己的 ContentProvider 暴露（T5-06D 阶段验证过的入口）：
 *
 *   content://com.alibaba.ailabs.genie.assistant.provider/GenieApi
 *     query(selection = {"method":4,"data":{"tts":"<文本>", ...}})
 *       -> :core 进程 GenieTable.query -> VoiceManager.playTts -> 云端 TTS 流 -> 喇叭
 *
 * 这里只做"说一句"，不做排队/重试（响铃场景一句话说完就够了）。
 * 失败一律吞掉只记日志：闹钟不因为说不出话就不响。
 */
package com.tgz02.voice;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.SystemClock;
import android.util.Log;

import org.json.JSONObject;

final class FactoryTts {

    private static final String TAG = "T916TTS";
    private static final String GENIE_URI =
            "content://com.alibaba.ailabs.genie.assistant.provider/GenieApi";
    private static final int METHOD_PLAY_TTS = 4;

    private FactoryTts() { }

    /** 异步播报；同文本连续调用不会去重（响铃每 90 秒一句不同/相同的提醒） */
    static void speak(final Context c, final String text)
    {
        if (text == null || text.length() == 0) return;
        final Context app = c.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                long t0 = SystemClock.elapsedRealtime();
                Cursor cur = null;
                try {
                    JSONObject data = new JSONObject();
                    data.put("sessionId", 0);
                    data.put("tts", text);
                    data.put("isOpenMic", false);
                    data.put("ignoreMute", true);      /* 闹钟话术不受静音影响 */
                    data.put("feedback", false);
                    data.put("secretKey", "");
                    data.put("pkg", app.getPackageName());
                    data.put("wakeupType", 1);
                    JSONObject req = new JSONObject();
                    req.put("method", METHOD_PLAY_TTS);
                    req.put("data", data);

                    ContentResolver cr = app.getContentResolver();
                    cur = cr.query(Uri.parse(GENIE_URI), null, req.toString(), null, null);
                    /*
                     * 注意：**不要** moveToFirst()/getString()。
                     * 原厂 StatusProvider 返回的是跨进程 cursor，取窗口时会抛
                     *   NullPointerException: Attempt to get length of null array
                     * （BulkCursorProxy.getWindow -> Parcel.readException）。
                     * 播报这个副作用在 query() 返回之前就已经发生了（真机日志可见
                     * GenieTable: play curSessionId=… / TtsManager: onTtsStart），
                     * 所以这里只关心"请求有没有被接受"，不读结果集。
                     */
                    Log.i(TAG, "speak queued in " + (SystemClock.elapsedRealtime() - t0) + "ms"
                            + " len=" + text.length() + " cursor=" + (cur != null));
                } catch (Throwable t) {
                    Log.w(TAG, "speak failed after " + (SystemClock.elapsedRealtime() - t0)
                            + "ms: " + t);
                } finally {
                    if (cur != null) {
                        try { cur.close(); } catch (Throwable ignored) { }
                    }
                }
            }
        }, "t916-tts").start();
    }

    private static String trim(String s)
    {
        return s.length() > 120 ? s.substring(0, 120) + "…" : s;
    }
}
