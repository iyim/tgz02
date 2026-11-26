/*
 * V2Shell.java -- T9-UI-02: the shared V2 page shell for the four secondary pages
 * (skills home / skill detail / memory / settings / models / about).
 *
 * One screen = V2 background + a header (title or breadcrumb) + a scrollable body +
 * the 88dp bottom navbar.  Skills are Views inside one host activity per top page,
 * keeping the no-Intent-parsing discipline: SkillHost.handoff("alarm") style statics
 * are used only inside SkillsHomeActivity.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

abstract class V2Shell extends Activity implements VoiceBridgeClient.Listener {

    BackendClient client;
    LinearLayout body;
    LinearLayout navbarHost;
    TextView hdrTitle;
    LinearLayout hdrActions;
    final android.os.Handler h = new android.os.Handler(android.os.Looper.getMainLooper());

    /** which navbar entry is "on" for this page */
    abstract String navId();

    /** page title (top level) or null when using a breadcrumb */
    abstract String title();

    /** breadcrumb parent (e.g. "设置") or null */
    String crumbParent() { return null; }

    /** extra runnable when the crumb parent is tapped; default = finish() */
    Runnable onCrumb() { return new Runnable() { public void run() { finish(); } }; }

    /** header actions, may be empty */
    void buildActions(LinearLayout into) { }

    /** the page body; called once */
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
        root.setBackgroundColor(Ui3.bg(this));

        /* header */
        LinearLayout hdr = new LinearLayout(this);
        hdr.setOrientation(LinearLayout.HORIZONTAL);
        hdr.setGravity(Gravity.CENTER_VERTICAL);
        hdr.setPadding(Ui3.dp(this, 28), Ui3.dp(this, 14), Ui3.dp(this, 28), Ui3.dp(this, 10));
        if (crumbParent() != null) {
            TextView crumb = Ui3.text(this, crumbParent() + " /", 18f, Ui3.text2(this));
            crumb.setPadding(0, 0, 0, 0);
            crumb.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { onCrumb().run(); }
            });
            hdr.addView(crumb);
            hdrTitle = Ui3.textBold(this, title(), 24f, Ui3.text(this));
            hdrTitle.setPadding(Ui3.dp(this, 10), 0, 0, 0);
            hdr.addView(hdrTitle);
        } else {
            hdrTitle = Ui3.textBold(this, title(), 26f, Ui3.text(this));
            hdr.addView(hdrTitle);
        }
        hdrActions = new LinearLayout(this);
        hdrActions.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        hdr.addView(hdrActions, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        buildActions(hdrActions);
        root.addView(hdr, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(Ui3.divider(this));

        /* body */
        ScrollView sv = new ScrollView(this);
        sv.setFillViewport(true);
        body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(Ui3.dp(this, 28), Ui3.dp(this, 12), Ui3.dp(this, 28), Ui3.dp(this, 20));
        sv.addView(body, new ScrollView.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(sv, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        /* navbar */
        navbarHost = new LinearLayout(this);
        navbarHost.setOrientation(LinearLayout.VERTICAL);
        root.addView(navbarHost, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 88)));
        buildNav();
        return root;
    }

    void buildNav()
    {
        String[] ids   = { "home", "skills", "memory", "settings", "about" };
        String[] names = { "首页", "技能", "记忆", "设置", "关于" };
        java.lang.Runnable[] acts = {
            new java.lang.Runnable() { public void run() {
                Intent2.home(V2Shell.this); } },
            new java.lang.Runnable() { public void run() {
                Intent2.skills(V2Shell.this); } },
            new java.lang.Runnable() { public void run() {
                Intent2.memory(V2Shell.this); } },
            new java.lang.Runnable() { public void run() {
                Intent2.settings(V2Shell.this); } },
            new java.lang.Runnable() { public void run() {
                Intent2.about(V2Shell.this); } }
        };
        navbarHost.removeAllViews();
        navbarHost.addView(Ui3.navbar(this, navId(), ids, names, null, acts),
                new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                        Ui3.dp(this, 88)));
    }

    /** called after setContentView; subclasses start polling here */
    void onShellReady() { }

    /* ------------------------------------------------ shared building blocks */

    TextView sectionLabel(String s)
    {
        TextView t = Ui3.textBold(this, s, 16f, Ui3.text2(this));
        t.setPadding(0, Ui3.dp(this, 12), 0, Ui3.dp(this, 6));
        return t;
    }

    LinearLayout card()
    {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(Ui3.roundStroke(this, Ui3.surface(this), Ui3.line(this), Ui3.R_M));
        c.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 14);
        c.setLayoutParams(lp);
        return c;
    }

    LinearLayout setRow(String title, String desc)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui3.dp(this, 12), 0, Ui3.dp(this, 12));
        r.setMinimumHeight(Ui3.dp(this, 64));

        LinearLayout txt = new LinearLayout(this);
        txt.setOrientation(LinearLayout.VERTICAL);
        txt.addView(Ui3.textBold(this, title, 19f, Ui3.text(this)));
        if (desc != null && desc.length() > 0) {
            TextView d = Ui3.text(this, desc, 15f, Ui3.text2(this));
            d.setPadding(0, Ui3.dp(this, 2), 0, 0);
            txt.addView(d);
        }
        r.addView(txt, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return r;
    }

    LinearLayout kvRow(String k, String v, int vColor)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui3.dp(this, 8), 0, Ui3.dp(this, 8));
        TextView kl = Ui3.text(this, k, 17f, Ui3.text2(this));
        kl.setLayoutParams(new LinearLayout.LayoutParams(Ui3.dp(this, 150),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        r.addView(kl);
        TextView vl = Ui3.text(this, v, 17f, vColor);
        r.addView(vl, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return r;
    }

    TextView pillTag(String label, int bg, int fg)
    {
        TextView t = Ui3.textBold(this, label, 15f, fg);
        t.setBackground(Ui3.round(this, bg, Ui3.R_PILL));
        t.setPadding(Ui3.dp(this, 14), Ui3.dp(this, 4), Ui3.dp(this, 14), Ui3.dp(this, 4));
        return t;
    }

    TextView textBtn(String label, final Runnable r)
    {
        TextView t = Ui3.textBold(this, label, 15f, Ui3.primary2(this));
        t.setPadding(Ui3.dp(this, 10), Ui3.dp(this, 6), Ui3.dp(this, 10), Ui3.dp(this, 6));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        return t;
    }

    TextView dangerBtn(String label, final Runnable r)
    {
        TextView t = Ui3.textBold(this, label, 15f, 0xFFC02626);
        t.setPadding(Ui3.dp(this, 10), Ui3.dp(this, 6), Ui3.dp(this, 10), Ui3.dp(this, 6));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        return t;
    }

    LinearLayout banner(String text, int bg, int fg)
    {
        LinearLayout b = new LinearLayout(this);
        b.setOrientation(LinearLayout.HORIZONTAL);
        b.setGravity(Gravity.CENTER_VERTICAL);
        b.setBackground(Ui3.round(this, bg, Ui3.R_S));
        b.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 10), Ui3.dp(this, 16), Ui3.dp(this, 10));
        b.addView(Ui3.textBold(this, text, 15f, fg));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 14);
        b.setLayoutParams(lp);
        return b;
    }

    FrameLayout heroImage(String asset, int heightDp)
    {
        FrameLayout holder = new FrameLayout(this);
        ImageView iv = new ImageView(this);
        Bitmap b = Ui3.bmp(this, asset);
        if (b != null) iv.setImageBitmap(b);
        /* T9-13: assets are whole rounded cards; FIT_CENTER keeps the artwork intact */
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        iv.setPadding(Ui3.dp(this, 12), Ui3.dp(this, 8), Ui3.dp(this, 12), Ui3.dp(this, 8));
        holder.addView(iv, new FrameLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT));
        holder.setBackground(Ui3.round(this, Ui3.surface2(this), Ui3.R_L));
        holder.setClipToOutline(true);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, heightDp));
        lp.bottomMargin = Ui3.dp(this, 14);
        holder.setLayoutParams(lp);
        return holder;
    }

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

    /** re-render the dynamic parts; subclasses override */
    void renderStatus() { }

    /* --------------------------------------------------------------- intents */

    /** tiny static helper: no Intent extras are parsed by any page (T9-07R1 discipline) */
    static final class Intent2 {
        static void home(Activity a) {
            Intent2.go(a, com.tgz02.voice.VoiceHomeActivity.class);
        }
        static void skills(Activity a) { Intent2.go(a, SkillsHomeActivity.class); }
        static void memory(Activity a) { Intent2.go(a, MemoryCenterActivity.class); }
        static void settings(Activity a) { Intent2.go(a, SettingsHomeActivity.class); }
        static void about(Activity a) { Intent2.go(a, AboutActivity.class); }
        static void go(Activity a, Class<?> cls) {
            android.content.Intent it = new android.content.Intent(a, cls);
            a.startActivity(it);
        }
    }
}
