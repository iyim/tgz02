/*
 * AlarmRingingService.java -- T9-16: 自有响铃服务（前台服务）。
 *
 * 职责：持有铃声播放（MediaPlayer 循环），处理贪睡/停止的状态机：
 *   AlarmReceiver 触发 -> startRinging(id, snoozeSeq)
 *     -> 播放铃声 + RingingActivity 由 receiver 弹出
 *   用户点"贪睡" -> stop + 记录 pendingSnooze{at, id, seq} -> AlarmScheduler.reschedule
 *   用户点"停止" -> stop + 一次性闹钟已由 receiver 关闭 / 重复闹钟调下一次
 *
 * T9-17 增强（对齐原厂体感，但不依赖云）：
 *   1) 音量渐强：30% -> 70%（不低于用户当前音量），15 秒内 30 步推上去；
 *      响铃结束（关闭/贪睡/5 分钟自动停）恢复用户原本的闹钟音量。
 *   2) 响铃说话：本机没有系统 TTS 引擎（tts_default_synth=null、无 TTS_SERVICE），
 *      改用原厂 TTS 的 provider 入口（见 FactoryTts）说一句带时间的提醒；
 *      说话瞬间把铃声压到 12% 避免盖住人声，说完恢复。
 *      首句 1.5 秒后说，之后每 90 秒一次，最多 3 次；说不出来只记日志，不影响响铃。
 *
 * 铃声源优先级（复用原则）：
 *   1) 用户在「闹钟铃声」页选的铃声（可能是 /sdcard/Alarms 里的文件）
 *   2) 系统默认 ALARM 铃声
 *   3) /system/media/audio/alarms/Alarm_Beep_03.ogg（本机确实存在）
 *   4) 系统默认通知音
 *
 * 贪睡间隔：5 分钟（产品定值）；连续贪睡 3 次后自动停止（防无限响）。
 */
package com.tgz02.voice;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.RingtoneManager;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;

import java.util.Calendar;

public class AlarmRingingService extends Service {

    private static MediaPlayer player;
    private static long snoozeAt = 0;
    private static long snoozeId = -1;
    private static int snoozeSeq = 0;
    private static int snoozeCount = 0;

    static final int SNOOZE_MINUTES = 5;
    static final int SNOOZE_MAX = 3;

    private static final String TAG = "T916RING";

    /* ---- T9-17 音量渐强 ---- */
    private static final long RAMP_MS = 15_000L;         /* 15 秒推到位 */
    private static final long RAMP_STEP_MS = 500L;
    private static final int RAMP_START_PCT = 30;        /* 起播 30% */
    private static final int RAMP_TARGET_PCT = 70;       /* 目标 70%（用户原本更高就保持更高） */
    private static final int FLOOR_PCT = 30;             /* 渐强开始前的最低音量 */

    /* ---- T9-17 响铃说话 ---- */
    private static final long SPEAK_FIRST_MS = 1_500L;   /* 先让铃声起个头再说话 */
    private static final long SPEAK_EVERY_MS = 90_000L;
    private static final int SPEAK_MAX = 3;
    private static final float DUCK_VOLUME = 0.12f;      /* 说话时铃声压低 */

    private static Handler H;
    private static Context sCtx;
    private static Runnable rampTick, speakTick, unduckTick;
    private static int rampIndex;
    private static int speakCount;
    private static int savedVolume = -1;
    private static boolean ducked;

    public static void startRinging(Context c, long alarmId, int seq)
    {
        Intent it = new Intent(c, AlarmRingingService.class);
        it.putExtra(AlarmScheduler.EXTRA_ID, alarmId);
        it.putExtra(AlarmScheduler.EXTRA_SNOOZE, seq);
        c.startService(it);
    }

    /** 贪睡：登记挂起状态并返回 true（超过 3 次返回 false = 拒绝再贪睡） */
    static boolean snooze(long alarmId)
    {
        if (snoozeCount >= SNOOZE_MAX) return false;
        snoozeId = alarmId;
        snoozeSeq++;
        snoozeAt = System.currentTimeMillis() + SNOOZE_MINUTES * 60_000L;
        snoozeCount++;
        return true;
    }

    static void clearSnooze()
    {
        snoozeAt = 0;
        snoozeId = -1;
        snoozeSeq = 0;
    }

    static long pendingSnoozeAt() { return snoozeAt; }
    static long pendingSnoozeId() { return snoozeId; }
    static int pendingSnoozeSeq() { return snoozeSeq; }

