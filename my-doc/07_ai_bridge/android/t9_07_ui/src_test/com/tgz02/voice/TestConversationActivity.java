/*
 * TestConversationActivity.java -- T9-07R1: the automation driver.
 *
 * THIS CLASS IS NOT PART OF THE PRODUCTION APK. It only exists in a build made with
 * `build.ps1 -Test`, which compiles src_test/ on top of the product sources and links the
 * separate AndroidManifest.test.xml. The production APK has neither this class nor any code
 * that reads extras: ConversationActivity ignores intents entirely.
 *
 * Why it is needed: `adb shell input text` can only type ASCII, so driving a Chinese question
 * through the real widgets is impossible without a prefill entry point. Everything else in the
 * acceptance run uses real taps on the real screen.
 *
 * Supported (test build only):
 *   --es text "<s>"    prefill the input
 *   --ez auto true     press 发送 after 700 ms
 *   --es action stop   press 停止 after 700 ms
 */
package com.tgz02.voice;

import android.content.Intent;
import android.os.Bundle;

public final class TestConversationActivity extends ConversationActivity {

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        Intent it = getIntent();
        if (it == null) return;

        String text = it.getStringExtra("text");
        if (text != null) input.setText(text);

        String action = it.getStringExtra("action");
        if ("stop".equals(action)) {
            h.postDelayed(new Runnable() {
                public void run() { onStopClicked(); }
            }, 700);
        } else if (it.getBooleanExtra("auto", false)) {
            h.postDelayed(new Runnable() {
                public void run() { onSendClicked(); }
            }, 700);
        }
    }
}
