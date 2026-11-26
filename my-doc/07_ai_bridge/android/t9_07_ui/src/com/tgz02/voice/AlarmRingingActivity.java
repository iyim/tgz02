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

        /* T9-16 用户设计：闹钟图标在左，时间大字在右（横向布局，符合 1024x600 比例） */
        LinearLayout contentRow = new LinearLayout(this);
        contentRow.setOrientation(LinearLayout.HORIZONTAL);
        contentRow.setGravity(Gravity.CENTER_VERTICAL);
        root.addView(contentRow, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        /* 左：新闹钟图标（alarm_static，抠底 RGBA） */
        Bitmap clock = Ui4.artBmp(this, "alarm_static");
        if (clock != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(clock);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    Ui4.dp(this, 240), Ui4.dp(this, 240));
            clp.rightMargin = Ui4.dp(this, 28);
            contentRow.addView(iv, clp);
        }

        /* 右：标签 + 大字时间 + 提示（垂直居中） */
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setGravity(Gravity.CENTER_VERTICAL);
        contentRow.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        TextView lab = Ui4.textBold(this, label, Ui4.T_CARD, Ui4.text(this));
        right.addView(lab);

        String now = new SimpleDateFormat("HH:mm", Locale.CHINA).format(new Date());
        /* 时间大字：72 -> 96sp，填满右列宽度（符合页面显示比例） */
        TextView time = Ui4.textBold(this, now, 96f, Ui4.primary2(this));
        right.addView(time);

        TextView hint = Ui4.text(this, "起床啦！布丁叫你啦", Ui4.T_STATE, Ui4.text2(this));
        hint.setPadding(0, Ui4.dp(this, 8), 0, 0);
        right.addView(hint);

        /* 按钮行：贪睡 / 关闭 */
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Ui4.dp(this, 36);
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
