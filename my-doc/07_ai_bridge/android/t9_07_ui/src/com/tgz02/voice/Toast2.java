/*
 * Toast2.java -- small wrapper so V2Shell compiles without dragging android.widget.Toast
 * imports into every page file.
 */
package com.tgz02.voice;

import android.content.Context;
import android.widget.Toast;

final class Toast2 {
    private Toast2() { }
    static void show(Context c, String s) {
        Toast.makeText(c, s, Toast.LENGTH_SHORT).show();
    }
}
