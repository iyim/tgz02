/*
 * Tgz02App.java -- T9-UI-02: application class.  Restores the user's theme choice
 * (kid/calm) once per process start, so every page renders with the right palette
 * from the first frame.
 */
package com.tgz02.voice;

import android.app.Application;
import android.content.Intent;
import android.os.Build;
import android.util.Log;

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

        /* T9-10: bring the backend service up with the app process, so the Binder endpoint
         * exists even if the user never opens the home page. START_STICKY + foreground keeps
         * it alive across UI kills; the service itself never runs as root. */
        try {
            Intent i = new Intent(this, BackendService.class);
            if (Build.VERSION.SDK_INT >= 26) startForegroundService(i);
            else startService(i);
        } catch (Throwable t) {
            Log.w("T910BACKEND", "cannot start backend service: " + t);
        }
    }
}
