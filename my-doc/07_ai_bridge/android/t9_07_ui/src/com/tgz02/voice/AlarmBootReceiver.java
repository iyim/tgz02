/*
 * AlarmBootReceiver.java -- T9-16: 开机恢复调度。
 *
 * 与 AlarmReceiver 分开的原因：BOOT_COMPLETED 不是闹钟触发，只做一次全量重算。
 * AlarmScheduler.reschedule 幂等（固定 requestCode 覆盖），重复调用无副作用。
 *
 * 注：本应用已由系统 init 的 tg_stack 生态保持活跃；这里兜底的是"进程被杀 +
 * 设备重启"场景。AlarmManager 的注册本身由系统持久化，但 setExact 的目标
 * PendingIntent 在重启后仍然有效——真正需要重算的是"闹钟数据变化后未被调度"
 * 的窗口，开机重算是成本最低的兜底。
 */
package com.tgz02.voice;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AlarmBootReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context c, Intent it)
    {
        String a = it == null || it.getAction() == null ? "" : it.getAction();
        if (Intent.ACTION_BOOT_COMPLETED.equals(a)) {
            AlarmScheduler.reschedule(c);
        }
    }
}
