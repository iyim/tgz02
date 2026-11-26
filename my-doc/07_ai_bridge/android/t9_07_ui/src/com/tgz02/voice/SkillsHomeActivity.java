/*
 * SkillsHomeActivity.java -- T9-14: the V3 skill centre + 5-zone detail template.
 *
 * Two views live in this one activity (in-process handoff, no Intent parsing):
 *   level 0: the skill grid -- enabled row (2 cols, 188dp cards) + not-yet row (3 cols, 116dp)
 *   level 1: skill detail -- alarm / calendar / music / weather / device
 *
 * Skill data unchanged (T9-UI-03): alarms via DataService SQLite, enable flags in DB,
 * music/weather/device are placeholders that say so plainly (never fake availability).
 * Visuals per TG-Z02-UI-V3 docs/02 §6 (gradient containers + isolated RGBA art).
 */
package com.tgz02.voice;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.List;

public class SkillsHomeActivity extends V3Shell {

    /* process-level handoff (consumed once, never parsed from an Intent) */
    static String openSkill = null;

    static final String SKILL_ALARM = "alarm";
    static final String SKILL_CALENDAR = "calendar";

    String detail = null;      // null = grid, otherwise skill id

    static boolean alarmOn = true;
    static boolean calendarOn = true;

    @Override
    String navId() { return "skills"; }

    @Override
    String title() { return detail == null ? "技能中心" : skillName(detail); }

    @Override
    String tag() { return detail == null ? "布丁会做的事" : "技能详情"; }

    @Override
    String crumbParent() { return detail == null ? null : "技能中心"; }

    @Override
    Runnable onCrumb() {
        return new Runnable() { public void run() { detail = null; rebuild(); } };
    }

    @Override
    void buildActions(LinearLayout into) {
        if (detail != null && (SKILL_ALARM.equals(detail) || SKILL_CALENDAR.equals(detail))) {
            final boolean[] st = new boolean[]{ SKILL_ALARM.equals(detail) ? alarmOn : calendarOn };
            into.addView(Ui4.toggle(this, st, new Runnable() {
                public void run() {
                    if (SKILL_ALARM.equals(detail)) alarmOn = st[0]; else calendarOn = st[0];
                    DataService.get(SkillsHomeActivity.this).skillSetEnabled(detail, st[0]);
                    toast(st[0] ? "已启用" : "已停用（语音入口同时关闭）");
                    rebuild();
                }
            }));
        }
    }

    @Override
    View buildBody() { return null; }

