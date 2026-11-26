/*
 * SkillsHomeActivity.java -- T9-UI-02: the V2 skill centre plus in-process skill detail.
 *
 * Two views live in this one activity:
 *   level 0: the storybook skill grid (enabled / not-yet sections)
 *   level 1: a skill detail page (alarm / calendar / music / weather / device)
 *
 * Navigation discipline (kept from T9-07R1): no Intent is parsed here.  VoiceHomeActivity
 * opens a skill by writing the static handoff below and then starting this activity:
 *
 *     SkillsHomeActivity.openSkill = "alarm";
 *     startActivity(new Intent(..., SkillsHomeActivity.class));
 *
 * Skill data (T9-UI-03): alarms live in the unified SQLite DB via DataService (the old
 * skills_alarms.json was migrated once and retired); skill enable flags live in the DB too.
 * Music / weather / device are placeholders and say so plainly.
 */
package com.tgz02.voice;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.ArrayList;
import java.util.List;

public class SkillsHomeActivity extends V2Shell {

    /* process-level handoff (consumed once, never parsed from an Intent) */
    static String openSkill = null;

    static final String SKILL_ALARM = "alarm";
    static final String SKILL_CALENDAR = "calendar";

    String detail = null;      // null = grid, otherwise skill id

    /* local skill state (files/skills.json); alarm + calendar ship enabled */
    static boolean alarmOn = true;
    static boolean calendarOn = true;

    @Override
    String navId() { return "skills"; }

    @Override
    String title() { return detail == null ? "技能中心" : skillName(detail); }

    @Override
    String crumbParent() { return detail == null ? null : "技能中心"; }

    @Override
    Runnable onCrumb() {
        return new Runnable() { public void run() { detail = null; rebuild(); } };
    }

    @Override
    void buildActions(LinearLayout into) {
        if (detail == null) {
            into.addView(Ui3.text(this, "", 1f, 0));    // spacer via weight
        } else if (SKILL_ALARM.equals(detail) || SKILL_CALENDAR.equals(detail)) {
            final boolean[] st = new boolean[]{ SKILL_ALARM.equals(detail) ? alarmOn : calendarOn };
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            into.addView(Ui3.toggle(this, st, new Runnable() {
                public void run() {
                    if (SKILL_ALARM.equals(detail)) alarmOn = st[0]; else calendarOn = st[0];
                    DataService.get(SkillsHomeActivity.this).skillSetEnabled(detail, st[0]);
                    toast(st[0] ? "已启用" : "已停用（语音入口同时关闭）");
                    rebuild();
                }
            }), lp);
        }
    }

    @Override
    View buildBody() { return null; }    // replaced by rebuild()

    void rebuild()
    {
        hdrTitle.setText(title());
        buildNav();          // refresh highlight + actions
        buildActions(hdrActions);
        body.removeAllViews();
        if (detail == null) buildGrid(); else buildDetail(detail);
    }

    @Override
    void onShellReady()
    {
        if (openSkill != null) { detail = openSkill; openSkill = null; }
        rebuild();
    }

    /* ------------------------------------------------------------------ grid */

    void buildGrid()
    {
        LinearLayout onCard = card();
        onCard.addView(heroImage("illus_alarm", 150));
        LinearLayout onMeta = metaRow("闹钟", true, "说「明天七点叫我起床」");
        onCard.addView(onMeta);
        onCard.setOnClickListener(swapTo(SKILL_ALARM));   // whole card is the touch target
        body.addView(onCard);

        LinearLayout calCard = card();
        calCard.addView(heroImage("illus_calendar", 150));
        LinearLayout calMeta = metaRow("日程", true, "问「今天有什么安排」");
        calCard.addView(calMeta);
        calCard.setOnClickListener(swapTo(SKILL_CALENDAR));
        body.addView(calCard);

        body.addView(sectionLabel("还没启用"));
        body.addView(offCard("illus_music", "音乐", "待接入", "接入曲库后即可使用",
                new View.OnClickListener() {
                    public void onClick(View v) { detail = "music"; rebuild(); }
                }));
        body.addView(offCard("illus_weather", "天气", "规划中", "做好之后会出现在这里", null));
        body.addView(offCard("illus_device", "设备控制", "规划中", "音量、亮度等本机能力", null));

        LinearLayout note = banner("闹钟、日程已经可用；其余技能做好之前不会假装能用",
                Ui3.accentW(this), 0xFF1E62C8);
        body.addView(note);
    }

    View.OnClickListener swapTo(final String id)
    {
        return new View.OnClickListener() {
            public void onClick(View v) { detail = id; rebuild(); }
        };
    }

