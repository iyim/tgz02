/*
 * Ui3.java -- T9-UI-02: the V2 visual system (kid-friendly) as Java constants and
 * view factories.  The single source of truth for values is
 * my-doc/07_ai_bridge/ui/prototype_v2/ds2.css; this file mirrors it.  V1's Ui.java
 * palette is deprecated: see UI_IMPLEMENTATION_MAP.md section 12 (V2 supersedes).
 *
 * Everything here still works with the no-res toolchain (javac + d8 + aapt2 on the
 * manifest only): colors are ints, rounded corners are GradientDrawable, images come
 * from APK assets/ (aapt2 -A), never from res/drawable.
 */
package com.tgz02.voice;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

final class Ui3 {

    /* ============================== mode ============================== */

    static final String MODE_KID  = "kid";
    static final String MODE_CALM = "calm";

    private static String mode = MODE_KID;          // process-wide theme
    static boolean isCalm() { return MODE_CALM.equals(mode); }
    static void setMode(String m) { mode = MODE_CALM.equals(m) ? MODE_CALM : MODE_KID; }
    static String mode() { return mode; }

    /* ============================== tokens (ds2.css) ============================== */

    static int bg(Context c)      { return isCalm() ? col(0xFFF2F4F8) : col(0xFFFFF7EA); }
    static int bgDeep(Context c)  { return isCalm() ? col(0xFFE4E8EF) : col(0xFFFFEBD2); }
    static int surface(Context c) { return col(0xFFFFFFFF); }
    static int surface2(Context c){ return isCalm() ? col(0xFFF2F5FA) : col(0xFFFFF3DF); }
    static int line(Context c)    { return isCalm() ? col(0xFFE2E7EF) : col(0xFFF3E3C8); }
    static int line2(Context c)   { return isCalm() ? col(0xFFD3DBE6) : col(0xFFE8D2AB); }

    static int text(Context c)    { return isCalm() ? col(0xFF1C2432) : col(0xFF3A3040); }
    static int text2(Context c)   { return isCalm() ? col(0xFF5C6879) : col(0xFF8A7A8F); }
    static int text3(Context c)   { return isCalm() ? col(0xFF93A0B0) : col(0xFFB7A88F); }

    static int primary(Context c)   { return isCalm() ? col(0xFF3E6FE0) : col(0xFFFF8A3D); }
    static int primary2(Context c)  { return isCalm() ? col(0xFF2F5BC5) : col(0xFFFF6D2E); }
    static int primaryW(Context c)  { return isCalm() ? col(0xFFE7EEFC) : col(0xFFFFE7D4); }
    static int accent(Context c)    { return col(0xFF5FA8FF); }
    static int accentW(Context c)   { return col(0xFFE3EEFF); }
    static int ok(Context c)        { return col(0xFF35C46A); }
    static int okW(Context c)       { return col(0xFFDFF5E8); }
    static int warn(Context c)      { return col(0xFFFFB020); }
    static int warnW(Context c)     { return col(0xFFFFF2D6); }
    static int err(Context c)       { return col(0xFFFF5D5D); }
    static int errW(Context c)      { return col(0xFFFFE3E3); }
    static int listen(Context c)    { return col(0xFF31D0B4); }

    /* quick tile gradients (kid only; calm uses surface2) */
    static int[] tileGrad(String skill) {
        if ("alarm".equals(skill))    return new int[]{0xFFFFB347, 0xFFFF8A3D};
        if ("calendar".equals(skill)) return new int[]{0xFF6FAEFF, 0xFF4C7FE8};
        return new int[]{0xFF8FA0BC, 0xFF6E80A0};
    }

    private static int col(int argb) { return argb; }

    /* radii */
    static final float R_S = 14f, R_M = 20f, R_L = 28f, R_PILL = 999f;

    /* ============================== dp helpers ============================== */

    static int dp(Context c, float v) {
        return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
    }

    /* ============================== shapes ============================== */

