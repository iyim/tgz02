/*
 * AlarmSoundActivity.java -- T9-16 R6: 闹钟铃声选择页（V3 页面）。
 *
 * 入口：技能中心 → 闹钟 → 「闹钟铃声」行。
 * 数据：AlarmSound.list()（系统默认 + 系统内置 alarms + /sdcard/Alarms 用户文件）。
 * 交互：点整行 = 选中并试听；点「试听」只播不选。
 *
 * 用户自定义铃声的物理路径就是 /sdcard/Alarms：
 *   连 USB 或用文件管理器把 mp3/ogg 丢进去，回本页即可看到。
 *   响铃是循环播放，建议文件 10~30 秒。
 */
package com.tgz02.voice;

import android.Manifest;
import android.content.pm.PackageManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.List;

public class AlarmSoundActivity extends V3Shell {

    private static final int REQ_STORAGE = 4311;
    private MediaPlayer preview;

    @Override String navId() { return "skills"; }
    @Override String title() { return "闹钟铃声"; }
    @Override String tag() { return "本机铃声"; }
    @Override String crumbParent() { return "技能中心"; }
    @Override View buildBody() { return null; }

    @Override
    void onShellReady()
    {
        askStorage();
        rebuild();
    }

    private void askStorage()
    {
        if (android.os.Build.VERSION.SDK_INT < 23) return;
        if (checkSelfPermission(Manifest.permission.READ_EXTERNAL_STORAGE)
                == PackageManager.PERMISSION_GRANTED) return;
        /* 没权限也能用：只是列表里看不到 /sdcard/Alarms 下的用户文件 */
        try {
            requestPermissions(new String[]{Manifest.permission.READ_EXTERNAL_STORAGE}, REQ_STORAGE);
        } catch (Throwable ignored) {
        }
    }

    @Override
    public void onRequestPermissionsResult(int req, String[] p, int[] res)
    {
        super.onRequestPermissionsResult(req, p, res);
        if (req == REQ_STORAGE) rebuild();
    }

    void rebuild()
    {
        body.removeAllViews();

        /* ---- 当前选择 ---- */
        LinearLayout cur = Ui4.card(this);
        cur.setPadding(Ui4.dp(this, 18), Ui4.dp(this, 14), Ui4.dp(this, 18), Ui4.dp(this, 14));
        cur.addView(Ui4.text(this, "到点响的铃声", Ui4.T_BODY_SM, Ui4.text2(this)));
        TextView ct = Ui4.textBold(this, AlarmSound.selectedTitle(this), Ui4.T_CARD,
                Ui4.primary2(this));
        LinearLayout.LayoutParams ctlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        ctlp.topMargin = Ui4.dp(this, 4);
        cur.addView(ct, ctlp);
        body.addView(cur);

        /* ---- 可选铃声清单 ---- */
        LinearLayout list = Ui4.card(this);
        list.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 6), Ui4.dp(this, 16), Ui4.dp(this, 6));
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        llp.topMargin = Ui4.dp(this, 12);
        body.addView(list, llp);

        List<AlarmSound.Entry> items = AlarmSound.list(this);
        Uri sel = AlarmSound.selected(this);
        String selectedUri = sel == null ? "" : sel.toString();
        for (int i = 0; i < items.size(); i++) {
            final AlarmSound.Entry e = items.get(i);
            boolean on = e.uri != null && selectedUri.equals(e.uri.toString());
            if (i > 0) list.addView(divider());
            list.addView(soundRow(e, on));
        }

        /* ---- 自定义说明 ---- */
        LinearLayout note = Ui4.banner(this,
                "想用自己的歌？把 mp3 / ogg 放进 /sdcard/Alarms（连电脑拖进去即可），"
                        + "再回到本页就会出现在上面的列表里。响铃循环播放，建议 10~30 秒。",
                Ui4.accentW(this), 0xFF1E62C8);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 12);
        body.addView(note, nlp);

        LinearLayout note2 = Ui4.banner(this,
                "若系统里本应用没有「存储」权限，列表只显示系统铃声；响铃照样出声。",
                Ui4.surface2(this), Ui4.text2(this));
        LinearLayout.LayoutParams n2lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        n2lp.topMargin = Ui4.dp(this, 8);
        body.addView(note2, n2lp);
    }

    View divider()
    {
        View v = new View(this);
        v.setBackgroundColor(Ui4.line(this));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 1);
        lp.leftMargin = Ui4.dp(this, 2);
        lp.rightMargin = Ui4.dp(this, 2);
        v.setLayoutParams(lp);
        return v;
    }

    LinearLayout soundRow(final AlarmSound.Entry e, boolean on)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 8));
        r.setMinimumHeight(Ui4.dp(this, 54));

        TextView name = Ui4.textBold(this, e.title, Ui4.T_BODY_SM,
                on ? Ui4.primary2(this) : Ui4.text(this));
        name.setSingleLine(true);
        name.setEllipsize(android.text.TextUtils.TruncateAt.MIDDLE);
        r.addView(name, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        if (on) {
            LinearLayout pill = Ui4.pill(this, "正在用", Ui4.primaryW(this), Ui4.primary2(this));
            LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            plp.rightMargin = Ui4.dp(this, 10);
            r.addView(pill, plp);
        }

        r.addView(Ui4.btnSm(this, "试听", Ui4.text2(this), new Runnable() {
            public void run() { play(e); }
        }));

        r.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                AlarmSound.select(AlarmSoundActivity.this, e);
                play(e);
                toast("铃声已切换：" + e.title);
                rebuild();
            }
        });
        return r;
    }

    private void play(AlarmSound.Entry e)
    {
        stopPreview();
        Uri u = e.uri;
        if (u == null) return;
        try {
            preview = MediaPlayer.create(this, u);
            if (preview == null) {
                toast("这个铃声播不出来");
                return;
            }
            preview.setLooping(false);
            preview.start();
        } catch (Throwable t) {
            toast("试听失败：" + t.getClass().getSimpleName());
        }
    }

    private void stopPreview()
    {
        try {
            if (preview != null) {
                if (preview.isPlaying()) preview.stop();
                preview.release();
            }
        } catch (Throwable ignored) {
        }
        preview = null;
    }

    @Override
    protected void onPause()
    {
        stopPreview();
        super.onPause();
    }

    @Override
    protected void onDestroy()
    {
        stopPreview();
        super.onDestroy();
    }
}
