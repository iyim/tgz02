/*
 * VoiceHomeActivity.java -- T9-UI-02: the V2 (kid-friendly) voice home.
 *
 * Replaces the T9-08B dark home.  Same data discipline as before:
 *
 *   READS ONLY   <ui>/events/<seq>.json, <ui>/status.public.json, <tts>/play.public.json
 *   WRITES ONLY  inbox {"kind":"stop","tts_id":N}     (the one controlled stop path)
 *
 * The nine voice states map onto the real backend fields:
 *   error      worker dead / stale heartbeat
 *   speaking   play.public.json says playing (with tts_id)
 *   thinking   dialog.state == thinking
 *   listening  dialog.state == listening || status.listening
 *   asr        dialog round advanced with no reply yet  (see below)
 *   cont       dialog.state == continuous (worker's continuous window)
 *   standby    everything idle
 *   (stopped is a transient UI state right after the user taps 停止播报; it clears on the
 *    next turn event)
 *
 * The buddy image comes from APK assets (ui/puddin_*.png, exported by T9-UI-01-V2).
 * No text input, no conversation list, no demo data: everything on this screen is live.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
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

    static final String TAG = "T908HOME";

    VoiceBridgeClient client;

    LinearLayout pill;
    TextView meta;
    TextView greet;
    TextView sub;
    ImageView buddy;
    LinearLayout turnBox;
    TextView turnWho;
    TextView turnQ;
    TextView turnA;
    TextView turnErr;
    TextView stopBtn;
    LinearLayout quickRow;
    LinearLayout navbarHost;

    final Handler h = new Handler(Looper.getMainLooper());

    volatile int activeTtsId = -1;
    boolean haveTurn;
    boolean stopFlash;                       // true right after a successful stop tap
    long lastRoundSeen = -1;
    long lastRoundMs = 0;
    String lastTurnStatus = "";

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new VoiceBridgeClient(this, "home");
        View root = buildScreen();
        setContentView(root);
        root.setFocusableInTouchMode(true);   /* no text field here: the IME must never open */
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

    /* ---------------------------------------------------------------------- views */

    private View buildScreen()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui3.bg(this));

        /* ---- main column ---- */
        LinearLayout main = new LinearLayout(this);
        main.setOrientation(LinearLayout.VERTICAL);
        main.setPadding(Ui3.dp(this, 32), Ui3.dp(this, 20), Ui3.dp(this, 32), Ui3.dp(this, 12));
        root.addView(main, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        /* status line */
        LinearLayout statusRow = new LinearLayout(this);
        statusRow.setOrientation(LinearLayout.HORIZONTAL);
        statusRow.setGravity(Gravity.CENTER_VERTICAL);
        pill = Ui3.pill(this, "待唤醒", Ui3.text3(this), Ui3.surface2(this));
        statusRow.addView(pill);
        meta = Ui3.text(this, "", 17f, Ui3.text2(this));
        meta.setPadding(Ui3.dp(this, 12), 0, 0, 0);
        statusRow.addView(meta, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView chip = Ui3.text(this, "布丁 PUDDIN", 15f, Ui3.text2(this));
        chip.setBackground(Ui3.roundStroke(this, Ui3.surface(this), Ui3.line2(this), Ui3.R_PILL));
        chip.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));
        statusRow.addView(chip);
        main.addView(statusRow);

        /* stage: buddy + copy */
        LinearLayout stage = new LinearLayout(this);
        stage.setOrientation(LinearLayout.HORIZONTAL);
        stage.setGravity(Gravity.CENTER_VERTICAL);
        stage.setPadding(0, Ui3.dp(this, 8), 0, Ui3.dp(this, 8));
        main.addView(stage, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        int buddyDp = Ui3.isCalm() ? 220 : 300;
        FrameLayout halo = new FrameLayout(this);
        buddy = new ImageView(this);
        buddy.setScaleType(ImageView.ScaleType.FIT_CENTER);
        setBuddy("puddin_idle");
        FrameLayout.LayoutParams blp = new FrameLayout.LayoutParams(
                Ui3.dp(this, buddyDp), Ui3.dp(this, buddyDp), Gravity.CENTER);
        halo.addView(buddy, blp);
        halo.setBackground(Ui3.round(this, Ui3.bgDeep(this), Ui3.R_PILL));
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                Ui3.dp(this, buddyDp + 16), Ui3.dp(this, buddyDp + 16));
        hlp.rightMargin = Ui3.dp(this, 8);
        stage.addView(halo, hlp);

        LinearLayout copy = new LinearLayout(this);
        copy.setOrientation(LinearLayout.VERTICAL);
        copy.setPadding(Ui3.dp(this, 28), 0, 0, 0);
        stage.addView(copy, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        greet = Ui3.textBold(this, "你好呀！我是布丁", 34f, Ui3.text(this));
        copy.addView(greet);
        sub = Ui3.text(this, "说一声「天猫精灵」，我就醒啦", 20f, Ui3.text2(this));
        sub.setPadding(0, Ui3.dp(this, 10), 0, 0);
        copy.addView(sub);

        turnBox = new LinearLayout(this);
        turnBox.setOrientation(LinearLayout.VERTICAL);
        turnBox.setBackground(Ui3.roundStroke(this, Ui3.surface(this), Ui3.line(this), Ui3.R_M));
        turnBox.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 14), Ui3.dp(this, 18), Ui3.dp(this, 14));
        LinearLayout.LayoutParams tblp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        tblp.topMargin = Ui3.dp(this, 18);
        copy.addView(turnBox, tblp);

        turnWho = Ui3.text(this, "", 14f, Ui3.text3(this));
        turnBox.addView(turnWho);
        turnQ = Ui3.text(this, "", 19f, Ui3.text(this));
        turnQ.setPadding(0, Ui3.dp(this, 4), 0, 0);
        turnBox.addView(turnQ);
        turnA = Ui3.text(this, "", 19f, Ui3.primary2(this));
        turnA.setPadding(0, Ui3.dp(this, 6), 0, 0);
        turnBox.addView(turnA);
        turnErr = Ui3.text(this, "", 16f, 0xFFC02626);
        turnErr.setPadding(0, Ui3.dp(this, 6), 0, 0);
        turnBox.addView(turnErr);

        stopBtn = Ui3.textBold(this, "■ 停止播报", 17f, 0xFFFFFFFF);
        stopBtn.setGravity(Gravity.CENTER);
        stopBtn.setBackground(Ui3.round(this, Ui3.primary(this), Ui3.R_S));
        stopBtn.setPadding(0, Ui3.dp(this, 10), 0, Ui3.dp(this, 10));
        stopBtn.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { onStopClicked(); }
        });
        LinearLayout.LayoutParams sblp = new LinearLayout.LayoutParams(
                Ui3.dp(this, 180), ViewGroup.LayoutParams.WRAP_CONTENT);
        sblp.topMargin = Ui3.dp(this, 12);
        turnBox.addView(stopBtn, sblp);

        hideTurn();

        /* ---- quick tiles ---- */
        quickRow = new LinearLayout(this);
        quickRow.setOrientation(LinearLayout.HORIZONTAL);
        LinearLayout.LayoutParams qlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 132));
        qlp.leftMargin = Ui3.dp(this, 32);
        qlp.rightMargin = Ui3.dp(this, 32);
        qlp.bottomMargin = Ui3.dp(this, 10);
        root.addView(quickRow, qlp);

        /* ---- bottom navbar ---- */
        navbarHost = new LinearLayout(this);
        navbarHost.setOrientation(LinearLayout.VERTICAL);
        root.addView(navbarHost, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 88)));

        buildQuick();
        buildNavbar("home");
        return root;
    }

    void buildNavbar(String current)
    {
        navbarHost.removeAllViews();
        String[] ids   = { "home", "skills", "memory", "settings", "about" };
        String[] names = { "首页", "技能", "记忆", "设置", "关于" };
        java.lang.Runnable[] acts = {
            new java.lang.Runnable() { public void run() { } },
            new java.lang.Runnable() { public void run() { startActivity(
                new Intent(VoiceHomeActivity.this, SkillsHomeActivity.class)); } },
            new java.lang.Runnable() { public void run() { startActivity(
                new Intent(VoiceHomeActivity.this, MemoryCenterActivity.class)); } },
            new java.lang.Runnable() { public void run() { startActivity(
                new Intent(VoiceHomeActivity.this, SettingsHomeActivity.class)); } },
            new java.lang.Runnable() { public void run() { startActivity(
                new Intent(VoiceHomeActivity.this, AboutActivity.class)); } }
        };
        View v = Ui3.navbar(this, current, ids, names, null, acts);
        navbarHost.addView(v, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 88)));
    }

    void buildQuick()
    {
        quickRow.removeAllViews();
        quickRow.setOrientation(LinearLayout.HORIZONTAL);
        quickRow.setGravity(Gravity.CENTER_VERTICAL);

        /* T9-UI-02: two real skills ship enabled; lastUsedAt ordering arrives with T10,
         * so both tiles are always shown in this fixed order (alarm first). */
        LinearLayout.LayoutParams tileLp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        tileLp.rightMargin = Ui3.dp(this, 16);
        View t1v = quickTile("alarm", "闹钟", "说「明天七点叫我起床」",
                SkillsHomeActivity.SKILL_ALARM);
        quickRow.addView(t1v, tileLp);
        View t2v = quickTile("calendar", "日程", "问「今天有什么安排」",
                SkillsHomeActivity.SKILL_CALENDAR);
        quickRow.addView(t2v, tileLp);

        LinearLayout more = new LinearLayout(this);
        more.setOrientation(LinearLayout.VERTICAL);
        more.setBackground(Ui3.roundStroke(this, Ui3.surface(this), Ui3.line2(this), Ui3.R_M));
        more.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 12), Ui3.dp(this, 18), Ui3.dp(this, 12));
        more.setGravity(Gravity.CENTER_VERTICAL);
        more.addView(Ui3.textBold(this, "全部技能", 24f, Ui3.text(this)));
        more.addView(Ui3.text(this, "还有 3 个等着你", 14f, Ui3.text3(this)));
        more.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                startActivity(new Intent(VoiceHomeActivity.this, SkillsHomeActivity.class));
            }
        });
        LinearLayout.LayoutParams mlp = new LinearLayout.LayoutParams(
                0, ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        mlp.leftMargin = Ui3.dp(this, 16);
        quickRow.addView(more, mlp);
    }

    /** one gradient quick tile with the skill illustration peeking from the right */
    View quickTile(final String skill, String title, String sub, final String target)
    {
        LinearLayout tile = new LinearLayout(this);
        if (Ui3.isCalm()) {
            tile.setBackground(Ui3.round(this, Ui3.surface2(this), Ui3.R_M));
        } else {
            int[] g = Ui3.tileGrad(skill);
            tile.setBackground(Ui3.roundGrad(this, g[0], g[1], Ui3.R_M));
        }
        tile.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 12), Ui3.dp(this, 18), Ui3.dp(this, 12));
        tile.setGravity(Gravity.CENTER_VERTICAL);
        tile.setOrientation(LinearLayout.VERTICAL);

        LinearLayout txt = new LinearLayout(this);
        txt.setOrientation(LinearLayout.VERTICAL);
        TextView t1 = Ui3.textBold(this, title, 24f, Ui3.isCalm() ? Ui3.text(this) : 0xFFFFFFFF);
        txt.addView(t1);
        TextView t2 = Ui3.text(this, sub, 14f, Ui3.isCalm() ? Ui3.text3(this) : 0xF2FFFFFF);
        txt.addView(t2);
        tile.addView(txt);

        Bitmap b = Ui3.bmp(this, "illus_" + skill);
        if (b != null) {
            ImageView iv = new ImageView(this);
            iv.setImageBitmap(b);
            iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(
                    Ui3.dp(this, 96), Ui3.dp(this, 72));
            ilp.leftMargin = Ui3.dp(this, 6);
            iv.setAlpha(Ui3.isCalm() ? 0.30f : 0.96f);
            tile.addView(iv, ilp);
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

    /* ------------------------------------------------------------------ buddy */

    void setBuddy(String asset)
    {
        Bitmap b = Ui3.bmp(this, asset);
        if (b != null) buddy.setImageBitmap(b);
    }

    /* ------------------------------------------------------------------ turn */

    void hideTurn()
    {
        turnBox.setVisibility(View.GONE);
    }

    void showTurn(String who, String q, String a, String err, boolean speaking)
    {
        turnBox.setVisibility(View.VISIBLE);
        turnWho.setText(who);
        turnWho.setVisibility(who.length() > 0 ? View.VISIBLE : View.GONE);
        turnQ.setText(q);
        turnQ.setVisibility(q.length() > 0 ? View.VISIBLE : View.GONE);
        turnA.setText(a);
        turnA.setVisibility(a.length() > 0 ? View.VISIBLE : View.GONE);
        turnErr.setText(err);
        turnErr.setVisibility(err.length() > 0 ? View.VISIBLE : View.GONE);
        stopBtn.setVisibility(speaking ? View.VISIBLE : View.GONE);
    }

    /* ------------------------------------------------------------------ stop */

    void onStopClicked()
    {
        int id = activeTtsId;
        if (id <= 0) { toast("现在没有在播报"); return; }
        String err = client.requestStop(id);
        if (err != null) { toast(err); return; }
        stopFlash = true;                       // cleared by the next turn event
        setBuddy("puddin_sleep");
        Ui3.pillSet(pill, "已停止", Ui3.text3(this));
        greet.setText("好的，停下来了");
        sub.setText("想继续的话，再喊一声「天猫精灵」吧");
        toast("已请求停止播报");
    }

    void toast(String s) { Toast.makeText(this, s, Toast.LENGTH_SHORT).show(); }

    /* --------------------------------------------------------- client callbacks */

    public void onTurn(final VoiceBridgeClient.Turn t)
    {
        h.post(new Runnable() {
            public void run() {
                if (!"turn".equals(t.kind)) return;
                haveTurn = true;
                stopFlash = false;
                lastTurnStatus = t.status;
                lastRoundSeen = t.seq;
                lastRoundMs = System.currentTimeMillis();
                boolean failed = t.failed();
                String q = t.user;
                String a = failed ? "" : t.reply;
                String err = failed
                        ? ("回答失败：" + (t.reason.length() > 0 ? t.reason : "unknown error"))
                        : "";
                showTurn(failed ? "刚才的问题" : "布丁说", q, a, err, false);
                if (!failed && q.length() > 0) maybeLearnMemory(q);
            }
        });
    }

    /* ------------------------------------------------------------------ memory learning
     *
     * T9-UI-03-R1 (P1): the voice-first memory flow, on the EXISTING voice chain.
     *
     *   孩子：天猫精灵，记住我不喝咖啡
     *   ASR 得到 "记住我不喝咖啡" -> 原厂技能路由可能已把它当问答发给模型；
     *   这里在 turn 回来后做本地意图识别（前缀"记住"），把内容存为 pending 记忆，
     *   并用 kind=say 让原厂 TTS 亲口确认。等确认流（记忆中心/下一次语音）走完后
     *   记忆才生效——宁可不命中，不可错误命中。
     *
     *   注意边界：这只拦截"记住X"一种句式；其余句子 100% 走原有 AI 管线，
     *   不改 worker、不改原厂唤醒/ASR/TTS、不另造语音引擎。
     */
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

        /* strip a leading "我" ("记住我不喝咖啡" -> "不喝咖啡") */
        if (body.startsWith("我") && body.length() > 1) body = body.substring(1);
        if (body.length() == 0) return;

        long id = DataService.get(this).memAdd(guessTag(body), body, "对话学习", true);
        if (id <= 0) {
            client.say("这个我暂时记不下来，你可以在记忆中心帮我记。");
            return;
        }
        client.say("好的，我快要记住了：" + body + "。你可以在记忆中心确认一下，我就不会忘啦。");
    }

    /** very small tag guess; everything lands in 事实 unless an obvious keyword matches */
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
                updateChip();
            }
        });
    }

    public void onStatus(final VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() { public void run() { updateChip(); } });
    }

    public void onReceipt(VoiceBridgeClient.Receipt r) { }

    public void onDiag(String line) { android.util.Log.i(TAG, line); }

    /* --------------------------------------------------------------- state chip */

    /**
     * The single mapping from real backend fields to the V2 nine states.
     * No demo states here: everything comes from status.public.json / play.public.json.
     */
    void updateChip()
    {
        VoiceBridgeClient.Status s = client.status();
        VoiceBridgeClient.Play p = client.play();

        boolean workerUp = s.present && s.pid > 0 && s.tsMs > 0
                && (System.currentTimeMillis() - s.tsMs < 6000);
        if (!workerUp) {
            setState("呜…布丁连不上后台了", "过一会儿再试试，或者检查设备",
                    "puddin_error", "连接中断", Ui3.err(this), Ui3.errW(this), "");
            return;
        }
        if (stopFlash && !"playing".equals(p.state)) {
            /* keep the stopped visual until the next turn event arrives */
            return;
        }

        String d = s.dialog == null ? "idle" : s.dialog;
        if ("playing".equals(p.state)) {
            setState("我来告诉你", "说「停止」可以打断我哦",
                    "puddin_speaking", "正在说", Ui3.ok(this), Ui3.okW(this),
                    "第 " + s.round + " 轮 · 原厂 TTS");
            return;
        }
        if ("thinking".equals(d)) {
            setState("让我想想…", "动动脑筋，马上就好",
                    "puddin_thinking", "想一想", Ui3.warn(this), Ui3.warnW(this),
                    "第 " + s.round + " 轮 · 已发送给 " + modelName(s));
            return;
        }
        if ("listening".equals(d) || s.listening) {
            setState("我在听…", "请慢慢说，不着急",
                    "puddin_listening", "在听你说", Ui3.listen(this), colD9F5EF(),
                    "说完稍等一下，我会自动收音");
            return;
        }
        if ("interrupted".equals(d)) {
            setState("好的，停下来了", "想继续的话，再喊一声「天猫精灵」吧",
                    "puddin_sleep", "已停止", Ui3.text3(this), Ui3.surface2(this), "");
            return;
        }
        if (s.round > 0 && recentRound()) {
            setState("我们继续聊！", "不用再喊唤醒词，直接说吧",
                    "puddin_happy", "接着聊", Ui3.accent(this), Ui3.accentW(this),
                    "第 " + s.round + " 轮 · 8 秒内直接说话");
            return;
        }
        setState("你好呀！我是布丁", "说一声「天猫精灵」，我就醒啦",
                "puddin_idle", "待唤醒", Ui3.text3(this), Ui3.surface2(this),
                "唤醒词「天猫精灵」");
    }

    static int colD9F5EF() { return 0xFFD9F5EF; }

    boolean recentRound()
    {
        return lastRoundMs > 0 && System.currentTimeMillis() - lastRoundMs < 8000;
    }

    String modelName(VoiceBridgeClient.Status s)
    {
        if (s.modelsActive && s.modelsLabel.length() > 0) return s.modelsLabel;
        if (s.model.length() > 0) return s.model;
        return "模型";
    }

    void setState(String greetText, String subText, String buddyAsset,
                  String pillText, int dotColor, int pillBg, String metaText)
    {
        greet.setText(greetText);
        sub.setText(subText);
        setBuddy(buddyAsset);
        Ui3.pillSet(pill, pillText, dotColor);
        pill.setBackground(Ui3.round(this, pillBg, Ui3.R_PILL));
        String m = metaText;
        if (m.length() == 0 && client.status().present) {
            m = "大脑：" + modelName(client.status());
        }
        meta.setText(m);
    }
}
