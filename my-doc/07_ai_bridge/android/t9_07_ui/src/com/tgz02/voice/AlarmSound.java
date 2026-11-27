/*
 * AlarmSound.java -- T9-16 R6: 闹钟铃声清单与选择。
 *
 * 铃声来源（全部本机，不联网、不依赖原厂云资源）：
 *   1) 系统默认闹钟铃声（RingtoneManager.TYPE_ALARM）
 *   2) /system/media/audio/alarms/*.ogg   系统内置（本机 5 个）
 *   3) /sdcard/Alarms/*                    用户自己放进去的 mp3/ogg/wav/m4a/aac
 *
 * 选择结果存在 SharedPreferences（uri + title 各一份：title 只用于界面显示，
 * 避免每次都去反查 RingtoneManager）。
 *
 * 读取 /sdcard 需要 READ_EXTERNAL_STORAGE（API 27 属危险权限）；权限没给时
 * scan() 只是列不出用户文件，响铃侧 MediaPlayer.create 会失败并回退系统铃声，
 * 不会出现"响铃没声音"。
 */
package com.tgz02.voice;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Environment;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

final class AlarmSound {

    private static final String PREF = "tgz02_alarm_sound";
    private static final String KEY_URI = "uri";
    private static final String KEY_TITLE = "title";

    static final String DEFAULT_TITLE = "系统默认闹钟铃声";

    /** 一条可选的铃声 */
    static final class Entry {
        String title;
        Uri uri;
        boolean system;      /* true = 系统默认项 */
    }

    private AlarmSound() { }

    static List<Entry> list(Context c)
    {
        /* 先扫文件，再拼默认项：本机若没设过系统闹钟铃声（settings 里 alarm_alert=null），
         * 默认项就直接指向系统内置的第一个铃声文件，否则"系统默认"会是点了没声的死项。 */
        List<Entry> files = new ArrayList<Entry>();
        scan(new File("/system/media/audio/alarms"), files);
        File ext = Environment.getExternalStorageDirectory();
        if (ext != null) scan(new File(ext, "Alarms"), files);

        List<Entry> out = new ArrayList<Entry>();
        Entry def = new Entry();
        def.title = DEFAULT_TITLE;
        Uri actual = null;
        try {
            actual = RingtoneManager.getActualDefaultRingtoneUri(c, RingtoneManager.TYPE_ALARM);
        } catch (Throwable ignored) {
        }
        if (actual == null) {
            for (int i = 0; i < files.size(); i++) {
                Entry f = files.get(i);
                if (f.uri != null && f.uri.toString().contains("/system/media/audio/alarms/")) {
                    actual = f.uri;
                    def.title = DEFAULT_TITLE + "（本机未设置，用 " + f.title + "）";
                    break;
                }
            }
        }
        def.uri = actual;
        def.system = true;
        out.add(def);
        out.addAll(files);
        return out;
    }

    private static void scan(File dir, List<Entry> out)
    {
        if (dir == null || !dir.isDirectory()) return;
        File[] fs;
        try { fs = dir.listFiles(); } catch (Throwable t) { return; }
        if (fs == null) return;
        Arrays.sort(fs);
        for (File f : fs) {
            if (f == null || !f.isFile()) continue;
            String n = f.getName().toLowerCase();
            if (!(n.endsWith(".ogg") || n.endsWith(".mp3") || n.endsWith(".wav")
                    || n.endsWith(".m4a") || n.endsWith(".aac"))) continue;
            Entry e = new Entry();
            e.title = f.getName();
            e.uri = Uri.fromFile(f);
            out.add(e);
        }
    }

    static SharedPreferences prefs(Context c)
    {
        return c.getSharedPreferences(PREF, Context.MODE_PRIVATE);
    }

    /** 当前选中的铃声；未选过返回 null（= 走系统默认） */
    static Uri selected(Context c)
    {
        String s = prefs(c).getString(KEY_URI, "");
        if (s == null || s.length() == 0) return null;
        try { return Uri.parse(s); } catch (Throwable t) { return null; }
    }

    static String selectedTitle(Context c)
    {
        String s = prefs(c).getString(KEY_TITLE, "");
        return (s == null || s.length() == 0) ? DEFAULT_TITLE : s;
    }

    static void select(Context c, Entry e)
    {
        prefs(c).edit()
                .putString(KEY_URI, e.uri == null ? "" : e.uri.toString())
                .putString(KEY_TITLE, e.title)
                .apply();
    }

    /** 响铃用：选中项（可能为 null，调用方自行回退系统默认） */
    static Uri resolve(Context c)
    {
        Uri u = selected(c);
        if (u == null) return null;
        /* file:// 的选中项可能被用户删了，这里先探一下再交给 MediaPlayer */
        if ("file".equals(u.getScheme())) {
            String p = u.getPath();
            if (p == null || !new File(p).isFile()) return null;
        }
        return u;
    }
}
