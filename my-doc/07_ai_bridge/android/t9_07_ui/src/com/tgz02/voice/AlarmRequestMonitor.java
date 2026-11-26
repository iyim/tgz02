/*
 * AlarmRequestMonitor.java -- T9-16: 语音闹钟请求监控（App 侧）。
 *
 * worker 的闹钟技能把语音解析结果写到 work_dir/alarm_request.public.json。
 * 本监控（挂在 BackendService 已有的轮询线程里）读取该文件，按 ts_ms 幂等去重后：
 *   set     -> DataService.alarmAddRepeat(写自有 DB) -> AlarmScheduler.reschedule
 *   cancel  -> alarmDisableByTime(hour/minute 有效时)
 *   query   ->（UI 已有列表页；这里只刷新快照）
 *   off_all -> alarmDisableAll()
 *
 * 处理完写 alarm_request.done.json（ts_ms 回执），worker 侧下一次写请求时 App
 * 用 ts_ms 判断"是不是新请求"（worker 每次 +now 保证单调）。
 *
 * 文件路径：/data/local/tmp/t9_ui/snapshots/alarm_request.public.json
 * （t9_ui/snapshots 目录归 App uid 所有——与 alarms.public.json 同目录同权限模型）
 */
package com.tgz02.voice;

import android.content.Context;
import android.content.Intent;
import android.util.Log;

import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;

final class AlarmRequestMonitor {

    private static final String TAG = "T916REQ";
    private static final String REQ_PATH = "/data/local/tmp/t9_ui/snapshots/alarm_request.public.json";
    private static long lastHandledTs = 0;
    private static boolean loaded = false;
    private static int hbCount = 0;

    private AlarmRequestMonitor() { }

    /** BackendService 轮询调用；内部有变化检测（ts_ms 单调），无新请求时几乎零开销 */
    static void poll(Context c)
    {
        try {
            File f = new File(REQ_PATH);
            if (++hbCount % 60 == 1) {
                Log.i(TAG, "poll alive: file=" + f.isFile() + " loaded=" + loaded
                        + " lastTs=" + lastHandledTs);
            }
            if (!f.isFile()) return;
            byte[] buf = new byte[(int) Math.min(f.length(), 4096)];
            FileInputStream in = new FileInputStream(f);
            int n = in.read(buf);
            in.close();
            if (n <= 0) return;
            JSONObject o = new JSONObject(new String(buf, 0, n, "UTF-8"));
            long ts = o.optLong("ts_ms", 0);
            if (ts <= 0) return;
            if (!loaded) {
                /* 进程刚起：只记住当前 ts，不执行旧请求（重启不重放历史） */
                lastHandledTs = ts;
                loaded = true;
                return;
            }
            if (ts <= lastHandledTs) return;          /* 已处理 */

            lastHandledTs = ts;
            handle(c, o);
        } catch (Throwable t) {
            Log.w(TAG, "poll: " + t);
        }
    }

    private static void handle(Context c, JSONObject o)
    {
        try {
            DataService ds = DataService.get(c);
            String action = o.optString("action", "set");
            if ("set".equals(action)) {
                int rel = o.optInt("rel_minutes", -1);
                int repeat = o.optInt("repeat", 0);
                String label = o.optString("label", "布丁闹钟");
                String time;
                if (rel > 0) {
                    java.util.Calendar cal = java.util.Calendar.getInstance();
                    cal.add(java.util.Calendar.MINUTE, rel);
                    time = String.format(java.util.Locale.CHINA, "%02d:%02d",
                            cal.get(java.util.Calendar.HOUR_OF_DAY),
                            cal.get(java.util.Calendar.MINUTE));
                } else {
                    time = String.format(java.util.Locale.CHINA, "%02d:%02d",
                            o.optInt("hour", 7), o.optInt("minute", 0));
                }
                long id = ds.alarmAddRepeat(time, label, true, repeat);
                if (id > 0) {
                    AlarmScheduler.reschedule(c);
                    Log.i(TAG, "set ok id=" + id + " time=" + time + " repeat=" + repeat);
                    /* T9-16 用户要求：语音定闹钟弹全屏确认（大字时间，30 秒自动消失） */
                    AlarmSetConfirmActivity.launch(c, time, repeat, label);
                }
            } else if ("cancel".equals(action)) {
                int h = o.optInt("hour", -1), m = o.optInt("minute", -1);
                int n;
                if (h >= 0 && m >= 0) {
                    n = ds.alarmDisableByTime(String.format(java.util.Locale.CHINA, "%02d:%02d", h, m));
                } else {
                    /* T9-16 语音关闭响铃：cancel 无时间 = 关掉当前正在响的闹钟（不动 DB） */
                    Intent dismiss = new Intent(c, AlarmReceiver.class);
                    dismiss.setAction(AlarmReceiver.ACTION_DISMISS_RING);
                    c.sendBroadcast(dismiss);
                    Log.i(TAG, "cancel no-time -> dismissed active ring");
                    return;
                }
                AlarmScheduler.reschedule(c);
                Log.i(TAG, "cancel disabled=" + n);
            } else if ("off_all".equals(action)) {
                int n = ds.alarmDisableAll();
                AlarmScheduler.reschedule(c);
                /* 响铃中说"关闭所有闹钟"也要停铃 */
                Intent dismiss = new Intent(c, AlarmReceiver.class);
                dismiss.setAction(AlarmReceiver.ACTION_DISMISS_RING);
                c.sendBroadcast(dismiss);
                Log.i(TAG, "off_all disabled=" + n);
            } else if ("query".equals(action)) {
                /* 列表查询：刷新快照即可（UI 轮询同文件） */
                ds.publishAlarmSnapshotPublic();
            }
        } catch (Throwable t) {
            Log.w(TAG, "handle: " + t);
        }
    }
}
