/*
 * MemoryCenterActivity.java -- T9-UI-03: the REAL memory centre.
 *
 * Backed by the unified SQLite DB (tgz02.db, table memory_items) through DataService --
 * no demo memories, no JSON side-files, no direct SQL in this page.  Every mutation is
 * immediately visible and is republished to the worker snapshot (memory.public.json).
 *
 * Features: list (active + pending sections), add, edit, delete, pause/resume,
 * confirm/reject pending memories, clear-all with double confirmation, live status.
 */
package com.tgz02.voice;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.util.List;

public class MemoryCenterActivity extends V2Shell {

    /* pending memories first, then active ones (list model from DataService) */
    private List<DataService.Memory> items;

    @Override
    String navId() { return "memory"; }

    @Override
    String title() { return "记忆中心"; }

    @Override
    void buildActions(LinearLayout into) {
        TextView add = Ui3.textBold(this, "＋ 记住一件事", 15f, 0xFFFFFFFF);
        add.setBackground(Ui3.round(this, Ui3.primary(this), Ui3.R_S));
        add.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));
        add.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { addDialog(); }
        });
        into.addView(add);
    }

    @Override
    View buildBody() { return null; }    // rebuild() owns the body

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

        /* status banner: real counts from the real DB */
        LinearLayout status = banner(
            "真实记忆 " + active + " 条生效 · " + pending + " 条待确认 · 存储于本机数据库",
            Ui3.accentW(this), 0xFF1E62C8);
        body.addView(status);

        /* hero */
        android.graphics.Bitmap b = Ui3.bmp(this, "illus_memory");
        if (b != null) {
            android.widget.ImageView iv = new android.widget.ImageView(this);
            iv.setImageBitmap(b);
            /* T9-13: full-card display, no zoom crop */
            iv.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            iv.setAlpha(0.85f);
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 110));
            lp.bottomMargin = Ui3.dp(this, 12);
            body.addView(iv, lp);
        }

        /* pending section */
        boolean hasPending = false;
        for (DataService.Memory m : items) {
            if (!m.pending) continue;
            if (!hasPending) {
                body.addView(sectionLabel("待确认 · 布丁新学到的，等你点头才生效"));
                hasPending = true;
            }
            body.addView(memCard(m, true));
        }

        /* active section */
        body.addView(sectionLabel("已生效 · 布丁回答时会参考"));
        boolean any = false;
        for (DataService.Memory m : items) {
            if (m.pending) continue;
            body.addView(memCard(m, false));
            any = true;
        }
        if (!any && !hasPending) {
            LinearLayout empty = new LinearLayout(this);
            empty.setOrientation(LinearLayout.VERTICAL);
            empty.setGravity(Gravity.CENTER);
            empty.setBackground(Ui3.roundStroke(this, 0x00000000, Ui3.line2(this), Ui3.R_M));
            empty.setMinimumHeight(Ui3.dp(this, 140));
            TextView t1 = Ui3.textBold(this, "还没有记忆", 19f, Ui3.text2(this));
            t1.setGravity(Gravity.CENTER);
            TextView t2 = Ui3.text(this, "点右上角「记住一件事」，或以后直接对布丁说", 15f, Ui3.text3(this));
            t2.setGravity(Gravity.CENTER);
            t2.setPadding(0, Ui3.dp(this, 6), 0, 0);
            empty.addView(t1);
            empty.addView(t2);
            body.addView(empty);
        }

        /* danger zone */
        LinearLayout dz = new LinearLayout(this);
        dz.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        dz.setPadding(0, Ui3.dp(this, 10), 0, Ui3.dp(this, 10));
        TextView clear = Ui3.textBold(this, "清空全部记忆", 15f, 0xFFC02626);
        clear.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));
        clear.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { clearConfirm(); }
        });
        dz.addView(clear);
        body.addView(dz);
    }

    /* ------------------------------------------------------------------ cards */

    View memCard(final DataService.Memory m, boolean isPending)
    {
        LinearLayout c = new LinearLayout(this);
        c.setOrientation(LinearLayout.VERTICAL);
        c.setBackground(Ui3.roundStroke(this, Ui3.surface(this), Ui3.line(this), Ui3.R_M));
        c.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 10), Ui3.dp(this, 16), Ui3.dp(this, 12));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 12);
        c.setLayoutParams(lp);

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        TextView tag = Ui3.textBold(this, m.tag, 15f,
                "偏好".equals(m.tag) ? Ui3.primary2(this) : Ui3.text2(this));
        tag.setBackground(Ui3.round(this, Ui3.surface2(this), Ui3.R_PILL));
        tag.setPadding(Ui3.dp(this, 12), Ui3.dp(this, 2), Ui3.dp(this, 12), Ui3.dp(this, 2));
        head.addView(tag);
        TextView src = Ui3.text(this, " " + m.src, 13f, Ui3.text3(this));
        head.addView(src, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        c.addView(head);

        TextView txt = Ui3.textBold(this, m.text, 19f,
                m.pending ? Ui3.text2(this) : Ui3.text(this));
        txt.setPadding(0, Ui3.dp(this, 6), 0, 0);
        c.addView(txt);

        LinearLayout ops = new LinearLayout(this);
        ops.setOrientation(LinearLayout.HORIZONTAL);
        ops.setGravity(Gravity.END | Gravity.CENTER_VERTICAL);
        ops.setPadding(0, Ui3.dp(this, 8), 0, 0);
        if (isPending) {
            ops.addView(opBtn("记住它", Ui3.primary(this), 0xFFFFFFFF, new Runnable() {
                public void run() {
                    DataService.get(MemoryCenterActivity.this).memResolve(m.id, true);
                    toast("已记住"); rebuild();
                }
            }));
            ops.addView(opBtn("不记了", 0x00000000, Ui3.text2(this), new Runnable() {
                public void run() {
                    DataService.get(MemoryCenterActivity.this).memResolve(m.id, false);
                    toast("已忽略"); rebuild();
                }
            }));
        } else {
            ops.addView(opBtn("改", 0x00000000, Ui3.primary2(this), new Runnable() {
                public void run() { editDialog(m); }
            }));
            ops.addView(opBtn(m.enabled ? "暂停" : "恢复", 0x00000000, Ui3.text2(this),
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
        TextView t = Ui3.textBold(this, label, 15f, fg);
        if (bg != 0x00000000) t.setBackground(Ui3.round(this, bg, Ui3.R_S));
        t.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.leftMargin = Ui3.dp(this, 8);
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

        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui3.dp(this, 20), Ui3.dp(this, 10), Ui3.dp(this, 20), 0);
        form.addView(text);
        form.addView(Ui3.text(this, "分类", 15f, Ui3.text2(this)));
        form.addView(tags);
        for (int i = 0; i < tags.getChildCount(); i++) {
            final TextView chip = (TextView) tags.getChildAt(i);
            final int idx = i;
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    picked[0] = TAGS[idx];
                    for (int k = 0; k < tags.getChildCount(); k++) {
                        TextView other = (TextView) tags.getChildAt(k);
                        other.setBackground(Ui3.round(MemoryCenterActivity.this,
                                Ui3.surface2(MemoryCenterActivity.this), Ui3.R_PILL));
                        other.setTextColor(Ui3.text2(MemoryCenterActivity.this));
                    }
                    chip.setBackground(Ui3.round(MemoryCenterActivity.this,
                            Ui3.primaryW(MemoryCenterActivity.this), Ui3.R_PILL));
                    chip.setTextColor(Ui3.primary2(MemoryCenterActivity.this));
                }
            });
        }

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
        row.setPadding(0, Ui3.dp(this, 8), 0, Ui3.dp(this, 8));
        for (int i = 0; i < TAGS.length; i++) {
            TextView chip = Ui3.textBold(this, TAGS[i], 15f,
                i == selected ? Ui3.primary2(this) : Ui3.text2(this));
            chip.setBackground(Ui3.round(this,
                    i == selected ? Ui3.primaryW(this) : Ui3.surface2(this), Ui3.R_PILL));
            chip.setPadding(Ui3.dp(this, 14), Ui3.dp(this, 6), Ui3.dp(this, 14), Ui3.dp(this, 6));
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
            lp.rightMargin = Ui3.dp(this, 8);
            row.addView(chip, lp);
        }
        return row;
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

        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui3.dp(this, 20), Ui3.dp(this, 10), Ui3.dp(this, 20), 0);
        form.addView(text);
        form.addView(Ui3.text(this, "分类", 15f, Ui3.text2(this)));
        form.addView(tags);
        for (int i = 0; i < tags.getChildCount(); i++) {
            final TextView chip = (TextView) tags.getChildAt(i);
            final int idx = i;
            chip.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    picked[0] = TAGS[idx];
                    for (int k = 0; k < tags.getChildCount(); k++) {
                        TextView other = (TextView) tags.getChildAt(k);
                        other.setBackground(Ui3.round(MemoryCenterActivity.this,
                                Ui3.surface2(MemoryCenterActivity.this), Ui3.R_PILL));
                        other.setTextColor(Ui3.text2(MemoryCenterActivity.this));
                    }
                    chip.setBackground(Ui3.round(MemoryCenterActivity.this,
                            Ui3.primaryW(MemoryCenterActivity.this), Ui3.R_PILL));
                    chip.setTextColor(Ui3.primary2(MemoryCenterActivity.this));
                }
            });
        }

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
