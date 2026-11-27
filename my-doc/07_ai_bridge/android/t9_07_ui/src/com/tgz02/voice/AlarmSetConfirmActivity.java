/*
 * AlarmSetConfirmActivity.java -- T9-16: 语音定闹钟确认全屏浮层。
 *
 * 用户要求（对照原厂行为）：语音定闹钟后除了 TTS 语音确认，还要有**全屏大字界面**
 * 显示刚定的闹钟，30 秒后自动消失。
 *
 * 由 AlarmRequestMonitor（:backend 进程）在 set 成功后 launch。
 *
 * T9-16 R4 视觉重做（用户反馈：图标小、时间小、整体不居中、右边一大片空白、按钮小）：
 *   - 素材换成 alarm_hero（alarm_static 原图 640x640 里只有 377x478 有内容，四周透明留白
 *     把图标"缩"掉了一圈；裁到紧贴内容后同样 240dp 的框里能大出一倍）；
 *   - 整个内容块 wrap_content + 居中：图标块与文字块合成一个整体落在屏幕正中，
 *     左右空白对称，不再是"贴左 + 右边空一大片"；
 *   - 时间 96sp -> 176sp，成为整页视觉主体；
 *   - 加一个 92dp 高的「知道了」大按钮（原来整页没有可点的东西，只能等 30 秒）。
 *
 * 生命周期：30 秒自动 finish；点按钮 / 触摸任意位置也可提前关掉（不打断后台）。
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AlarmSetConfirmActivity extends Activity {

    private static final long AUTO_DISMISS_MS = 30_000L;
    private final Handler h = new Handler(Looper.getMainLooper());
    private final Runnable autoFinish = new Runnable() {
        public void run() { finish(); }
    };

    /** monitor 调用：弹确认浮层 */
    static void launch(Context c, String time, int repeat, String label)
    {
        android.content.Intent it = new android.content.Intent(c, AlarmSetConfirmActivity.class);
        it.putExtra("time", time);
        it.putExtra("repeat", repeat);
        it.putExtra("label", label);
        it.addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK);
        c.startActivity(it);
    }

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        String time = getIntent().getStringExtra("time");
        int repeat = getIntent().getIntExtra("repeat", 0);
        String label = getIntent().getStringExtra("label");
        if (time == null) time = "--:--";
        if (label == null || label.length() == 0) label = "布丁闹钟";

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setBackground(Ui4.grad(this, new int[]{
                Ui4.primaryW(this), Ui4.bgDeep(this), Ui4.pinkW(this)}, 0));
        root.setPadding(Ui4.dp(this, 44), Ui4.dp(this, 26), Ui4.dp(this, 44), Ui4.dp(this, 26));

        /* 内容块：wrap_content + layout_gravity CENTER_HORIZONTAL，
         * 让「图标 + 文字/按钮」作为一个整体居中，而不是撑满宽度后文字贴左。 */
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rowlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rowlp.gravity = Gravity.CENTER_HORIZONTAL;
        root.addView(row, rowlp);

        /* 左：紧裁后的闹钟图标 300x377（原比例 393:494） */
        Bitmap clock = Ui4.artBmp(this, "alarm_hero");
        if (clock != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(clock);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    Ui4.dp(this, 300), Ui4.dp(this, 377));
            clp.rightMargin = Ui4.dp(this, 44);
            row.addView(iv, clp);
        }

        /* 右：标题 + 超大字时间 + 重复规则 + 大按钮 + 提示，整列水平居中 */
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setGravity(Gravity.CENTER_HORIZONTAL);
        row.addView(right, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView title = Ui4.textBold(this, "闹钟记好了", 32f, Ui4.text(this));
        title.setGravity(Gravity.CENTER);
        right.addView(title);

        /* 时间 = 整页主体：96sp -> 176sp */
        TextView tv = Ui4.textBold(this, time, 176f, Ui4.primary2(this));
        tv.setGravity(Gravity.CENTER);
        tv.setSingleLine(true);
        tv.setIncludeFontPadding(false);
        LinearLayout.LayoutParams tvlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tvlp.topMargin = Ui4.dp(this, 2);
        right.addView(tv, tvlp);

        /* 重复规则 · 标签 */
        String rep = repeat == 0 ? "一次性" : repeat == 0x7F ? "每天"
                : repeat == 0x1F ? "工作日" : "按星期重复";
        TextView rtxt = Ui4.text(this, rep + " · " + label, 24f, Ui4.text2(this));
        rtxt.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp.topMargin = Ui4.dp(this, 10);
        right.addView(rtxt, rlp);

        /* 大按钮：原来整页没有可点的东西，只能干等 30 秒 */
        TextView ok = Ui4.btnLg(this, "知道了", true, new Runnable() {
            public void run() { h.removeCallbacks(autoFinish); finish(); }
        });
        LinearLayout.LayoutParams okLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, Ui4.dp(this, 92));
        okLp.topMargin = Ui4.dp(this, 30);
        ok.setMinWidth(Ui4.dp(this, 280));
        right.addView(ok, okLp);

        TextView hint = Ui4.text(this, "到点布丁叫你 · 30 秒后自动消失", 17f, Ui4.text3(this));
        hint.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.topMargin = Ui4.dp(this, 14);
        right.addView(hint, hlp);

        setContentView(root);
        h.postDelayed(autoFinish, AUTO_DISMISS_MS);
    }

    @Override
    public boolean onTouchEvent(MotionEvent ev)
    {
        /* 用户触碰 = 已看到，提前关闭 */
        h.removeCallbacks(autoFinish);
        finish();
        return super.onTouchEvent(ev);
    }

    @Override
    protected void onDestroy()
    {
        h.removeCallbacks(autoFinish);
        super.onDestroy();
    }
}
