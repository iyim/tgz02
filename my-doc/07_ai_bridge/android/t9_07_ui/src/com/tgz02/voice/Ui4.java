/*
 * Ui4.java -- T9-14: the V3 design system (TG-Z02-UI-V3) as Java tokens, component
 * factories and Canvas-drawn vector icons.
 *
 * Sources of truth (docs in TG-Z02-UI-V3):
 *   colors / radii / spacing / type scale : docs/02_视觉规范.md §1–§5 (== prototype/ds.css)
 *   component sizes                        : docs/03_开发交接.md §2–§4
 *   icons (29 SVG symbols, 24x24, stroke 1.8): prototype/index.html -- drawn here with
 *     android.graphics.Path via a tiny SVG-path interpreter (subset: M L H V C S Q A Z,
 *     absolute+relative), no res/, no VectorDrawable, same no-res toolchain as before.
 *
 * Assets: V3 artwork lives in assets/ui/v3/*.png (12 RGBA files, downscaled to 640).
 * Ui4.art() reads them; the legacy ui/*.png set stays untouched (parallel import, Q1).
 */
package com.tgz02.voice;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
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

final class Ui4 {

    /* ============================== theme (kid/calm, tokens only) ============================== */

    private static String theme = "kid";
    static boolean isCalm() { return "calm".equals(theme); }
    static void setTheme(String t) { theme = "calm".equals(t) ? "calm" : "kid"; }
    static String theme() { return theme; }

    /* -------- §1.1 surfaces & lines -------- */
    static int bg(Context c)        { return isCalm() ? col(0xFFF2F4F8) : col(0xFFFFF7EA); }
    static int bgDeep(Context c)    { return isCalm() ? col(0xFFE4E9F2) : col(0xFFFFEBD2); }
    static int surface(Context c)   { return col(0xFFFFFFFF); }
    static int surface2(Context c)  { return isCalm() ? col(0xFFF5F7FB) : col(0xFFFFF3DF); }
    static int surface3(Context c)  { return isCalm() ? col(0xFFEDF1F7) : col(0xFFFBF6EE); }
    static int line(Context c)      { return isCalm() ? col(0xFFDDE4EE) : col(0xFFF3E3C8); }
    static int line2(Context c)     { return isCalm() ? col(0xFFC8D2E0) : col(0xFFE8D2AB); }

    /* -------- §1.2 text -------- */
    static int text(Context c)      { return isCalm() ? col(0xFF243044) : col(0xFF3A3040); }
    static int text2(Context c)     { return isCalm() ? col(0xFF5C6B80) : col(0xFF8A7A8F); }
    static int text3(Context c)     { return isCalm() ? col(0xFF8B95A4) : col(0xFFB7A88F); }

    /* -------- §1.3 brand -------- */
    static int primary(Context c)   { return isCalm() ? col(0xFF3E6FE0) : col(0xFFFF8A3D); }
    static int primary2(Context c)  { return isCalm() ? col(0xFF2F58BE) : col(0xFFFF6D2E); }
    static int primaryW(Context c)  { return isCalm() ? col(0xFFE8EEFC) : col(0xFFFFF0E0); }
    static int accent(Context c)    { return col(0xFF5FA8FF); }
    static int accent2(Context c)   { return col(0xFF4C7FE8); }
    static int accentW(Context c)   { return col(0xFFE9F2FF); }
    static int ink(Context c)       { return col(0xFF3A4A6B); }

    /* -------- §1.4 status -------- */
    static int ok(Context c)        { return col(0xFF35C46A); }
    static int okW(Context c)       { return col(0xFFE3F5EA); }
    static int warn(Context c)      { return col(0xFFFFB020); }
    static int warnW(Context c)     { return col(0xFFFBF0DC); }
    static int err(Context c)       { return col(0xFFFF5D5D); }
    static int errW(Context c)      { return col(0xFFFBE7E6); }
    static int listen(Context c)    { return col(0xFF31D0B4); }
    static int listenW(Context c)   { return col(0xFFE0F5F2); }
    static int purple(Context c)    { return col(0xFFB48BF2); }
    static int purpleW(Context c)   { return col(0xFFF1E9FF); }
    static int pink(Context c)      { return col(0xFFFF8FB8); }
    static int pinkW(Context c)     { return col(0xFFFFEAF2); }
    static int yellow(Context c)    { return col(0xFFFFD45E); }

