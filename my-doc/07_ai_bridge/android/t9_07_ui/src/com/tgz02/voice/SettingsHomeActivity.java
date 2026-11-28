/*
 * SettingsHomeActivity.java -- T9-14: the V3 settings hub (2x2 group cards).
 *
 * Real data unchanged: theme mode persists in files/ui_theme.json (survives restart);
 * voice toggles persist in files/ui_voice.json. The big-model entry opens
 * ModelConfigActivity (T9-08C ModelStore backend untouched).
 *
 * V3 (docs/02 §3.3): two-column groups (大脑 / 外观 / 语音 / 设备), rows min 58dp,
 * icons i-chip / i-palette / i-mic / i-power. Theme = Ui4 token switch, same layout.
 */
package com.tgz02.voice;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SettingsHomeActivity extends V3Shell {

    static final String THEME_PATH = "/data/data/com.tgz02.voice/files/ui_theme.json";
    static final String VOICE_PATH = "/data/data/com.tgz02.voice/files/ui_voice.json";

    final boolean[] wakeOn  = new boolean[]{ readFlag(VOICE_PATH, "wake", true) };
    final boolean[] contOn  = new boolean[]{ readFlag(VOICE_PATH, "cont", true) };
    final boolean[] bootOn  = new boolean[]{ readFlag(VOICE_PATH, "boot", true) };

    @Override
    String navId() { return "settings"; }

    @Override
    String title() { return "设置"; }

    @Override
    String tag() { return "给大人的配置台"; }

    @Override
    View buildBody() { return null; }

    void rebuild()
    {
        body.removeAllViews();

        LinearLayout grid = new LinearLayout(this);
        grid.setOrientation(LinearLayout.HORIZONTAL);
        body.addView(grid, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        LinearLayout colL = new LinearLayout(this);
        colL.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        llp.rightMargin = Ui4.dp(this, 6);
        grid.addView(colL, llp);

        LinearLayout colR = new LinearLayout(this);
        colR.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        rlp.leftMargin = Ui4.dp(this, 6);
        grid.addView(colR, rlp);

        VoiceBridgeClient.Status s = client.status();

        /* ---- brain (models) ---- */
        addLabel(colL, Ui4.I_CHIP, "大脑（模型）");
        LinearLayout mc = Ui4.card(this);
        String active = s.modelsActive
                ? (ModelStore.vendorName(s.modelsVendor) + " · " + s.modelsModel)
                : "未配置";
        LinearLayout row = groupRow(0, "大模型配置", active + " · " + s.modelsCount + " 套");
        row.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(SettingsHomeActivity.this, ModelConfigActivity.class));
            }
        });
        /* T9-21：小屏填表太难受，提供网页配置入口 */
        LinearLayout webBtn = new LinearLayout(this);
        webBtn.setGravity(Gravity.CENTER_VERTICAL);
        webBtn.addView(Ui4.btn(this, "网页配置", false, new Runnable() {
            public void run() {
                startActivity(new Intent(SettingsHomeActivity.this, WebConfigActivity.class));
            }
        }));
        row.addView(webBtn);
        mc.addView(row);
        colL.addView(mc);

        /* ---- voice ---- */
        addLabel(colR, Ui4.I_MIC, "语音");
        LinearLayout vc = Ui4.card(this);
        LinearLayout vr = groupRow(0, "语音唤醒", "唤醒词「天猫精灵」· 原厂引擎");
        vr.addView(Ui4.toggle(this, wakeOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "wake", wakeOn[0]);
                toast(wakeOn[0] ? "语音唤醒已开" : "语音唤醒已关（仅记录偏好，引擎由后台控制）"); }
        }));
        vc.addView(vr);
        LinearLayout cr = groupRow(0, "连续对话", "8 秒内可以接着说");
        cr.addView(Ui4.toggle(this, contOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "cont", contOn[0]);
                toast(contOn[0] ? "连续对话已开" : "连续对话已关（仅记录偏好，引擎由后台控制）"); }
        }));
        vc.addView(cr);
        LinearLayout vol = groupRow(Ui4.I_VOLUME, "播报音量",
                "与原厂 TTS 共用同一音量 · 由设备音量键控制");
        vol.addView(Ui4.text(this, "70%", Ui4.T_BODY_SM, Ui4.text2(this)));
        vc.addView(vol);
        colR.addView(vc);

        /* ---- appearance (theme) ---- */
        addLabel(colL, Ui4.I_PALETTE, "外观");
        LinearLayout tc = Ui4.card(this);
        LinearLayout tr = groupRow(0, "主题模式", "儿童友好 / 简洁，共用同一套功能");
        LinearLayout seg = Ui4.seg(this, new String[]{"儿童友好", "简洁"},
                new boolean[]{ !Ui4.isCalm(), Ui4.isCalm() },
                new java.lang.Runnable[]{
                    new java.lang.Runnable() { public void run() { switchTheme("kid"); } },
                    new java.lang.Runnable() { public void run() { switchTheme("calm"); } }
                });
        seg.setLayoutParams(new LinearLayout.LayoutParams(Ui4.dp(this, 190),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        tr.addView(seg);
        tc.addView(tr);
        colL.addView(tc);

        /* ---- device ---- */
        addLabel(colR, Ui4.I_POWER, "设备");
        LinearLayout dc = Ui4.card(this);
        /* T9-18: the app drawer that replaces EasyTouch's overlay */
        LinearLayout ar = groupRow(Ui4.I_SKILLS, "应用管理",
                "本机 " + launchableCount() + " 个应用，点一下就能打开");
        ar.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(SettingsHomeActivity.this, AppListActivity.class));
            }
        });
        dc.addView(ar);
        /* T9-19g：原厂应用商店入口。
         * MarketMainActivity 必须带 data URI 启动：onDataLoaded() 里会取
         * getIntent().getData().getQueryParameter("tabName")，data 为 null 直接 NPE。 */
        LinearLayout mk = groupRow(Ui4.I_SETTINGS, "应用商店",
                "原厂精灵商店 · 浏览和安装其他应用");
        mk.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { openFactoryMarket(); }
        });
        dc.addView(mk);
        LinearLayout br = groupRow(0, "开机自启", "开机就能用（由系统 init 脚本控制）");
        br.addView(Ui4.toggle(this, bootOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "boot", bootOn[0]);
                toast("偏好已保存"); }
        }));
        dc.addView(br);
        LinearLayout sr = groupRow(0, "后台服务",
                s.present ? ("运行中 · pid " + s.pid) : "未连接");
        sr.addView(Ui4.text(this, s.present ? "正常" : "离线", Ui4.T_BODY_SM,
                s.present ? Ui4.ok(this) : Ui4.err(this)));
        dc.addView(sr);
        colR.addView(dc);

        LinearLayout note = Ui4.banner(this,
                "这里只放配置；记忆在「记忆中心」，技能开关在各技能详情页",
                Ui4.accentW(this), 0xFF1E62C8);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 14);
        body.addView(note, nlp);
    }

    void addLabel(LinearLayout into, int icon, String s)
    {
        LinearLayout l = new LinearLayout(this);
        l.setOrientation(LinearLayout.HORIZONTAL);
        l.setGravity(Gravity.CENTER_VERTICAL);
        l.setPadding(0, Ui4.dp(this, 12), 0, Ui4.dp(this, 6));
        l.addView(Ui4.icon(this, icon, 16, Ui4.text2(this)));
        TextView t = Ui4.textBold(this, s, Ui4.T_AUX, Ui4.text2(this));
        t.setPadding(Ui4.dp(this, 8), 0, 0, 0);
        l.addView(t);
        into.addView(l);
    }

    /** group row: title + desc, optional leading icon, min height 58 */
    LinearLayout groupRow(int icon, String title, String desc)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        r.setMinimumHeight(Ui4.dp(this, 58));
        if (icon > 0) {
            View ic = Ui4.icon(this, icon, 22, Ui4.text2(this));
            ic.setBackground(Ui4.round(this, Ui4.surface2(this), 13f));
            ic.setPadding(Ui4.dp(this, 9), Ui4.dp(this, 9), Ui4.dp(this, 9), Ui4.dp(this, 9));
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(Ui4.dp(this, 40), Ui4.dp(this, 40));
            ilp.rightMargin = Ui4.dp(this, 12);
            r.addView(ic, ilp);
        }
        LinearLayout txt = new LinearLayout(this);
        txt.setOrientation(LinearLayout.VERTICAL);
        txt.addView(Ui4.textBold(this, title, Ui4.T_BODY_SM, Ui4.text(this)));
        if (desc != null && desc.length() > 0) {
            TextView d = Ui4.text(this, desc, Ui4.T_CAP, Ui4.text2(this));
            d.setPadding(0, Ui4.dp(this, 2), 0, 0);
            txt.addView(d);
        }
        r.addView(txt, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return r;
    }

    /** T9-19g：启动原厂应用商店（appbox 的 MarketMainActivity，必须带 data URI） */
    void openFactoryMarket()
    {
        try {
            Intent it = new Intent(Intent.ACTION_VIEW);
            it.setClassName("com.alibaba.ailabs.genie.smartapp",
                    "com.alibaba.ailabs.appbox.activity.MarketMainActivity");
            it.setData(android.net.Uri.parse(
                    "market://com.alibaba.ailabs.geniemarket?tabName=x&scene=home&myApp=0"));
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            startActivity(it);
        } catch (Throwable t) {
            toast("打不开应用商店：" + t.getClass().getSimpleName());
        }
    }

    /** how many apps the drawer would list (excludes this one, hides disabled packages) */
    int launchableCount()
    {
        try {
            Intent probe = new Intent(Intent.ACTION_MAIN, null);
            probe.addCategory(Intent.CATEGORY_LAUNCHER);
            java.util.List<android.content.pm.ResolveInfo> hits =
                    getPackageManager().queryIntentActivities(probe, 0);
            if (hits == null) return 0;
            int n = 0;
            for (int i = 0; i < hits.size(); i++) {
                android.content.pm.ResolveInfo ri = hits.get(i);
                if (ri == null || ri.activityInfo == null) continue;
                if (getPackageName().equals(ri.activityInfo.packageName)) continue;
                n++;
            }
            return n;
        } catch (Throwable t) {
            return 0;
        }
    }

    void switchTheme(String mode)    {
        Ui4.setTheme(mode);
        writeTheme(mode);
        toast("主题已切换：" + (Ui4.isCalm() ? "简洁" : "儿童友好"));
        rebuildChrome();     // shell background + navbar repaint
        rebuild();
    }

    @Override
    void onShellReady()
    {
        Ui4.setTheme(readTheme());
        rebuildChrome();
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

    /* ------------------------------------------------------------ persistence */

    static boolean readFlag(String path, String key, boolean def)
    {
        try {
            String raw = readAll2(path);
            if (raw == null || raw.length() == 0) return def;
            return new org.json.JSONObject(raw).optBoolean(key, def);
        } catch (Throwable t) {
            return def;
        }
    }

    static void writeFlag(String path, String key, boolean val)
    {
        try {
            String raw = readAll2(path);
            org.json.JSONObject o = (raw == null || raw.length() == 0)
                    ? new org.json.JSONObject() : new org.json.JSONObject(raw);
            o.put(key, val);
            writeFile(path, o.toString());
        } catch (Throwable ignored) { }
    }

    static void writeTheme(String mode)
    {
        try {
            org.json.JSONObject o = new org.json.JSONObject();
            o.put("mode", mode);
            writeFile(THEME_PATH, o.toString());
        } catch (Throwable ignored) { }
    }

    static String readTheme()
    {
        try {
            String raw = readAll2(THEME_PATH);
            if (raw == null || raw.length() == 0) return "kid";
            return new org.json.JSONObject(raw).optString("mode", "kid");
        } catch (Throwable t) {
            return "kid";
        }
    }

    static String readAll2(String path)
    {
        try {
            java.io.File f = new java.io.File(path);
            if (!f.isFile() || !f.canRead()) return null;
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            try {
                byte[] b = new byte[(int) f.length()];
                int n = in.read(b);
                return n <= 0 ? null : new String(b, 0, n, "UTF-8");
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return null;
        }
    }

    static void writeFile(String path, String text)
    {
        try {
            java.io.File f = new java.io.File(path);
            java.io.File dir = f.getParentFile();
            if (dir != null && !dir.isDirectory() && !dir.mkdirs()) return;
            java.io.File tmp = new java.io.File(dir, "." + f.getName() + ".tmp");
            java.io.FileOutputStream fos = new java.io.FileOutputStream(tmp, false);
            try {
                fos.write(text.getBytes("UTF-8"));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            tmp.renameTo(f);
        } catch (Throwable ignored) { }
    }
}
