/*
 * SkillStore.java -- T9-UI-02: minimal real storage for the first two skills.
 *
 * alarms:  files/skills_alarms.json   (real data the alarm dispatcher will read in T10)
 * skills:  files/skills.json          (enabled flags; SkillRegistry reads this)
 *
 * Plain JSON, app-private, tmp+fsync+rename writes -- same discipline as ModelStore.
 */
package com.tgz02.voice;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

final class SkillStore {

    static final String ALARMS_PATH = "/data/data/com.tgz02.voice/files/skills_alarms.json";
    static final String SKILLS_PATH = "/data/data/com.tgz02.voice/files/skills.json";

    static final class Alarm {
        String time = "";
        String label = "";
        boolean on = true;
    }

    private SkillStore() { }

    /* ------------------------------------------------------------------ alarms */

    static List<Alarm> loadAlarms()
    {
        List<Alarm> out = new ArrayList<Alarm>();
        String raw = read(ALARMS_PATH);
        if (raw == null || raw.length() == 0) return out;
        try {
            JSONArray arr = new JSONObject(raw).optJSONArray("alarms");
            if (arr == null) return out;
            for (int i = 0; i < arr.length(); i++) {
                JSONObject o = arr.optJSONObject(i);
                if (o == null) continue;
                Alarm a = new Alarm();
                a.time = o.optString("time", "");
                a.label = o.optString("label", "");
                a.on = o.optBoolean("on", true);
                if (a.time.length() > 0) out.add(a);
            }
        } catch (Throwable ignored) { }
        return out;
    }

    static boolean saveAlarms(List<Alarm> alarms)
    {
        try {
            JSONObject root = new JSONObject();
            root.put("v", 1);
            JSONArray arr = new JSONArray();
            for (int i = 0; i < alarms.size(); i++) {
                Alarm a = alarms.get(i);
                JSONObject o = new JSONObject();
                o.put("time", a.time);
                o.put("label", a.label);
                o.put("on", a.on);
                arr.put(o);
            }
            root.put("alarms", arr);
            return write(ALARMS_PATH, root.toString());
        } catch (Throwable t) {
            return false;
        }
    }

    static boolean addAlarm(String time, String label, boolean on)
    {
        List<Alarm> list = loadAlarms();
        Alarm a = new Alarm();
        a.time = time;
        a.label = label == null ? "" : label;
        a.on = on;
        list.add(a);
        return saveAlarms(list);
    }

    static void setOn(int index, boolean on)
    {
        List<Alarm> list = loadAlarms();
        if (index < 0 || index >= list.size()) return;
        list.get(index).on = on;
        saveAlarms(list);
    }

    /* ------------------------------------------------------------------ skills */

    /** enabled flags for the skill centre; default true for the two shipped skills */
    static boolean enabled(String id)
    {
        String raw = read(SKILLS_PATH);
        if (raw == null || raw.length() == 0) return true;
        try {
            JSONObject o = new JSONObject(raw).optJSONObject("skills");
            if (o == null) return true;
            JSONObject s = o.optJSONObject(id);
            return s == null ? true : s.optBoolean("enabled", true);
        } catch (Throwable t) {
            return true;
        }
    }

    static void setEnabled(String id, boolean on)
    {
        try {
            JSONObject root;
            String raw = read(SKILLS_PATH);
            if (raw != null && raw.length() > 0) {
                root = new JSONObject(raw);
            } else {
                root = new JSONObject();
                root.put("v", 1);
                root.put("skills", new JSONObject());
            }
            JSONObject skills = root.optJSONObject("skills");
            if (skills == null) { skills = new JSONObject(); root.put("skills", skills); }
            JSONObject s = skills.optJSONObject(id);
            if (s == null) { s = new JSONObject(); skills.put(id, s); }
            s.put("enabled", on);
            write(SKILLS_PATH, root.toString());
        } catch (Throwable ignored) { }
    }

    /* ------------------------------------------------------------------- io */

    private static String read(String path)
    {
        try {
            File f = new File(path);
            if (!f.isFile() || !f.canRead()) return null;
            FileInputStream in = new FileInputStream(f);
            try {
                byte[] b = new byte[(int) f.length()];
                int n = in.read(b);
                return n <= 0 ? null : new String(b, 0, n, "UTF-8");
            } finally {
                in.close();
            }
        } catch (Throwable t) {
            return null;
        }
    }

    private static boolean write(String path, String text)
    {
        try {
            File f = new File(path);
            File dir = f.getParentFile();
            if (dir != null && !dir.isDirectory() && !dir.mkdirs()) return false;
            File tmp = new File(dir, "." + f.getName() + ".tmp");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(text.getBytes("UTF-8"));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(f)) { tmp.delete(); return false; }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }
}
