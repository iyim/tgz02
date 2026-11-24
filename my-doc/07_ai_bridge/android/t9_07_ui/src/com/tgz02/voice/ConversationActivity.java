/*
 * ConversationActivity.java -- T9-07: the product screen of the speaker.
 *
 * Layout (1024x600, no res/ tree):
 *
 *   +--------------------------------------------------------------+
 *   | 语音助手            [新对话] [历史] [设置]                    |  48 dp bar
 *   +--------------------------------------------------------------+
 *   | (dot) 待唤醒 · 说「天猫精灵」                                 |  34 dp status
 *   +--------------------------------------------------------------+
 *   |                                                              |
 *   |   user bubble                                    (right)     |
 *   |                    assistant bubble (left)                    |
 *   |                                 ...                          |
 *   +--------------------------------------------------------------+
 *   | [ 说点什么，或者直接语音唤醒          ] [发送] [停止]          |  56 dp input
 *   +--------------------------------------------------------------+
 *
 * Real data only: the user bubbles are the factory ASR text the worker published, the
 * assistant bubbles are the answer that was queued for the factory TTS. Nothing is invented
 * when the data is missing -- the status line says what is (not) known instead.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConversationActivity extends Activity
        implements VoiceBridgeClient.Listener {

    static final String TAG = "T907UI";

    VoiceBridgeClient client;
    SessionStore store;

    LinearLayout messages;
    ScrollView scroll;
    EditText input;
    LinearLayout pill;
    TextView subtitle;
    View emptyHint;

    final Map<String, TextView> metaByKey = new HashMap<String, TextView>();

    volatile String activeEventId = null;
    volatile int activeTtsId = -1;
    String chipText = "";

    final Handler h = new Handler(Looper.getMainLooper());
    final SimpleDateFormat hhmm = new SimpleDateFormat("HH:mm");

    /* ------------------------------------------------------------------- lifecycle */

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new VoiceBridgeClient(this, "conversation");
        store = new SessionStore(getFilesDir());
        View root = buildScreen();
        setContentView(root);
        /* a speaker screen must not open the soft keyboard by itself: give the initial focus
         * to the (non editable) root, the input only takes it on a real tap */
        root.setFocusableInTouchMode(true);
        root.requestFocus();
        renderSession(store.current());
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

        /* top bar */
        LinearLayout bar = Ui.bar(this, Ui.BG_BAR);
        bar.setPadding(Ui.dp(this, 18), 0, Ui.dp(this, 10), 0);
        LinearLayout.LayoutParams barLp =
                new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, Ui.dp(this, 48));
        root.addView(bar, barLp);

        TextView title = Ui.text(this, "语音助手", 18f, Ui.TEXT);
        title.setTypeface(title.getTypeface(), android.graphics.Typeface.BOLD);
        bar.addView(title);
        bar.addView(Ui.spacer(this, 12));

        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.HORIZONTAL);
        right.setGravity(Gravity.CENTER_VERTICAL);
        LinearLayout.LayoutParams rightLp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        bar.addView(right, rightLp);

        TextView newBtn = Ui.action(Ui.text(this, "新对话", 14f, Ui.ACCENT), new Runnable() {
            public void run() { onNewSession(); }
        });
        TextView histBtn = Ui.action(Ui.text(this, "历史", 14f, Ui.TEXT_DIM), new Runnable() {
            public void run() { onHistory(); }
        });
        TextView setBtn = Ui.action(Ui.text(this, "设置", 14f, Ui.TEXT_DIM), new Runnable() {
            public void run() { startActivity(new Intent(ConversationActivity.this,
                                                        SettingsActivity.class)); }
        });
        right.addView(newBtn);
        right.addView(histBtn);
        right.addView(setBtn);

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

        /* messages */
        scroll = new ScrollView(this);
        scroll.setFillViewport(true);
        messages = new LinearLayout(this);
        messages.setOrientation(LinearLayout.VERTICAL);
        messages.setPadding(Ui.dp(this, 16), Ui.dp(this, 8), Ui.dp(this, 16), Ui.dp(this, 8));
        scroll.addView(messages, new ScrollView.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(scroll, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        emptyHint = buildEmptyHint();
        messages.addView(emptyHint);

        root.addView(Ui.divider(this));

        /* input row */
        LinearLayout inputRow = Ui.bar(this, Ui.BG_BAR);
        inputRow.setPadding(Ui.dp(this, 14), Ui.dp(this, 8), Ui.dp(this, 10), Ui.dp(this, 8));
        root.addView(inputRow);

        input = new EditText(this);
        input.setHint("说点什么，或者直接语音唤醒");
        input.setHintTextColor(Ui.TEXT_FAINT);
        input.setTextColor(Ui.TEXT);
        input.setTextSize(15f);
        input.setSingleLine(true);
        input.setImeOptions(EditorInfo.IME_ACTION_SEND);
        input.setBackground(Ui.round(this, Ui.BUBBLE_ASST, 10f));
        input.setPadding(Ui.dp(this, 12), Ui.dp(this, 8), Ui.dp(this, 12), Ui.dp(this, 8));
        input.setOnEditorActionListener(new TextView.OnEditorActionListener() {
            public boolean onEditorAction(TextView v, int actionId, KeyEvent e) {
                if (actionId == EditorInfo.IME_ACTION_SEND) { onSendClicked(); return true; }
                return false;
            }
        });
        inputRow.addView(input, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        TextView send = Ui.action(Ui.text(this, "发送", 15f, 0xFFFFFFFF), new Runnable() {
            public void run() { onSendClicked(); }
        });
        send.setBackground(Ui.round(this, Ui.BUBBLE_USER, 10f));
        send.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams sendLp =
                new LinearLayout.LayoutParams(Ui.dp(this, 74), ViewGroup.LayoutParams.WRAP_CONTENT);
        sendLp.leftMargin = Ui.dp(this, 8);
        inputRow.addView(send, sendLp);

        TextView stop = Ui.action(Ui.text(this, "停止", 15f, Ui.TEXT), new Runnable() {
            public void run() { onStopClicked(); }
        });
        stop.setBackground(Ui.roundStroke(this, Ui.BUBBLE_ASST, Ui.LINE, 10f));
        stop.setGravity(Gravity.CENTER);
        LinearLayout.LayoutParams stopLp =
                new LinearLayout.LayoutParams(Ui.dp(this, 74), ViewGroup.LayoutParams.WRAP_CONTENT);
        stopLp.leftMargin = Ui.dp(this, 8);
        inputRow.addView(stop, stopLp);

        return root;
    }

    private View buildEmptyHint()
    {
        LinearLayout box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setGravity(Gravity.CENTER_HORIZONTAL);
        box.setPadding(0, Ui.dp(this, 40), 0, 0);
        box.setTag("empty");
        TextView a = Ui.text(this, "说出唤醒词「天猫精灵」，我就在听", 16f, Ui.TEXT_DIM);
        a.setGravity(Gravity.CENTER);
        TextView b2 = Ui.text(this, "也可以直接输入文字向我提问", 13f, Ui.TEXT_FAINT);
        b2.setGravity(Gravity.CENTER);
        b2.setPadding(0, Ui.dp(this, 8), 0, 0);
        box.addView(a);
        box.addView(b2);
        return box;
    }

    /* ---------------------------------------------------------------- rendering */

    void renderSession(SessionStore.Session s)
    {
        messages.removeAllViews();
        metaByKey.clear();
        if (s.msgs.isEmpty()) {
            emptyHint = buildEmptyHint();
            messages.addView(emptyHint);
        } else {
            emptyHint = null;
            for (int i = 0; i < s.msgs.size(); i++) addBubble(s.msgs.get(i));
        }
        updateSubtitle();
        scrollToBottom();
    }

    void updateSubtitle()
    {
        String t = subtitle.getText().toString();
        SessionStore.Session s = store.current();
        int n = s.msgs.size();
        String want = (n == 0) ? "会话 #" + shortId(s.id) : "会话 #" + shortId(s.id) + " · " + n + " 条消息";
        if (!want.equals(t)) subtitle.setText(want);
    }

    static String shortId(String id)
    {
        if (id == null || id.length() < 4) return "?";
        return id.substring(id.length() - 4);
    }

    void addBubble(final SessionStore.Msg m)
    {
        if (emptyHint != null) {
            messages.removeView(emptyHint);
            emptyHint = null;
        }
        boolean user = SessionStore.ROLE_USER.equals(m.role);

        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setGravity(user ? Gravity.END : Gravity.START);
        row.setPadding(0, Ui.dp(this, 5), 0, Ui.dp(this, 5));

        TextView bubble = new TextView(this);
        bubble.setText(m.text);
        bubble.setTextSize(16f);
        bubble.setTextColor(user ? 0xFFFFFFFF : Ui.TEXT);
        bubble.setPadding(Ui.dp(this, 14), Ui.dp(this, 9), Ui.dp(this, 14), Ui.dp(this, 9));
        bubble.setBackground(Ui.round(this, user ? Ui.BUBBLE_USER : Ui.BUBBLE_ASST, 14f));
        int maxW = (int) (getResources().getDisplayMetrics().widthPixels * 0.70f);
        bubble.setMaxWidth(maxW);
        /* a vertical LinearLayout hands its children MATCH_PARENT width by default, which would
         * stretch every bubble across the whole screen: ask for wrap_content explicitly */
        row.addView(bubble, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView meta = Ui.text(this, metaText(m), 11f, Ui.TEXT_FAINT);
        meta.setPadding(Ui.dp(this, 4), Ui.dp(this, 3), Ui.dp(this, 4), 0);
        row.addView(meta, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        if (m.eventId != null && m.eventId.length() > 0) {
            metaByKey.put(key(m.eventId, user), meta);
        }
        messages.addView(row);
        scrollToBottom();
    }

    static String key(String eventId, boolean user)
    {
        return eventId + (user ? "|u" : "|a");
    }

    String metaText(SessionStore.Msg m)
    {
        String when = hhmm.format(new Date(m.ts == 0 ? System.currentTimeMillis() : m.ts));
        String st = m.state == null ? "" : m.state;
        String tail = "";
        if (SessionStore.ROLE_USER.equals(m.role)) {
            if (SessionStore.S_PENDING.equals(st)) tail = " · 提交中…";
            else if (SessionStore.S_ASKED.equals(st)) tail = " · AI 正在回答…";
            else if (SessionStore.S_TURN_FAILED.equals(st)) tail = " · 回答失败";
            else if (SessionStore.S_QUEUED.equals(st)) tail = " · 已提交";
            else if (SessionStore.S_FAILED.equals(st)) tail = " · 未接受";
            else if (SessionStore.S_PLAYED.equals(st)) tail = " · 已播报";
            else if (SessionStore.S_STOPPED.equals(st)) tail = " · 已停止";
        } else {
            if (SessionStore.S_QUEUED.equals(st)) tail = " · 等待播报";
            else if (SessionStore.S_PLAYING.equals(st)) tail = " · 正在播报…";
            else if (SessionStore.S_PLAYED.equals(st)) tail = " · 已播报";
            else if (SessionStore.S_STOPPED.equals(st)) tail = " · 已停止";
            else if (SessionStore.S_FAILED.equals(st)) tail = " · 回答失败";
        }
        return when + tail;
    }

    void refreshMeta(String eventId)
    {
        if (eventId == null) return;
        SessionStore.Session s = store.current();
        for (int i = 0; i < s.msgs.size(); i++) {
            SessionStore.Msg m = s.msgs.get(i);
            if (!eventId.equals(m.eventId)) continue;
            TextView tv = metaByKey.get(key(eventId, SessionStore.ROLE_USER.equals(m.role)));
            if (tv != null) tv.setText(metaText(m));
        }
    }

    void scrollToBottom()
    {
        scroll.post(new Runnable() {
            public void run() { scroll.fullScroll(View.FOCUS_DOWN); }
        });
    }

    /* ------------------------------------------------------------------ actions */

    void onSendClicked()
    {
        String text = input.getText().toString().trim();
        if (text.length() == 0) return;
        final String eventId = client.submit(text);
        if (eventId == null) {
            toast("提交失败：提交通道不可写（后台服务未就绪？）");
            return;
        }
        input.setText("");
        activeEventId = eventId;
        SessionStore.Msg m = store.append(SessionStore.ROLE_USER, text, eventId,
                                          SessionStore.S_PENDING);
        addBubble(m);
        updateSubtitle();
        updateChip();
    }

    void onStopClicked()
    {
        int id = activeTtsId;
        String why = client.stop(id);
        if (why != null) { toast(why); return; }
        toast("已请求停止播报");
    }

    void onNewSession()
    {
        SessionStore.Session cur = store.current();
        if (cur.msgs.isEmpty()) { toast("当前就是新对话"); return; }
        SessionStore.Session s = store.newSession();
        activeEventId = null;
        renderSession(s);
        toast("已开始新对话");
    }

    void onHistory()
    {
        final List<SessionStore.Session> all = store.list();
        if (all.isEmpty()) { toast("还没有历史会话"); return; }
        final String[] items = new String[all.size()];
        for (int i = 0; i < all.size(); i++) {
            SessionStore.Session s = all.get(i);
            String title = s.title.length() > 0 ? s.title : "(空对话)";
            items[i] = title + "   · " + hhmm.format(new Date(s.updated))
                     + " · " + s.msgs.size() + " 条";
        }
        new AlertDialog.Builder(this)
                .setTitle("历史会话")
                .setItems(items, new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int which) {
                        SessionStore.Session s = store.open(all.get(which).id);
                        activeEventId = null;
                        renderSession(s);
                    }
                })
                .setNegativeButton("关闭", null)
                .show();
    }

    /* --------------------------------------------------------- client callbacks */

    public void onReceipt(final VoiceBridgeClient.Receipt r)
    {
        h.post(new Runnable() {
            public void run() {
                /* stage "ai" means the worker took the question and will answer it through the
                 * provider; "queue"/"existing" means the text itself was queued for playback */
                String st = !r.ok ? SessionStore.S_FAILED
                           : ("ai".equals(r.stage) ? SessionStore.S_ASKED
                                                   : SessionStore.S_QUEUED);
                store.setState(r.eventId, st, -1);
                refreshMeta(r.eventId);
                if (!r.ok) {
                    toast("未接受：" + (r.reason.length() > 0 ? r.reason : r.stage));
                }
                if (eventInSession(r.eventId)) updateSubtitle();
                updateChip();
            }
        });
    }

    public void onTurn(final VoiceBridgeClient.Turn t)
    {
        h.post(new Runnable() {
            public void run() {
                if ("turn".equals(t.kind)) {
                    /* The user bubble may already exist (a text question this app submitted);
                     * the answer bubble never does, so both paths converge here. */
                    boolean haveUser = store.hasRole(t.eventId, SessionStore.ROLE_USER);
                    boolean haveAsst = store.hasRole(t.eventId, SessionStore.ROLE_ASST);
                    if (!haveUser && t.user.length() > 0) {
                        store.append(SessionStore.ROLE_USER, t.user, t.eventId,
                                     SessionStore.S_PLAYED);
                        addBubble(lastMsg());
                    }
                    if (!haveAsst) {
                        if (t.failed()) {
                            /* the question was accepted but the answer never came: say so on the
                             * question as well, instead of leaving it at "AI 正在回答…" forever */
                            store.setState(t.eventId, SessionStore.S_TURN_FAILED, -1);
                            refreshMeta(t.eventId);
                            /* a real failure is shown as a failure; nothing is presented as an answer */
                            String why = t.reason.length() > 0 ? t.reason : "unknown error";
                            store.append(SessionStore.ROLE_ASST, "回答失败：" + why, t.eventId,
                                         SessionStore.S_FAILED);
                            addBubble(lastMsg());
                        } else if (t.reply.length() > 0) {
                            store.setState(t.eventId, SessionStore.S_QUEUED, -1);
                            refreshMeta(t.eventId);
                            store.append(SessionStore.ROLE_ASST, t.reply, t.eventId,
                                         SessionStore.S_QUEUED);
                            addBubble(lastMsg());
                            activeEventId = t.eventId;
                        }
                    }
                    updateSubtitle();
                } else if ("submit".equals(t.kind) && t.user.length() > 0
                           && !store.hasRole(t.eventId, SessionStore.ROLE_USER)) {
                    /* a submit from another UI instance: show it, nobody local owns it */
                    store.append(SessionStore.ROLE_USER, t.user, t.eventId, SessionStore.S_QUEUED);
                    addBubble(lastMsg());
                    updateSubtitle();
                    activeEventId = t.eventId;
                }
                updateChip();
            }
        });
    }

    public void onPlay(final VoiceBridgeClient.Play p)
    {
        h.post(new Runnable() {
            public void run() {
                if (p.ttsId > 0) activeTtsId = p.ttsId;
                if (p.eventId.length() > 0) {
                    if ("playing".equals(p.state)) {
                        store.setState(p.eventId, SessionStore.S_PLAYING, p.ttsId);
                        activeEventId = p.eventId;
                    } else if ("idle".equals(p.state)) {
                        String st = "interrupted".equals(p.outcome)
                                  ? SessionStore.S_STOPPED
                                  : SessionStore.S_PLAYED;
                        store.setState(p.eventId, st, p.ttsId);
                        store.setState(p.eventId, st, -1);
                    }
                    refreshMeta(p.eventId);
                }
                updateChip();
            }
        });
    }

    public void onStatus(final VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() { public void run() { updateChip(); } });
    }

    public void onDiag(String line)
    {
        Log.i(TAG, line);
    }

    /* --------------------------------------------------------------- status chip */

    void updateChip()
    {
        VoiceBridgeClient.Status s = client.status();
        String want;
        int dot;

        int pid = 0;
        boolean workerUp = s.present && s.pid > 0
                && (s.tsMs > 0) && (System.currentTimeMillis() - s.tsMs < 6000);

        if (activeEventId != null) {
            /* a submit of ours that has not produced a play event yet */
            SessionStore.Msg mine = findMsg(activeEventId);
            if (mine != null && SessionStore.S_PENDING.equals(mine.state)) {
                setChip("正在提交…", Ui.ACCENT);
                return;
            }
        }
        if (!workerUp) {
            setChip("后台服务未连接", Ui.ERR);
            return;
        }
        String d = s.dialog == null ? "idle" : s.dialog;
        if ("playing".equals(d)) { setChip("正在播报…", Ui.OK); return; }
        if ("thinking".equals(d)) { setChip("正在处理…", Ui.WARN); return; }
        if ("listening".equals(d)) { setChip("正在识别…", Ui.ACCENT); return; }
        if ("interrupted".equals(d)) { setChip("已打断", Ui.WARN); return; }
        setChip("待唤醒 · 说「天猫精灵」", Ui.TEXT_FAINT);
    }

    void setChip(String label, int dot)
    {
        if (label.equals(chipText)) return;
        chipText = label;
        Ui.pillSet(pill, label, dot);
    }

    SessionStore.Msg findMsg(String eventId)
    {
        SessionStore.Session s = store.current();
        for (int i = s.msgs.size() - 1; i >= 0; i--) {
            if (eventId.equals(s.msgs.get(i).eventId)) return s.msgs.get(i);
        }
        return null;
    }

    SessionStore.Msg lastMsg()
    {
        SessionStore.Session s = store.current();
        return s.msgs.isEmpty() ? null : s.msgs.get(s.msgs.size() - 1);
    }

    boolean eventInSession(String eventId)
    {
        return findMsg(eventId) != null;
    }

    void toast(String s)
    {
        Toast.makeText(this, s, Toast.LENGTH_SHORT).show();
    }
}
