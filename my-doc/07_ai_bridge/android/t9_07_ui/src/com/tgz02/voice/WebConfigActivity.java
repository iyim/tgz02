/*
 * WebConfigActivity.java -- T9-21: 把 1024x600 的小屏上难填的表单搬到浏览器。
 *
 * 页面本身由 ConfigServer 提供；这里只负责：显示地址、启停服务、展示当前已保存的配置。
 * 服务是进程级单例，离开页面不会停（用户可能还要在手机上慢慢填）。
 */
package com.tgz02.voice;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.List;

public final class WebConfigActivity extends V3Shell {

    @Override
    String navId() { return "settings"; }

    @Override
    String title() { return "网页配置"; }

    @Override
    String crumbParent() { return "设置"; }

    @Override
    String tag() { return "用手机或电脑填表"; }

    @Override
    View buildBody() { return null; }

    @Override
    void onShellReady()
    {
        Ui4.setTheme(SettingsHomeActivity.readTheme());
        rebuildChrome();
        render();
    }

    void render()
    {
        body.removeAllViews();
        ConfigServer srv = ConfigServer.get(this);

        LinearLayout card = Ui4.card(this);
        LinearLayout pad = new LinearLayout(this);
        pad.setOrientation(LinearLayout.VERTICAL);
        pad.setPadding(Ui4.dp(this, 22), Ui4.dp(this, 18), Ui4.dp(this, 22), Ui4.dp(this, 18));
        card.addView(pad);

        TextView head = Ui4.textBold(this, "在浏览器里配置大模型", Ui4.T_BODY, Ui4.text(this));
        pad.addView(head);

        if (srv.isRunning()) {
            TextView u = Ui4.textBold(this, srv.url(), 34f, Ui4.primary(this));
            u.setPadding(0, Ui4.dp(this, 14), 0, Ui4.dp(this, 4));
            u.setGravity(Gravity.CENTER_HORIZONTAL);
            pad.addView(u);

            TextView tip = Ui4.text(this,
                    "手机/电脑连同一个 Wi-Fi，浏览器打开上面的地址即可",
                    Ui4.T_AUX, Ui4.text2(this));
            tip.setGravity(Gravity.CENTER_HORIZONTAL);
            pad.addView(tip);

            LinearLayout acts = new LinearLayout(this);
            acts.setOrientation(LinearLayout.HORIZONTAL);
            acts.setGravity(Gravity.CENTER);
            acts.setPadding(0, Ui4.dp(this, 16), 0, 0);
            acts.addView(Ui4.btn(this, "停止服务", false, new Runnable() {
                public void run() { ConfigServer.get(WebConfigActivity.this).stop(); render(); }
            }));
            LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            mlp.leftMargin = Ui4.dp(this, 12);
            acts.addView(Ui4.btn(this, "刷新", false, new Runnable() {
                public void run() { render(); }
            }), mlp);
            pad.addView(acts);
        } else {
            TextView tip = Ui4.text(this,
                    "点下面的按钮启动配置服务，然后用手机/电脑的浏览器打开设备地址。",
                    Ui4.T_AUX, Ui4.text2(this));
            tip.setPadding(0, Ui4.dp(this, 12), 0, 0);
            pad.addView(tip);
            LinearLayout acts = new LinearLayout(this);
            acts.setGravity(Gravity.CENTER);
            acts.setPadding(0, Ui4.dp(this, 16), 0, 0);
            acts.addView(Ui4.btn(this, "启动配置服务", true, new Runnable() {
                public void run() {
                    String u = ConfigServer.get(WebConfigActivity.this).start();
                    if (u == null) toast("启动失败：端口被占用");
                    render();
                }
            }));
            pad.addView(acts);
        }
        body.addView(card);

        /* ---- 当前已保存的配置 ---- */
        List<ModelStore.Model> list = ModelStore.load();
        String defId = ModelStore.loadDefaultId();

        LinearLayout listCard = Ui4.card(this);
        LinearLayout lp = new LinearLayout(this);
        lp.setOrientation(LinearLayout.VERTICAL);
        lp.setPadding(Ui4.dp(this, 18), Ui4.dp(this, 14), Ui4.dp(this, 18), Ui4.dp(this, 14));
        listCard.addView(lp);

        if (list.isEmpty()) {
            lp.addView(Ui4.text(this,
                    "本机还没有保存过配置（models.json 不存在）。用上面的地址在浏览器里保存一次就会出现。",
                    Ui4.T_AUX, Ui4.warn(this)));
        } else {
            for (ModelStore.Model m : list) {
                LinearLayout row = new LinearLayout(this);
                row.setOrientation(LinearLayout.VERTICAL);
                row.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 6));
                row.addView(Ui4.textBold(this,
                        (m.id.equals(defId) ? "默认 · " : "") + m.label, Ui4.T_BODY_SM, Ui4.text(this)));
                row.addView(Ui4.text(this, m.baseUrl + "  ·  " + m.model,
                        Ui4.T_CAP, Ui4.text3(this)));
                lp.addView(row);
            }
        }
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.topMargin = Ui4.dp(this, 14);
        body.addView(listCard, clp);

        LinearLayout note = Ui4.banner(this,
                "保存后重启一次设备，语音后台会读取新配置（models.json 优先于 worker.conf）",
                Ui4.accentW(this), 0xFF1E62C8);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 14);
        body.addView(note, nlp);
    }
}
