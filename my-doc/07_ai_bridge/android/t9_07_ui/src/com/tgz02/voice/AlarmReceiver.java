/*
 * AlarmReceiver.java -- T9-16: 闹钟触发接收器。
 *
 * AlarmScheduler 注册的唯一 PendingIntent 目标。触发时：
 *   1) 校验闹钟 id 仍存在且 enabled（用户可能刚删/刚关）；
 *   2) 防重：last_fired_ms 与本次间隔 < 60s 视为系统重投递，直接忽略；
 *   3) 启动 AlarmRingingService（前台服务，负责响铃音轨）+ 弹全屏 RingingActivity；
 *   4) 对一次性闹钟立即 enabled=0；对重复闹钟由 RingingService 结束后重调度。
 *
 * 同时监听 BOOT_COMPLETED / TIME_SET / TIMEZONE_CHANGED -> reschedule。
 */
package com.tgz02.voice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AlarmReceiver extends BroadcastReceiver {

    static final String ACTION_DISMISS_RING = "com.tgz02.voice.action.ALARM_DISMISS_RING";

    @Override
    public void onReceive(Context c, Intent it)
    {
        String action = it == null || it.getAction() == null ? "" : it.getAction();

        /* T9-16：语音关闭响铃（monitor 从 :backend 发来） */
        if (ACTION_DISMISS_RING.equals(action)) {
            AlarmRingingActivity.dismissIfActive(c);
            return;
        }

        if (Intent.ACTION_BOOT_COMPLETED.equals(action)
                || Intent.ACTION_TIME_CHANGED.equals(action)
                || Intent.ACTION_TIMEZONE_CHANGED.equals(action)) {
            AlarmScheduler.reschedule(c);
            return;
        }
        if (!AlarmScheduler.ACTION_FIRE.equals(action)) return;

        long id = it.getLongExtra(AlarmScheduler.EXTRA_ID, -1);
        int snoozeSeq = it.getIntExtra(AlarmScheduler.EXTRA_SNOOZE, 0);
        if (id < 0) { AlarmScheduler.reschedule(c); return; }

        DataService ds = DataService.get(c);
        DataService.Alarm a = ds.alarmGet(id);
        if (a == null || !a.enabled) {
            /* 闹钟已被删除/关闭：只重调度下一个 */
            AlarmScheduler.reschedule(c);
            return;
        }

        /* 防系统重投递：60 秒内同 id 不重复响 */
        long now = System.currentTimeMillis();
        if (a.lastFiredMs > 0 && now - a.lastFiredMs < 60_000L && snoozeSeq == 0) {
            AlarmScheduler.reschedule(c);
            return;
        }
        ds.alarmMarkFired(id, now);

        /* 贪睡触发的响铃不计入一次性闹钟的"已响"关闭逻辑（RingingService 处理） */
        AlarmRingingService.startRinging(c.getApplicationContext(), id, snoozeSeq);
        AlarmRingingActivity.launch(c, id, snoozeSeq);

        /* 一次性闹钟：立即关闭（响铃中用户也可以从界面停止） */
        if (a.repeat == 0 && snoozeSeq == 0) {
            ds.alarmSetEnabled(id, false);
        }
        /* 调度下一个（重复闹钟的下一个匹配日 / 其他 enabled 闹钟） */
        AlarmScheduler.reschedule(c);
    }
}