    static GradientDrawable round(Context c, int color, float radiusDp) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(dp(c, radiusDp));
        return d;
    }

    static GradientDrawable roundStroke(Context c, int color, int strokeColor, float radiusDp) {
        GradientDrawable d = round(c, color, radiusDp);
        d.setStroke(dp(c, 2), strokeColor);
        return d;
    }

    static GradientDrawable roundGrad(Context c, int top, int bottom, float radiusDp) {
        GradientDrawable d = new GradientDrawable(GradientDrawable.Orientation.TL_BR,
                new int[]{top, bottom});
        d.setCornerRadius(dp(c, radiusDp));
        return d;
    }

    /* ============================== text ============================== */

    static TextView text(Context c, String s, float sp, int color) {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        return t;
    }

    static TextView textBold(Context c, String s, float sp, int color) {
        TextView t = text(c, s, sp, color);
        t.setTypeface(Typeface.DEFAULT_BOLD);
        return t;
    }

    static TextView action(final TextView v, final Runnable r) {
        v.setPadding(dp(v.getContext(), 16), dp(v.getContext(), 8),
                     dp(v.getContext(), 16), dp(v.getContext(), 8));
        v.setOnClickListener(new View.OnClickListener() {
            public void onClick(View w) { if (r != null) r.run(); }
        });
        return v;
    }

    /* ============================== images from assets/ ============================== */

    private static android.util.LruCache<String, Bitmap> cache =
            new android.util.LruCache<String, Bitmap>(6 * 1024 * 1024) {
                protected int sizeOf(String k, Bitmap b) { return b.getByteCount(); }
            };

    /** decode an asset PNG once; returns null when missing (callers must tolerate that) */
    static Bitmap bmp(Context c, String assetName) {
        Bitmap hit = cache.get(assetName);
        if (hit != null && !hit.isRecycled()) return hit;
        try {
            AssetManager am = c.getAssets();
            Bitmap b = BitmapFactory.decodeStream(am.open("ui/" + assetName + ".png"));
            if (b != null) cache.put(assetName, b);
            return b;
        } catch (Throwable t) {
            return null;
        }
    }

    /** fixed-size ImageView for an asset bitmap (keeps aspect square here) */
    static ImageView img(Context c, String assetName, int sizeDp) {
        ImageView iv = new ImageView(c);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        Bitmap b = bmp(c, assetName);
        if (b != null) iv.setImageBitmap(b);
        iv.setLayoutParams(new ViewGroup.LayoutParams(dp(c, sizeDp), dp(c, sizeDp)));
        return iv;
    }

    /* ============================== components ============================== */

    /** V2 state pill: 40dp tall, 20sp bold, 12dp dot */
    static LinearLayout pill(Context c, String label, int dotColor, int bg) {
        LinearLayout row = new LinearLayout(c);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(c, 18), 0, dp(c, 18), 0);
        row.setBackground(round(c, bg, R_PILL));

        View dot = new View(c);
        dot.setBackground(round(c, dotColor, R_PILL));
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(dp(c, 12), dp(c, 12));
        dlp.rightMargin = dp(c, 10);
        row.addView(dot, dlp);

        TextView tv = textBold(c, label, 20f, text(c));
        row.addView(tv);
        return row;
    }

    static void pillSet(LinearLayout pill, String label, int dotColor) {
        Context c = pill.getContext();
        View dot = pill.getChildAt(0);
        dot.setBackground(round(c, dotColor, R_PILL));
        TextView tv = (TextView) pill.getChildAt(1);
        if (tv != null) tv.setText(label);
    }

    /** V2 switch: 64x36, on = ok green */
    static FrameLayout toggle(Context c, final boolean[] state, final Runnable onChange) {
        final FrameLayout t = new FrameLayout(c);
        final Runnable apply = new Runnable() {
            public void run() {
                GradientDrawable bg = new GradientDrawable();
                bg.setCornerRadius(dp(c, 18));
                bg.setColor(state[0] ? ok(c) : line2(c));
                t.setBackground(bg);
                View knob = t.getChildAt(0);
                if (knob != null) {
                    FrameLayout.LayoutParams lp = (FrameLayout.LayoutParams) knob.getLayoutParams();
                    lp.leftMargin = dp(c, state[0] ? 32 : 4);
                    knob.setLayoutParams(lp);
                }
            }
        };
        View knob = new View(c);
        GradientDrawable kg = new GradientDrawable();
        kg.setShape(GradientDrawable.OVAL);
        kg.setColor(Color.WHITE);
        knob.setBackground(kg);
        t.addView(knob, new FrameLayout.LayoutParams(dp(c, 28), dp(c, 28),
                Gravity.CENTER_VERTICAL | Gravity.LEFT));
        apply.run();
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                state[0] = !state[0];
                apply.run();
                if (onChange != null) onChange.run();
            }
        });
        return t;
    }

    /** bottom navbar: 88dp, five equal entries, 46dp icon block + 15sp bold label */
    static LinearLayout navbar(final Context c, final String current,
                               final String[] ids, final String[] labels,
                               final android.graphics.drawable.Drawable[] icons,
                               final java.lang.Runnable[] onPick) {
        LinearLayout bar = new LinearLayout(c);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setBackground(roundTop(c, surface(c)));
        bar.setPadding(0, dp(c, 8), 0, dp(c, 6));
        for (int i = 0; i < ids.length; i++) {
            final int idx = i;
            LinearLayout it = new LinearLayout(c);
            it.setOrientation(LinearLayout.VERTICAL);
            it.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL);
            boolean on = ids[i].equals(current);
            TextView block = new TextView(c);
            block.setTextSize(TypedValue.COMPLEX_UNIT_SP, 24);
            block.setGravity(Gravity.CENTER);
            block.setText(on ? "\u25CF" : "\u25CB");
            block.setTextColor(on ? primary2(c) : text2(c));
            block.setGravity(Gravity.CENTER);
            block.setBackground(on ? round(c, primaryW(c), 16f) : null);
            /* T9-13: the icon block needs an explicit fixed 46x46 slot so the label below
             * can be wrap-content and centered; a MATCH_PARENT-wide label would ignore
             * CENTER_HORIZONTAL and pin its text to the item's left edge. */
            it.addView(block, new LinearLayout.LayoutParams(dp(c, 46), dp(c, 46)));
            TextView lab = textBold(c, labels[i], 15f, on ? primary2(c) : text2(c));
            lab.setGravity(Gravity.CENTER_HORIZONTAL);
            lab.setIncludeFontPadding(false);
            LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            llp.topMargin = dp(c, 2);
            it.addView(lab, llp);
            it.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (onPick[idx] != null) onPick[idx].run(); }
            });
            bar.addView(it, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        }
        return bar;
    }

    private static GradientDrawable roundTop(Context c, int color) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        float[] r = {dp(c, 20), dp(c, 20), dp(c, 20), dp(c, 20), 0, 0, 0, 0};
        d.setCornerRadii(r);
        return d;
    }

    static View divider(Context c) {
        View v = new View(c);
        v.setBackgroundColor(line(c));
        v.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                Math.max(2, dp(c, 1.4f))));
        return v;
    }

    static LinearLayout bar(Context c, int color) {
        LinearLayout l = new LinearLayout(c);
        l.setOrientation(LinearLayout.HORIZONTAL);
        l.setGravity(Gravity.CENTER_VERTICAL);
        l.setBackgroundColor(color);
        return l;
    }
}
