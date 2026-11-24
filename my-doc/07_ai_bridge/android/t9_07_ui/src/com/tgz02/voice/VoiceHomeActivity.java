/*
 * VoiceHomeActivity.java -- T9-08B: the voice-first home screen.
 *
 * This is the product: it only shows what the voice chain is doing right now.
 *
 *   +--------------------------------------------------------------+
 *   | 语音助手                                      设置   更多    |
 *   +--------------------------------------------------------------+
 *   | (dot) 待唤醒 · 说「天猫精灵」                                 |
 *   |--------------------------------------------------------------|
 *   | 你说：<factory ASR text of the last turn>                     |
 *   | 助手：<the answer that was queued for the factory TTS>        |
 *   +--------------------------------------------------------------+
 *   |                                                [ 停止播报 ]   |
 *   +--------------------------------------------------------------+
 *
 * It reads only: <ui>/events/<seq>.json, <ui>/status.public.json, <tts>/play.public.json.
 * It never writes to the inbox, never touches SessionStore, and owns no history: the text
 * conversation / history / new-session features live in 更多功能 (MoreActivity ->
 * ConversationActivity), untouched.
 *
 * Polling discipline (R2-5): the client starts in onStart() and stops in onStop(), exactly one
 * poller at a time, and the client's event cursor is per instance, so coming back to this screen
 * never replays old turns.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public class VoiceHomeActivity extends Activity implements VoiceBridgeClient.Listener {

    static final String TAG = "T908HOME";

    VoiceBridgeClient client;

    LinearLayout pill;
    TextView subtitle;
    TextView userLabel;
    TextView asstLabel;
    TextView userText;
    TextView asstText;
    TextView hint;

    final Handler h = new Handler(Looper.getMainLooper());

    volatile int activeTtsId = -1;
    String chipText = "";
    boolean haveTurn;

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
        root.setBackgroundColor(Ui.BG);

        /* top bar: the only two exits */
        LinearLayout bar = Ui.bar(this, Ui.BG_BAR);
        bar.setPadding(Ui.dp(this, 18), 0, Ui.dp(this, 10), 0);
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                        Ui.dp(this, 48)));
        TextView title = Ui.text(this, "语音助手", 18f, Ui.TEXT);
        title.setTypeface(title.getTypeface(), android.graphics.Typeface.BOLD);
        bar.addView(title);

        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.HORIZONTAL);
        right.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        bar.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        right.addView(Ui.action(Ui.text(this, "设置", 14f, Ui.TEXT_DIM), new Runnable() {
            public void run() {
                startActivity(new Intent(VoiceHomeActivity.this, SettingsActivity.class));
            }
        }));
        right.addView(Ui.action(Ui.text(this, "更多", 14f, Ui.ACCENT), new Runnable() {
            public void run() {
                startActivity(new Intent(VoiceHomeActivity.this, MoreActivity.class));
            }
        }));

        root.addView(Ui.divider(this));

        /* status line */
        LinearLayout statusRow = Ui.bar(this, Ui.BG_BAR_2);
        statusRow.setPadding(Ui.dp(this, 18), Ui.dp(this, 6), Ui.dp(this, 18), Ui.dp(this, 6));
        pill = Ui.pill(this, "待唤醒", Ui.TEXT_FAINT);
        statusRow.addView(pill);
        subtitle = Ui.text(this, "", 12f, Ui.TEXT_FAINT);
        subtitle.setPadding(Ui.dp(this, 12), 0, 0, 0);
        statusRow.addView(subtitle);
        root.addView(statusRow);

        root.addView(Ui.divider(this));

        /* current turn */
        ScrollView sv = new ScrollView(this);
        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(Ui.dp(this, 22), Ui.dp(this, 18), Ui.dp(this, 22), Ui.dp(this, 14));

        hint = Ui.text(this, "说出唤醒词「天猫精灵」，我就在听", 16f, Ui.TEXT_DIM);
        body.addView(hint);

        userLabel = Ui.text(this, "你说", 12f, Ui.TEXT_FAINT);
        userLabel.setVisibility(View.GONE);
        body.addView(userLabel);
        userText = Ui.text(this, "", 19f, Ui.TEXT);
        userText.setPadding(0, Ui.dp(this, 4), 0, Ui.dp(this, 18));
        userText.setVisibility(View.GONE);
        body.addView(userText);

        asstLabel = Ui.text(this, "助手", 12f, Ui.TEXT_FAINT);
        asstLabel.setVisibility(View.GONE);
        body.addView(asstLabel);
        asstText = Ui.text(this, "", 19f, Ui.ACCENT);
        asstText.setPadding(0, Ui.dp(this, 4), 0, 0);
        asstText.setVisibility(View.GONE);
        body.addView(asstText);

        sv.addView(body);
        root.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        root.addView(Ui.divider(this));

        /* the only control */
        LinearLayout bottom = Ui.bar(this, Ui.BG_BAR);
        bottom.setPadding(Ui.dp(this, 14), Ui.dp(this, 8), Ui.dp(this, 14), Ui.dp(this, 8));
        bottom.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        TextView stop = Ui.action(Ui.text(this, "停止播报", 15f, Ui.TEXT), new Runnable() {
            public void run() { onStopClicked(); }
        });
        stop.setBackground(Ui.roundStroke(this, Ui.BUBBLE_ASST, Ui.LINE, 10f));
        stop.setGravity(Gravity.CENTER);
        bottom.addView(stop, new LinearLayout.LayoutParams(Ui.dp(this, 110),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(bottom);

        return root;
    }

    /* ------------------------------------------------------------------ actions */

    void onStopClicked()
    {
        int id = activeTtsId;
        if (id <= 0) { toast("现在没有在播报"); return; }
        String err = client.requestStop(id);
        if (err != null) { toast(err); return; }
        toast("已请求停止播报");
    }

    void toast(String s)
    {
        Toast.makeText(this, s, Toast.LENGTH_SHORT).show();
    }

    /* --------------------------------------------------------- client callbacks */

    public void onTurn(final VoiceBridgeClient.Turn t)
    {
        h.post(new Runnable() {
            public void run() {
                if (!"turn".equals(t.kind)) return;
                boolean failed = t.failed();
                String q = t.user;
                String a = failed
                        ? ("回答失败：" + (t.reason.length() > 0 ? t.reason : "unknown error"))
                        : t.reply;
                if (q.length() > 0) { userText.setText(q); userLabel.setVisibility(View.VISIBLE);
                                      userText.setVisibility(View.VISIBLE); }
                if (a.length() > 0) { asstText.setText(a); asstLabel.setVisibility(View.VISIBLE);
                                      asstText.setVisibility(View.VISIBLE); }
                if (q.length() > 0 || a.length() > 0) {
                    haveTurn = true;
                    hint.setVisibility(View.GONE);
                }
            }
        });
    }

    public void onPlay(final VoiceBridgeClient.Play p)
    {
        h.post(new Runnable() {
            public void run() {
                /*
                 * T9-08B-R2: activeTtsId means "the tts_id that is being spoken right now",
                 * so it is only set while play.public.json says playing AND carries an id, and
                 * it is cleared the moment playback ends (ok / stopped / interrupted / error).
                 * Keeping a stale id around is how a stop press used to be sent to the previous
                 * announcement.
                 */
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

    public void onReceipt(VoiceBridgeClient.Receipt r) { }   /* this screen never submits */

    public void onDiag(String line) { android.util.Log.i(TAG, line); }

    /* --------------------------------------------------------------- status chip */

    void updateChip()
    {
        VoiceBridgeClient.Status s = client.status();
        String rec = subtitleLabel(s);
        if (rec != null && !rec.equals(subtitle.getText().toString())) subtitle.setText(rec);

        boolean workerUp = s.present && s.pid > 0 && s.tsMs > 0
                && (System.currentTimeMillis() - s.tsMs < 6000);
        if (!workerUp) { setChip("后台服务未连接", Ui.ERR); return; }
        String d = s.dialog == null ? "idle" : s.dialog;
        if ("playing".equals(d))      { setChip("正在播报…", Ui.OK); return; }
        if ("thinking".equals(d))     { setChip("正在处理…", Ui.WARN); return; }
        if ("listening".equals(d))    { setChip("正在识别…", Ui.ACCENT); return; }
        if ("interrupted".equals(d))  { setChip("已打断", Ui.WARN); return; }
        setChip("待唤醒 · 说「天猫精灵」", Ui.TEXT_FAINT);
    }

    static String subtitleLabel(VoiceBridgeClient.Status s)
    {
        if (!s.present) return "未连接后台服务";
        if (s.round > 0) {
            return "第 " + s.round + " 轮" + (s.listening ? " · 麦克风开启" : "");
        }
        return s.listening ? "麦克风开启" : "";
    }

    void setChip(String label, int dot)
    {
        if (label.equals(chipText)) return;
        chipText = label;
        Ui.pillSet(pill, label, dot);
    }
}
