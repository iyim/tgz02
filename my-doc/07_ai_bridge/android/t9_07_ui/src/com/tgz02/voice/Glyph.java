/*
 * Glyph.java -- T9-25: vector icons for the player.
 *
 * Why not drawables: this project links aapt2 with the manifest only (no res/ tree), so
 * every icon in the app is drawn in code (Ui4 does the same with SVG paths). The player
 * needs shapes Ui4 does not carry -- play/pause/skip -- and a font glyph would depend on
 * whatever the ROM ships, so they are drawn here.
 */
package com.tgz02.voice;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;

final class Glyph extends View {

    static final int PLAY = 0, PAUSE = 1, NEXT = 2, PREV = 3, BACK = 4, SEARCH = 5,
            LIST = 6, VOL = 7, CLOSE = 8;

    private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
    private final Path path = new Path();
    private final RectF rect = new RectF();
    private int type = PLAY;
    private int color = 0xFF3A3040;
    private float strokeDp = 2.2f;

    Glyph(Context c, int type, int color) {
        super(c);
        this.type = type;
        setColor(color);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
    }

    void setType(int t) { type = t; invalidate(); }

    void setColor(int c) { color = c; paint.setColor(c); invalidate(); }

    void setStrokeDp(float dp) { strokeDp = dp; invalidate(); }

    @Override protected void onDraw(Canvas canvas)
    {
        float w = getWidth(), h = getHeight();
        if (w <= 0 || h <= 0) return;
        float pad = Math.min(w, h) * 0.18f;
        float x0 = pad, y0 = pad, x1 = w - pad, y1 = h - pad;
        float cw = x1 - x0, ch = y1 - y0;
        float stroke = strokeDp * getResources().getDisplayMetrics().density;

        switch (type) {
            case PLAY:
                path.reset();
                path.moveTo(x0 + cw * 0.10f, y0);
                path.lineTo(x1, y0 + ch * 0.5f);
                path.lineTo(x0 + cw * 0.10f, y1);
                path.close();
                paint.setStyle(Paint.Style.FILL);
                canvas.drawPath(path, paint);
                break;

            case PAUSE: {
                paint.setStyle(Paint.Style.FILL);
                float bw = cw * 0.26f;
                float gap = cw * 0.16f;
                float left = x0 + (cw - (bw * 2 + gap)) / 2f;
                rect.set(left, y0, left + bw, y1);
                canvas.drawRoundRect(rect, bw * 0.28f, bw * 0.28f, paint);
                rect.set(left + bw + gap, y0, left + bw * 2 + gap, y1);
                canvas.drawRoundRect(rect, bw * 0.28f, bw * 0.28f, paint);
                break;
            }

            case NEXT:
            case PREV: {
                boolean fwd = type == NEXT;
                paint.setStyle(Paint.Style.FILL);
                float barW = cw * 0.14f;
                path.reset();
                if (fwd) {
                    path.moveTo(x0, y0);
                    path.lineTo(x1 - barW - cw * 0.08f, y0 + ch * 0.5f);
                    path.lineTo(x0, y1);
                } else {
                    path.moveTo(x1, y0);
                    path.lineTo(x0 + barW + cw * 0.08f, y0 + ch * 0.5f);
                    path.lineTo(x1, y1);
                }
                path.close();
                canvas.drawPath(path, paint);
                float bx = fwd ? x1 - barW : x0;
                rect.set(bx, y0, bx + barW, y1);
                canvas.drawRoundRect(rect, barW * 0.4f, barW * 0.4f, paint);
                break;
            }

            case BACK:
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(stroke);
                path.reset();
                path.moveTo(x1 - cw * 0.15f, y0);
                path.lineTo(x0 + cw * 0.15f, y0 + ch * 0.5f);
                path.lineTo(x1 - cw * 0.15f, y1);
                canvas.drawPath(path, paint);
                break;

            case CLOSE:
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(stroke);
                canvas.drawLine(x0, y0, x1, y1, paint);
                canvas.drawLine(x1, y0, x0, y1, paint);
                break;

            case SEARCH:
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(stroke);
                float r = Math.min(cw, ch) * 0.34f;
                canvas.drawCircle(x0 + r + cw * 0.03f, y0 + r + ch * 0.03f, r, paint);
                canvas.drawLine(x0 + cw * 0.60f, y0 + ch * 0.60f, x1, y1, paint);
                break;

            case LIST: {
                paint.setStyle(Paint.Style.FILL);
                float th = Math.max(stroke, ch * 0.10f);
                float[] ys = { y0 + ch * 0.12f, y0 + ch * 0.46f, y0 + ch * 0.80f };
                for (int i = 0; i < ys.length; i++) {
                    rect.set(x0 + cw * 0.26f, ys[i], x1, ys[i] + th);
                    canvas.drawRoundRect(rect, th * 0.5f, th * 0.5f, paint);
                    canvas.drawCircle(x0 + cw * 0.10f, ys[i] + th * 0.5f, th * 0.62f, paint);
                }
                break;
            }

            case VOL: {
                paint.setStyle(Paint.Style.FILL);
                path.reset();
                path.moveTo(x0, y0 + ch * 0.34f);
                path.lineTo(x0 + cw * 0.22f, y0 + ch * 0.34f);
                path.lineTo(x0 + cw * 0.46f, y0 + ch * 0.10f);
                path.lineTo(x0 + cw * 0.46f, y1 - ch * 0.10f);
                path.lineTo(x0 + cw * 0.22f, y0 + ch * 0.66f);
                path.lineTo(x0, y0 + ch * 0.66f);
                path.close();
                canvas.drawPath(path, paint);
                paint.setStyle(Paint.Style.STROKE);
                paint.setStrokeWidth(stroke);
                rect.set(x0 + cw * 0.34f, y0 + ch * 0.18f, x1 + cw * 0.18f, y1 - ch * 0.18f);
                canvas.drawArc(rect, -55f, 110f, false, paint);
                break;
            }
        }
    }
}
