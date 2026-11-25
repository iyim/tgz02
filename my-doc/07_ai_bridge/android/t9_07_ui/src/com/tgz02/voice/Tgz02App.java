/*
 * Tgz02App.java -- T9-UI-02: application class.  Restores the user's theme choice
 * (kid/calm) once per process start, so every page renders with the right palette
 * from the first frame.
 */
package com.tgz02.voice;

import android.app.Application;

public class Tgz02App extends Application {

    @Override
    public void onCreate()
    {
        super.onCreate();
        Ui3.setMode(SettingsHomeActivity.readTheme());
    }
}
