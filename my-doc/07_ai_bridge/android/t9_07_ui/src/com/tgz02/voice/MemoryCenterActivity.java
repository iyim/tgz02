/*
 * MemoryCenterActivity.java -- T9-UI-02: the V2 memory centre shell.
 *
 * T9-08D (the real memory IPC: mem_list / mem_add / ...) has NOT landed yet, so this
 * page shows the real current state: an honest "not connected" panel and the promise of
 * what T9-08D will bring.  NO demo memories are rendered as if they were real -- the
 * auditor's rule.  When the IPC lands, wire it in bindRealData() and nothing else here
 * changes.
 */
package com.tgz02.voice;

import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MemoryCenterActivity extends V2Shell {

    @Override
    String navId() { return "memory"; }

    @Override
    String title() { return "记忆中心"; }

    @Override
    void buildActions(LinearLayout into) {
        into.addView(Ui3.text(this, "T9-08D 接入", 15f, Ui3.text3(this)));
    }

    @Override
    View buildBody() { return null; }   // replaced by rebuild

    void rebuild()
    {
        body.removeAllViews();

        LinearLayout hero = heroCard("illus_memory", "布丁记住的事，都由你管理");
        body.addView(hero);

        LinearLayout state = card();
        state.addView(kvRow("状态", "后台记忆能力尚未接入（T9-08D）", Ui3.warn(this)));
        state.addView(kvRow("数据", "没有任何演示记忆被当作真实数据显示", Ui3.text2(this)));
        state.addView(kvRow("接入后", "查看 / 添加 / 编辑 / 删除 / 停用 / 清空 / 待确认",
                Ui3.text2(this)));
        body.addView(state);

        /* the four capability slots, all disabled until the IPC lands */
        body.addView(sectionLabel("将要提供的操作"));
        String[][] ops = {
            { "记住一条", "在对话里说「记住……」，布丁会先问你再存" },
            { "待确认队列", "两次提到的强偏好进入待确认，不会自动生效" },
            { "分类查看", "偏好 / 事实 / 关系 / 设备" },
            { "删除与清空", "每一条都可以单独删除或停用" }
        };
        for (int i = 0; i < ops.length; i++) {
            LinearLayout c = card();
            c.addView(kvRow(ops[i][0], ops[i][1], Ui3.text3(this)));
            c.getChildAt(0).setAlpha(0.55f);
            body.addView(c);
        }

        LinearLayout empty = new LinearLayout(this);
        empty.setOrientation(LinearLayout.VERTICAL);
        empty.setGravity(Gravity.CENTER);
        empty.setBackground(Ui3.roundStroke(this, 0x00000000, Ui3.line2(this), Ui3.R_M));
        empty.setMinimumHeight(Ui3.dp(this, 140));
        TextView t1 = Ui3.textBold(this, "还没有真实记忆数据", 19f, Ui3.text2(this));
        t1.setGravity(Gravity.CENTER);
        TextView t2 = Ui3.text(this, "T9-08D 完成后，这里就是布丁的长期记忆库", 15f, Ui3.text3(this));
        t2.setGravity(Gravity.CENTER);
        t2.setPadding(0, Ui3.dp(this, 6), 0, 0);
        empty.addView(t1);
        empty.addView(t2);
        body.addView(empty);
    }

    @Override
    void onShellReady() { rebuild(); }

    LinearLayout heroCard(String asset, String caption)
    {
        LinearLayout w = new LinearLayout(this);
        w.setOrientation(LinearLayout.VERTICAL);
        android.graphics.Bitmap b = Ui3.bmp(this, asset);
        if (b != null) {
            android.widget.ImageView iv = new android.widget.ImageView(this);
            iv.setImageBitmap(b);
            iv.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            iv.setAlpha(0.85f);
            w.addView(iv, new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, Ui3.dp(this, 130)));
        }
        TextView cap = Ui3.textBold(this, caption, 17f, 0xFF3A3040);
        cap.setBackground(Ui3.round(this, 0xF2FFFFFF, Ui3.R_PILL));
        cap.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 6), Ui3.dp(this, 16), Ui3.dp(this, 6));
        LinearLayout.LayoutParams clp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        clp.gravity = Gravity.START;
        clp.topMargin = Ui3.dp(this, -30);
        clp.leftMargin = Ui3.dp(this, 14);
        w.addView(cap, clp);
        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 14);
        w.setLayoutParams(lp);
        return w;
    }
}
