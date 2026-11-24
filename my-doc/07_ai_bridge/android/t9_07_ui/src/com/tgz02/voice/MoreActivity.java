/*
 * MoreActivity.java -- T9-08B: the "更多功能" menu.
 *
 * The existing UI capabilities are NOT removed and NOT rewritten: this page is only an entrance.
 * Tapping "文字对话与历史记录" opens the very same ConversationActivity that has been shipping
 * since T9-07 (text input, send, history list, new session, clear), which still talks to the
 * accepted inbox channel exactly as before.
 *
 * Why one entrance instead of two items: the history list is a dialog inside ConversationActivity,
 * so splitting it into its own entry would require passing an Intent extra into the production
 * activity -- and T9-07R1 removed every intent-reading path from the shipped APK on purpose.
 *
 * The footer says plainly that these screens are kept for now, not promised forever.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

public class MoreActivity extends Activity {

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        setContentView(build());
    }

    private View build()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui.BG);

        LinearLayout bar = Ui.bar(this, Ui.BG_BAR);
        bar.setPadding(Ui.dp(this, 18), 0, Ui.dp(this, 10), 0);
        root.addView(bar, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                        Ui.dp(this, 48)));
        TextView title = Ui.text(this, "更多功能", 18f, Ui.TEXT);
        title.setTypeface(title.getTypeface(), android.graphics.Typeface.BOLD);
        bar.addView(title);
        LinearLayout right = new LinearLayout(this);
        right.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        bar.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        right.addView(Ui.action(Ui.text(this, "返回", 14f, Ui.TEXT_DIM), new Runnable() {
            public void run() { finish(); }
        }));
        root.addView(Ui.divider(this));

        LinearLayout body = new LinearLayout(this);
        body.setOrientation(LinearLayout.VERTICAL);
        body.setPadding(Ui.dp(this, 18), Ui.dp(this, 14), Ui.dp(this, 18), Ui.dp(this, 14));

        body.addView(entry("文字对话与历史记录",
                "输入文字向 AI 提问、查看之前的对话、开始新对话", true));

        TextView note = Ui.text(this,
                "这些功能暂时保留，主界面不需要它们；核心语音体验稳定后再决定是否继续维护。",
                13f, Ui.TEXT_FAINT);
        note.setPadding(0, Ui.dp(this, 18), 0, 0);
        body.addView(note);

        root.addView(body, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        return root;
    }

    private View entry(String title, String sub, final boolean enabled)
    {
        LinearLayout row = new LinearLayout(this);
        row.setOrientation(LinearLayout.VERTICAL);
        row.setPadding(Ui.dp(this, 16), Ui.dp(this, 14), Ui.dp(this, 16), Ui.dp(this, 14));
        row.setBackground(Ui.round(this, Ui.BUBBLE_ASST, 12f));

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui.dp(this, 10);
        row.setLayoutParams(lp);

        TextView t = Ui.text(this, title, 16f, enabled ? Ui.TEXT : Ui.TEXT_FAINT);
        row.addView(t);
        TextView s = Ui.text(this, sub, 12f, Ui.TEXT_FAINT);
        s.setPadding(0, Ui.dp(this, 4), 0, 0);
        row.addView(s);

        if (enabled) {
            row.setOnClickListener(new View.OnClickListener() {
                public void onClick(View v) {
                    startActivity(new Intent(MoreActivity.this, ConversationActivity.class));
                }
            });
        }
        return row;
    }
}