    LinearLayout metaRow(String name, boolean enabled, String desc)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui3.dp(this, 10), 0, Ui3.dp(this, 6));
        r.addView(Ui3.textBold(this, name, 22f, Ui3.text(this)));
        TextView p = pillTag(enabled ? "已启用" : "未启用",
                enabled ? Ui3.okW(this) : Ui3.surface2(this),
                enabled ? 0xFF14803E : Ui3.text2(this));
        LinearLayout.LayoutParams plp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        plp.leftMargin = Ui3.dp(this, 10);
        r.addView(p, plp);
        TextView chev = Ui3.text(this, "›", 24f, Ui3.text3(this));
        chev.setPadding(0, 0, Ui3.dp(this, 4), 0);
        r.addView(chev, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        TextView d = Ui3.text(this, desc, 15f, Ui3.text2(this));
        r.addView(d, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT,
                ViewGroup.LayoutParams.WRAP_CONTENT));
        return r;
    }

    LinearLayout offCard(String asset, String name, String tag, String desc,
                         View.OnClickListener open)
    {
        LinearLayout c = card();
        LinearLayout hero = new LinearLayout(this);
        hero.setOrientation(LinearLayout.VERTICAL);
        hero.setGravity(Gravity.CENTER);
        android.graphics.Bitmap b = Ui3.bmp(this, asset);
        if (b != null) {
            android.widget.ImageView iv = new android.widget.ImageView(this);
            iv.setImageBitmap(b);
            iv.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            iv.setAlpha(0.42f);
            hero.addView(iv, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 120)));
        }
        TextView t = pillTag(tag, 0xF2FFFFFF, Ui3.text2(this));
        hero.addView(t, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        c.addView(hero);
        LinearLayout m = metaRow(name, false, desc);
        if (open != null) {
            m.setOnClickListener(open);
            m.addView(textBtn("看看", new Runnable() { public void run() { } }), 0);
        }
        c.addView(m);
        return c;
    }

    /* ---------------------------------------------------------------- detail */

    void buildDetail(String id)
    {
        if (SKILL_ALARM.equals(id))      buildAlarm();
        else if (SKILL_CALENDAR.equals(id)) buildCalendar();
        else                              buildPlaceholder(id);
    }

    void buildAlarm()
    {
        boolean on = alarmOn;
        LinearLayout hero = heroWrap("illus_alarm",
                on ? "已启用 · 语音可用" : "已停用 · 语音入口关闭");
        body.addView(hero);

        LinearLayout list = card();
        List<DataService.Alarm> alarms = DataService.get(this).alarmList();
        if (alarms.isEmpty()) {
            list.addView(kvRow("（空）", "还没有闹钟，点右下角新增", Ui3.text2(this)));
        }
        for (int i = 0; i < alarms.size(); i++) {
            final DataService.Alarm a = alarms.get(i);
            LinearLayout r = new LinearLayout(this);
            r.setOrientation(LinearLayout.HORIZONTAL);
            r.setGravity(Gravity.CENTER_VERTICAL);
            r.setPadding(0, Ui3.dp(this, 8), 0, Ui3.dp(this, 8));
            r.setMinimumHeight(Ui3.dp(this, 64));
            TextView time = Ui3.textBold(this, a.time, 34f, a.enabled ? Ui3.text(this) : Ui3.text3(this));
            time.setLayoutParams(new LinearLayout.LayoutParams(Ui3.dp(this, 130),
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            r.addView(time);
            r.addView(Ui3.text(this, a.label, 17f, a.enabled ? Ui3.text(this) : Ui3.text3(this)),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            final boolean[] st = new boolean[]{ a.enabled };
            r.addView(Ui3.toggle(this, st, new Runnable() {
                public void run() {
                    DataService.get(SkillsHomeActivity.this).alarmSetEnabled(a.id, st[0]);
                }
            }));
            list.addView(r);
        }
        body.addView(list);
        body.addView(banner("闹钟由本机时钟触发 · 停用技能或关机时不会响 · 本页数据为设备真实闹钟",
                Ui3.accentW(this), 0xFF1E62C8));

        LinearLayout foot = new LinearLayout(this);
        foot.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        TextView add = Ui3.textBold(this, "＋ 新增闹钟", 17f, 0xFFFFFFFF);
        add.setGravity(Gravity.CENTER);
        add.setBackground(Ui3.round(this, Ui3.primary(this), Ui3.R_S));
        add.setPadding(Ui3.dp(this, 20), Ui3.dp(this, 10), Ui3.dp(this, 20), Ui3.dp(this, 10));
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { addAlarmDialog(); }
        });
        foot.addView(add);
        LinearLayout.LayoutParams flp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        flp.topMargin = Ui3.dp(this, 8);
        body.addView(foot, flp);
    }

    void addAlarmDialog()
    {
        final EditText time = new EditText(this);
        time.setHint("07:00");
        time.setTextSize(18f);
        final EditText label = new EditText(this);
        label.setHint("起床");
        label.setTextSize(18f);
        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui3.dp(this, 20), Ui3.dp(this, 10), Ui3.dp(this, 20), 0);
        form.addView(Ui3.text(this, "时间（HH:MM）", 15f, Ui3.text2(this)));
        form.addView(time);
        form.addView(Ui3.text(this, "名字", 15f, Ui3.text2(this)));
        form.addView(label);

        new AlertDialog.Builder(this)
                .setTitle("新增闹钟")
                .setView(form)
                .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        String t = time.getText().toString().trim();
                        /* kids type digits: accept "0630" and normalize to "06:30" */
                        if (t.matches("^([01]?\\d|2[0-3])[0-5]\\d$")) {
                            String hh = t.length() == 4 ? t.substring(0, 2) : ("0" + t.substring(0, 1));
                            t = hh + ":" + t.substring(t.length() - 2);
                        }
                        if (!t.matches("^([01]\\d|2[0-3]):[0-5]\\d$")) {
                            toast("时间格式要像 07:00"); return;
                        }
                        DataService.get(SkillsHomeActivity.this)
                                .alarmAdd(t, label.getText().toString().trim(), true);
                        toast("已保存闹钟 " + t);
                        rebuild();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    void buildCalendar()
    {
        boolean on = calendarOn;
        LinearLayout hero = heroWrap("illus_calendar",
                on ? "已启用 · 语音可用" : "已停用 · 语音入口关闭");
        body.addView(hero);
        LinearLayout list = card();
        list.addView(kvRow("今天 · 11 月 25 日", "", Ui3.text(this)));
        list.addView(kvRow("15:00", "项目评审 · 会议室 A", Ui3.text(this)));
        list.addView(kvRow("19:30", "健身 · 每周一、三", Ui3.text(this)));
        body.addView(list);
        body.addView(banner("日程数据接入安排在 T10；本页先承接视觉与语音入口",
                Ui3.warnW(this), 0xFFB57708));
    }

    void buildPlaceholder(String id)
    {
        LinearLayout hero = heroWrap("illus_" + id, "还没做好 · 做好后会出现在这里");
        body.addView(hero);
        LinearLayout c = card();
        c.setGravity(Gravity.CENTER);
        TextView t = Ui3.text(this, "这个技能还在路上", 19f, Ui3.text2(this));
        t.setGravity(Gravity.CENTER);
        t.setPadding(0, Ui3.dp(this, 30), 0, Ui3.dp(this, 8));
        c.addView(t);
        body.addView(c);
    }

    /** hero banner with the illustration + caption ribbon */
    LinearLayout heroWrap(String asset, String caption)
    {
        LinearLayout w = new LinearLayout(this);
        w.setOrientation(LinearLayout.VERTICAL);
        android.graphics.Bitmap b = Ui3.bmp(this, asset);
        if (b != null) {
            android.widget.ImageView iv = new android.widget.ImageView(this);
            iv.setImageBitmap(b);
            /* T9-13: the assets are whole rounded cards now; CENTER_CROP would zoom into
             * the middle of the illustration, so show the full artwork with FIT_CENTER. */
            iv.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            iv.setAlpha(0.9f);
            w.addView(iv, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 150)));
        }
        TextView cap = Ui3.textBold(this, caption, 15f,
                Ui3.isCalm() ? Ui3.text2(this) : 0xFF3A3040);
        cap.setBackground(Ui3.round(this, 0xF2FFFFFF, Ui3.R_PILL));
        cap.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 6), Ui3.dp(this, 16), Ui3.dp(this, 6));
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.gravity = Gravity.END;
        clp.topMargin = Ui3.dp(this, -34);
        clp.rightMargin = Ui3.dp(this, 14);
        w.addView(cap, clp);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 14);
        w.setLayoutParams(lp);
        return w;
    }

    String skillName(String id)
    {
        if (SKILL_ALARM.equals(id)) return "闹钟";
        if (SKILL_CALENDAR.equals(id)) return "日程";
        if ("music".equals(id)) return "音乐";
        if ("weather".equals(id)) return "天气";
        if ("device".equals(id)) return "设备控制";
        return "技能";
    }
}
