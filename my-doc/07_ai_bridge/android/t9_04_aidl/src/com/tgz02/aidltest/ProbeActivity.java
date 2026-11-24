/*
 * ProbeActivity.java -- T9-04 ordinary-app entry point (normal UID, no root).
 *
 * Launch:
 *   adb shell am start -n com.tgz02.aidltest/.ProbeActivity
 *
 * Everything the probe prints goes to logcat under the tag T904 and into the on-screen text
 * view, so the same evidence can be read from a shell and seen on the device.
 */
package com.tgz02.aidltest;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;

public final class ProbeActivity extends Activity {

    TextView view;
    Probe probe;
    boolean started;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ScrollView sv = new ScrollView(this);
        view = new TextView(this);
        view.setTextSize(11f);
        sv.addView(view, new ViewGroup.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        setContentView(sv);
        probe = new Probe(this, "app", false);
        append("T9-04 AIDL probe ready, uid=" + android.os.Process.myUid());
    }

    @Override
    protected void onResume() {
        super.onResume();
        if (!started) {
            started = true;
            append("--- begin ---");
            probe.begin();
        }
    }

    @Override
    protected void onStop() {
        super.onStop();
        /* control experiment: the same call while another app is on top */
        append("--- went to background, probing in 3 s ---");
        probe.backgroundProbe(3000);
    }

    void append(final String s) {
        Log.i(Probe.TAG, s);
        runOnUiThread(new Runnable() {
            public void run() {
                if (view != null) view.append(s + "\n");
            }
        });
    }
}
