/*
 * CoverCache.java -- T9-25: album art for the native player.
 *
 * The cover urls come from the kugou service (imge.kugou.com / c1.kgimg.com). Two levels:
 *   - an LruCache sized for this panel (a handful of 320px covers), and
 *   - a disk cache under files/covers/, so reopening the player does not hit the network.
 * Loading is off the UI thread; the callback always comes back on the main thread.
 */
package com.tgz02.voice;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

final class CoverCache {

    interface Callback {
        /** bitmap == null means "no art" (caller draws its own placeholder) */
        void onCover(String url, Bitmap bitmap);
    }

    private static final LruCache<String, Bitmap> MEM = new LruCache<String, Bitmap>(12 * 1024) {
        @Override protected int sizeOf(String key, Bitmap value) {
            return value == null ? 0 : Math.max(1, value.getByteCount() / 1024);
        }
    };
    private static final ExecutorService POOL = Executors.newFixedThreadPool(2);
    private static final Handler UI = new Handler(Looper.getMainLooper());

    private CoverCache() { }

    static Bitmap memory(String url) {
        return url == null ? null : MEM.get(url);
    }

    static void load(final Context ctx, final String url, final int maxPx, final Callback cb) {
        if (url == null || url.length() == 0) {
            if (cb != null) cb.onCover(url, null);
            return;
        }
        Bitmap hit = MEM.get(url);
        if (hit != null) {
            if (cb != null) cb.onCover(url, hit);
            return;
        }
        final Context app = ctx.getApplicationContext();
        POOL.execute(new Runnable() {
            public void run() {
                Bitmap bmp = fromDisk(app, url, maxPx);
                if (bmp == null) {
                    bmp = fromNetwork(app, url, maxPx);
                }
                if (bmp != null) MEM.put(url, bmp);
                final Bitmap out = bmp;
                UI.post(new Runnable() {
                    public void run() { if (cb != null) cb.onCover(url, out); }
                });
            }
        });
    }

    /* -------------------------------------------------------------- internals */

    private static File diskFile(Context c, String url) {
        File dir = new File(c.getFilesDir(), "covers");
        if (!dir.exists()) dir.mkdirs();
        return new File(dir, md5(url) + ".jpg");
    }

    private static Bitmap fromDisk(Context c, String url, int maxPx) {
        try {
            File f = diskFile(c, url);
            if (!f.exists() || f.length() == 0) return null;
            return decode(f, maxPx);
        } catch (Throwable t) {
            return null;
        }
    }

    private static Bitmap fromNetwork(Context c, String url, int maxPx) {
        HttpURLConnection conn = null;
        InputStream in = null;
        try {
            conn = (HttpURLConnection) new URL(url).openConnection();
            conn.setConnectTimeout(6000);
            conn.setReadTimeout(15000);
            int code = conn.getResponseCode();
            if (code >= 400) return null;
            in = conn.getInputStream();
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[16384];
            int n;
            while ((n = in.read(buf)) > 0) bos.write(buf, 0, n);
            byte[] raw = bos.toByteArray();
            Bitmap bmp = decode(raw, maxPx);
            if (bmp != null) {
                FileOutputStream fos = null;
                try {
                    fos = new FileOutputStream(diskFile(c, url));
                    fos.write(raw);
                } catch (Throwable ignored) {
                } finally {
                    if (fos != null) try { fos.close(); } catch (Throwable ignored) { }
                }
            }
            return bmp;
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) { }
            if (conn != null) try { conn.disconnect(); } catch (Throwable ignored) { }
        }
    }

    private static Bitmap decode(File f, int maxPx) {
        BitmapFactory.Options probe = new BitmapFactory.Options();
        probe.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(f.getAbsolutePath(), probe);
        BitmapFactory.Options opts = new BitmapFactory.Options();
        opts.inSampleSize = sampleFor(probe.outWidth, probe.outHeight, maxPx);
        return BitmapFactory.decodeFile(f.getAbsolutePath(), opts);
    }

    private static Bitmap decode(byte[] raw, int maxPx) {
        BitmapFactory.Options probe = new BitmapFactory.Options();
        probe.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(raw, 0, raw.length, probe);
        BitmapFactory.Options opts = new BitmapFactory.Options();
        opts.inSampleSize = sampleFor(probe.outWidth, probe.outHeight, maxPx);
        return BitmapFactory.decodeByteArray(raw, 0, raw.length, opts);
    }

    private static int sampleFor(int w, int h, int maxPx) {
        int s = 1;
        if (maxPx <= 0 || w <= 0 || h <= 0) return 1;
        while (w / (s * 2) >= maxPx && h / (s * 2) >= maxPx) s *= 2;
        return s;
    }

    static String md5(String s) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] d = md.digest(s.getBytes("UTF-8"));
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < d.length; i++) sb.append(String.format("%02x", d[i]));
            return sb.toString();
        } catch (Throwable t) {
            return Integer.toHexString(s.hashCode());
        }
    }
}
