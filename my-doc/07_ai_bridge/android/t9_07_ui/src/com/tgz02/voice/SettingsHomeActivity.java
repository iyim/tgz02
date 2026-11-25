/*
 * SettingsHomeActivity.java -- T9-UI-02: the V2 settings hub (kid/calm theme switch,
 * voice toggles that really persist, and the entrance to the real model config page).
 *
 * Real data: theme mode persists in files/ui_theme.json (survives restart); the voice
 * toggles persist in files/ui_voice.json.  The big-model entry opens ModelConfigActivity,
 * which keeps the T9-08C ModelStore backend untouched.
 */
package com.tgz02.voice;

import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class SettingsHomeActivity extends V2Shell {

    static final String THEME_PATH = "/data/data/com.tgz02.voice/files/ui_theme.json";
    static final String VOICE_PATH = "/data/data/com.tgz02.voice/files/ui_voice.json";

    /* toggles use a mutable box so Ui3.toggle can flip them */
    final boolean[] wakeOn  = new boolean[]{ readFlag(VOICE_PATH, "wake", true) };
    final boolean[] contOn  = new boolean[]{ readFlag(VOICE_PATH, "cont", true) };
    final boolean[] bootOn  = new boolean[]{ readFlag(VOICE_PATH, "boot", true) };

    LinearLayout bodyRoot;   // rebuilt on theme change
    LinearLayout themeRoot;  // top-level background holder

    @Override
    String navId() { return "settings"; }

    @Override
    String title() { return "设置"; }

    @Override
    View buildBody() { return null; }  // replaced

    void rebuild()
    {
        body.removeAllViews();

        /* ---- brain (models) ---- */
        body.addView(sectionLabel("大脑（模型）"));
        LinearLayout mc = card();
        VoiceBridgeClient.Status s = client.status();
        String active = s.modelsActive
                ? (ModelStore.vendorName(s.modelsVendor) + " · " + s.modelsModel)
                : "未配置";
        LinearLayout row = setRow("大模型配置", active + " · " + s.modelsCount + " 套");
        TextView chev = Ui3.text(this, "›", 26f, Ui3.text3(this));
        row.addView(chev);
        row.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(SettingsHomeActivity.this, ModelConfigActivity.class));
            }
        });
        mc.addView(row);
        body.addView(mc);

        /* ---- theme ---- */
        body.addView(sectionLabel("外观"));
        LinearLayout tc = card();
        LinearLayout tr = setRow("主题模式", "儿童友好 / 简洁，共用同一套功能");
        LinearLayout seg = new LinearLayout(this);
        seg.setOrientation(LinearLayout.HORIZONTAL);
        seg.setBackground(Ui3.round(this, Ui3.surface2(this), Ui3.R_S));
        seg.setPadding(Ui3.dp(this, 4), Ui3.dp(this, 4), Ui3.dp(this, 4), Ui3.dp(this, 4));
        TextView kid = segBtn("儿童友好", !Ui3.isCalm());
        TextView calm = segBtn("简洁", Ui3.isCalm());
        kid.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { switchTheme(Ui3.MODE_KID); }
        });
        calm.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { switchTheme(Ui3.MODE_CALM); }
        });
        seg.addView(kid, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        seg.addView(calm, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        tr.addView(seg);
        tc.addView(tr);
        body.addView(tc);

        /* ---- voice ---- */
        body.addView(sectionLabel("语音"));
        LinearLayout vc = card();
        LinearLayout vr = setRow("语音唤醒", "唤醒词「天猫精灵」· 原厂引擎");
        vr.addView(Ui3.toggle(this, wakeOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "wake", wakeOn[0]);
                toast(wakeOn[0] ? "语音唤醒已开" : "语音唤醒已关（仅记录偏好，引擎由后台控制）"); }
        }));
        vc.addView(vr);
        LinearLayout cr = setRow("连续对话", "8 秒内可以接着说");
        cr.addView(Ui3.toggle(this, contOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "cont", contOn[0]);
                toast(contOn[0] ? "连续对话已开" : "连续对话已关（仅记录偏好，引擎由后台控制）"); }
        }));
        vc.addView(cr);
        LinearLayout vol = setRow("播报音量", "与原厂 TTS 共用同一音量 · 由设备音量键控制");
        vol.addView(Ui3.text(this, "70%", 16f, Ui3.text2(this)));
        vc.addView(vol);
        body.addView(vc);

        /* ---- device ---- */
        body.addView(sectionLabel("设备"));
        LinearLayout dc = card();
        LinearLayout br = setRow("开机自启", "开机就能用（由系统 init 脚本控制）");
        br.addView(Ui3.toggle(this, bootOn, new Runnable() {
            public void run() { writeFlag(VOICE_PATH, "boot", bootOn[0]);
                toast("偏好已保存"); }
        }));
        dc.addView(br);
        LinearLayout sr = setRow("后台服务", s.present
                ? ("运行中 · pid " + s.pid) : "未连接");
        sr.addView(Ui3.text(this, s.present ? "正常" : "离线", 16f,
                s.present ? Ui3.ok(this) : Ui3.err(this)));
        dc.addView(sr);
        body.addView(dc);

        body.addView(banner("这里只放配置；记忆在「记忆中心」，技能开关在各技能详情页",
                Ui3.accentW(this), 0xFF1E62C8));
    }

    TextView segBtn(String label, boolean on)
    {
        TextView t = Ui3.textBold(this, label, 16f, on ? Ui3.text(this) : Ui3.text2(this));
        t.setGravity(Gravity.CENTER);
        t.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 8), Ui3.dp(this, 18), Ui3.dp(this, 8));
        if (on) t.setBackground(Ui3.round(this, Ui3.surface(this), 10f));
        return t;
    }

    void switchTheme(String mode)
    {
        Ui3.setMode(mode);
        writeTheme(mode);
        toast("主题已切换：" + (Ui3.isCalm() ? "简洁" : "儿童友好"));
        /* rebuild everything, including this activity's shell colours */
        themeRoot.setBackgroundColor(Ui3.bg(this));
        hdrTitle.setTextColor(Ui3.text(this));
        rebuild();
    }

    @Override
    void onShellReady()
    {
        themeRoot = (LinearLayout) ((ViewGroup) getWindow().getDecorView()
                .findViewById(android.R.id.content)).getChildAt(0);
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
            if (raw == null || raw.length() == 0) return Ui3.MODE_KID;
            return new org.json.JSONObject(raw).optString("mode", Ui3.MODE_KID);
        } catch (Throwable t) {
            return Ui3.MODE_KID;
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
