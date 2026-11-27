/*
 * AlarmRingingActivity.java -- T9-16: 自有全屏响铃界面（V3 视觉）。
 *
 * 由 AlarmReceiver 在闹钟触发时 startActivity 弹出（Android 8.1 允许 receiver 起 Activity）。
 *
 * T9-16 R4 视觉重做（与确认浮层统一，用户反馈：图标小 / 时间小 / 不居中 / 右边空白 / 按钮小）：
 *   - 图标用 alarm_hero（裁掉透明留白），300x377；
 *   - 内容块 wrap_content + 居中 => 图标与文字作为一个整体落在屏幕正中，左右留白对称；
 *   - 时间 96sp -> 176sp；
 *   - 「贪睡」「关闭」换成 92dp 高 / 26sp 字的 Ui4.btnLg，躺着也能一指点中。
 *
 * 交互：
 *   关闭 -> RingingService 停播 + 清贪睡状态 + 重调度 + finish
 *   贪睡 -> RingingService.snooze()（5 分钟后重响，最多 3 次）+ 重调度 + finish
 *
 * 屏幕常亮：FLAG_KEEP_SCREEN_ON（响铃中用户一定在看/听）。
 * 返回键不放行（onBackPressed 只隐藏不退出——响铃必须被显式处理或 5 分钟自动停）。
 */
package com.tgz02.voice;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class AlarmRingingActivity extends Activity {

    private long alarmId = -1;
    private int snoozeSeq = 0;

    /** 响铃动画：图标以「底边中点」为轴 ±5° 循环晃动（闹钟踩在两条腿上左右摇的感觉） */
    private static final float SWING_DEG = 5f;
    private static final long SWING_MS = 460L;
    private ImageView clockIv;
    private ObjectAnimator swing;

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
        String label = a != null && a.label != null && a.label.length() > 0
                ? a.label : "布丁闹钟";

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        /* 响铃页用品牌暖色渐变底（整页铺满，无圆角） */
        root.setBackground(Ui4.grad(this, new int[]{
                Ui4.primaryW(this), Ui4.bgDeep(this), Ui4.pinkW(this)}, 0));
        root.setPadding(Ui4.dp(this, 44), Ui4.dp(this, 24), Ui4.dp(this, 44), Ui4.dp(this, 24));

        /* 内容块 wrap_content + 水平居中：图标与文字合成整体，落在屏幕正中 */
        LinearLayout contentRow = new LinearLayout(this);
        contentRow.setOrientation(LinearLayout.HORIZONTAL);
        contentRow.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rowlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rowlp.gravity = Gravity.CENTER_HORIZONTAL;
        root.addView(contentRow, rowlp);

        /* 左：紧裁后的闹钟图标（原图 640x640 里只有 377x478 有内容） */
        Bitmap clock = Ui4.artBmp(this, "alarm_hero");
        if (clock != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(clock);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    Ui4.dp(this, 300), Ui4.dp(this, 377));
            clp.rightMargin = Ui4.dp(this, 44);
            contentRow.addView(iv, clp);
            clockIv = iv;
            /* 图标要"晃"出自身边界，父容器默认 clipChildren 会切边 */
            contentRow.setClipChildren(false);
            contentRow.setClipToPadding(false);
            root.setClipChildren(false);
        }

        /* 右：标签 + 超大字时间 + 提示 + 大按钮，整列水平居中 */
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setGravity(Gravity.CENTER_HORIZONTAL);
        contentRow.addView(right, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView lab = Ui4.textBold(this, label, 30f, Ui4.text(this));
        lab.setGravity(Gravity.CENTER);
        lab.setSingleLine(true);
        lab.setEllipsize(TextUtils.TruncateAt.END);   /* 长标签不许撑破居中块 */
        lab.setMaxWidth(Ui4.dp(this, 560));
        right.addView(lab);

        String now = new SimpleDateFormat("HH:mm", Locale.CHINA).format(new Date());
        /* 时间大字：96 -> 176sp，整页主体 */
        TextView time = Ui4.textBold(this, now, 176f, Ui4.primary2(this));
        time.setGravity(Gravity.CENTER);
        time.setSingleLine(true);
        time.setIncludeFontPadding(false);
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tlp.topMargin = Ui4.dp(this, 2);
        right.addView(time, tlp);

        TextView hint = Ui4.text(this, "起床啦！布丁叫你啦", 24f, Ui4.text2(this));
        hint.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.topMargin = Ui4.dp(this, 10);
        right.addView(hint, hlp);

        /* 按钮行：贪睡 / 关闭（92dp 高的大按钮） */
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Ui4.dp(this, 34);
        right.addView(row, rlp);

        TextView snooze = Ui4.btnLg(this, "贪睡 5 分钟", false, new Runnable() {
            public void run() { onSnooze(); }
        });
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, Ui4.dp(this, 92));
        slp.rightMargin = Ui4.dp(this, 24);
        row.addView(snooze, slp);

        TextView stop = Ui4.btnLg(this, "关闭", true, new Runnable() {
            public void run() { onStopClicked(); }
        });
        LinearLayout.LayoutParams stlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, Ui4.dp(this, 92));
        stop.setMinWidth(Ui4.dp(this, 240));
        row.addView(stop, stlp);

        setContentView(root);
        sActive = this;
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        /* 布局完成后再设 pivot（此时才拿到实测宽高），然后起循环晃动 */
        if (clockIv != null) {
            clockIv.post(new Runnable() {
                public void run() { startSwing(); }
            });
        }
    }

    @Override
    protected void onPause()
    {
        stopSwing();          /* 不在前台就别烧电、别在后台留动画 */
        super.onPause();
    }

    /** ±5° 左右循环晃动：REVERSE 往返 + 先快后慢，重心落在底边中点（像闹钟踩着腿摇） */
    private void startSwing()
    {
        if (clockIv == null || clockIv.getWidth() == 0) return;
        if (swing == null) {
            swing = ObjectAnimator.ofFloat(clockIv, "rotation", -SWING_DEG, SWING_DEG);
            swing.setDuration(SWING_MS);
            swing.setRepeatCount(ObjectAnimator.INFINITE);
            swing.setRepeatMode(ObjectAnimator.REVERSE);
            swing.setInterpolator(new AccelerateDecelerateInterpolator());
        }
        clockIv.setPivotX(clockIv.getWidth() / 2f);
        clockIv.setPivotY(clockIv.getHeight());
        if (!swing.isStarted()) swing.start();
    }

    private void stopSwing()
    {
        if (swing != null && swing.isStarted()) swing.cancel();
    }

    @Override
    protected void onDestroy()
    {
        stopSwing();
        if (sActive == this) sActive = null;
        super.onDestroy();
    }

    private void onSnooze()
    {
        AlarmRingingService.snooze(alarmId);
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
