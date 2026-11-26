/*
 * MemoryCenterActivity.java -- T9-14: the V3 memory centre.
 *
 * Backed by the unified SQLite DB (tgz02.db, table memory_items) through DataService --
 * no demo memories, no JSON side-files, no direct SQL here. Every mutation is
 * immediately visible and republished to the worker snapshot (memory.public.json).
 *
 * V3 layout (docs/02 §3.3): left column = memory hero (gradient) + 2x2 category cards;
 * right column = section lists (pending / active) + danger zone. All DB logic unchanged.
 */
package com.tgz02.voice;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import java.util.List;

public class MemoryCenterActivity extends V3Shell {

    private List<DataService.Memory> items;

    @Override
    String navId() { return "memory"; }

    @Override
    String title() { return "记忆中心"; }

    @Override
    String tag() { return "布丁的小本本"; }

    @Override
    void buildActions(LinearLayout into) {
        TextView add = Ui4.textBold(this, "＋ 记住一件事", Ui4.T_CAP, 0xFFFFFFFF);
        add.setGravity(Gravity.CENTER);
        add.setBackground(Ui4.grad(this, new int[]{Ui4.primary(this), Ui4.primary2(this)}, Ui4.R_S));
        add.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { addDialog(); }
        });
        into.addView(add);
    }

    @Override
    View buildBody() { return null; }

    void rebuild()
    {
        body.removeAllViews();
        DataService ds = DataService.get(this);
        items = ds.memList(true);
        int pending = ds.memPendingCount();
        int active = 0;
        for (DataService.Memory m : items) {
            if (!m.pending && m.enabled) active++;
        }

        /* two-column grid: 316 | 1fr (fallback to stacked when narrow, N/A on fixed 1024) */
        LinearLayout grid = new LinearLayout(this);
        grid.setOrientation(LinearLayout.HORIZONTAL);
        body.addView(grid, new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));

        /* ---- left: hero + categories ---- */
        LinearLayout left = new LinearLayout(this);
        left.setOrientation(LinearLayout.VERTICAL);
        LinearLayout.LayoutParams llp = new LinearLayout.LayoutParams(
                Ui4.dp(this, 316), ViewGroup.LayoutParams.WRAP_CONTENT);
        llp.rightMargin = Ui4.dp(this, 14);
        grid.addView(left, llp);

        LinearLayout hero = new LinearLayout(this);
        hero.setOrientation(LinearLayout.VERTICAL);
        hero.setBackground(Ui4.grad(this, Ui4.gradMemory(this), Ui4.R_L));
        hero.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 12), Ui4.dp(this, 14), Ui4.dp(this, 12));
        hero.addView(Ui4.textBold(this, "布丁的小本本", Ui4.T_CARD, 0xFF963E63));
        TextView hs = Ui4.text(this, "你告诉我的事，我都会记在这里", Ui4.T_CAP, 0xB3963E63);
        hs.setPadding(0, Ui4.dp(this, 2), 0, Ui4.dp(this, 4));
        hero.addView(hs);
        ImageView art = Ui4.art(this, "illus_memory", 150);
        LinearLayout artHold = new LinearLayout(this);
        artHold.setGravity(Gravity.CENTER);
        artHold.addView(art, new LinearLayout.LayoutParams(Ui4.dp(this, 150), Ui4.dp(this, 120)));
        hero.addView(artHold);
        TextView count = Ui4.text(this, "真实记忆 " + active + " 条生效 · " + pending + " 条待确认",
                Ui4.T_CAP, 0xFF963E63);
        count.setBackground(Ui4.round(this, 0xB3FFFFFF, Ui4.R_PILL));
        count.setPadding(Ui4.dp(this, 12), Ui4.dp(this, 4), Ui4.dp(this, 12), Ui4.dp(this, 4));
        hero.addView(count);
        LinearLayout.LayoutParams hlp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        hlp.bottomMargin = Ui4.dp(this, 12);
        left.addView(hero, hlp);

        /* 2x2 category cards with real counts */
        LinearLayout cats = new LinearLayout(this);
        cats.setOrientation(LinearLayout.VERTICAL);
        String[] tags = { "偏好", "事实", "关系", "设备" };
        int[] icons = { Ui4.I_HEART, Ui4.I_FACT, Ui4.I_USERS, Ui4.I_DEVICE };
        int[] tints = { 0xFFE91E63, 0xFF1E62C8, 0xFF6A44A8, 0xFF5C6B80 };
        for (int row = 0; row < 2; row++) {
            LinearLayout rr = new LinearLayout(this);
            rr.setOrientation(LinearLayout.HORIZONTAL);
            for (int k = 0; k < 2; k++) {
                int idx = row * 2 + k;
                int n = 0;
                for (DataService.Memory m : items) {
                    if (!m.pending && m.enabled && tags[idx].equals(m.tag)) n++;
                }
                LinearLayout cc = new LinearLayout(this);
                cc.setOrientation(LinearLayout.HORIZONTAL);
                cc.setGravity(Gravity.CENTER_VERTICAL);
                cc.setBackground(Ui4.roundStroke(this, Ui4.surface(this), Ui4.line(this), Ui4.R_M));
                cc.setPadding(Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10), Ui4.dp(this, 10));
                View ic = Ui4.icon(this, icons[idx], 22, tints[idx]);
                ic.setBackground(Ui4.round(this, Ui4.surface2(this), 13f));
                ic.setPadding(Ui4.dp(this, 8), Ui4.dp(this, 8), Ui4.dp(this, 8), Ui4.dp(this, 8));
                cc.addView(ic, new LinearLayout.LayoutParams(Ui4.dp(this, 38), Ui4.dp(this, 38)));
                LinearLayout tx = new LinearLayout(this);
                tx.setOrientation(LinearLayout.VERTICAL);
                tx.setPadding(Ui4.dp(this, 8), 0, 0, 0);
                tx.addView(Ui4.textBold(this, tags[idx], Ui4.T_CAP, Ui4.text(this)));
                tx.addView(Ui4.text(this, n + " 条", Ui4.T_CAP, Ui4.text3(this)));
                cc.addView(tx, new LinearLayout.LayoutParams(0,
                        ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
                LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                        0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f);
                if (k == 0) clp.rightMargin = Ui4.dp(this, 10);
                if (row == 0) clp.bottomMargin = Ui4.dp(this, 10);
                rr.addView(cc, clp);
            }
            cats.addView(rr);
        }
        left.addView(cats);

        /* ---- right: lists ---- */
        LinearLayout right = new LinearLayout(this);
        right.setOrientation(LinearLayout.VERTICAL);
        right.setLayoutParams(new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        grid.addView(right);

        boolean hasPending = false;
        for (DataService.Memory m : items) {
            if (!m.pending) continue;
            if (!hasPending) {
                right.addView(sectionLabel("待确认 · 布丁新学到的，等你点头才生效"));
                hasPending = true;
            }
            right.addView(memCard(m, true));
        }

        right.addView(sectionLabel("已生效 · 布丁回答时会参考"));
        boolean any = false;
        for (DataService.Memory m : items) {
            if (m.pending) continue;
            right.addView(memCard(m, false));
            any = true;
        }
        if (!any && !hasPending) {
            LinearLayout empty = new LinearLayout(this);
            empty.setOrientation(LinearLayout.VERTICAL);
            empty.setGravity(Gravity.CENTER);
            empty.setBackground(Ui4.dashed(this, Ui4.line2(this), Ui4.R_M));
            empty.setPadding(0, Ui4.dp(this, 24), 0, Ui4.dp(this, 24));
            TextView t1 = Ui4.textBold(this, "还没有记忆", Ui4.T_BODY, Ui4.text2(this));
            t1.setGravity(Gravity.CENTER);
            TextView t2 = Ui4.text(this, "点右上角「记住一件事」，或以后直接对布丁说",
                    Ui4.T_CAP, Ui4.text3(this));
            t2.setGravity(Gravity.CENTER);
            t2.setPadding(0, Ui4.dp(this, 6), 0, 0);
            empty.addView(t1);
            empty.addView(t2);
            right.addView(empty);
        }

        /* danger zone */
        LinearLayout dz = new LinearLayout(this);
        dz.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        dz.setPadding(0, Ui4.dp(this, 10), 0, Ui4.dp(this, 4));
        TextView clear = Ui4.textBold(this, "清空全部记忆", Ui4.T_CAP, 0xFFC02626);
        clear.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        clear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { clearConfirm(); }
        });
        dz.addView(clear);
        right.addView(dz);
    }

    TextView sectionLabel(String s)
    {
        TextView t = Ui4.textBold(this, s, Ui4.T_AUX, Ui4.text2(this));
        t.setPadding(0, Ui4.dp(this, 12), 0, Ui4.dp(this, 6));
        return t;
    }

    /* ------------------------------------------------------------------ cards */

    View memCard(final DataService.Memory m, boolean isPending)
    {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(Ui4.roundStroke(this, Ui4.surface(this), Ui4.line(this), Ui4.R_M));
        c.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 10), Ui4.dp(this, 16), Ui4.dp(this, 12));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui4.dp(this, 12);
        c.setLayoutParams(lp);

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        TextView tag = Ui4.textBold(this, m.tag, Ui4.T_CAP,
                "偏好".equals(m.tag) ? 0xFF963E63 : Ui4.text2(this));
        tag.setBackground(Ui4.round(this, "偏好".equals(m.tag) ? Ui4.pinkW(this) : Ui4.surface2(this), Ui4.R_PILL));
        tag.setPadding(Ui4.dp(this, 12), Ui4.dp(this, 2), Ui4.dp(this, 12), Ui4.dp(this, 2));
        head.addView(tag);
        if (!isPending) {
            boolean on = m.enabled;
            LinearLayout st = new LinearLayout(this);
            st.setOrientation(LinearLayout.HORIZONTAL);
            st.setGravity(Gravity.CENTER_VERTICAL);
            View dot = new View(this);
            dot.setBackground(Ui4.round(this, on ? Ui4.ok(this) : Ui4.text3(this), Ui4.R_PILL));
            st.addView(dot, new LinearLayout.LayoutParams(Ui4.dp(this, 8), Ui4.dp(this, 8)));
            TextView stv = Ui4.text(this, on ? "已生效" : "已暂停", Ui4.T_CAP, Ui4.text2(this));
            stv.setPadding(Ui4.dp(this, 6), 0, 0, 0);
            st.addView(stv);
            LinearLayout.LayoutParams slp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            slp.leftMargin = Ui4.dp(this, 10);
            head.addView(st, slp);
        }
        TextView src = Ui4.text(this, "来源：" + m.src, Ui4.T_CAP, Ui4.text3(this));
        src.setGravity(Gravity.END);
        head.addView(src, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        c.addView(head);

        TextView txt = Ui4.textBold(this, m.text, Ui4.T_BODY,
                m.pending ? Ui4.text2(this) : Ui4.text(this));
        txt.setPadding(0, Ui4.dp(this, 6), 0, 0);
        c.addView(txt);

        LinearLayout ops = new LinearLayout(this);
        ops.setOrientation(LinearLayout.HORIZONTAL);
        ops.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        ops.setPadding(0, Ui4.dp(this, 8), 0, 0);
        if (isPending) {
            ops.addView(opBtn("记住它", Ui4.primary(this), 0xFFFFFFFF, new Runnable() {
                public void run() {
                    DataService.get(MemoryCenterActivity.this).memResolve(m.id, true);
                    toast("已记住"); rebuild();
                }
            }));
            ops.addView(opBtn("不记了", 0x00000000, Ui4.text2(this), new Runnable() {
                public void run() {
                    DataService.get(MemoryCenterActivity.this).memResolve(m.id, false);
                    toast("已忽略"); rebuild();
                }
            }));
        } else {
            ops.addView(opBtn("改", 0x00000000, Ui4.primary2(this), new Runnable() {
                public void run() { editDialog(m); }
            }));
            ops.addView(opBtn(m.enabled ? "暂停" : "恢复", 0x00000000, Ui4.text2(this),
                new Runnable() {
                    public void run() {
                        DataService.get(MemoryCenterActivity.this)
                                .memSetEnabled(m.id, !m.enabled);
                        toast(m.enabled ? "已暂停（布丁暂时不再参考）" : "已恢复");
                        rebuild();
                    }
                }));
            ops.addView(opBtn("删", 0x00000000, 0xFFC02626, new Runnable() {
                public void run() { deleteConfirm(m); }
            }));
        }
        c.addView(ops);
        return c;
    }

    TextView opBtn(String label, int bg, int fg, final Runnable r)
    {
        TextView t = Ui4.textBold(this, label, Ui4.T_CAP, fg);
        if (bg != 0x00000000) t.setBackground(Ui4.round(this, bg, Ui4.R_S));
        t.setPadding(Ui4.dp(this, 16), Ui4.dp(this, 8), Ui4.dp(this, 16), Ui4.dp(this, 8));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = Ui4.dp(this, 8);
        t.setLayoutParams(lp);
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        return t;
    }

    /* ---------------------------------------------------------------- dialogs */

    private static final String[] TAGS = { "偏好", "事实", "关系", "设备" };

    void addDialog()
    {
        final EditText text = new EditText(this);
        text.setHint("例如：我不喝咖啡，改喝无糖茶");
        text.setTextSize(18f);
        text.setSingleLine(false);
        text.setMinLines(2);
        text.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
        LinearLayout tags = tagPicker(0);
        final String[] picked = { TAGS[0] };
        wirePicker(tags, picked);

        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui4.dp(this, 20), Ui4.dp(this, 10), Ui4.dp(this, 20), 0);
        form.addView(text);
        form.addView(Ui4.text(this, "分类", Ui4.T_CAP, Ui4.text2(this)));
        form.addView(tags);

        new AlertDialog.Builder(this)
            .setTitle("记住一件事")
            .setView(form)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    String t = text.getText().toString().trim();
                    if (t.length() == 0) { toast("内容不能为空"); return; }
                    long id = DataService.get(MemoryCenterActivity.this)
                            .memAdd(picked[0], t, "手动添加", false);
                    toast(id > 0 ? "已记住（立即生效）" : "保存失败");
                    rebuild();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    LinearLayout tagPicker(int selected)
    {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.HORIZONTAL);
        row.setPadding(0, Ui4.dp(this, 8), 0, Ui4.dp(this, 8));
        for (int i = 0; i < TAGS.length; i++) {
            TextView chip = Ui4.textBold(this, TAGS[i], Ui4.T_CAP,
                i == selected ? Ui4.primary2(this) : Ui4.text2(this));
            chip.setBackground(Ui4.round(this,
                    i == selected ? Ui4.primaryW(this) : Ui4.surface2(this), Ui4.R_PILL));
            chip.setPadding(Ui4.dp(this, 14), Ui4.dp(this, 6), Ui4.dp(this, 14), Ui4.dp(this, 6));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = Ui4.dp(this, 8);
            row.addView(chip, lp);
        }
        return row;
    }

    void wirePicker(final LinearLayout tags, final String[] picked)
    {
        for (int i = 0; i < tags.getChildCount(); i++) {
            final TextView chip = (TextView) tags.getChildAt(i);
            final int idx = i;
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    picked[0] = TAGS[idx];
                    for (int k = 0; k < tags.getChildCount(); k++) {
                        TextView other = (TextView) tags.getChildAt(k);
                        other.setBackground(Ui4.round(MemoryCenterActivity.this,
                                Ui4.surface2(MemoryCenterActivity.this), Ui4.R_PILL));
                        other.setTextColor(Ui4.text2(MemoryCenterActivity.this));
                    }
                    chip.setBackground(Ui4.round(MemoryCenterActivity.this,
                            Ui4.primaryW(MemoryCenterActivity.this), Ui4.R_PILL));
                    chip.setTextColor(Ui4.primary2(MemoryCenterActivity.this));
                }
            });
        }
    }

    void editDialog(final DataService.Memory m)
    {
        final EditText text = new EditText(this);
        text.setText(m.text);
        text.setTextSize(18f);
        text.setSingleLine(false);
        text.setMinLines(2);
        LinearLayout tags = tagPicker(TAGS[0].equals(m.tag) ? 0 :
            ("事实".equals(m.tag) ? 1 : ("关系".equals(m.tag) ? 2 : 3)));
        final String[] picked = { m.tag };
        wirePicker(tags, picked);

        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui4.dp(this, 20), Ui4.dp(this, 10), Ui4.dp(this, 20), 0);
        form.addView(text);
        form.addView(Ui4.text(this, "分类", Ui4.T_CAP, Ui4.text2(this)));
        form.addView(tags);

        new AlertDialog.Builder(this)
            .setTitle("编辑记忆")
            .setView(form)
            .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    String t = text.getText().toString().trim();
                    if (t.length() == 0) { toast("内容不能为空"); return; }
                    boolean ok = DataService.get(MemoryCenterActivity.this)
                            .memUpdate(m.id, picked[0], t);
                    toast(ok ? "已保存" : "保存失败");
                    rebuild();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    void deleteConfirm(final DataService.Memory m)
    {
        new AlertDialog.Builder(this)
            .setTitle("删除这条记忆？")
            .setMessage("「" + m.text + "」删除后找不回来。")
            .setPositiveButton("删除", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    DataService.get(MemoryCenterActivity.this).memDelete(m.id);
                    toast("已删除"); rebuild();
                }
            })
            .setNegativeButton("先留着", null)
            .show();
    }

    void clearConfirm()
    {
        new AlertDialog.Builder(this)
            .setTitle("清空全部记忆？")
            .setMessage("所有生效与待确认的记忆都会删除，且找不回来。")
            .setPositiveButton("全部清空", new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface d, int w) {
                    int n = DataService.get(MemoryCenterActivity.this).memClear();
                    toast("已清空 " + n + " 条"); rebuild();
                }
            })
            .setNegativeButton("取消", null)
            .show();
    }

    @Override
    void onShellReady() { rebuild(); }
}
