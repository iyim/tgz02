/*
 * V3Shell.java -- T9-14: the V3 page shell (docs/02 §3.2 skeleton).
 *
 * header 52 (top-level) / 64 (detail, back + breadcrumb) + main flex:1 (pad 0 24 12)
 * + navbar 88 fixed. One screen = V2/V3 background + header + scrollable body + navbar.
 * Theme reads Ui4 (V3 tokens); pages implement buildBody() and navId().
 */
package com.tgz02.voice;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

abstract class V3Shell extends Activity implements VoiceBridgeClient.Listener {

    BackendClient client;
    LinearLayout body;
    LinearLayout navbarHost;
    LinearLayout headerInner;
    LinearLayout headerHome;
    TextView hdrTitle;
    TextView crumbCur;
    LinearLayout hdrActions;
    final android.os.Handler h = new android.os.Handler(android.os.Looper.getMainLooper());

    abstract String navId();

    /** page title (top level) or detail title */
    abstract String title();

    /** header tag (right side gray chip text) */
    String tag() { return ""; }

    /** breadcrumb parent (e.g. "技能中心") or null for top-level pages */
    String crumbParent() { return null; }

    Runnable onCrumb() { return new Runnable() { public void run() { finish(); } }; }

    /** header actions, may be empty */
    void buildActions(LinearLayout into) { }

    /** the page body; called on every rebuild */
    abstract View buildBody();

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new BackendClient(this, navId());
        setContentView(buildShell());
        onShellReady();
    }

    View buildShell()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui4.bg(this));
        themeRoot = root;

        /* ---- header: top-level pages get the 52 header, detail pages get 64 ---- */
        boolean detail = crumbParent() != null;
        headerHome = buildHeader(false);
        if (!detail) {
            root.addView(headerHome, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 52)));
        }
        headerInner = buildHeader(true);
        if (detail) {
            root.addView(headerInner, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 64)));
        }

        /* ---- body ---- */
        ScrollView sv = new ScrollView(this);
        sv.setFillViewport(true);
        sv.setVerticalScrollBarEnabled(false);
        body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(Ui4.dp(this, 24), Ui4.dp(this, 10), Ui4.dp(this, 24), Ui4.dp(this, 12));
        sv.addView(body, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(sv, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        /* ---- navbar 88 fixed ---- */
        navbarHost = new LinearLayout(this);
        navbarHost.setOrientation(LinearLayout.VERTICAL);
        root.addView(navbarHost, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui4.dp(this, 88)));
        rebuildChrome();
        return root;
    }

    LinearLayout themeRoot;

    /** header variant: detail=true adds back button + breadcrumb */
    LinearLayout buildHeader(boolean detail)
    {
        LinearLayout hdr = new LinearLayout(this);
        hdr.setOrientation(LinearLayout.HORIZONTAL);
        hdr.setGravity(Gravity.CENTER_VERTICAL);
        hdr.setPadding(Ui4.dp(this, 24), 0, Ui4.dp(this, 24), 0);
        if (detail) {
            View back = Ui4.icon(this, Ui4.I_CHEVL, 22, Ui4.text(this));
            back.setBackground(Ui4.round(this, Ui4.surface2(this), 13f));
            back.setPadding(Ui4.dp(this, 9), Ui4.dp(this, 9), Ui4.dp(this, 9), Ui4.dp(this, 9));
            back.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { onCrumb().run(); }
            });
            hdr.addView(back, new LinearLayout.LayoutParams(Ui4.dp(this, 40), Ui4.dp(this, 40)));
            TextView parent = Ui4.text(this, crumbParent() == null ? "" : crumbParent(),
                    Ui4.T_BODY_SM, Ui4.text2(this));
            parent.setPadding(Ui4.dp(this, 10), 0, 0, 0);
            hdr.addView(parent);
            crumbCur = Ui4.textBold(this, title(), Ui4.T_H1, Ui4.text(this));
            crumbCur.setPadding(Ui4.dp(this, 8), 0, 0, 0);
            hdr.addView(crumbCur);
        } else {
            hdrTitle = Ui4.textBold(this, title(), Ui4.T_H1, Ui4.text(this));
            hdr.addView(hdrTitle);
        }
        hdrActions = new LinearLayout(this);
        hdrActions.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        hdr.addView(hdrActions, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        if (tag() != null && tag().length() > 0) {
            TextView t = Ui4.text(this, tag(), Ui4.T_CAP, Ui4.text3(this));
            t.setBackground(Ui4.round(this, Ui4.surface2(this), 9f));
            t.setPadding(Ui4.dp(this, 11), Ui4.dp(this, 4), Ui4.dp(this, 11), Ui4.dp(this, 4));
            hdr.addView(t);
        }
        buildActions(hdrActions);
        return hdr;
    }

    /** rebuild header colors + navbar after theme switch */
    void rebuildChrome()
    {
        themeRoot.setBackgroundColor(Ui4.bg(this));
        String[] ids   = { "home", "skills", "memory", "settings", "about" };
        String[] names = { "首页", "技能", "记忆", "设置", "关于" };
        int[] icons    = { Ui4.I_HOME, Ui4.I_SKILLS, Ui4.I_MEMORY, Ui4.I_SETTINGS, Ui4.I_INFO };
        java.lang.Runnable[] acts = {
            new java.lang.Runnable() { public void run() { Intent2.home(V3Shell.this); } },
            new java.lang.Runnable() { public void run() { Intent2.skills(V3Shell.this); } },
            new java.lang.Runnable() { public void run() { Intent2.memory(V3Shell.this); } },
            new java.lang.Runnable() { public void run() { Intent2.settings(V3Shell.this); } },
            new java.lang.Runnable() { public void run() { Intent2.about(V3Shell.this); } }
        };
        navbarHost.removeAllViews();
        navbarHost.addView(Ui4.navbar(this, navId(), ids, names, icons, acts),
                new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        Ui4.dp(this, 88)));
        onChromeRefresh();
    }

    void onChromeRefresh() { }

    void onShellReady() { }

    void toast(String s) { Toast2.show(this, s); }

    /* ------------------------------------------------------------- callbacks */

    public void onReceipt(VoiceBridgeClient.Receipt r) { }
    public void onTurn(VoiceBridgeClient.Turn t) { }
    public void onPlay(VoiceBridgeClient.Play p) { }
    public void onDiag(String line) { }

    public void onStatus(VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() { public void run() { renderStatus(); } });
    }

    void renderStatus() { }

    /* --------------------------------------------------------------- intents */

    static final class Intent2 {
        static void home(Activity a)     { go(a, VoiceHomeActivity.class); }
        static void skills(Activity a)   { go(a, SkillsHomeActivity.class); }
        static void memory(Activity a)   { go(a, MemoryCenterActivity.class); }
        static void settings(Activity a) { go(a, SettingsHomeActivity.class); }
        static void about(Activity a)    { go(a, AboutActivity.class); }
        static void go(Activity a, Class<?> cls) {
            android.content.Intent it = new android.content.Intent(a, cls);
            a.startActivity(it);
        }
    }
}
