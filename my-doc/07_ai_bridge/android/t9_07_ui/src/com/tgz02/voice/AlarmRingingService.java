/*
 * AlarmRingingService.java -- T9-16: 自有响铃服务（前台服务）。
 *
 * 职责：持有铃声播放（MediaPlayer 循环），处理贪睡/停止的状态机：
 *   AlarmReceiver 触发 -> startRinging(id, snoozeSeq)
 *     -> 播放铃声 + RingingActivity 由 receiver 弹出
 *   用户点"贪睡" -> stop + 记录 pendingSnooze{at, id, seq} -> AlarmScheduler.reschedule
 *   用户点"停止" -> stop + 一次性闹钟已由 receiver 关闭 / 重复闹钟调下一次
 *
 * 铃声源优先级（复用原则）：
 *   1) files/alarm_ring.mp3（用户自定义，未来版本）
 *   2) 原厂 smartapp 已验证的云端铃声我们不复用（版权/依赖）；本版使用系统默认
 *      铃声 RingtoneManager.getDefault(TYPE_ALARM)，真实设备可播放。
 *
 * 静音保护：播放前把 ALARM 流音量提到不低于 40%（若用户设了 0，尊重用户——
 * 但 RTC_WAKEUP 响铃属于用户主动设置，默认推到可用音量）。
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
import android.os.IBinder;

public class AlarmRingingService extends Service {

    private static MediaPlayer player;
    private static long snoozeAt = 0;
    private static long snoozeId = -1;
    private static int snoozeSeq = 0;
    private static int snoozeCount = 0;

    static final int SNOOZE_MINUTES = 5;
    static final int SNOOZE_MAX = 3;

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
        stopPlaying();
        playRing();
        /* 铃声最长约 5 分钟自动停（防无人处理一直响耗电） */
        android.os.Handler h = new android.os.Handler(android.os.Looper.getMainLooper());
        h.postDelayed(new Runnable() { public void run() { stopPlaying(); } }, 5 * 60_000L);
        return START_NOT_STICKY;
    }

    private void playRing()
    {
        try {
            AudioManager am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
            /* 响铃至少给 40% 音量（用户当前 ALARM 流音量低于 40% 时推上去） */
            int cur = am.getStreamVolume(AudioManager.STREAM_ALARM);
            int max = am.getStreamMaxVolume(AudioManager.STREAM_ALARM);
            if (max > 0 && cur < max * 40 / 100) {
                am.setStreamVolume(AudioManager.STREAM_ALARM, max * 40 / 100, 0);
            }
            player = MediaPlayer.create(this, RingtoneManager.getDefaultUri(
                    RingtoneManager.TYPE_ALARM));
            if (player == null) {
                player = MediaPlayer.create(this, RingtoneManager.getDefaultUri(
                        RingtoneManager.TYPE_NOTIFICATION));
            }
            if (player != null) {
                player.setLooping(true);
                player.start();
            }
        } catch (Throwable t) {
            /* 播放失败也要让用户看到 UI（Activity 已弹），不崩进程 */
        }
    }

    static void stopPlaying()
    {
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
