/*
 * AboutActivity.java -- T9-14: the V3 about page (brand hero + status rows).
 * All numbers come from the live status file; nothing is hard-coded demo data.
 */
package com.tgz02.voice;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class AboutActivity extends V3Shell {

    @Override
    String navId() { return "about"; }

    @Override
    String title() { return "关于"; }

    @Override
    String tag() { return "关于布丁"; }

    @Override
    View buildBody() { return null; }

    void rebuild()
    {
        body.removeAllViews();

        LinearLayout grid = new LinearLayout(this);
        grid.setOrientation(LinearLayout.HORIZONTAL);
        body.addView(grid, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        /* ---- left: brand hero 380w ---- */
        LinearLayout hero = new LinearLayout(this);
        hero.setOrientation(LinearLayout.VERTICAL);
        hero.setGravity(Gravity.CENTER);
        hero.setBackground(Ui4.grad(this, new int[]{
                Ui4.primaryW(this), Ui4.bgDeep(this), Ui4.pinkW(this)}, Ui4.R_L));
        hero.setPadding(Ui4.dp(this, 24), Ui4.dp(this, 24), Ui4.dp(this, 24), Ui4.dp(this, 24));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                Ui4.dp(this, 380), ViewGroup.LayoutParams.MATCH_PARENT);
        hlp.rightMargin = Ui4.dp(this, 18);
        grid.addView(hero, hlp);

        LinearLayout brand = new LinearLayout(this);
        brand.setOrientation(LinearLayout.HORIZONTAL);
        brand.setGravity(Gravity.CENTER_VERTICAL);
        View mark = new View(this);
        mark.setBackground(Ui4.grad(this, new int[]{Ui4.accent(this), Ui4.primary(this)}, 11f));
        brand.addView(mark, new LinearLayout.LayoutParams(Ui4.dp(this, 28), Ui4.dp(this, 28)));
        TextView bn = Ui4.textBold(this, " 布丁 PUDDIN", Ui4.T_H1, Ui4.text(this));
        brand.addView(bn);
        hero.addView(brand);
        TextView ver = Ui4.text(this, "TG-Z02 语音伙伴 · v" + versionName(), Ui4.T_CAP, Ui4.text2(this));
        ver.setPadding(Ui4.dp(this, 36), Ui4.dp(this, 2), 0, 0);
        hero.addView(ver);
        ImageView pud = Ui4.art(this, "puddin_happy", 250);
        LinearLayout pudHold = new LinearLayout(this);
        pudHold.setGravity(Gravity.CENTER);
        pudHold.addView(pud, new LinearLayout.LayoutParams(Ui4.dp(this, 250), Ui4.dp(this, 230)));
        hero.addView(pudHold);
        TextView slogan = Ui4.text(this, "一个陪你聊天、会倾听、记得住小事的\nAI 小伙伴。说一声「天猫精灵」，我就在。",
                Ui4.T_AUX, Ui4.text2(this));
        slogan.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        slp.topMargin = Ui4.dp(this, 6);
        hero.addView(slogan, slp);

        /* ---- right: status + device ---- */
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setLayoutParams(new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        grid.addView(right);

        VoiceBridgeClient.Status s = client.status();
        LinearLayout st = Ui4.card(this);
        st.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        st.addView(kv("唤醒 / 说话", "原厂唤醒 · 原厂 TTS", Ui4.text(this)));
        st.addView(kv("后台服务", s.present ? ("运行中 · pid " + s.pid) : "未连接",
                s.present ? Ui4.ok(this) : Ui4.err(this)));
        st.addView(kv("大脑（模型）", s.modelsActive
                ? (ModelStore.vendorName(s.modelsVendor) + " · " + s.modelsModel)
                : (s.present ? "未配置" : "-"), Ui4.text(this)));
        st.addView(kv("已运行", s.present ? uptime(s.uptimeMs) : "-", Ui4.text2(this)));
        st.addView(kv("模型调用", s.modelsCalls == 0 ? "尚无调用"
                : (s.modelsOk + " 成功 / " + s.modelsErr + " 失败 / " + s.modelsTimeout + " 超时"),
                Ui4.text2(this)));
        right.addView(st);

        LinearLayout sys = Ui4.card(this);
        sys.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        LinearLayout.LayoutParams syslp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        syslp.topMargin = Ui4.dp(this, 14);
        right.addView(sys, syslp);
        sys.addView(kv("设备", android.os.Build.MODEL + " · Android "
                + android.os.Build.VERSION.RELEASE + " · API "
                + android.os.Build.VERSION.SDK_INT, Ui4.text2(this)));
        sys.addView(kv("应用", getPackageName() + " · v" + versionName()
                + " · uid " + android.os.Process.myUid(), Ui4.text2(this)));
        sys.addView(kv("主题", Ui4.isCalm() ? "简洁模式" : "儿童友好模式", Ui4.text2(this)));
    }

    LinearLayout kv(String k, String v, int vColor)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 8));
        r.setMinimumHeight(Ui4.dp(this, 52));
        TextView kl = Ui4.text(this, k, Ui4.T_BODY_SM, Ui4.text2(this));
        kl.setLayoutParams(new LinearLayout.LayoutParams(Ui4.dp(this, 150),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        r.addView(kl);
        r.addView(Ui4.text(this, v, Ui4.T_BODY_SM, vColor),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return r;
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
