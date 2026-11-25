/*
 * SkillRegistry.java -- T9-UI-02: the seed of the T10 skill registry.
 *
 * One place that knows which skills exist and whether each is enabled.  The V2 skill
 * centre reads from here; adding a skill in T10 means adding an entry here plus its own
 * detail view -- never a new navbar item or a new Activity.
 */
package com.tgz02.voice;

final class SkillRegistry {

    static final String[] IDS = { "alarm", "calendar", "music", "weather", "device" };
    static final String[] NAMES = { "闹钟", "日程", "音乐", "天气", "设备控制" };

    private SkillRegistry() { }

    static boolean enabled(String id) { return SkillStore.enabled(id); }

    static void setEnabled(String id, boolean on) { SkillStore.setEnabled(id, on); }

    static int count() { return IDS.length; }

    static String name(String id)
    {
        for (int i = 0; i < IDS.length; i++) if (IDS[i].equals(id)) return NAMES[i];
        return id;
    }
}
