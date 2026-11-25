/*
 * AboutActivity.java -- T9-UI-02: the V2 about page with the buddy portrait.
 * All numbers come from the live status file; nothing is hard-coded demo data.
 */
package com.tgz02.voice;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AboutActivity extends V2Shell {

    @Override
    String navId() { return "about"; }

    @Override
    String title() { return "关于"; }

    @Override
    View buildBody() { return null; }

    void rebuild()
    {
        body.removeAllViews();

        LinearLayout head = card();
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 12), Ui3.dp(this, 18), Ui3.dp(this, 12));
        android.graphics.Bitmap b = Ui3.bmp(this, "puddin_happy");
        if (b != null) {
            android.widget.ImageView iv = new android.widget.ImageView(this);
            iv.setImageBitmap(b);
            head.addView(iv, new LinearLayout.LayoutParams(
                    Ui3.dp(this, 96), Ui3.dp(this, 96)));
        }
        LinearLayout id = new LinearLayout(this);
        id.setOrientation(LinearLayout.VERTICAL);
        id.setPadding(Ui3.dp(this, 16), 0, 0, 0);
        id.addView(Ui3.textBold(this, "布丁 PUDDIN", 24f, Ui3.text(this)));
        id.addView(Ui3.text(this, "TG-Z02 语音伙伴 · " + versionName(), 16f, Ui3.text2(this)));
        TextView pad = Ui3.text(this, " ", 4f, Ui3.text3(this));
        id.addView(pad);
        head.addView(id, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        body.addView(head);

        VoiceBridgeClient.Status s = client.status();
        LinearLayout st = card();
        st.addView(kvRow("唤醒 / 说话", "原厂唤醒 · 原厂 TTS", Ui3.text(this)));
        st.addView(kvRow("后台服务", s.present
                ? ("运行中 · pid " + s.pid) : "未连接",
                s.present ? Ui3.ok(this) : Ui3.err(this)));
        st.addView(kvRow("大脑（模型）", s.modelsActive
                ? (ModelStore.vendorName(s.modelsVendor) + " · " + s.modelsModel)
                : (s.present ? "未配置" : "-"), Ui3.text(this)));
        st.addView(kvRow("已运行", s.present ? uptime(s.uptimeMs) : "-",
                Ui3.text2(this)));
        st.addView(kvRow("模型调用", s.modelsCalls == 0 ? "尚无调用"
                : (s.modelsOk + " 成功 / " + s.modelsErr + " 失败 / " + s.modelsTimeout + " 超时"),
                Ui3.text2(this)));
        body.addView(st);

        LinearLayout sys = card();
        sys.addView(kvRow("设备", android.os.Build.MODEL + " · Android "
                + android.os.Build.VERSION.RELEASE + "（API "
                + android.os.Build.VERSION.SDK_INT + "）", Ui3.text2(this)));
        sys.addView(kvRow("应用", getPackageName() + " · v" + versionName()
                + " · uid " + android.os.Process.myUid(), Ui3.text2(this)));
        sys.addView(kvRow("主题", Ui3.isCalm() ? "简洁模式" : "儿童友好模式", Ui3.text2(this)));
        body.addView(sys);
    }

    String versionName()
    {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Throwable t) {
            return "?";
        }
    }

    static String uptime(long ms)
    {
        if (ms <= 0) return "0 分";
        long min = ms / 60000;
        if (min < 60) return min + " 分";
        return (min / 60) + " 小时 " + (min % 60) + " 分";
    }

    @Override
    void onShellReady()
    {
        client.setListener(this);
        client.start();
        rebuild();
    }

    @Override
    protected void onStop()
    {
        client.stopPolling();
        super.onStop();
    }

    @Override
    void renderStatus() { rebuild(); }
}