    void rebuild()
    {
        if (crumbCur != null) crumbCur.setText(title());
        if (hdrTitle != null) hdrTitle.setText(title());
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
        /* enabled: 2 equal cards, 188dp */
        LinearLayout onRow = new LinearLayout(this);
        onRow.setOrientation(LinearLayout.HORIZONTAL);
        onRow.addView(skillCard("illus_alarm", "闹钟", SKILL_ALARM, true,
                "说「明天七点叫我起床」"));
        onRow.addView(skillCard("illus_calendar", "日程", SKILL_CALENDAR, true,
                "问「今天有什么安排」"));
        body.addView(onRow);

        body.addView(sectionLabel("还没启用"));
        LinearLayout offRow = new LinearLayout(this);
        offRow.setOrientation(LinearLayout.HORIZONTAL);
        offRow.addView(offCard("illus_music", "音乐", "待接入", "接入曲库后即可使用"));
        offRow.addView(offCard("illus_weather", "天气", "规划中", "做好之后会出现在这里"));
        offRow.addView(offCard("illus_device", "设备控制", "规划中", "音量、亮度等本机能力"));
        body.addView(offRow);

        LinearLayout note = Ui4.banner(this,
                "闹钟、日程已经可用；其余技能做好之前不会假装能用",
                Ui4.accentW(this), 0xFF1E62C8);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 14);
        body.addView(note, nlp);
    }

    LinearLayout.LayoutParams gridChild() {
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f);
        return lp;
    }

    /** enabled skill card: gradient container, art right, name+desc+badge left, 188dp */
    View skillCard(String art, final String name, final String id, boolean on, String desc)
    {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.HORIZONTAL);
        c.setBackground(Ui4.grad(this, Ui4.skillGrad(this, id), Ui4.R_L));
        c.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 14), Ui4.dp(this, 16), Ui4.dp(this, 14));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, Ui4.dp(this, 188), 1f);
        if (c.getParent() != null) { /* noop */ }
        lp.rightMargin = Ui4.dp(this, 14);

        LinearLayout txt = new LinearLayout(this);
        txt.setOrientation(LinearLayout.VERTICAL);
        txt.setGravity(Gravity.TOP);
        TextView badge = Ui4.textBold(this, "已启用", Ui4.T_CAP, 0xFF14803E);
        badge.setBackground(Ui4.round(this, Ui4.okW(this), 9f));
        badge.setPadding(Ui4.dp(this, 11), Ui4.dp(this, 3), Ui4.dp(this, 11), Ui4.dp(this, 3));
        LinearLayout.LayoutParams blp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        blp.bottomMargin = Ui4.dp(this, 10);
        txt.addView(badge, blp);
        TextView t = Ui4.textBold(this, name, Ui4.T_CARD, 0xFFFFFFFF);
        t.setPadding(0, 0, 0, 0);
        txt.addView(t);
        TextView d = Ui4.text(this, desc, Ui4.T_CAP, 0xF2FFFFFF);
        d.setPadding(0, Ui4.dp(this, 2), 0, 0);
        txt.addView(d);
        /* push the text block toward the vertical middle of the 188dp card */
        txt.setPadding(0, Ui4.dp(this, 26), 0, 0);
        c.addView(txt, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));

        ImageView iv = Ui4.art(this, art, 132);
        iv.setAlpha(0.95f);
        c.addView(iv, new LinearLayout.LayoutParams(Ui4.dp(this, 132), Ui4.dp(this, 132)));

        c.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { detail = id; rebuild(); }
        });
        c.setLayoutParams(lp);
        return c;
    }

    /** not-yet skill card: gradient dimmed, 116dp, still clickable into detail */
    View offCard(String art, final String name, final String tag, final String desc)
    {
        final String id = name.equals("音乐") ? "music"
                : name.equals("天气") ? "weather" : "device";
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(Ui4.grad(this, Ui4.skillGrad(this, id), Ui4.R_L));
        c.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 10), Ui4.dp(this, 14), Ui4.dp(this, 10));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(0, Ui4.dp(this, 116), 1f);
        if (!name.equals("设备控制")) lp.rightMargin = Ui4.dp(this, 14);

        LinearLayout top = new LinearLayout(this);
        top.setOrientation(LinearLayout.HORIZONTAL);
        top.setGravity(Gravity.CENTER_VERTICAL);
        TextView tg = Ui4.textBold(this, tag, Ui4.T_CAP, Ui4.text2(this));
        tg.setBackground(Ui4.round(this, 0xF2FFFFFF, 9f));
        tg.setPadding(Ui4.dp(this, 9), Ui4.dp(this, 2), Ui4.dp(this, 9), Ui4.dp(this, 2));
        top.addView(tg);
        c.addView(top);

        TextView t = Ui4.textBold(this, name, Ui4.T_ACTION, 0xFF3A3040);
        t.setAlpha(0.75f);
        c.addView(t);
        c.addView(Ui4.text(this, desc, Ui4.T_CAP, 0x993A3040));

        ImageView iv = Ui4.art(this, art, 92);
        iv.setAlpha(0.55f);
        LinearLayout holder = new LinearLayout(this);
        holder.setOrientation(LinearLayout.HORIZONTAL);
        holder.setGravity(Gravity.END | Gravity.BOTTOM);
        holder.addView(iv, new LinearLayout.LayoutParams(Ui4.dp(this, 92), Ui4.dp(this, 92)));
        c.addView(holder, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));

        c.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { detail = id; rebuild(); }
        });
        c.setLayoutParams(lp);
        return c;
    }

    /* ---------------------------------------------------------------- detail */

    void buildDetail(String id)
    {
        buildDetailHeader(id);
        if (SKILL_ALARM.equals(id))      buildAlarm();
        else if (SKILL_CALENDAR.equals(id)) buildCalendar();
        else                              buildPlaceholder(id);
    }

    /** §detail-5 zone ①: state pill + voice helper line */
    void buildDetailHeader(String id)
    {
        LinearLayout hdr = new LinearLayout(this);
        hdr.setOrientation(LinearLayout.HORIZONTAL);
        hdr.setGravity(Gravity.CENTER_VERTICAL);
        boolean enabled = SKILL_ALARM.equals(id) || SKILL_CALENDAR.equals(id);
        LinearLayout p;
        if (enabled) {
            p = Ui4.pill(this, "已启用 · 语音可用", Ui4.okW(this), 0xFF14803E);
        } else if ("music".equals(id)) {
            p = Ui4.pill(this, "待接入 · 暂不支持语音", Ui4.warnW(this), 0xFFB57708);
        } else {
            p = Ui4.pill(this, "规划中 · 暂不支持语音", Ui4.surface2(this), Ui4.text2(this));
        }
        hdr.addView(p);
        String help = enabled
                ? (SKILL_ALARM.equals(id) ? "说「明天七点叫我起床」" : "问「今天有什么安排」")
                : "暂不支持语音 · 接入后才会有语音入口";
        TextView hp = Ui4.text(this, help, Ui4.T_CAP, Ui4.text2(this));
        hp.setPadding(Ui4.dp(this, 14), 0, 0, 0);
        hdr.addView(hp, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui4.dp(this, 10);
        body.addView(hdr, lp);
    }

    void buildAlarm()
    {
        /* zone ② main: alarm list or empty state */
        LinearLayout list = Ui4.card(this);
        list.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        List<DataService.Alarm> alarms = DataService.get(this).alarmList();
        if (alarms.isEmpty()) {
            LinearLayout empty = new LinearLayout(this);
            empty.setOrientation(LinearLayout.VERTICAL);
            empty.setGravity(Gravity.CENTER);
            empty.setPadding(0, Ui4.dp(this, 20), 0, Ui4.dp(this, 16));
            ImageView iv = Ui4.art(this, "illus_alarm", 110);
            empty.addView(iv);
            TextView t = Ui4.textBold(this, "还没有闹钟", Ui4.T_BODY, Ui4.text2(this));
            t.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 2));
            empty.addView(t);
            empty.addView(Ui4.text(this, "点右下角「新增闹钟」，或直接对布丁说",
                    Ui4.T_CAP, Ui4.text3(this)));
            list.addView(empty);
        }
        for (int i = 0; i < alarms.size(); i++) {
            final DataService.Alarm a = alarms.get(i);
            LinearLayout r = new LinearLayout(this);
            r.setOrientation(LinearLayout.HORIZONTAL);
            r.setGravity(Gravity.CENTER_VERTICAL);
            r.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 8));
            r.setMinimumHeight(Ui4.dp(this, 58));
            TextView time = Ui4.textBold(this, a.time, Ui4.T_H1,
                    a.enabled ? Ui4.text(this) : Ui4.text3(this));
            time.setLayoutParams(new LinearLayout.LayoutParams(Ui4.dp(this, 130),
                    ViewGroup.LayoutParams.WRAP_CONTENT));
            r.addView(time);
            r.addView(Ui4.text(this, a.label, Ui4.T_BODY_SM,
                    a.enabled ? Ui4.text(this) : Ui4.text3(this)),
                    new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
            final boolean[] st = new boolean[]{ a.enabled };
            r.addView(Ui4.toggle(this, st, new Runnable() {
                public void run() {
                    DataService.get(SkillsHomeActivity.this).alarmSetEnabled(a.id, st[0]);
                }
            }));
            list.addView(r);
        }
        body.addView(list);

        /* zone ④ status hint */
        LinearLayout note = Ui4.banner(this,
                "闹钟由本机时钟触发 · 停用技能或关机时不会响 · 本页数据为设备真实闹钟",
                Ui4.accentW(this), 0xFF1E62C8);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 12);
        body.addView(note, nlp);

        /* zone ⑤ bottom primary action */
        LinearLayout foot = new LinearLayout(this);
        foot.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        LinearLayout add = new LinearLayout(this);
        add.setOrientation(LinearLayout.HORIZONTAL);
        add.setGravity(Gravity.CENTER_VERTICAL);
        add.setBackground(Ui4.grad(this, new int[]{Ui4.primary(this), Ui4.primary2(this)}, Ui4.R_S));
        add.setPadding(Ui4.dp(this, 20), Ui4.dp(this, 10), Ui4.dp(this, 20), Ui4.dp(this, 10));
        add.addView(Ui4.icon(this, Ui4.I_PLUS, 16, 0xFFFFFFFF));
        TextView addT = Ui4.textBold(this, " 新增闹钟", Ui4.T_BODY_SM, 0xFFFFFFFF);
        add.addView(addT);
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { addAlarmDialog(); }
        });
        foot.addView(add);
        LinearLayout.LayoutParams flp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        flp.topMargin = Ui4.dp(this, 10);
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
        form.setPadding(Ui4.dp(this, 20), Ui4.dp(this, 10), Ui4.dp(this, 20), 0);
        form.addView(Ui4.text(this, "时间（HH:MM）", Ui4.T_CAP, Ui4.text2(this)));
        form.addView(time);
        form.addView(Ui4.text(this, "名字", Ui4.T_CAP, Ui4.text2(this)));
        form.addView(label);

        new AlertDialog.Builder(this)
                .setTitle("新增闹钟")
                .setView(form)
                .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        String t = time.getText().toString().trim();
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
        LinearLayout list = Ui4.card(this);
        list.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        TextView day = Ui4.textBold(this, "今天 · 11 月 25 日", Ui4.T_AUX, Ui4.text2(this));
        day.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 4));
        list.addView(day);
        list.addView(eventRow("15:00", "项目评审 · 会议室 A"));
        list.addView(eventRow("19:30", "健身 · 每周一、三"));
        body.addView(list);
        LinearLayout note = Ui4.banner(this,
                "日程数据接入安排在 T10；本页先承接视觉与语音入口",
                Ui4.warnW(this), 0xFFB57708);
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 12);
        body.addView(note, nlp);
    }

    LinearLayout eventRow(String time, String what)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui4.dp(this, 10), 0, Ui4.dp(this, 10));
        r.setMinimumHeight(Ui4.dp(this, 58));
        TextView tv = Ui4.textBold(this, time, Ui4.T_CARD, Ui4.text(this));
        tv.setLayoutParams(new LinearLayout.LayoutParams(Ui4.dp(this, 130),
                ViewGroup.LayoutParams.WRAP_CONTENT));
        r.addView(tv);
        r.addView(Ui4.text(this, what, Ui4.T_BODY_SM, Ui4.text2(this)),
                new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        return r;
    }

    void buildPlaceholder(String id)
    {
        LinearLayout c = Ui4.card(this);
        c.setGravity(Gravity.CENTER);
        LinearLayout empty = new LinearLayout(this);
        empty.setOrientation(LinearLayout.VERTICAL);
        empty.setGravity(Gravity.CENTER);
        empty.setPadding(0, Ui4.dp(this, 24), 0, Ui4.dp(this, 24));
        ImageView iv = Ui4.art(this, "illus_" + id, 110);
        empty.addView(iv);
        TextView t = Ui4.textBold(this, "这个技能还在路上", Ui4.T_BODY, Ui4.text2(this));
        t.setPadding(0, Ui4.dp(this, 10), 0, Ui4.dp(this, 2));
        empty.addView(t);
        empty.addView(Ui4.text(this,
                "music".equals(id) ? "接入曲库后即可使用" : "做好之后会出现在这里",
                Ui4.T_CAP, Ui4.text3(this)));
        c.addView(empty);
        body.addView(c);
        LinearLayout note = Ui4.banner(this,
                "规划中 · 现在不会假装能用", Ui4.surface2(this), Ui4.text2(this));
        LinearLayout.LayoutParams nlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        nlp.topMargin = Ui4.dp(this, 12);
        body.addView(note, nlp);
    }

    TextView sectionLabel(String s)
    {
        TextView t = Ui4.textBold(this, s, Ui4.T_AUX, Ui4.text2(this));
        t.setPadding(0, Ui4.dp(this, 12), 0, Ui4.dp(this, 6));
        return t;
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