    /* -------- §1.5 skill gradients (145deg = TL_BR) -------- */
    static int[] gradAlarm(Context c)    { return new int[]{col(0xFFFFD9A0), col(0xFFFFB347), col(0xFFFF8A3D)}; }
    static int[] gradCalendar(Context c) { return new int[]{col(0xFFBBD9FF), col(0xFF6FAEFF), col(0xFF4C7FE8)}; }
    static int[] gradMusic(Context c)    { return new int[]{col(0xFFE2CDFF), col(0xFFC9A7FF), col(0xFFA97BEA)}; }
    static int[] gradWeather(Context c)  { return new int[]{col(0xFFC9ECFA), col(0xFF8FD8F2), col(0xFF5FBEE0)}; }
    static int[] gradDevice(Context c)   { return new int[]{col(0xFFDCE5F0), col(0xFFB9C6DA), col(0xFF93A6C4)}; }
    static int[] gradMemory(Context c)   { return new int[]{col(0xFFFFD9E8), col(0xFFFFB3CE), col(0xFFFF8FB8)}; }

    static int[] skillGrad(Context c, String id) {
        if ("alarm".equals(id))    return gradAlarm(c);
        if ("calendar".equals(id)) return gradCalendar(c);
        if ("music".equals(id))    return gradMusic(c);
        if ("weather".equals(id))  return gradWeather(c);
        if ("device".equals(id))   return gradDevice(c);
        return gradMemory(c);
    }

    /* -------- §1.6 voice-state runtime colors -------- */
    /* {state, w, ink} -- indexed by the 10 UI states */
    static final String[] STATES = {
        "idle", "wakeup", "listening", "recognizing", "thinking",
        "answering", "speaking", "stopped", "error", "continuous"
    };
    static int stateIdx(String s) {
        for (int i = 0; i < STATES.length; i++) if (STATES[i].equals(s)) return i;
        return 0;
    }
    private static final int[][] STATE_COLORS = {
        {0xFFFFB86B, 0xFFFFF0DC, 0xFF8A5A20},   // idle
        {0xFFFF8A3D, 0xFFFFE8D4, 0xFF9A4610},   // wakeup
        {0xFF31D0B4, 0xFFE0F5F2, 0xFF1B6F66},   // listening
        {0xFF5FA8FF, 0xFFE9F2FF, 0xFF1F4FBF},   // recognizing
        {0xFFFFB020, 0xFFFBF0DC, 0xFF7A5310},   // thinking
        {0xFFB48BF2, 0xFFF1E9FF, 0xFF6A44A8},   // answering
        {0xFF35C46A, 0xFFE3F5EA, 0xFF17663A},   // speaking
        {0xFFB7A88F, 0xFFF3EDE2, 0xFF6B6055},   // stopped
        {0xFFFF5D5D, 0xFFFBE7E6, 0xFF8E2C27},   // error
        {0xFFFF8FB8, 0xFFFFEAF2, 0xFF963E63},   // continuous
    };
    static int stateColor(Context c, String s)  { return STATE_COLORS[stateIdx(s)][0]; }
    static int stateW(Context c, String s)      { return STATE_COLORS[stateIdx(s)][1]; }
    static int stateInk(Context c, String s)    { return STATE_COLORS[stateIdx(s)][2]; }

    /* -------- §4 radii & §2 type scale -------- */
    static final float R_S = 14f, R_M = 20f, R_L = 28f, R_PILL = 999f, R_NAV_TOP = 22f;
    static final float T_DISPLAY = 34f, T_H1 = 26f, T_CARD = 24f, T_ACTION = 22f,
            T_STATE = 20f, T_BODY = 19f, T_BODY_SM = 17f, T_AUX = 15f, T_CAP = 14f, T_NAV = 15f;

    private static int col(int argb) { return argb; }

    /* ============================== dp / view helpers ============================== */

    static int dp(Context c, float v) {
        return (int) (v * c.getResources().getDisplayMetrics().density + 0.5f);
    }

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

    /* ============================== shape factories ============================== */

