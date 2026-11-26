/*
 * AlarmRingingActivity.java -- T9-16: 自有全屏响铃界面（V3 视觉）。
 *
 * 由 AlarmReceiver 在闹钟触发时 startActivity 弹出（Android 8.1 允许 receiver 起 Activity）。
 * 展示：时间大字 + 闹钟标签 + 布丁 + 「贪睡」/「关闭」两个大按钮。
 *
 * 交互：
 *   关闭 -> RingingService 停播 + 清贪睡状态 + 重调度 + finish
 *   贪睡 -> RingingService.snooze()（5 分钟后重响，最多 3 次）+ 重调度 + finish
 *
 * 屏幕常亮：FLAG_KEEP_SCREEN_ON（响铃中用户一定在看/听）。
 * 返回键不放行（onBackPressed 只隐藏不退出——响铃必须被显式处理或 5 分钟自动停）。
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class AlarmRingingActivity extends Activity {

    private long alarmId = -1;
    private int snoozeSeq = 0;

    private static AlarmRingingActivity sActive;

    /** T9-16 语音关闭：worker 的 cancel 请求（无时间）→ monitor → receiver → 这里静默关掉响铃 */
    static void dismissIfActive(Context c)
    {
        AlarmRingingService.stopPlaying();
        AlarmRingingService.clearSnooze();
        AlarmScheduler.reschedule(c);
        if (sActive != null && !sActive.isFinishing()) {
            sActive.finish();
        }
    }

    /** receiver 调用：弹响铃界面（Android 8.1 允许 receiver startActivity） */
    static void launch(Context c, long alarmId, int snoozeSeq)
    {
        Intent it = new Intent(c, AlarmRingingActivity.class);
        it.putExtra(AlarmScheduler.EXTRA_ID, alarmId);
        it.putExtra(AlarmScheduler.EXTRA_SNOOZE, snoozeSeq);
        it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        c.startActivity(it);
    }

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        alarmId = getIntent().getLongExtra(AlarmScheduler.EXTRA_ID, -1);
        snoozeSeq = getIntent().getIntExtra(AlarmScheduler.EXTRA_SNOOZE, 0);

        getWindow().addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON
                | WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED
                | WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON);

        DataService ds = DataService.get(this);
        DataService.Alarm a = ds.alarmGet(alarmId);
        String label = a != null ? a.label : "布丁闹钟";

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        /* 响铃页用品牌暖色渐变底（整页铺满，无圆角） */
        root.setBackground(Ui4.grad(this, new int[]{
                Ui4.primaryW(this), Ui4.bgDeep(this), Ui4.pinkW(this)}, 0));
        root.setPadding(Ui4.dp(this, 40), Ui4.dp(this, 32), Ui4.dp(this, 40), Ui4.dp(this, 32));

        /* 布丁 */
        Bitmap pud = Ui4.artBmp(this, "puddin_happy");
        if (pud != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(pud);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            root.addView(iv, new LinearLayout.LayoutParams(Ui4.dp(this, 150), Ui4.dp(this, 150)));
        }

        /* 标签 + 时间 */
        TextView lab = Ui4.textBold(this, label, Ui4.T_H1, Ui4.text(this));
        lab.setGravity(Gravity.CENTER);
        root.addView(lab);

        String now = new SimpleDateFormat("HH:mm", Locale.CHINA).format(new Date());
        TextView time = Ui4.textBold(this, now, 64f, Ui4.primary2(this));
        time.setGravity(Gravity.CENTER);
        root.addView(time);

        TextView hint = Ui4.text(this, "起床啦！布丁叫你啦", Ui4.T_BODY, Ui4.text2(this));
        hint.setGravity(Gravity.CENTER);
        root.addView(hint);

        /* 按钮行：贪睡 / 关闭 */
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Ui4.dp(this, 28);
        root.addView(row, rlp);

        TextView snooze = Ui4.btn(this, "贪睡 5 分钟", false, new Runnable() {
            public void run() { onSnooze(); }
        });
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        slp.rightMargin = Ui4.dp(this, 16);
        row.addView(snooze, slp);

        TextView stop = Ui4.btn(this, "关闭", true, new Runnable() {
            public void run() { onStopClicked(); }
        });
        row.addView(stop);

        setContentView(root);
        sActive = this;
    }

    @Override
    protected void onDestroy()
    {
        if (sActive == this) sActive = null;
        super.onDestroy();
    }

    private void onSnooze()
    {
        boolean ok = AlarmRingingService.snooze(alarmId);
        AlarmRingingService.stopPlaying();
        AlarmScheduler.reschedule(this);
        finish();
    }

    private void onStopClicked()
    {
        AlarmRingingService.stopPlaying();
        AlarmRingingService.clearSnooze();
        AlarmScheduler.reschedule(this);
        finish();
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent ev)
    {
        /* 音量键 = 停止响铃（睡眼惺忪时最顺手的动作） */
        if (keyCode == KeyEvent.KEYCODE_VOLUME_DOWN || keyCode == KeyEvent.KEYCODE_VOLUME_UP) {
            onStopClicked();
            return true;
        }
        return super.onKeyDown(keyCode, ev);
    }

    @Override
    public void onBackPressed()
    {
        /* 响铃必须显式处理：返回键不退出 */
    }
}
