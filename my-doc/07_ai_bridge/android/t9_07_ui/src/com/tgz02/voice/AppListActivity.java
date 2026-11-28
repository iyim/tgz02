/*
 * AppListActivity.java -- T9-18: the built-in app drawer.
 *
 * Replaces the third-party launcher overlay (EasyTouch) the operator used to open other
 * apps with: every activity that answers MAIN/LAUNCHER on this device is listed as a card,
 * and tapping one launches it explicitly (package + activity, so it works even when the
 * package has no default launch intent).
 *
 * No new permission, no privileged API: PackageManager.queryIntentActivities on an
 * unprivileged app already hides packages we disabled at the system level, so a disabled
 * app simply does not appear here.
 */
package com.tgz02.voice;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class AppListActivity extends V3Shell {

    /** columns of the drawer grid on the 1024x600 panel */
    private static final int COLS = 4;

    @Override
    String navId() { return "settings"; }

    @Override
    String title() { return "应用管理"; }

    @Override
    String crumbParent() { return "设置"; }

    @Override
    String tag() { return "点一下就能打开"; }

    @Override
    View buildBody() { return null; }

    @Override
    void onShellReady()
    {
        Ui4.setTheme(SettingsHomeActivity.readTheme());
        rebuildChrome();
        render();
    }

    /* ------------------------------------------------------------------ model */

    static final class Entry {
        final String pkg;
        final String label;
        final Drawable icon;
        final Intent intent;
        Entry(String pkg, String label, Drawable icon, Intent intent)
        {
            this.pkg = pkg; this.label = label; this.icon = icon; this.intent = intent;
        }
    }

    List<Entry> load()
    {
        PackageManager pm = getPackageManager();
        Intent probe = new Intent(Intent.ACTION_MAIN, null);
        probe.addCategory(Intent.CATEGORY_LAUNCHER);
        List<ResolveInfo> hits = pm.queryIntentActivities(probe, 0);
        List<Entry> out = new ArrayList<Entry>();
        if (hits == null) return out;
        java.util.HashSet<String> seen = new java.util.HashSet<String>();
        for (int i = 0; i < hits.size(); i++) {
            ResolveInfo ri = hits.get(i);
            if (ri == null || ri.activityInfo == null) continue;
            String pkg = ri.activityInfo.packageName;
            if (pkg == null || pkg.equals(getPackageName())) continue;
            /* several activities of one package can answer MAIN/LAUNCHER: the drawer shows
               the package once, otherwise smartapp would appear three times */
            if (!seen.add(pkg)) continue;
            CharSequence lab = ri.loadLabel(pm);
            String label = (lab == null ? pkg : lab.toString()).trim();
            if (label.length() == 0) label = pkg;
            Drawable icon = null;
            try { icon = ri.loadIcon(pm); } catch (Throwable ignored) { }
            Intent it = new Intent(Intent.ACTION_MAIN);
            it.addCategory(Intent.CATEGORY_LAUNCHER);
            it.setClassName(pkg, ri.activityInfo.name);
            it.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            out.add(new Entry(pkg, label, icon, it));
        }
        Collections.sort(out, new Comparator<Entry>() {
            public int compare(Entry a, Entry b) { return a.label.compareTo(b.label); }
        });
        return out;
    }

    /* ------------------------------------------------------------------- view */

    void render()
    {
        body.removeAllViews();
        List<Entry> apps = load();

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        head.setPadding(0, 0, 0, Ui4.dp(this, 8));
        TextView count = Ui4.text(this, "共 " + apps.size() + " 个可打开的应用", Ui4.T_AUX,
                Ui4.text3(this));
        head.addView(count, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        head.addView(Ui4.btn(this, "刷新", false, new Runnable() {
            public void run() { render(); }
        }));
        body.addView(head, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        if (apps.isEmpty()) {
            TextView empty = Ui4.text(this, "没有找到可启动的应用", Ui4.T_BODY,
                    Ui4.text3(this));
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(0, Ui4.dp(this, 40), 0, 0);
            body.addView(empty);
            return;
        }

        LinearLayout row = null;
        for (int i = 0; i < apps.size(); i++) {
            if (i % COLS == 0) {
                row = new LinearLayout(this);
                row.setOrientation(LinearLayout.HORIZONTAL);
                LinearLayout.LayoutParams rlp = new LinearLayout.LayoutParams(
                        ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                rlp.topMargin = Ui4.dp(this, 8);
                body.addView(row, rlp);
            }
            final Entry e = apps.get(i);
            LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            if (i % COLS != 0) clp.leftMargin = Ui4.dp(this, 8);
            row.addView(cell(e), clp);

            boolean rowEnd = (i % COLS == COLS - 1) || (i == apps.size() - 1);
            if (rowEnd) fillTail(row, (i % COLS) + 1);
        }
    }

    /** keep the last row aligned with the grid */
    void fillTail(LinearLayout row, int filled)
    {
        for (int k = filled; k < COLS; k++) {
            View gap = new View(this);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                    ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
            lp.leftMargin = Ui4.dp(this, 8);
            row.addView(gap, lp);
        }
    }

    View cell(final Entry e)
    {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setGravity(Gravity.CENTER);
        c.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 14), Ui4.dp(this, 10), Ui4.dp(this, 12));
        c.setMinimumHeight(Ui4.dp(this, 118));
        c.setBackground(Ui4.round(this, Ui4.surface(this), 16f));
        c.setClickable(true);
        c.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { launch(e); }
        });
        /* long press = manage: uninstall (via the system dialog) or open app info */
        c.setOnLongClickListener(new View.OnLongClickListener() {
            public boolean onLongClick(View v) { showMenu(e); return true; }
        });

        ImageView iv = new ImageView(this);
        if (e.icon != null) iv.setImageDrawable(e.icon);
        LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(Ui4.dp(this, 46),
                Ui4.dp(this, 46));
        ilp.bottomMargin = Ui4.dp(this, 8);
        c.addView(iv, ilp);

        TextView name = Ui4.textBold(this, e.label, Ui4.T_BODY_SM, Ui4.text(this));
        name.setGravity(Gravity.CENTER);
        name.setSingleLine(true);
        name.setEllipsize(TextUtils.TruncateAt.END);
        c.addView(name, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));

        TextView pkg = Ui4.text(this, e.pkg, Ui4.T_CAP, Ui4.text3(this));
        pkg.setGravity(Gravity.CENTER);
        pkg.setSingleLine(true);
        pkg.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        plp.topMargin = Ui4.dp(this, 2);
        c.addView(pkg, plp);
        return c;
    }

    void launch(Entry e)
    {
        try {
            startActivity(e.intent);
        } catch (Throwable t) {
            toast("打不开「" + e.label + "」：" + t.getClass().getSimpleName());
        }
    }

    /* ------------------------------------------------------------ app management */

    void showMenu(final Entry e)
    {
        String kind = isSystemApp(e.pkg) ? "系统应用 · 无法从这里卸载" : "第三方应用 · 可卸载";
        new android.app.AlertDialog.Builder(this)
                .setTitle(e.label)
                .setMessage(e.pkg + "\n" + kind)
                .setPositiveButton("卸载", new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int w) { uninstall(e); }
                })
                .setNeutralButton("应用信息", new android.content.DialogInterface.OnClickListener() {
                    public void onClick(android.content.DialogInterface d, int w) { appInfo(e); }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    /** the system uninstall dialog: it is the only path an unprivileged app may use */
    void uninstall(Entry e)
    {
        if (isSystemApp(e.pkg)) {
            toast("「" + e.label + "」是系统应用，卸载请在系统设置里操作");
            return;
        }
        try {
            Intent it = new Intent(Intent.ACTION_DELETE, android.net.Uri.parse("package:" + e.pkg));
            startActivity(it);
        } catch (Throwable t) {
            toast("无法卸载：" + t.getClass().getSimpleName());
        }
    }

    void appInfo(Entry e)
    {
        try {
            Intent it = new Intent(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
                    android.net.Uri.parse("package:" + e.pkg));
            startActivity(it);
        } catch (Throwable t) {
            toast("打不开应用信息");
        }
    }

    boolean isSystemApp(String pkg)
    {
        try {
            android.content.pm.ApplicationInfo ai = getPackageManager().getApplicationInfo(pkg, 0);
            return (ai.flags & android.content.pm.ApplicationInfo.FLAG_SYSTEM) != 0;
        } catch (Throwable t) {
            return false;
        }
    }
}