    static GradientDrawable round(Context c, int color, float radiusDp) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(dp(c, radiusDp));
        return d;
    }

    static GradientDrawable roundStroke(Context c, int color, int stroke, float radiusDp) {
        GradientDrawable d = round(c, color, radiusDp);
        d.setStroke(dp(c, 1), stroke);
        return d;
    }

    static GradientDrawable roundStroke2(Context c, int color, int stroke, float radiusDp) {
        GradientDrawable d = round(c, color, radiusDp);
        d.setStroke(dp(c, 2), stroke);
        return d;
    }

    /** three-stop 145° (TL→BR) gradient card */
    static GradientDrawable grad(Context c, int[] colors, float radiusDp) {
        GradientDrawable d = new GradientDrawable(GradientDrawable.Orientation.TL_BR, colors);
        d.setCornerRadius(dp(c, radiusDp));
        return d;
    }

    static GradientDrawable dashed(Context c, int color, float radiusDp) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(Color.TRANSPARENT);
        d.setCornerRadius(dp(c, radiusDp));
        d.setStroke(dp(c, 2), color, dp(c, 6), dp(c, 6));
        return d;
    }

    private static GradientDrawable navTop(Context c, int color) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        float[] r = {dp(c, R_NAV_TOP), dp(c, R_NAV_TOP), dp(c, R_NAV_TOP), dp(c, R_NAV_TOP), 0, 0, 0, 0};
        d.setCornerRadii(r);
        return d;
    }

    /* ============================== V3 icons (SVG -> Canvas) ============================== */

    /** one icon spec: SVG path data list (24x24 viewBox), optional filled dots */
    private static final String[][] ICONS = {
        /* 0  i-home */     {"M3 11.2 12 4l9 7.2", "M5.5 10v9h13v-9", "M10 19v-5.5h4V19"},
        /* 1  i-skills */   {"R:3.5,3.5,7,7,2", "R:13.5,3.5,7,7,2", "R:3.5,13.5,7,7,2", "R:13.5,13.5,7,7,2"},
        /* 2  i-memory */   {"R:3,4.5,18,15,3", "M7 9h10", "M7 13h10", "M7 16.5h6"},
        /* 3  i-settings */ {"M4 7h16", "M4 12h16", "M4 17h16", "D:9,7,2.2", "D:15,12,2.2", "D:8,17,2.2"},
        /* 4  i-info */     {"C:12,12,9", "M12 10.8v6", "D:12,7.6,1.1"},
        /* 5  i-alarm */    {"C:12,13,7.2", "M12 9.4V13l2.6 1.7", "M5.5 4.5 8 6.6", "M18.5 4.5 16 6.6"},
        /* 6  i-calendar */ {"R:3.5,5.5,17,15,3", "M3.5 10h17", "M7.5 3.5v4", "M16.5 3.5v4", "D:9,14.5,1", "D:14.5,14.5,1"},
        /* 7  i-music */    {"M9 17V6.5l10-2v10.5", "E:6.5,17.5,2.5,2", "E:16.5,15.5,2.5,2"},
        /* 8  i-weather */  {"C:12,9,4", "M12 2.5v1.6", "M12 13.9v1.6", "M5.5 9H3.9", "M20.1 9h-1.6",
                             "M7.4 4.4 6.3 3.3", "M17.7 3.3l-1.1 1.1", "M7.4 13.6l-1.1 1.1", "M17.7 14.7l-1.1-1.1",
                             "M6 19.5h11a2.5 2.5 0 0 0 0-5 3.6 3.6 0 0 0-6.8-1.2A3.2 3.2 0 0 0 6 19.5Z"},
        /* 9  i-device */   {"R:4,4,16,16,4", "C:12,12,3.4", "D:8,8,0.9", "D:16,8,0.9"},
        /* 10 i-star */     {"F:m12 2.8 2.8 5.9 6.4.9-4.6 4.5 1.1 6.4-5.7-3-5.7 3 1.1-6.4-4.6-4.5 6.4-.9Z"},
        /* 11 i-mic */      {"R:9,3,6,11,3", "M5.5 11.5a6.5 6.5 0 0 0 13 0", "M12 18v3", "M8.5 21h7"},
        /* 12 i-stop */     {"F:R:6,6,12,12,2.5"},
        /* 13 i-chevL */    {"M14.5 5 8 12l6.5 7"},
        /* 14 i-chevR */    {"M9.5 5 16 12l-6.5 7"},
        /* 15 i-plus */     {"M12 5v14", "M5 12h14"},
        /* 16 i-edit */     {"m4 20 4.5-1 10-10-3.5-3.5-10 10Z", "m13.5 7 3.5 3.5"},
        /* 17 i-trash */    {"M4.5 7h15", "M9 7V4.5h6V7", "M6.5 7l1 13h9l1-13", "M10 11v6", "M14 11v6"},
        /* 18 i-check */    {"m4.5 12.5 5 5 10-11"},
        /* 19 i-chip */     {"R:6,6,12,12,2.5", "M9 3v3", "M15 3v3", "M9 18v3", "M15 18v3", "M3 9h3", "M3 15h3", "M18 9h3", "M18 15h3"},
        /* 20 i-palette */  {"M12 3a9 9 0 0 0 0 18h1.5a2 2 0 0 0 0-4H12a2 2 0 0 1 0-4h6a3 3 0 0 0 3-3 7 7 0 0 0-9-7Z",
                             "D:7.5,11,1.2", "D:10,7.5,1.2", "D:15,7.5,1.2"},
        /* 21 i-volume */   {"M4 9.5h3.5L12 5.5v13L7.5 14.5H4Z", "M15.5 9a4 4 0 0 1 0 6", "M18 6.5a7.5 7.5 0 0 1 0 11"},
        /* 22 i-power */    {"M12 3v8", "M6.6 6.6a8 8 0 1 0 10.8 0"},
        /* 23 i-heart */    {"F:M12 20s-7.5-4.6-7.5-9.4A4.1 4.1 0 0 1 12 8a4.1 4.1 0 0 1 7.5 2.6C19.5 15.4 12 20 12 20Z"},
        /* 24 i-fact */     {"M6 3.5h9l3.5 3.5v13.5H6Z", "M14.5 3.5V7H18", "M9 11h7", "M9 14.5h7", "M9 18h4"},
        /* 25 i-users */    {"C:9,8.5,3", "M3.5 19a5.5 5.5 0 0 1 11 0", "C:17,9.5,2.3", "M15 15.2a4.6 4.6 0 0 1 5.5 3.8"},
        /* 26 i-sparkle */  {"F:M12 2.5 13.7 9l6.3 1.7-6.3 1.7L12 19l-1.7-6.6L4 10.7 10.3 9Z"},
        /* 27 i-refresh */  {"M19 8a7.5 7.5 0 1 0 1 6", "M19 3.5V8h-4.5"},
        /* 28 i-clock */    {"C:12,12,9", "M12 7v5.3l3.3 2"},
    };

    static final int I_HOME = 0, I_SKILLS = 1, I_MEMORY = 2, I_SETTINGS = 3, I_INFO = 4,
            I_ALARM = 5, I_CALENDAR = 6, I_MUSIC = 7, I_WEATHER = 8, I_DEVICE = 9,
            I_STAR = 10, I_MIC = 11, I_STOP = 12, I_CHEVL = 13, I_CHEVR = 14,
            I_PLUS = 15, I_EDIT = 16, I_TRASH = 17, I_CHECK = 18, I_CHIP = 19,
            I_PALETTE = 20, I_VOLUME = 21, I_POWER = 22, I_HEART = 23, I_FACT = 24,
            I_USERS = 25, I_SPARKLE = 26, I_REFRESH = 27, I_CLOCK = 28;

    /** tiny SVG-path subset parser: M L H V C S Q A Z (abs+rel), as used by the 29 symbols */
    private static Path svgPath(String d) {
        Path p = new Path();
        int i = 0, n = d.length();
        char cmd = 0;
        float[] cur = new float[2], start = new float[2];
        float lastC2x = 0, lastC2y = 0;
        while (i < n) {
            char ch = d.charAt(i);
            if (Character.isLetter(ch)) {
                cmd = ch;
                i++;
                if (cmd == 'Z' || cmd == 'z') { p.close(); continue; }
                continue;
            }
            if (Character.isWhitespace(ch) || ch == ',') { i++; continue; }
            if (ch == '-') { /* number may start with '-' */ }
            int argc = argCount(cmd);
            float[] v = new float[argc];
            int cnt = 0;
            while (cnt < argc) {
                int j = scanNumber(d, i);
                if (j <= i) break;                    // no parseable number: stop
                v[cnt++] = Float.parseFloat(d.substring(i, j));
                i = j;
                // skip one separator if present
                if (i < n && (d.charAt(i) == ',' || Character.isWhitespace(d.charAt(i)))) i++;
                // handle packed sign like "5-3" or "5.2.3": next scanNumber will pick it up
            }
            if (cnt == 0) { i++; continue; }          // safety: never loop without progress
            boolean abs = Character.isUpperCase(cmd);
            float x = cur[0], y = cur[1];
            float px = abs ? 0 : x, py = abs ? 0 : y;
            switch (Character.toUpperCase(cmd)) {
                case 'M': cur[0] = px + v[0]; cur[1] = py + v[1]; start[0] = cur[0]; start[1] = cur[1];
                          p.moveTo(cur[0], cur[1]);
                          cmd = abs ? 'L' : 'l';      // implicit lineto continuation
                          break;
                case 'L': cur[0] = px + v[0]; cur[1] = py + v[1]; p.lineTo(cur[0], cur[1]); break;
                case 'H': cur[0] = abs ? v[0] : x + v[0]; p.lineTo(cur[0], y); break;
                case 'V': cur[1] = abs ? v[0] : y + v[0]; p.lineTo(x, cur[1]); break;
                case 'C': cur[0] = px + v[4]; cur[1] = py + v[5];
                          p.cubicTo(px + v[0], py + v[1], px + v[2], py + v[3], cur[0], cur[1]);
                          lastC2x = px + v[2]; lastC2y = py + v[3]; break;
                case 'S': cur[0] = px + v[2]; cur[1] = py + v[3];
                          p.cubicTo(2 * x - lastC2x, 2 * y - lastC2y, px + v[0], py + v[1], cur[0], cur[1]);
                          lastC2x = px + v[0]; lastC2y = py + v[1]; break;
                case 'Q': cur[0] = px + v[2]; cur[1] = py + v[3];
                          p.quadTo(px + v[0], py + v[1], cur[0], cur[1]); break;
                case 'A':
                {
                    // our icons use only small circular arcs; approximate with a quad
                    cur[0] = px + v[5]; cur[1] = py + v[6];
                    float mx = (x + cur[0]) / 2f, my = (y + cur[1]) / 2f;
                    p.quadTo((x + mx) / 2f + (cur[1] - y) / 4f, (y + my) / 2f - (cur[0] - x) / 4f,
                            cur[0], cur[1]);
                    break;
                }
                default: return p;                     // unknown command: bail out safely
            }
            // after M/L/H/V/Z with remaining args, the same command continues implicitly
            if (i < n) {
                char nc = d.charAt(i);
                if (Character.isLetter(nc)) { cmd = nc; i++; if (cmd == 'Z' || cmd == 'z') p.close(); }
            }
        }
        return p;
    }

    /** args per SVG command (after the letter) */
    private static int argCount(char cmd) {
        switch (Character.toUpperCase(cmd)) {
            case 'M': case 'L': case 'T': return 2;
            case 'H': case 'V': return 1;
            case 'C': return 6;
            case 'S': case 'Q': return 4;
            case 'A': return 7;
            default: return 0;
        }
    }

    /** scan one floating-point number starting at i; returns end index or i when none */
    private static int scanNumber(String d, int i) {
        int n = d.length(), j = i;
        if (j < n && (d.charAt(j) == '-' || d.charAt(j) == '+')) j++;
        boolean seenDigit = false, seenDot = false, seenExp = false;
        while (j < n) {
            char ch = d.charAt(j);
            if (ch >= '0' && ch <= '9') { seenDigit = true; j++; }
            else if (ch == '.' && !seenDot && !seenExp) { seenDot = true; j++; }
            else if ((ch == 'e' || ch == 'E') && seenDigit && !seenExp) {
                seenExp = true; j++;
                if (j < n && (d.charAt(j) == '-' || d.charAt(j) == '+')) j++;
            }
            else break;
        }
        return seenDigit ? j : i;
    }

    private static void iconPart(Canvas cv, String spec, Paint stroke, Paint fill) {
        boolean filled = false;
        if (spec.length() > 2 && spec.charAt(0) == 'F' && spec.charAt(1) == ':') {
            filled = true; spec = spec.substring(2);
        }
        if (spec.startsWith("R:")) {
            float[] v = nums(spec.substring(2), 5);
            RectF r = new RectF(v[0], v[1], v[0] + v[2], v[1] + v[3]);
            if (filled) cv.drawRoundRect(r, v[4], v[4], fill);
            else cv.drawRoundRect(r, v[4], v[4], stroke);
            return;
        }
        if (spec.startsWith("C:")) {
            float[] v = nums(spec.substring(2), 3);
            if (filled) cv.drawCircle(v[0], v[1], v[2], fill);
            else cv.drawCircle(v[0], v[1], v[2], stroke);
            return;
        }
        if (spec.startsWith("D:")) {
            float[] v = nums(spec.substring(2), 3);
            cv.drawCircle(v[0], v[1], v[2], fill);
            return;
        }
        if (spec.startsWith("E:")) {
            float[] v = nums(spec.substring(2), 4);
            RectF r = new RectF(v[0] - v[2], v[1] - v[3], v[0] + v[2], v[1] + v[3]);
            if (filled) cv.drawOval(r, fill); else cv.drawOval(r, stroke);
            return;
        }
        Path path = svgPath(spec);
        cv.drawPath(path, filled ? fill : stroke);
    }

    private static float[] nums(String s, int max) {
        float[] out = new float[max];
        int cnt = 0;
        for (String tok : s.split("[\\s,]+")) {
            if (tok.length() == 0 || cnt >= max) continue;
            try { out[cnt++] = Float.parseFloat(tok); } catch (Exception e) { }
        }
        return out;
    }

    /** draw icon #id into a View of size px, tinted color */
    static View icon(final Context c, final int id, final int sizeDp, final int color) {
        final int px = dp(c, sizeDp);
        View v = new View(c) {
            private final Paint st = new Paint(Paint.ANTI_ALIAS_FLAG);
            private final Paint fl = new Paint(Paint.ANTI_ALIAS_FLAG);
            { st.setStyle(Paint.Style.STROKE); fl.setStyle(Paint.Style.FILL); }
            @Override protected void onDraw(Canvas cv) {
                super.onDraw(cv);
                int col = color;
                st.setColor(col); fl.setColor(col);
                float scale = px / 24f;
                // stroke width 1.8 in the 24-grid, hairline minimum
                st.setStrokeWidth(Math.max(1f, 1.8f * scale));
                st.setStrokeCap(Paint.Cap.ROUND);
                st.setStrokeJoin(Paint.Join.ROUND);
                cv.save();
                cv.scale(scale, scale);
                for (String spec : ICONS[id]) iconPart(cv, spec, st, fl);
                cv.restore();
            }
        };
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(px, px);
        v.setLayoutParams(lp);
        return v;
    }

    /* ============================== V3 components ============================== */

    /** §8 state pill: height 36, radius pill, dot 10, ink-colored text */
    static LinearLayout pill(Context c, String label, int wColor, int inkColor) {
        LinearLayout row = new LinearLayout(c);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setGravity(Gravity.CENTER_VERTICAL);
        row.setPadding(dp(c, 14), 0, dp(c, 14), 0);
        row.setBackground(round(c, wColor, R_PILL));
        View dot = new View(c);
        dot.setBackground(round(c, inkColor, R_PILL));
        LinearLayout.LayoutParams dlp = new LinearLayout.LayoutParams(dp(c, 10), dp(c, 10));
        dlp.rightMargin = dp(c, 8);
        row.addView(dot, dlp);
        TextView tv = textBold(c, label, T_CAP, inkColor);
        tv.setSingleLine(true);
        row.addView(tv);
        row.setMinimumHeight(dp(c, 36));
        return row;
    }

    static void pillSet(LinearLayout pill, String label, int wColor, int inkColor) {
        Context c = pill.getContext();
        pill.setBackground(round(c, wColor, R_PILL));
        View dot = pill.getChildAt(0);
        dot.setBackground(round(c, inkColor, R_PILL));
        TextView tv = (TextView) pill.getChildAt(1);
        if (tv != null) tv.setText(label);
    }

    /** §10 bottom navbar: 88dp, top radius 22, 5 equal items, real icons + 15sp bold, on-state pill */
    static LinearLayout navbar(final Context c, final String current,
                               final String[] ids, final String[] labels,
                               final int[] icons,
                               final java.lang.Runnable[] onPick) {
        LinearLayout bar = new LinearLayout(c);
        bar.setOrientation(LinearLayout.HORIZONTAL);
        bar.setBackground(navTop(c, surface(c)));
        bar.setPadding(dp(c, 10), dp(c, 6), dp(c, 10), dp(c, 8));
        for (int i = 0; i < ids.length; i++) {
            final int idx = i;
            LinearLayout it = new LinearLayout(c);
            it.setOrientation(LinearLayout.VERTICAL);
            it.setGravity(Gravity.CENTER);
            it.setPadding(dp(c, 6), dp(c, 4), dp(c, 6), dp(c, 4));
            boolean on = ids[i].equals(current);
            if (on) {
                it.setBackground(round(c, primaryW(c), R_M));
                it.setPadding(dp(c, 6), dp(c, 6), dp(c, 6), dp(c, 6));
            }
            it.addView(icon(c, icons[i], 26, on ? primary2(c) : text2(c)));
            TextView lab = textBold(c, labels[i], T_NAV, on ? primary2(c) : text2(c));
            lab.setGravity(Gravity.CENTER_HORIZONTAL);
            lab.setIncludeFontPadding(false);
            LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            llp.topMargin = dp(c, 4);
            it.addView(lab, llp);
            it.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (onPick[idx] != null) onPick[idx].run(); }
            });
            bar.addView(it, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        }
        return bar;
    }

    /** §6 V3 card: white surface, 1px line stroke, radius 20 */
    static LinearLayout card(Context c) {
        LinearLayout l = new LinearLayout(c);
        l.setOrientation(LinearLayout.VERTICAL);
        l.setBackground(roundStroke(c, surface(c), line(c), R_M));
        return l;
    }

    /** V3 image: asset from the v3/ payload, FIT_CENTER (hard rule §11.2) */
    static ImageView art(Context c, String name, int sizeDp) {
        ImageView iv = new ImageView(c);
        android.graphics.Bitmap b = artBmp(c, name);
        if (b != null) iv.setImageBitmap(b);
        iv.setScaleType(ImageView.ScaleType.FIT_CENTER);
        iv.setLayoutParams(new ViewGroup.LayoutParams(dp(c, sizeDp), dp(c, sizeDp)));
        return iv;
    }

    private static android.util.LruCache<String, android.graphics.Bitmap> v3cache =
            new android.util.LruCache<String, android.graphics.Bitmap>(24 * 1024 * 1024) {
                protected int sizeOf(String k, android.graphics.Bitmap b) { return b.getByteCount(); }
            };

    /** decode assets/ui/v3/<name>.png once */
    static android.graphics.Bitmap artBmp(Context c, String name) {
        android.graphics.Bitmap hit = v3cache.get(name);
        if (hit != null && !hit.isRecycled()) return hit;
        try {
            android.graphics.Bitmap b = android.graphics.BitmapFactory.decodeStream(
                    c.getAssets().open("ui/v3/" + name + ".png"));
            if (b != null) v3cache.put(name, b);
            return b;
        } catch (Throwable t) {
            return null;
        }
    }

    /* -------- §7 buttons -------- */

    static TextView btn(Context c, String label, boolean primary, final Runnable r) {
        TextView t = textBold(c, label, T_BODY_SM, primary ? Color.WHITE : text(c));
        t.setGravity(Gravity.CENTER);
        t.setSingleLine(true);
        if (primary) {
            t.setBackground(grad(c, new int[]{primary(c), primary2(c)}, R_S));
        } else {
            t.setBackground(roundStroke(c, surface(c), line2(c), R_S));
        }
        t.setPadding(dp(c, 20), 0, dp(c, 20), 0);
        t.setMinimumHeight(dp(c, 44));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { if (r != null) r.run(); }
        });
        return t;
    }

    /**
     * T9-16: 全屏闹钟页专用大按钮。
     * 1024x600 卧式屏上 44dp 的小按钮手指点不准，这里给 92dp 高 / 26sp 字 / 240dp 起宽，
     * 让「关闭」「贪睡」「知道了」在响铃和确认两个全屏页上都是明确的命中目标。
     */
    static TextView btnLg(Context c, String label, boolean primary, final Runnable r) {
        TextView t = textBold(c, label, 26f, primary ? Color.WHITE : text(c));
        t.setGravity(Gravity.CENTER);
        t.setSingleLine(true);
        if (primary) {
            t.setBackground(grad(c, new int[]{primary(c), primary2(c)}, R_M));
        } else {
            t.setBackground(roundStroke(c, surface(c), line2(c), R_M));
        }
        t.setPadding(dp(c, 44), 0, dp(c, 44), 0);
        t.setMinimumHeight(dp(c, 92));
        t.setMinHeight(dp(c, 92));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { if (r != null) r.run(); }
        });
        return t;
    }

    static TextView btnSm(Context c, String label, int fg, final Runnable r) {
        TextView t = textBold(c, label, T_CAP, fg);
        t.setGravity(Gravity.CENTER);
        t.setSingleLine(true);
        t.setBackground(roundStroke(c, surface(c), line2(c), R_S));
        t.setPadding(dp(c, 14), 0, dp(c, 14), 0);
        t.setMinimumHeight(dp(c, 38));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { if (r != null) r.run(); }
        });
        return t;
    }

    /* -------- §8 switch: 64x36, knob 28, travel 28 -------- */

    static FrameLayout toggle(Context c, final boolean[] state, final Runnable onChange) {
        final FrameLayout t = new FrameLayout(c);
        final Runnable apply = new Runnable() {
            public void run() {
                GradientDrawable bgd = new GradientDrawable();
                bgd.setCornerRadius(dp(c, 18));
                bgd.setColor(state[0] ? ok(c) : surface3(c));
                t.setBackground(bgd);
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
        t.setLayoutParams(new ViewGroup.LayoutParams(dp(c, 64), dp(c, 36)));
        return t;
    }

    /* -------- §8 segmented control -------- */

    static LinearLayout seg(Context c, String[] labels, final boolean[] sel,
                            final java.lang.Runnable[] onPick) {
        LinearLayout box = new LinearLayout(c);
        box.setOrientation(LinearLayout.HORIZONTAL);
        box.setBackground(round(c, surface2(c), R_S));
        box.setPadding(dp(c, 4), dp(c, 4), dp(c, 4), dp(c, 4));
        for (int i = 0; i < labels.length; i++) {
            final int idx = i;
            TextView b = textBold(c, labels[i], T_CAP, sel[i] ? primary2(c) : text2(c));
            b.setGravity(Gravity.CENTER);
            b.setSingleLine(true);
            if (sel[i]) b.setBackground(round(c, surface(c), 11f));
            b.setPadding(dp(c, 14), 0, dp(c, 14), 0);
            b.setMinimumHeight(dp(c, 36));
            b.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) { if (onPick[idx] != null) onPick[idx].run(); }
            });
            box.addView(b, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        }
        return box;
    }

    /* -------- §8 banner -------- */

    static LinearLayout banner(Context c, String text, int bg, int fg) {
        LinearLayout b = new LinearLayout(c);
        b.setOrientation(LinearLayout.HORIZONTAL);
        b.setGravity(Gravity.CENTER_VERTICAL);
        b.setBackground(round(c, bg, R_S));
        b.setPadding(dp(c, 16), dp(c, 8), dp(c, 16), dp(c, 8));
        b.addView(icon(c, I_INFO, 16, fg));
        TextView tv = text(c, text, T_CAP, fg);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
        lp.leftMargin = dp(c, 8);
        b.addView(tv, lp);
        return b;
    }

    /* -------- list row (§8 .row, min 58, icon slot 40x40) -------- */

    static LinearLayout row(Context c, int iconId, String title, String desc, View endView) {
        LinearLayout r = new LinearLayout(c);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(dp(c, 16), dp(c, 8), dp(c, 16), dp(c, 8));
        r.setMinimumHeight(dp(c, 58));
        if (iconId >= 0) {
            View ic = icon(c, iconId, 22, text2(c));
            ic.setBackground(round(c, surface2(c), 13f));
            ic.setPadding(dp(c, 9), dp(c, 9), dp(c, 9), dp(c, 9));
            LinearLayout.LayoutParams ilp = new LinearLayout.LayoutParams(dp(c, 40), dp(c, 40));
            ilp.rightMargin = dp(c, 12);
            r.addView(ic, ilp);
        }
        LinearLayout txt = new LinearLayout(c);
        txt.setOrientation(LinearLayout.VERTICAL);
        txt.addView(textBold(c, title, T_BODY_SM, text(c)));
        if (desc != null && desc.length() > 0) {
            TextView d = text(c, desc, T_CAP, text2(c));
            d.setPadding(0, dp(c, 2), 0, 0);
            txt.addView(d);
        }
        r.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        if (endView != null) r.addView(endView);
        return r;
    }

    static TextView chev(Context c) {
        return (TextView) text(c, "›", T_H1, text3(c));
    }
}
