/*
 * Ui.java -- T9-07: the visual language of the product UI, in code.
 *
 * The app ships no res/ tree on purpose: the build stays javac + d8 + aapt2 against
 * AndroidManifest.xml only, which is the toolchain the previous stages already verified.
 * Everything here is a small set of colours, dimensions and view builders.
 */
package com.tgz02.voice;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

final class Ui {

    /* palette: dark, calm, readable on a 1024x600 speaker screen */
    static final int BG          = 0xFF0E1116;
    static final int BG_BAR      = 0xFF151A21;
    static final int BG_BAR_2    = 0xFF11151B;
    static final int BUBBLE_USER = 0xFF2F6BEA;
    static final int BUBBLE_ASST = 0xFF1E242C;
    static final int ACCENT      = 0xFF4C8DFF;
    static final int TEXT        = 0xFFE9EDF3;
    static final int TEXT_DIM    = 0xFF98A2B3;
    static final int TEXT_FAINT  = 0xFF6B7484;
    static final int OK          = 0xFF38C172;
    static final int WARN        = 0xFFF2B040;
    static final int ERR         = 0xFFE5534B;
    static final int LINE        = 0xFF232A34;

    private Ui() { }

    static int dp(Context c, float v)
    {
        return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
    }

    static GradientDrawable round(Context c, int color, float radiusDp)
    {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(dp(c, radiusDp));
        return d;
    }

    static GradientDrawable roundStroke(Context c, int color, int stroke, float radiusDp)
    {
        GradientDrawable d = round(c, color, radiusDp);
        d.setStroke(dp(c, 1f), stroke);
        return d;
    }

    static TextView text(Context c, String s, float sp, int color)
    {
        TextView t = new TextView(c);
        t.setText(s);
        t.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        t.setTextColor(color);
        return t;
    }

    /** a plain button-ish label: no ripple machinery, keeps the build resource-free */
    static TextView action(final TextView v, final Runnable r)
    {
        v.setPadding(dp(v.getContext(), 14), dp(v.getContext(), 8),
                     dp(v.getContext(), 14), dp(v.getContext(), 8));
        v.setOnClickListener(new View.OnClickListener() {
            public void onClick(View w) { if (r != null) r.run(); }
        });
        return v;
    }

    /** the status pill: a dot plus a short sentence */
    static LinearLayout pill(Context c, String label, int dotColor)
    {
        LinearLayout row = new LinearLayout(c);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(c, 12), dp(c, 5), dp(c, 14), dp(c, 5));
        row.setBackground(round(c, 0xFF1A2029, 20f));

        View dot = new View(c);
        dot.setBackground(round(c, dotColor, 20f));
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(dp(c, 8), dp(c, 8));
        dlp.rightMargin = dp(c, 8);
        row.addView(dot, dlp);

        TextView tv = text(c, label, 13f, TEXT);
        tv.setTag("label");
        row.addView(tv);
        return row;
    }

    static void pillSet(LinearLayout pill, String label, int dotColor)
    {
        Context c = pill.getContext();
        View dot = pill.getChildAt(0);
        dot.setBackground(round(c, dotColor, 20f));
        TextView tv = (TextView) pill.getChildAt(1);
        if (tv != null) tv.setText(label);
    }

    static LinearLayout bar(Context c, int color)
    {
        LinearLayout l = new LinearLayout(c);
        l.setOrientation(LinearLayout.HORIZONTAL);
        l.setGravity(Gravity.CENTER_VERTICAL);
        l.setBackgroundColor(color);
        return l;
    }

    static View divider(Context c)
    {
        View v = new View(c);
        v.setBackgroundColor(LINE);
        v.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                        Math.max(1, dp(c, 0.7f))));
        return v;
    }

    static View spacer(Context c, int widthDp)
    {
        View v = new View(c);
        v.setLayoutParams(new LinearLayout.LayoutParams(dp(c, widthDp), 1));
        return v;
    }
}
