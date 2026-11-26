/*
 * AlarmScheduler.java -- T9-16: TG-Z02 自有闹钟调度器。
 *
 * 职责：把 alarms 表里 enabled=1 的闹钟翻译成 Android AlarmManager 精确闹钟。
 * 始终只注册"下一个该响的"闹钟（同一时刻只有一个 PendingIntent 指向 AlarmReceiver），
 * 触发后由 AlarmReceiver 重新调度下一次——这是"永不重复注册/重复响铃"的简单保证。
 *
 * 时区/时间变化：AlarmReceiver 监听 TIME_SET / TIMEZONE_CHANGED，收到后重算。
 * 重启恢复：AlarmBootReceiver（BOOT_COMPLETED）调用 rescheduleAll。
 * 休眠触发：setExactAndAllowWhileIdle（API 23+，本机 27 可用），RTC_WAKEUP 类型。
 *
 * 闹钟语义（repeat 位，bit0=周一..bit6=周日；0=一次性）：
 *   - 一次性：注册到下一个出现的 HH:MM；响过后 enabled=0。
 *   - 重复：注册"今天或明天"中下一个匹配 repeat 位的 HH:MM；响过后调度下一个匹配日。
 *
 * 时间源一律 System.currentTimeMillis()（wall clock），与用户对"七点"的直觉一致；
 * TIME_SET/TIMEZONE_CHANGED 时全部重算，不需要单调时钟。
 */
package com.tgz02.voice;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

import java.util.Calendar;
import java.util.List;

final class AlarmScheduler {

    static final String ACTION_FIRE = "com.tgz02.voice.action.ALARM_FIRE";
    static final String EXTRA_ID = "alarm_id";
    static final String EXTRA_SNOOZE = "snooze_count";
    static final int REQUEST_CODE = 4219;      /* 唯一 requestCode：同一闹钟天然覆盖 */

    private AlarmScheduler() { }

    /** 计算某闹钟下一次触发的墙钟毫秒；-1 = 该闹钟不再有下一次（且是一次性已过） */
    static long nextFireMs(DataService.Alarm a, long nowMs)
    {
        Calendar cal = Calendar.getInstance();
        cal.setTimeInMillis(nowMs);
        int todayDow = cal.get(Calendar.DAY_OF_WEEK);   /* 1=周日..7=周六 */

        for (int addDays = 0; addDays <= 7; addDays++) {
            /* repeat 位定义 bit0=周一..bit6=周日；Calendar 的 dow 需要映射：
             *   Calendar 周日=1 -> 我们的位 7（周日），周一=2 -> 位 1 */
            int ourDow = (todayDow == 1) ? 7 : (todayDow - 1);
            int probeDow = (ourDow + addDays) % 7;
            if (probeDow == 0) probeDow = 7;
            boolean dayMatches = (a.repeat == 0)
                    ? (addDays == 0 || addDays == 1)      /* 一次性：今天或明天 */
                    : ((a.repeat & (1 << (probeDow - 1))) != 0);

            if (!dayMatches) continue;

            /* 解析 HH:MM（DataService 保证格式） */
            String[] hm = a.time.split(":");
            if (hm.length != 2) continue;
            int hh, mm;
            try { hh = Integer.parseInt(hm[0]); mm = Integer.parseInt(hm[1]); }
            catch (NumberFormatException e) { continue; }
            if (hh < 0 || hh > 23 || mm < 0 || mm > 59) continue;

            Calendar fire = (Calendar) cal.clone();
            fire.add(Calendar.DAY_OF_MONTH, addDays);
            fire.set(Calendar.HOUR_OF_DAY, hh);
            fire.set(Calendar.MINUTE, mm);
            fire.set(Calendar.SECOND, 0);
            fire.set(Calendar.MILLISECOND, 0);
            long t = fire.getTimeInMillis();

            /* 对重复闹钟：必须严格晚于 now（今天这一刻已过就取下一次匹配日）；
             * 对一次性：已经过期的今天时刻不再响（跳到明天，AlarmReceiver 会把它关掉） */
            if (t > nowMs) return t;
            if (a.repeat == 0 && addDays == 1) return t;   /* 明天同一时刻：响过由 receiver 关掉 */
        }
        return -1;
    }

    /**
     * 重新计算并注册"下一个该响的闹钟"。幂等：requestCode 固定，
     * setExact 覆盖旧 PendingIntent，绝不叠加。
     */
    static void reschedule(Context c)
    {
        AlarmManager am = (AlarmManager) c.getSystemService(Context.ALARM_SERVICE);
        DataService ds = DataService.get(c);
        List<DataService.Alarm> all = ds.alarmList();
        long now = System.currentTimeMillis();

        long best = -1;
        long bestId = -1;
        int bestSnooze = 0;
        for (DataService.Alarm a : all) {
            if (!a.enabled) continue;
            long t = nextFireMs(a, now);
            if (t > 0 && (best < 0 || t < best)) {
                best = t;
                bestId = a.id;
                bestSnooze = 0;
            }
        }
        /* 贪睡中的闹钟：DataService 里 snooze 状态由 RingingService 管理（内存态），
         * 如果存在挂起的贪睡，它优先（贪睡时间一定早于下一个常规响铃） */
        long snoozeAt = AlarmRingingService.pendingSnoozeAt();
        if (snoozeAt > 0 && (best < 0 || snoozeAt < best)) {
            best = snoozeAt;
            bestId = AlarmRingingService.pendingSnoozeId();
            bestSnooze = AlarmRingingService.pendingSnoozeSeq();
        }

        if (best < 0 || bestId < 0) {
            am.cancel(buildPending(c, 0, 0));
            return;
        }

        Intent it = new Intent(c, AlarmReceiver.class);
        it.setAction(ACTION_FIRE);
        PendingIntent pi = buildPending(c, bestId, bestSnooze);
        if (Build.VERSION.SDK_INT >= 23) {
            am.setExactAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, best, pi);
        } else {
            am.setExact(AlarmManager.RTC_WAKEUP, best, pi);
        }
    }

    static PendingIntent buildPending(Context c, long alarmId, int snoozeSeq)
    {
        Intent it = new Intent(c, AlarmReceiver.class);
        it.setAction(ACTION_FIRE);
        it.putExtra(EXTRA_ID, alarmId);
        it.putExtra(EXTRA_SNOOZE, snoozeSeq);
        return PendingIntent.getBroadcast(c, REQUEST_CODE, it,
                PendingIntent.FLAG_UPDATE_CURRENT);
    }
}
