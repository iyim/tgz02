/*
 * AidlProbe.java -- T9-04 root-side entry point.
 *
 *   CLASSPATH=/data/local/tmp/t9/t9_04/aidl_probe.dex app_process /system/bin \
 *       com.tgz02.aidltest.AidlProbe root
 *
 * Runs the same Probe as the APK, but with uid 0 and a system Context obtained through
 * ActivityThread (the same way the accepted TtsExec does it). It does NOT modify the factory
 * process, does not touch SELinux, and does not request any protected permission: the point is
 * to find out what an unprivileged APK can and cannot do, so the privileged run has to be
 * measured separately.
 */
package com.tgz02.aidltest;

import android.content.Context;
import android.os.Looper;

public final class AidlProbe {

    public static void main(String[] args) {
        Looper.prepareMainLooper();
        try {
            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object at = atCls.getMethod("systemMain").invoke(null);
            Context ctx = (Context) atCls.getMethod("getSystemContext").invoke(at);
            Probe.log("system context = " + ctx);
            new Probe(ctx, "root", true).begin();
        } catch (Throwable t) {
            t.printStackTrace();
            System.exit(3);
        }
        Looper.loop();
    }
}