    @Override
    public void onCreate()
    {
        super.onCreate();
        sCtx = getApplicationContext();
        H = new Handler(Looper.getMainLooper());
        /* 前台服务：Android 8.1 必须先建 NotificationChannel，否则 startForeground 崩
         * （RemoteServiceException: invalid channel） */
        String chId = "t916_alarm_ring";
        if (Build.VERSION.SDK_INT >= 26) {
            android.app.NotificationChannel ch = new android.app.NotificationChannel(
                    chId, "布丁闹钟响铃", android.app.NotificationManager.IMPORTANCE_LOW);
            android.app.NotificationManager nm =
                    (android.app.NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
            nm.createNotificationChannel(ch);
        }
        Notification.Builder b = new Notification.Builder(this)
                .setSmallIcon(android.R.drawable.ic_lock_idle_alarm)
                .setContentTitle("布丁闹钟响铃中");
        if (Build.VERSION.SDK_INT >= 26) b.setChannelId(chId);
        startForeground(4221, b.build());
    }

    @Override
    public int onStartCommand(Intent it, int flags, int startId)
    {
        if (it == null) { stopSelf(); return START_NOT_STICKY; }
        stopPlaying();               /* 清掉上一轮（含渐强/说话/音量恢复） */
        playRing();
        beginVolumeRamp();
        scheduleSpeak();
        /* 铃声最长约 5 分钟自动停（防无人处理一直响耗电） */
        H.postDelayed(new Runnable() { public void run() { stopPlaying(); } }, 5 * 60_000L);
        return START_NOT_STICKY;
    }

    private void playRing()
    {
        try {
            AudioManager am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
            /* 起播前至少给 FLOOR_PCT（用户原音量更高就不动，由渐强接管） */
            int cur = am.getStreamVolume(AudioManager.STREAM_ALARM);
            int max = am.getStreamMaxVolume(AudioManager.STREAM_ALARM);
            if (savedVolume < 0) savedVolume = cur;
            if (max > 0 && cur < max * FLOOR_PCT / 100) {
                am.setStreamVolume(AudioManager.STREAM_ALARM, max * FLOOR_PCT / 100, 0);
            }
            /* T9-16 真机修正：无声问题排查。三级 fallback + 每级失败都记日志（不再静默）：
             *   0) 用户选的铃声（设置 → 闹钟铃声，可指向 /sdcard/Alarms 里的文件）
             *   1) 系统默认 ALARM 铃声
             *   2) 已知存在的文件 /system/media/audio/alarms/Alarm_Beep_03.ogg（直读路径）
             *   3) 系统默认 NOTIFICATION 铃声 */
            android.net.Uri chosen = AlarmSound.resolve(this);
            android.net.Uri[] candidates = new android.net.Uri[]{
                chosen,
                RingtoneManager.getDefaultUri(RingtoneManager.TYPE_ALARM),
                android.net.Uri.parse("file:///system/media/audio/alarms/Alarm_Beep_03.ogg"),
                RingtoneManager.getDefaultUri(RingtoneManager.TYPE_NOTIFICATION),
            };
            for (android.net.Uri u : candidates) {
                if (u == null) continue;
                try {
                    player = MediaPlayer.create(this, u);
                    if (player != null) {
                        android.util.Log.i(TAG, "ring source ok: " + u
                                + " (selected=" + AlarmSound.selectedTitle(this) + ")");
                        break;
                    }
                    android.util.Log.w(TAG, "create failed: " + u);
                } catch (Throwable t) {
                    android.util.Log.w(TAG, "create threw: " + u + " -- " + t);
                }
            }
            if (player != null) {
                player.setLooping(true);
                player.start();
                android.util.Log.i(TAG, "ring started");
            } else {
                android.util.Log.e(TAG, "all ring sources failed -- UI still shows");
            }
        } catch (Throwable t) {
            /* 播放失败也要让用户看到 UI（Activity 已弹），不崩进程 */
            android.util.Log.e(TAG, "playRing fatal: " + t);
        }
    }

    /* ================================================================ 音量渐强 */

    private void beginVolumeRamp()
    {
        final AudioManager am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        if (am == null || H == null) return;
        final int max = am.getStreamMaxVolume(AudioManager.STREAM_ALARM);
        if (max <= 0) return;

        int cur = am.getStreamVolume(AudioManager.STREAM_ALARM);
        int start = max * RAMP_START_PCT / 100;
        int target = max * RAMP_TARGET_PCT / 100;
        if (cur > target) target = cur;          /* 用户本来就开得更大：不要给他调小 */
        if (start > target) start = target;
        if (cur > start && cur >= start) {
            /* 起播音量 = min(cur, target)，避免先把用户音量拽下来再推上去 */
            start = Math.min(cur, target);
        }
        am.setStreamVolume(AudioManager.STREAM_ALARM, start, 0);

        final int from = start, to = target;
        final int steps = (int) (RAMP_MS / RAMP_STEP_MS);
        rampIndex = 0;
        rampTick = new Runnable() {
            public void run() {
                rampIndex++;
                int v = from + (to - from) * rampIndex / steps;
                if (v > to) v = to;
                try { am.setStreamVolume(AudioManager.STREAM_ALARM, v, 0); } catch (Throwable ignored) { }
                if (rampIndex < steps && rampTick != null) H.postDelayed(rampTick, RAMP_STEP_MS);
            }
        };
        H.postDelayed(rampTick, RAMP_STEP_MS);
        android.util.Log.i(TAG, "volume ramp " + start + " -> " + to + " over " + RAMP_MS + "ms");
    }

    private static void stopRampAndRestoreVolume()
    {
        if (H != null && rampTick != null) H.removeCallbacks(rampTick);
        rampTick = null;
        rampIndex = 0;
        if (savedVolume >= 0) {
            try {
                if (sCtx != null) {
                    AudioManager am = (AudioManager) sCtx.getSystemService(Context.AUDIO_SERVICE);
                    if (am != null) am.setStreamVolume(AudioManager.STREAM_ALARM, savedVolume, 0);
                }
            } catch (Throwable ignored) {
            }
            savedVolume = -1;
        }
    }

    /* ================================================================== 说话 */

    private void scheduleSpeak()
    {
        if (H == null) return;
        speakCount = 0;
        speakTick = new Runnable() {
            public void run() {
                if (speakCount >= SPEAK_MAX) return;
                speakCount++;
                String text = ringText();
                duck(true);
                android.util.Log.i(TAG, "speak#" + speakCount + ": " + text);
                FactoryTts.speak(AlarmRingingService.this, text);
                /* 本机拿不到 TTS 完成回调：按字数估时长（中文约 4.5 字/秒 + 0.8s 起播） */
                long dur = 800L + text.length() * 230L;
                if (H != null) {
                    unduckTick = new Runnable() { public void run() { duck(false); } };
                    H.postDelayed(unduckTick, dur);
                    if (speakCount < SPEAK_MAX) H.postDelayed(speakTick, SPEAK_EVERY_MS);
                }
            }
        };
        H.postDelayed(speakTick, SPEAK_FIRST_MS);
    }

    private static void stopSpeak()
    {
        if (H != null) {
            if (speakTick != null) H.removeCallbacks(speakTick);
            if (unduckTick != null) H.removeCallbacks(unduckTick);
        }
        speakTick = null;
        unduckTick = null;
        speakCount = 0;
        duck(false);
    }

    private static void duck(boolean on)
    {
        if (player == null) return;
        try {
            player.setVolume(on ? DUCK_VOLUME : 1f, on ? DUCK_VOLUME : 1f);
            ducked = on;
        } catch (Throwable ignored) {
        }
    }

    /** 响铃话术：带具体时间，不念"布丁闹钟"（与确认话术同一口径） */
    static String ringText()
    {
        Calendar cal = Calendar.getInstance();
        int h = cal.get(Calendar.HOUR_OF_DAY);
        int m = cal.get(Calendar.MINUTE);
        StringBuilder sb = new StringBuilder();
        sb.append(cnNum(h)).append("点");
        if (m == 0) {
            sb.append("啦");
        } else if (m == 30) {
            sb.append("半啦");
        } else if (m < 10) {
            sb.append("零").append(cnNum(m)).append("分啦");
        } else {
            sb.append(cnNum(m)).append("分啦");
        }
        sb.append("，该起床了");
        return sb.toString();
    }

    static String cnNum(int n)
    {
        final String[] d = {"零", "一", "二", "三", "四", "五", "六", "七", "八", "九"};
        if (n < 0) return "零";
        if (n < 10) return d[n];
        if (n < 20) return n == 10 ? "十" : "十" + d[n - 10];
        if (n < 100) {
            int t = n / 10, o = n % 10;
            return d[t] + "十" + (o == 0 ? "" : d[o]);
        }
        return String.valueOf(n);
    }

    /* ================================================================== 停止 */

    static void stopPlaying()
    {
        stopSpeak();
        stopRampAndRestoreVolume();
        try {
            if (player != null) {
                if (player.isPlaying()) player.stop();
                player.release();
            }
        } catch (Throwable ignored) {
        }
        player = null;
    }

    @Override
    public void onDestroy()
    {
        stopPlaying();
        super.onDestroy();
    }

    @Override
    public IBinder onBind(Intent it) { return null; }
}
