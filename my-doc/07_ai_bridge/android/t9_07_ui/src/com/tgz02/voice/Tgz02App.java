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
        /* T9-UI-03-R1: run migrations and publish all snapshots at process start --
         * the worker must be able to read memory/alarms/skills even before the user
         * opens any page. */
        DataService.get(this);
    }
}
