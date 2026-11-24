/*
 * SettingsActivity.java -- T9-07: only the settings that have a real use on this device.
 *
 *   - whether the AI worker (and therefore the voice bridge) is alive right now
 *   - whether the AI service is reachable: last HTTP status, last error class, counters
 *   - whether the submit channel is healthy: accepted / refused counts
 *   - how much history is stored, and where
 *   - device and build identity
 *
 * No API key is read, shown, copied or logged here: the key lives in the protected worker
 * configuration and never leaves it.
 */
package com.tgz02.voice;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

public final class SettingsActivity extends Activity implements VoiceBridgeClient.Listener {

    VoiceBridgeClient client;
    SessionStore store;
    LinearLayout box;
    final Handler h = new Handler(Looper.getMainLooper());

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new VoiceBridgeClient(this);
        store = new SessionStore(getFilesDir());
        setContentView(build());
        render();
    }

    @Override
    protected void onStart()
    {
        super.onStart();
        client.setListener(this);
        client.start();
    }

    @Override
    protected void onStop()
    {
        client.stopPolling();
        super.onStop();
    }

    View build()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui.BG);

        LinearLayout bar = Ui.bar(this, Ui.BG_BAR);
        bar.setPadding(Ui.dp(this, 18), 0, Ui.dp(this, 10), 0);
        bar.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                          Ui.dp(this, 48)));
        TextView title = Ui.text(this, "设置", 18f, Ui.TEXT);
        title.setTypeface(title.getTypeface(), android.graphics.Typeface.BOLD);
        bar.addView(title);
        LinearLayout right = new LinearLayout(this);
        right.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        bar.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        right.addView(Ui.action(Ui.text(this, "刷新", 14f, Ui.ACCENT), new Runnable() {
            public void run() { render(); }
        }));
        right.addView(Ui.action(Ui.text(this, "返回", 14f, Ui.TEXT_DIM), new Runnable() {
            public void run() { finish(); }
        }));
        root.addView(bar);
        root.addView(Ui.divider(this));

        ScrollView sv = new ScrollView(this);
        box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(Ui.dp(this, 18), Ui.dp(this, 10), Ui.dp(this, 18), Ui.dp(this, 18));
        sv.addView(box);
        root.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        return root;
    }

    void render()
    {
        box.removeAllViews();
        VoiceBridgeClient.Status s = client.status();
        long now = System.currentTimeMillis();
        boolean fresh = s.present && s.tsMs > 0 && (now - s.tsMs < 6000);

        section("语音后台");
        row("运行状态", fresh ? "运行中（" + s.worker + "）" : (s.present ? "无心跳（离线）" : "未连接"),
            fresh ? Ui.OK : Ui.ERR);
        row("进程", fresh ? ("pid " + s.pid + " · 已运行 " + uptime(s.uptimeMs)) : "-", Ui.TEXT);
        row("原厂会话", fresh ? (empty(s.session) ? "无" : s.session)
                + (s.round > 0 ? (" · 第 " + s.round + " 轮") : "")
                + (s.listening ? " · 麦克风开启" : "") : "-", Ui.TEXT_DIM);
        row("状态快照", s.present ? ago(s.tsMs) : "从未收到", Ui.TEXT_DIM);

        section("AI 服务");
        row("提供方", empty(s.provider) ? "-" : (s.provider + (s.mock ? "（离线模拟）" : "")), Ui.TEXT);
        row("模型", empty(s.model) ? "-" : s.model, Ui.TEXT_DIM);
        row("成功 / 失败 / 超时", s.ok + " / " + s.err + " / " + s.timeout, Ui.TEXT_DIM);
        row("最近 HTTP", s.lastHttp > 0 ? String.valueOf(s.lastHttp) : "尚无调用",
            s.lastHttp == 0 ? Ui.TEXT_FAINT : (s.lastHttp == 200 ? Ui.OK : Ui.WARN));
        row("最近耗时", s.latencyMs > 0 ? (s.latencyMs + " ms") : "-", Ui.TEXT_DIM);
        row("最近错误", empty(s.lastError) ? "无" : s.lastError, Ui.ERR);

        section("提交通道");
        row("已接受请求", String.valueOf(s.inboxAccepted), Ui.TEXT_DIM);
        row("被拒请求", String.valueOf(s.inboxRejected),
            s.inboxRejected > 0 ? Ui.WARN : Ui.TEXT_DIM);
        row("已发布事件", s.uiPublished + (s.uiErrors > 0 ? ("（失败 " + s.uiErrors + "）") : ""),
            s.uiErrors > 0 ? Ui.WARN : Ui.TEXT_DIM);

        section("会话记录");
        row("本机会话", store.list().size() + " 个", Ui.TEXT_DIM);
        row("消息条数", store.messageCount() + " 条", Ui.TEXT_DIM);
        row("存储位置", getFilesDir().getAbsolutePath() + "/sessions", Ui.TEXT_FAINT);

        section("设备");
        row("型号", Build.MODEL + " / " + Build.DEVICE, Ui.TEXT_DIM);
        row("系统", "Android " + Build.VERSION.RELEASE + "（API " + Build.VERSION.SDK_INT + "）",
            Ui.TEXT_DIM);
        row("应用", getPackageName() + " · v" + version(), Ui.TEXT_DIM);
        row("应用 UID", String.valueOf(android.os.Process.myUid()), Ui.TEXT_DIM);
        row("后台服务配置", "见 /data/local/tmp/t5_bridge/ai_worker（不在此读取）", Ui.TEXT_FAINT);
    }

    String version()
    {
        try {
            return getPackageManager().getPackageInfo(getPackageName(), 0).versionName;
        } catch (Throwable t) {
            return "?";
        }
    }

    static boolean empty(String s)
    {
        return s == null || s.length() == 0;
    }

    static String uptime(long ms)
    {
        if (ms <= 0) return "0 分";
        long min = ms / 60000;
        if (min < 60) return min + " 分";
        return (min / 60) + " 小时 " + (min % 60) + " 分";
    }

    static String ago(long ts)
    {
        long d = System.currentTimeMillis() - ts;
        if (d < 1500) return "刚刚";
        if (d < 60000) return (d / 1000) + " 秒前";
        return (d / 60000) + " 分钟前";
    }

    void section(String name)
    {
        TextView t = Ui.text(this, name, 13f, Ui.ACCENT);
        t.setPadding(0, Ui.dp(this, 14), 0, Ui.dp(this, 4));
        box.addView(t);
        box.addView(Ui.divider(this));
    }

    void row(String label, String value, int color)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui.dp(this, 7), 0, Ui.dp(this, 7));

        TextView l = Ui.text(this, label, 14f, Ui.TEXT_DIM);
        l.setLayoutParams(new LinearLayout.LayoutParams(Ui.dp(this, 150),
                                                        ViewGroup.LayoutParams.WRAP_CONTENT));
        r.addView(l);

        TextView v = Ui.text(this, value, 14f, color);
        r.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        box.addView(r);
    }

    /* ------------------------------------------------------------------ callbacks */

    public void onReceipt(VoiceBridgeClient.Receipt r) { }

    public void onTurn(VoiceBridgeClient.Turn t) { }

    public void onPlay(VoiceBridgeClient.Play p) { }

    public void onStatus(VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() { public void run() { render(); } });
    }

    public void onDiag(String line) { }
}
