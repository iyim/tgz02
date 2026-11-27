/*
 * AlarmSetConfirmActivity.java -- T9-16: 语音定闹钟确认全屏浮层。
 *
 * 用户要求（对照原厂行为）：语音定闹钟后除了 TTS 语音确认，还要有**全屏大字界面**
 * 显示刚定的闹钟，30 秒后自动消失。
 *
 * 由 AlarmRequestMonitor（:backend 进程）在 set 成功后 launch。
 * 视觉：V3 暖色渐变 + 布丁 + 大字时间 + "已记好" + 重复标记。
 * 生命周期：30 秒自动 finish；用户按任意键/点击也可提前关掉（不打断后台）。
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

import java.util.Locale;

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

        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setGravity(Gravity.CENTER);
        root.setBackground(Ui4.grad(this, new int[]{
                Ui4.primaryW(this), Ui4.bgDeep(this), Ui4.pinkW(this)}, 0));
        root.setPadding(Ui4.dp(this, 40), Ui4.dp(this, 32), Ui4.dp(this, 40), Ui4.dp(this, 32));

        /* T9-16 用户设计（与响铃页一致）：闹钟图标在左，时间大字在右 */
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        root.addView(row, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        Bitmap clock = Ui4.artBmp(this, "alarm_static");
        if (clock != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(clock);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                    Ui4.dp(this, 240), Ui4.dp(this, 240));
            clp.rightMargin = Ui4.dp(this, 28);
            row.addView(iv, clp);
        }

        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setGravity(Gravity.CENTER_VERTICAL);
        row.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        TextView title = Ui4.textBold(this, "闹钟记好了", Ui4.T_H1, Ui4.text(this));
        right.addView(title);

        /* 大字时间（用户点名要大，像原厂）：72 -> 96sp */
        TextView tv = Ui4.textBold(this, time, 96f, Ui4.primary2(this));
        right.addView(tv);

        /* 重复规则 */
        String rep = repeat == 0 ? "一次性" : repeat == 0x7F ? "每天" : repeat == 0x1F ? "工作日" : "按星期重复";
        TextView rtxt = Ui4.text(this, rep + " · " + label, Ui4.T_BODY, Ui4.text2(this));
        rtxt.setPadding(0, Ui4.dp(this, 8), 0, 0);
        right.addView(rtxt);

        TextView hint = Ui4.text(this, "到点布丁叫你 · 界面稍后自动消失", Ui4.T_CAP, Ui4.text3(this));
        hint.setPadding(0, Ui4.dp(this, 6), 0, 0);
        right.addView(hint);

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
