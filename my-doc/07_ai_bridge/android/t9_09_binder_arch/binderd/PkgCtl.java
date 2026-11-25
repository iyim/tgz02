package com.tgz02.binderdemo.daemon;

import java.lang.reflect.Method;

/**
 * T9-09: enable/disable a package through IPackageManager.
 *
 * Why not `pm disable`: this ROM's /system/bin/pm is a thin wrapper over `cmd package`, and that
 * build of `cmd package` rejects disable / disable-user / set-enabled-setting ("Unknown command").
 * The framework call itself exists, so the measurement is done the same way the factory would
 * do it -- a root process talking to system_server over Binder.
 *
 *   app_process /system com.tgz02.binderdemo.daemon.PkgCtl <pkg> <state>
 *   state: 0 default, 1 enabled, 2 disabled, 3 disabled-user, 4 disabled-until-used
 */
public class PkgCtl {
    public static void main(String[] args) throws Exception {
        if (args.length < 2) {
            System.out.println("usage: PkgCtl <package> <state 0..4>");
            return;
        }
        String pkg = args[0];
        int state = Integer.parseInt(args[1]);

        Class<?> ag = Class.forName("android.app.AppGlobals");
        Object ipm = ag.getMethod("getPackageManager").invoke(null);
        if (ipm == null) { System.out.println("RESULT no-ipm"); return; }

        Method m = ipm.getClass().getMethod("setApplicationEnabledSetting",
                String.class, int.class, int.class, int.class, String.class);
        m.invoke(ipm, pkg, state, 0, 0, "shell");
        System.out.println("OK " + pkg + " state=" + state);
        System.out.flush();
    }
}
