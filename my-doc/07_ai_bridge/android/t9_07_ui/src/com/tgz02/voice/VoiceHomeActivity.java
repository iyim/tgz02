/*
 * VoiceHomeActivity.java -- T9-14: the V3 home (TG-Z02-UI-V3, docs/02 §12).
 *
 * One layout, ten UI voice states (docs 9 + retained continuous = 10):
 *   idle / wakeup / listening / recognizing / thinking / answering /
 *   speaking / stopped / error / continuous
 *
 * Data discipline UNCHANGED (read-only UI over the real backend):
 *   READS   status.public.json, events stream, play.public.json   (via BackendClient)
 *   WRITES  inbox {"kind":"stop","tts_id":N}                       (the one stop path)
 *
 * Layout (docs/03 §2.3): left character stage 400w (art 320, halo 356) + right column
 * (greeting / dialog card flex / quick row 112). V3 assets from assets/ui/v3/.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Intent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class VoiceHomeActivity extends Activity implements VoiceBridgeClient.Listener {

    static final String TAG = "T914HOME";

    BackendClient client;

    LinearLayout pill;
    TextView meta;
    TextView greet;
    TextView sub;
    ImageView face;
    LinearLayout dialogCard;
    TextView dialogRound;
    LinearLayout dialogBody;
    TextView dialogFoot;
    TextView btnStop;
    LinearLayout quickRow;
    LinearLayout navbarHost;
    FrameLayout halo;

    final Handler h = new Handler(Looper.getMainLooper());

    volatile int activeTtsId = -1;
    boolean stopFlash;
    long lastRoundMs = 0;
    String lastUser = "", lastReply = "", lastErr = "";
    int lastRound = 0;
    String curState = "idle";
    String curFace = "idle";

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new BackendClient(this, "home");
        View root = buildScreen();
        setContentView(root);
        root.setFocusableInTouchMode(true);   /* no text field: IME must never open */
        root.requestFocus();
    }

    @Override
    protected void onStart()
    {
        super.onStart();
        client.setListener(this);
        client.start();
    }

    @Override
    protected void onStop()
    {
        client.stopPolling();
        super.onStop();
    }

    /* ------------------------------------------------------------------ screen */

    private View buildScreen()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui4.bg(this));
        themeRoot = root;

        /* ---------------- home header 52 ---------------- */
        LinearLayout hdr = new LinearLayout(this);
        hdr.setOrientation(LinearLayout.HORIZONTAL);
        hdr.setGravity(Gravity.CENTER_VERTICAL);
        hdr.setPadding(Ui4.dp(this, 24), 0, Ui4.dp(this, 24), 0);

        LinearLayout brand = new LinearLayout(this);
        brand.setOrientation(LinearLayout.HORIZONTAL);
        brand.setGravity(Gravity.CENTER_VERTICAL);
        View mark = new View(this);
        mark.setBackground(Ui4.grad(this, new int[]{Ui4.accent(this), Ui4.primary(this)}, 11f));
        brand.addView(mark, new LinearLayout.LayoutParams(Ui4.dp(this, 28), Ui4.dp(this, 28)));
        TextView name = Ui4.textBold(this, "布丁", Ui4.T_CARD, Ui4.text(this));
        name.setPadding(Ui4.dp(this, 8), 0, 0, 0);
        brand.addView(name);
        TextView en = Ui4.text(this, "PUDDIN", Ui4.T_AUX, Ui4.text3(this));
        en.setPadding(Ui4.dp(this, 6), Ui4.dp(this, 4), 0, 0);
        brand.addView(en);
        hdr.addView(brand);

        pill = Ui4.pill(this, "待机 · 等你说话", Ui4.stateW(this, "idle"), Ui4.stateInk(this, "idle"));
        LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        plp.leftMargin = Ui4.dp(this, 14);
        hdr.addView(pill, plp);

        meta = Ui4.text(this, "", Ui4.T_CAP, Ui4.text2(this));
        meta.setPadding(Ui4.dp(this, 12), 0, 0, 0);
        hdr.addView(meta, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        LinearLayout rightChips = new LinearLayout(this);
        rightChips.setOrientation(LinearLayout.HORIZONTAL);
        rightChips.setGravity(Gravity.CENTER_VERTICAL);
        TextView wake = Ui4.text(this, "唤醒词「天猫精灵」", Ui4.T_CAP, Ui4.text2(this));
        wake.setBackground(Ui4.round(this, Ui4.surface(this), Ui4.R_PILL));
        wake.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 6), Ui4.dp(this, 14), Ui4.dp(this, 6));
        rightChips.addView(wake);
        TextView online = Ui4.text(this, "设备在线", Ui4.T_CAP, 0xFF14803E);
        online.setBackground(Ui4.round(this, Ui4.okW(this), Ui4.R_PILL));
        online.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 6), Ui4.dp(this, 14), Ui4.dp(this, 6));
        LinearLayout.LayoutParams olp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        olp.leftMargin = Ui4.dp(this, 8);
        rightChips.addView(online, olp);
        hdr.addView(rightChips);
        root.addView(hdr, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 52)));

        /* ---------------- main grid: 400 | 1fr ---------------- */
        LinearLayout grid = new LinearLayout(this);
        grid.setOrientation(LinearLayout.HORIZONTAL);
        grid.setPadding(Ui4.dp(this, 24), Ui4.dp(this, 4), Ui4.dp(this, 24), Ui4.dp(this, 12));
        root.addView(grid, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        mainGrid = grid;

        /* left: character stage 400w */
        LinearLayout stage = new LinearLayout(this);
        stage.setOrientation(LinearLayout.VERTICAL);
        stage.setGravity(Gravity.CENTER);
        halo = new FrameLayout(this);
        halo.setBackground(Ui4.round(this, Ui4.bgDeep(this), Ui4.R_PILL));
        face = new ImageView(this);
        face.setScaleType(ImageView.ScaleType.FIT_CENTER);
        setFace("puddin_idle");
        int facePx = Ui4.dp(this, 300);
        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(facePx, facePx, Gravity.CENTER);
        halo.addView(face, flp);
        int haloPx = Ui4.dp(this, 348);
        stage.addView(halo, new LinearLayout.LayoutParams(haloPx, haloPx));
        grid.addView(stage, new LinearLayout.LayoutParams(Ui4.dp(this, 400),
                ViewGroup.LayoutParams.MATCH_PARENT));

        /* right column */
        LinearLayout col = new LinearLayout(this);
        col.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        clp.leftMargin = Ui4.dp(this, 20);
        grid.addView(col, clp);
        rightCol = col;

        greet = Ui4.textBold(this, "你好呀！我是布丁", Ui4.T_DISPLAY, Ui4.text(this));
        col.addView(greet);
        sub = Ui4.text(this, "说一声「天猫精灵」，我就醒啦", Ui4.T_STATE, Ui4.text2(this));
        sub.setPadding(0, Ui4.dp(this, 2), 0, 0);
        col.addView(sub);

        /* dialog card (flex:1, inner scroll) */
        dialogCard = Ui4.card(this);
        dialogCard.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 12), Ui4.dp(this, 16), Ui4.dp(this, 12));
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f);
        dlp.topMargin = Ui4.dp(this, 12);
        col.addView(dialogCard, dlp);

        LinearLayout dhead = new LinearLayout(this);
        dhead.setOrientation(LinearLayout.HORIZONTAL);
        dhead.setGravity(Gravity.CENTER_VERTICAL);
        TextView dt = Ui4.textBold(this, "这一轮对话", Ui4.T_BODY_SM, Ui4.text2(this));
        dhead.addView(dt);
        dialogRound = Ui4.text(this, "语音优先 · 无需打字", Ui4.T_CAP, Ui4.text3(this));
        dialogRound.setGravity(Gravity.END);
        dhead.addView(dialogRound, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        dialogCard.addView(dhead);

        ScrollView dsv = new ScrollView(this);
        dsv.setVerticalScrollBarEnabled(false);
        dialogBody = new LinearLayout(this);
        dialogBody.setOrientation(LinearLayout.VERTICAL);
        dsv.addView(dialogBody, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        dialogCard.addView(dsv, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        LinearLayout dfoot = new LinearLayout(this);
        dfoot.setOrientation(LinearLayout.HORIZONTAL);
        dfoot.setGravity(Gravity.CENTER_VERTICAL);
        dialogFoot = Ui4.text(this, "布丁正在等你 · 直接说话就好", Ui4.T_CAP, Ui4.text3(this));
        dfoot.addView(dialogFoot, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        btnStop = Ui4.btnSm(this, "■ 停止播报", Ui4.text(this), new Runnable() {
            public void run() { onStopClicked(); }
        });
        btnStop.setVisibility(View.GONE);
        dfoot.addView(btnStop);
        LinearLayout.LayoutParams footLp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        footLp.topMargin = Ui4.dp(this, 8);
        dialogCard.addView(dfoot, footLp);

        /* quick row 112, 3 equal */
        quickRow = new LinearLayout(this);
        quickRow.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams qlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 112));
        qlp.topMargin = Ui4.dp(this, 14);
        col.addView(quickRow, qlp);

        buildQuick();
        root.addView(makeNavbar(), new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 88)));
        renderDialogEmpty();
        return root;
    }

    LinearLayout themeRoot;
    LinearLayout mainGrid;
    LinearLayout rightCol;
    LinearLayout rootRef;


    /** build the navbar and return it; the caller adds it to the root column */
    LinearLayout makeNavbar()
    {
        LinearLayout bar = Ui4.navbar(this, "home",
                new String[]{"home", "skills", "memory", "settings", "about"},
                new String[]{"首页", "技能", "记忆", "设置", "关于"},
                new int[]{Ui4.I_HOME, Ui4.I_SKILLS, Ui4.I_MEMORY, Ui4.I_SETTINGS, Ui4.I_INFO},
                new java.lang.Runnable[]{
                    new java.lang.Runnable() { public void run() { } },
                    new java.lang.Runnable() { public void run() { startActivity(
                        new Intent(VoiceHomeActivity.this, SkillsHomeActivity.class)); } },
                    new java.lang.Runnable() { public void run() { startActivity(
                        new Intent(VoiceHomeActivity.this, MemoryCenterActivity.class)); } },
                    new java.lang.Runnable() { public void run() { startActivity(
                        new Intent(VoiceHomeActivity.this, SettingsHomeActivity.class)); } },
                    new java.lang.Runnable() { public void run() { startActivity(
                        new Intent(VoiceHomeActivity.this, AboutActivity.class)); } }
                });
        rootBar = bar;
        return bar;
    }

    LinearLayout rootBar;

    void buildQuick()
    {
        quickRow.removeAllViews();
        quickRow.setOrientation(LinearLayout.HORIZONTAL);
        quickRow.setGravity(Gravity.CENTER_VERTICAL);

        /* T9-24：闹钟卡片直接打开原厂闹钟列表（技能页仍可从语音进入） */
        View alarmTile = quickTile("illus_alarm", "闹钟", "点开原厂闹钟",
                SkillsHomeActivity.SKILL_ALARM);
        alarmTile.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { openFactoryAlarm(); }
        });
        quickRow.addView(alarmTile, lpWithMargin(this, 0));
        quickRow.addView(quickTile("illus_calendar", "日程", "看看今天的安排", SkillsHomeActivity.SKILL_CALENDAR),
                lpWithMargin(this, 12));
        LinearLayout.LayoutParams lp3 = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        lp3.leftMargin = Ui4.dp(this, 12);

        /* 「全部技能」dashed card */
        LinearLayout more = new LinearLayout(this);
        more.setOrientation(LinearLayout.VERTICAL);
        more.setGravity(Gravity.CENTER_VERTICAL);
        more.setBackground(Ui4.dashed(this, Ui4.line2(this), Ui4.R_M));
        more.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 13), Ui4.dp(this, 14), Ui4.dp(this, 13));
        LinearLayout mt = new LinearLayout(this);
        mt.setOrientation(LinearLayout.HORIZONTAL);
        mt.setGravity(Gravity.CENTER_VERTICAL);
        mt.addView(Ui4.textBold(this, "全部技能", Ui4.T_ACTION, Ui4.text(this)));
        mt.addView(Ui4.icon(this, Ui4.I_STAR, 18, Ui4.yellow(this)));
        more.addView(mt);
        more.addView(Ui4.text(this, "还有 3 个等着你", Ui4.T_CAP, Ui4.text2(this)));
        more.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(VoiceHomeActivity.this, SkillsHomeActivity.class));
            }
        });
        more.setLayoutParams(lp3);
        quickRow.addView(more);
    }

    static LinearLayout.LayoutParams lpWithMargin(Context c, int lm) {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        if (lm > 0) lp.leftMargin = Ui4.dp(c, lm);
        return lp;
    }

    /** V3 quick tile: gradient container + isolated art bottom-right + full-width text */
    View quickTile(String art, String title, String sub, final String target)
    {
        Context c = this;
        LinearLayout tile = new LinearLayout(c);
        tile.setOrientation(LinearLayout.VERTICAL);
        tile.setBackground(Ui4.grad(c, Ui4.skillGrad(c,
                "alarm".equals(target) ? "alarm" : "calendar"), Ui4.R_M));
        tile.setPadding(Ui4.dp(c, 14), Ui4.dp(c, 13), Ui4.dp(c, 14), Ui4.dp(c, 13));

        TextView t1 = Ui4.textBold(c, title, Ui4.T_CARD, 0xFFFFFFFF);
        t1.setSingleLine(true);
        TextView t2 = Ui4.text(c, sub, Ui4.T_CAP, 0xF2FFFFFF);
        t2.setSingleLine(true);
        tile.addView(t1);
        tile.addView(t2);

        android.graphics.Bitmap b = Ui4.artBmp(c, art);
        if (b != null) {
            ImageView iv = new ImageView(c);
            iv.setImageBitmap(b);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            iv.setAlpha(0.38f);
            /* place bottom-right inside a frame; text already laid out above */
            LinearLayout holder = new LinearLayout(c);
            holder.setOrientation(LinearLayout.HORIZONTAL);
            holder.setGravity(Gravity.END | Gravity.BOTTOM);
            holder.addView(iv, new LinearLayout.LayoutParams(Ui4.dp(c, 84), Ui4.dp(c, 84)));
            tile.addView(holder, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        }
        tile.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { openSkill(target); }
        });
        return tile;
    }

    void openSkill(String skillId)
    {
        Intent it = new Intent(this, SkillsHomeActivity.class);
        it.putExtra("skill", skillId);
        startActivity(it);
    }

    /* T9-24：闹钟卡片直接进原厂闹钟列表。
     * 为什么不让 App 自己 startActivity：AlarmListActivity 在 manifest 里没有
     * android:exported、也没有 intent-filter，按规则就是 exported=false，
     * 普通 uid 调用会被 SecurityException 拦下（shell/root 才进得去）。
     * 所以走已有的 inbox 通道，让 root worker 用 am start 代开。 */
    void openFactoryAlarm()
    {
        try {
            java.io.File dir = new java.io.File("/data/local/tmp/t9_ui/inbox");
            String id = "open-a" + System.currentTimeMillis();
            String body = "{\"v\":1,\"kind\":\"open\",\"event_id\":\"" + id
                    + "\",\"text\":\"alarm\"}";
            java.io.File tmp = new java.io.File(dir, "." + id + ".json.tmp");
            java.io.File dst = new java.io.File(dir, id + ".json");
            java.io.FileOutputStream fos = new java.io.FileOutputStream(tmp, false);
            try {
                fos.write(body.getBytes("UTF-8"));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(dst)) {
                tmp.delete();
                Toast2.show(this, "打开闹钟失败：请求没有写进去");
            }
        } catch (Throwable t) {
            Toast2.show(this, "打开闹钟失败：" + t.getClass().getSimpleName());
        }
    }

    void setFace(String asset)
    {
        curFace = asset.replace("puddin_", "");
        android.graphics.Bitmap b = Ui4.artBmp(this, asset);
        if (b != null) face.setImageBitmap(b);
    }

    /* ------------------------------------------------------------------ dialog */

    LinearLayout sayRow(String label, String text, int labBg, int labFg, int txtColor, boolean dim)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.TOP);
        r.setPadding(0, Ui4.dp(this, 6), 0, Ui4.dp(this, 6));
        TextView lab = Ui4.textBold(this, label, Ui4.T_CAP, labFg);
        lab.setBackground(Ui4.round(this, labBg, 9f));
        lab.setPadding(Ui4.dp(this, 8), Ui4.dp(this, 3), Ui4.dp(this, 8), Ui4.dp(this, 3));
        r.addView(lab, new LinearLayout.LayoutParams(Ui4.dp(this, 46),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        TextView txt = Ui4.text(this, text, dim ? Ui4.T_AUX : Ui4.T_BODY, dim ? Ui4.text3(this) : txtColor);
        if (!dim && label.equals("布丁")) {
            txt.setTypeface(android.graphics.Typeface.DEFAULT_BOLD);
        }
        LinearLayout.LayoutParams tlp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        tlp.leftMargin = Ui4.dp(this, 10);
        r.addView(txt, tlp);
        return r;
    }

    void renderDialogEmpty()
    {
        dialogBody.removeAllViews();
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(0, Ui4.dp(this, 18), 0, 0);
        View mic = Ui4.icon(this, Ui4.I_MIC, 22, Ui4.primary2(this));
        mic.setBackground(Ui4.round(this, Ui4.primaryW(this), Ui4.R_PILL));
        mic.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10));
        row.addView(mic, new LinearLayout.LayoutParams(Ui4.dp(this, 42), Ui4.dp(this, 42)));
        TextView t = Ui4.text(this, "想说什么，直接开口就好，不用点屏幕", Ui4.T_AUX, Ui4.text3(this));
        t.setPadding(Ui4.dp(this, 12), 0, 0, 0);
        row.addView(t);
        dialogBody.addView(row);
    }

    void renderDialog()
    {
        dialogBody.removeAllViews();
        if (lastUser.length() > 0) {
            dialogBody.addView(sayRow("你说", lastUser,
                    Ui4.surface2(this), Ui4.text2(this), Ui4.text(this), false));
        }
        if (lastErr.length() > 0) {
            dialogBody.addView(sayRow("状态", lastErr,
                    Ui4.errW(this), 0xFF8E2C27, 0xFF8E2C27, false));
        } else if (lastReply.length() > 0) {
            dialogBody.addView(sayRow("布丁", lastReply,
                    Ui4.pinkW(this), 0xFF963E63, Ui4.text(this), false));
        }
        if (lastUser.length() == 0 && lastReply.length() == 0 && lastErr.length() == 0) {
            renderDialogEmpty();
        }
    }

    /* ------------------------------------------------------------------ stop */

    void onStopClicked()
    {
        int id = activeTtsId;
        if (id <= 0) { toast("现在没有在播报"); return; }
        String err = client.requestStop(id);
        if (err != null) { toast(err); return; }
        stopFlash = true;
        applyState("stopped");
        toast("已请求停止播报（不会继续念完）");
    }

    void toast(String s) { Toast.makeText(this, s, Toast.LENGTH_SHORT).show(); }

    /* ------------------------------------------------------------------ state mapping
     * The single mapping from real backend fields to the V3 ten states.
     * Same read-only discipline as T9-UI-02/V2: everything from live backend files.
     */
    void updateState()
    {
        VoiceBridgeClient.Status s = client.status();
        VoiceBridgeClient.Play p = client.play();

        boolean workerUp = s.present && s.pid > 0 && s.tsMs > 0
                && (System.currentTimeMillis() - s.tsMs < 6000);
        lastRound = s.round;
        if (!workerUp) {
            lastErr = "后台服务还在，是模型接口没有响应";
            applyState("error");
            return;
        }
        lastErr = "";
        if (stopFlash && !"playing".equals(p.state)) return;   // hold stopped until next turn

        String d = s.dialog == null ? "idle" : s.dialog;
        if ("playing".equals(p.state)) {
            applyState("speaking");
            return;
        }
        if ("thinking".equals(d)) {
            applyState("thinking");
            return;
        }
        if ("listening".equals(d) || s.listening) {
            applyState("listening");
            return;
        }
        if ("interrupted".equals(d)) {
            applyState("stopped");
            return;
        }
        if (recentRound()) {
            applyState("continuous");
            return;
        }
        applyState("idle");
    }

    boolean recentRound()
    {
        return lastRoundMs > 0 && System.currentTimeMillis() - lastRoundMs < 8000;
    }

    /** V3 ten-state visuals: title/sub/pill/dialog-face all from one place */
    void applyState(String key)
    {
        curState = key;
        int w = Ui4.stateW(this, key), ink = Ui4.stateInk(this, key), main = Ui4.stateColor(this, key);
        Ui4.pillSet(pill, label(key), w, ink);
        String faceAsset;
        if ("wakeup".equals(key) || "continuous".equals(key)) faceAsset = "puddin_happy";
        else if ("recognizing".equals(key) || "thinking".equals(key)) faceAsset = "puddin_thinking";
        else if ("answering".equals(key) || "speaking".equals(key)) faceAsset = "puddin_speaking";
        else if ("stopped".equals(key)) faceAsset = "puddin_sleep";
        else if ("error".equals(key)) faceAsset = "puddin_error";
        else faceAsset = "puddin_idle";
        setFace(faceAsset);

        if ("idle".equals(key)) {
            greet.setText("你好呀！我是布丁");
            sub.setText("说一声「天猫精灵」，我就醒啦");
            dialogRound.setText("语音优先 · 无需打字");
            dialogFoot.setText("布丁正在等你 · 直接说话就好");
        } else if ("listening".equals(key)) {
            greet.setText("我在听…");
            sub.setText("说完稍等一下，我会自动结束收音");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 正在收音");
            dialogFoot.setText("正在收音 · 说完停一下就好");
        } else if ("thinking".equals(key)) {
            greet.setText("我在想…");
            sub.setText("让我想一想，马上就好");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 正在思考");
            dialogFoot.setText("正在想一个好回答");
        } else if ("speaking".equals(key)) {
            greet.setText("正在回答");
            sub.setText("说「停止」或点右下角可以打断");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 正在播报");
            dialogFoot.setText("正在念给你听 · 说「停止」也能打断");
        } else if ("stopped".equals(key)) {
            greet.setText("好的，停下来了");
            sub.setText("想继续的话，再喊一声「天猫精灵」吧");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 播报已停止");
            dialogFoot.setText("不会继续念完 · 想继续请重新唤醒");
        } else if ("error".equals(key)) {
            greet.setText("呜…网络断了一下");
            sub.setText("不是你的问题，稍等一下再试好吗");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 需要稍等");
            dialogFoot.setText("稍等一下再喊我 · 或在设置里检查模型配置");
        } else if ("continuous".equals(key)) {
            greet.setText("还想聊什么？");
            sub.setText("不用再说唤醒词 · 倒数 8 秒");
            dialogRound.setText("第 " + Math.max(1, lastRound) + " 轮 · 免唤醒续聊");
            dialogFoot.setText("8 秒内直接说 · 不用再喊「天猫精灵」");
        } else if ("wakeup".equals(key)) {
            greet.setText("我在！");
            sub.setText("准备好啦，你说吧");
            dialogRound.setText("已唤醒");
            dialogFoot.setText("麦克风准备中 · 直接说话就好");
        }
        renderDialog();
        btnStop.setVisibility("speaking".equals(key) ? View.VISIBLE : View.GONE);
    }

    static String label(String key)
    {
        if ("idle".equals(key))       return "待机 · 等你说话";
        if ("listening".equals(key))  return "聆听中 · 我在听";
        if ("thinking".equals(key))   return "思考中 · 我在想";
        if ("speaking".equals(key))   return "播报中 · 正在回答";
        if ("stopped".equals(key))    return "已停止播报";
        if ("error".equals(key))      return "出了点小状况";
        if ("continuous".equals(key)) return "连续对话 · 继续聊";
        if ("wakeup".equals(key))     return "已唤醒 · 我在";
        return key;
    }

    /* --------------------------------------------------------- client callbacks */

    public void onTurn(final VoiceBridgeClient.Turn t)
    {
        h.post(new Runnable() {
            public void run() {
                if (!"turn".equals(t.kind)) return;
                stopFlash = false;
                lastRoundMs = System.currentTimeMillis();
                boolean failed = t.failed();
                lastUser = t.user == null ? "" : t.user;
                lastReply = failed ? "" : (t.reply == null ? "" : t.reply);
                lastErr = failed ? ("回答失败：" + (t.reason.length() > 0 ? t.reason : "unknown error")) : "";
                updateState();
                if (!failed && lastUser.length() > 0) maybeLearnMemory(lastUser);
            }
        });
    }

    /* memory learning: same voice-first flow as before (unchanged contract) */
    void maybeLearnMemory(String userText)
    {
        String trimmed = userText == null ? "" : userText.trim();
        String[] prefixes = { "记住", "帮我记住", "记一下" };
        String body = null;
        for (int i = 0; i < prefixes.length; i++) {
            if (trimmed.startsWith(prefixes[i]) && trimmed.length() > prefixes[i].length()) {
                body = trimmed.substring(prefixes[i].length()).trim();
                break;
            }
        }
        if (body == null || body.length() == 0) return;
        if (body.startsWith("我") && body.length() > 1) body = body.substring(1);
        if (body.length() == 0) return;
        long id = DataService.get(this).memAdd(guessTag(body), body, "对话学习", true);
        if (id <= 0) {
            client.say("这个我暂时记不下来，你可以在记忆中心帮我记。");
            return;
        }
        client.say("好的，我快要记住了：" + body + "。你可以在记忆中心确认一下，我就不会忘啦。");
    }

    static String guessTag(String text)
    {
        if (text.contains("不喝") || text.contains("不吃") || text.contains("喜欢")
                || text.contains("讨厌") || text.contains("爱") || text.contains("偏好"))
            return "偏好";
        if (text.contains("女儿") || text.contains("儿子") || text.contains("爸爸")
                || text.contains("妈妈") || text.contains("家里人") || text.contains("小名"))
            return "关系";
        if (text.contains("音量") || text.contains("亮度") || text.contains("蓝牙")
                || text.contains("音箱")) return "设备";
        return "事实";
    }

    public void onPlay(final VoiceBridgeClient.Play p)
    {
        h.post(new Runnable() {
            public void run() {
                if ("playing".equals(p.state) && p.ttsId > 0) activeTtsId = p.ttsId;
                else activeTtsId = -1;
                updateState();
            }
        });
    }

    public void onStatus(final VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() { public void run() { updateState(); } });
    }

    public void onReceipt(VoiceBridgeClient.Receipt r) { }
    public void onDiag(String line) { android.util.Log.i(TAG, line); }
}
