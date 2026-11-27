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
 *   app_process /system com.tgz02.home.HomeCtl pkgstate   <pkg>
 *   app_process /system com.tgz02.home.HomeCtl pkgdisable <pkg>
 *   app_process /system com.tgz02.home.HomeCtl pkgenable  <pkg>
 *       -> T9-17: 整包禁用。用在"想删掉但原厂应用商店会重新装回来"的预置应用上
 *          （菜谱 com.alibaba.ailabs.genie.cook 实测：卸载后开机被 appbox 重装）。
 *          appbox 只看"装没装"，所以整包 disable 之后既不会再被装回来，也点不开。
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
        if ("watch".equals(cmd)) { watch(ipm, args[1], Integer.parseInt(args[2])); return; }
        if ("pkgstate".equals(cmd)) { pkgstate(ipm, args[1]); return; }
        if ("pkgmethods".equals(cmd)) { pkgmethods(ipm); return; }
        if ("pkgdisable".equals(cmd) || "pkgenable".equals(cmd)) {
            int newState = "pkgdisable".equals(cmd) ? 2 /* DISABLED */ : 0 /* DEFAULT */;
            int rc = setPkgState(ipm, args[1], newState);
            if (rc != 0) { System.out.println("FAIL rc=" + rc); return; }
            System.out.println("OK pkg " + args[1] + " -> state=" + newState);
            pkgstate(ipm, args[1]);
            return;
        }
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

    /* ---- T9-17: 整包启停（预置应用卸载后会被原厂应用商店装回来，改用整包禁用） ---- */

    /** 诊断用：列出 IPackageManager 里所有带 EnabledSetting 的方法及参数类型 */
    static void pkgmethods(Object ipm) {
        for (Method m : ipm.getClass().getMethods()) {
            String n = m.getName();
            if (n.indexOf("EnabledSetting") < 0) continue;
            StringBuilder sb = new StringBuilder();
            sb.append(n).append('(');
            Class<?>[] ps = m.getParameterTypes();
            for (int i = 0; i < ps.length; i++) {
                if (i > 0) sb.append(", ");
                sb.append(ps[i].getSimpleName());
            }
            sb.append(")");
            System.out.println("METHOD " + sb);
        }
    }

    static int setPkgState(Object ipm, String pkg, int newState) throws Exception {
        /* 本机实测签名（API 27）：setApplicationEnabledSetting(String, int, int, int, String)
         * 第五个参数是 callingPackage；root 调用传 null（PMS 按 uid 兜底）。
         * 之前按 4 参数/3 参数反射，getMethod 直接抛 NoSuchMethodException，被 RuntimeInit
         * 当成未捕获异常 kill 掉进程（表现为 shell 里的 "Killed"）。 */
        try {
            Method m = ipm.getClass().getMethod("setApplicationEnabledSetting",
                    String.class, int.class, int.class, int.class, String.class);
            m.invoke(ipm, pkg, newState, DONT_KILL_APP, 0, null);
            return 0;
        } catch (NoSuchMethodException e) {
            Method m = ipm.getClass().getMethod("setApplicationEnabledSetting",
                    String.class, int.class, int.class, int.class);
            m.invoke(ipm, pkg, newState, DONT_KILL_APP, 0);
            return 0;
        }
    }

    static void pkgstate(Object ipm, String pkg) throws Exception {
        try {
            Method g = ipm.getClass().getMethod("getApplicationEnabledSetting",
                    String.class, int.class);
            Object v = g.invoke(ipm, pkg, 0);
            System.out.println("PKGSTATE " + pkg + " = " + v
                    + "  (0=default 1=enabled 2=disabled 3=disabled-user 4=disabled-until-used)");
        } catch (NoSuchMethodException e) {
            Method g = ipm.getClass().getMethod("getApplicationEnabledSetting", String.class);
            Object v = g.invoke(ipm, pkg);
            System.out.println("PKGSTATE " + pkg + " = " + v);
        }
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

    /**
     * T9-11: sample one component state every 200 ms and print only the transitions.
     * Started from /data/adb/service.d at boot, this answers "when" a disabled system component
     * comes back -- the missing half of the T9-10 finding.
     */
    static void watch(Object ipm, String comp, int seconds) throws Exception {
        ComponentName cn = split(comp);
        Method g = ipm.getClass().getMethod("getComponentEnabledSetting",
                ComponentName.class, int.class);
        long end = System.currentTimeMillis() + seconds * 1000L;
        Object prev = null;
        System.out.println("WATCH " + cn.flattenToString() + " for " + seconds + "s");
        while (System.currentTimeMillis() < end) {
            Object v = g.invoke(ipm, cn, 0);
            if (prev == null || !v.equals(prev)) {
                System.out.println("T+" + (seconds - (end - System.currentTimeMillis()) / 1000)
                        + "s ts=" + System.currentTimeMillis() + " state=" + v);
                prev = v;
            }
            Thread.sleep(200);
        }
        System.out.println("WATCH done, last state=" + prev);
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
