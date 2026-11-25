/*
 * HomeCtl.java -- T9-10.4: inspect and control the HOME resolution on this device.
 *
 * This ROM's `pm` / `cmd package` drop the subcommands we need (verified in T9-09), and the
 * public `cmd package set-home-activity` writes a preferred record that the activity manager then
 * ignores when the factory launcher is alive. So the measurement has to be done the way the
 * platform itself does it: IPackageManager, from a root process.
 *
 *   app_process /system com.tgz02.home.HomeCtl list
 *       -> every HOME candidate, its package/class, priority, enabled state, RESOLVED default
 *
 *   app_process /system com.tgz02.home.HomeCtl disable <pkg>/<cls>
 *   app_process /system com.tgz02.home.HomeCtl enable  <pkg>/<cls>
 *   app_process /system com.tgz02.home.HomeCtl state   <pkg>/<cls>
 *       -> component-level enable/disable (DONT_KILL_APP), so disabling smartapp's BootHomeActivity
 *          never touches the :core process that runs the voice engine
 *
 * Every change is one framework call; nothing here edits /system or restarts a process.
 */
package com.tgz02.home;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;

import java.lang.reflect.Method;
import java.util.List;

public class HomeCtl {

    static final int MATCH_DEFAULT_ONLY = 0x00010000;
    static final int DONT_KILL_APP = 0x00000001;

    public static void main(String[] args) throws Exception {
        String cmd = args.length > 0 ? args[0] : "list";
        Object ipm = ipm();
        if (ipm == null) { System.out.println("RESULT no-ipm"); return; }

        if ("list".equals(cmd)) { list(ipm); return; }
        if ("state".equals(cmd)) { state(ipm, args[1]); return; }
        if ("disable".equals(cmd) || "enable".equals(cmd)) {
            ComponentName cn = split(args[1]);
            int newState = "disable".equals(cmd) ? 2 /* DISABLED */ : 0 /* DEFAULT */;
            Method m = ipm.getClass().getMethod("setComponentEnabledSetting",
                    ComponentName.class, int.class, int.class, int.class);
            m.invoke(ipm, cn, newState, DONT_KILL_APP, 0);
            System.out.println("OK " + cn.flattenToString() + " -> state=" + newState);
            state(ipm, args[1]);
            return;
        }
        System.out.println("usage: list | state <pkg>/<cls> | disable <pkg>/<cls> | enable <pkg>/<cls>");
    }

    static Object ipm() throws Exception {
        Class<?> ag = Class.forName("android.app.AppGlobals");
        return ag.getMethod("getPackageManager").invoke(null);
    }

    @SuppressWarnings("unchecked")
    static void list(Object ipm) throws Exception {
        Intent i = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME);
        Method q = ipm.getClass().getMethod("queryIntentActivities",
                Intent.class, String.class, int.class, int.class);
        // API 27 returns ParceledListSlice here, not a plain List (the first version of this
        // tool crashed the process on that cast; keep the unwrap explicit).
        Object slice = q.invoke(ipm, i, null, MATCH_DEFAULT_ONLY, 0);
        List<ResolveInfo> ris = (List<ResolveInfo>) Class
                .forName("android.content.pm.ParceledListSlice")
                .getMethod("getList").invoke(slice);
        String resolved = resolvedHome(ipm);
        System.out.println("RESOLVED_HOME=" + resolved);
        System.out.println("CANDIDATES=" + ris.size());
        for (ResolveInfo ri : ris) {
            ActivityInfo ai = ri.activityInfo;
            String comp = ai.packageName + "/" + ai.name;
            String mark = comp.equals(resolved) ? "  <= resolved" : "";
            System.out.println(String.format("%-70s priority=%-4d enabled=%d%s",
                    comp, ri.priority, ai.enabled ? 1 : 0, mark));
        }
    }

    static String resolvedHome(Object ipm) throws Exception {
        Intent i = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME);
        Method r = ipm.getClass().getMethod("resolveIntent",
                Intent.class, String.class, int.class, int.class);
        Object ri = r.invoke(ipm, i, null, MATCH_DEFAULT_ONLY, 0);
        if (!(ri instanceof ResolveInfo)) return "(none)";
        ActivityInfo ai = ((ResolveInfo) ri).activityInfo;
        return ai.packageName + "/" + ai.name;
    }

    static void state(Object ipm, String comp) throws Exception {
        ComponentName cn = split(comp);
        Method g = ipm.getClass().getMethod("getComponentEnabledSetting",
                ComponentName.class, int.class);
        Object v = g.invoke(ipm, cn, 0);
        System.out.println("STATE " + cn.flattenToString() + " = " + v
                + "  (0=default 1=enabled 2=disabled 3=disabled-user 4=disabled-until-used)");
    }

    static ComponentName split(String s) {
        int i = s.indexOf('/');
        if (i <= 0) throw new IllegalArgumentException("need pkg/cls: " + s);
        String pkg = s.substring(0, i);
        String cls = s.substring(i + 1);
        if (cls.startsWith(".")) cls = pkg + cls;
        return new ComponentName(pkg, cls);
    }
}
