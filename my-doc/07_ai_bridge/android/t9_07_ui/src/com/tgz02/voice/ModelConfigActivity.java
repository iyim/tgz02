/*
 * ModelConfigActivity.java -- T9-08C: 大模型配置（多厂商、明文、可增删改、可切换、可测）
 *
 * 一屏搞定，不分子页面：
 *   ┌ 大模型配置                                    刷新  返回 ┐
 *   │ 当前生效：豆包 / doubao-pro-32k（配置 m-...）            │
 *   │ 配置数量：3 · 最近调用：成功 · 最近测试：ok 123 ms        │
 *   │ [ ＋ 新增配置 ]                                          │
 *   ├──────────────────────────────────────────────────────┤
 *   │ 豆包-主力   豆包 · doubao-pro-32k        [默认]          │
 *   │                       测试  编辑  默认  删除             │
 *   └──────────────────────────────────────────────────────┘
 *
 * 三条产品原则（任务书 §1）：
 *   1. 简单：所有字段一个对话框里改，没有隐藏开关；
 *   2. 明文：API Key 直接显示、直接编辑（不做掩码、不加密）；
 *   3. 立即生效：保存后写 models.json，worker 下一个请求就用新配置（它按 mtime 热加载）。
 *
 * 换厂商不重编译：这里是配置界面，协议由 worker 里各自的适配器负责。
 */
package com.tgz02.voice;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.InputType;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.List;

public final class ModelConfigActivity extends Activity implements VoiceBridgeClient.Listener {

    VoiceBridgeClient client;
    LinearLayout box;
    LinearLayout footer;
    final Handler h = new Handler(Looper.getMainLooper());

    private String lastTestSig = "";

    @Override
    protected void onCreate(Bundle b)
    {
        super.onCreate(b);
        client = new VoiceBridgeClient(this, "models");
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

    /* ------------------------------------------------------------------ views */

    View build()
    {
        LinearLayout root = new LinearLayout(this);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setBackgroundColor(Ui3.bg(this));

        LinearLayout bar = Ui3.bar(this, Ui3.surface(this));
        bar.setPadding(Ui3.dp(this, 28), Ui3.dp(this, 14), Ui3.dp(this, 28), Ui3.dp(this, 10));
        bar.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,
                                                          Ui3.dp(this, 48)));
        TextView title = Ui3.textBold(this, "设置 / 大模型配置", 24f, Ui3.text(this));
        title.setTypeface(title.getTypeface(), android.graphics.Typeface.BOLD);
        bar.addView(title);
        LinearLayout right = new LinearLayout(this);
        right.setGravity(Gravity.CENTER_VERTICAL | Gravity.END);
        bar.addView(right, new LinearLayout.LayoutParams(0,
                ViewGroup.LayoutParams.MATCH_PARENT, 1f));
        right.addView(Ui3.action(Ui3.text(this, "刷新", 14f, Ui3.primary2(this)), new Runnable() {
            public void run() { render(); }
        }));
        right.addView(Ui3.action(Ui3.text(this, "返回", 14f, Ui3.text2(this)), new Runnable() {
            public void run() { finish(); }
        }));
        root.addView(bar);
        root.addView(Ui3.divider(this));

        ScrollView sv = new ScrollView(this);
        box = new LinearLayout(this);
        box.setOrientation(LinearLayout.VERTICAL);
        box.setPadding(Ui3.dp(this, 28), Ui3.dp(this, 12), Ui3.dp(this, 28), Ui3.dp(this, 20));
        sv.addView(box);
        root.addView(sv, new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0, 1f));
        root.addView(Ui3.divider(this));

        footer = Ui3.bar(this, Ui3.surface(this));
        footer.setPadding(Ui3.dp(this, 18), Ui3.dp(this, 8), Ui3.dp(this, 18), Ui3.dp(this, 8));
        footer.addView(Ui3.action(Ui3.text(this, "＋ 新增配置", 15f, Ui3.primary2(this)), new Runnable() {
            public void run() { edit(null); }
        }));
        root.addView(footer);
        return root;
    }

    void render()
    {
        box.removeAllViews();
        List<ModelStore.Model> list = ModelStore.load();
        String defId = ModelStore.loadDefaultId();
        VoiceBridgeClient.Status s = client.status();

        section("当前生效（后台服务实际在用的）");
        if (s.modelsActive) {
            row("配置", describe(s.modelsVendor, s.modelsLabel, s.modelsId), Ui3.text(this));
            row("模型", s.modelsModel + (s.modelsMode.length() > 0 ? " · " + s.modelsMode : ""),
                Ui3.text2(this));
            row("已保存", s.modelsCount + " 套 · 热加载 " + s.modelsReloads + " 次", Ui3.text2(this));
            row("最近调用", s.modelsCalls == 0 ? "尚无调用"
                    : (s.modelsOk + " 成功 / " + s.modelsErr + " 失败 / " + s.modelsTimeout + " 超时"),
                s.modelsErr > 0 ? 0xFFB57708 : Ui3.text2(this));
            if (s.modelsLastError.length() > 0) row("最近错误", s.modelsLastError, 0xFFC02626);
            if (s.modelsError.length() > 0) row("配置问题", s.modelsError, 0xFFB57708);
        } else {
            row("状态", s.present ? "还没有可用的模型配置" : "未连接后台服务", 0xFFB57708);
            if (s.modelsError.length() > 0) row("原因", s.modelsError, 0xFFB57708);
            row("说明", "在下面添加一套配置后立即生效（无需重启）", Ui3.text3(this));
        }
        if (s.testRan) {
            row("最近测试", (s.testOk ? "成功" : "失败") + " · " + s.testMs + " ms", 
                s.testOk ? 0xFF14803E : 0xFFC02626);
            row("测试详情", s.testReason, s.testOk ? Ui3.text2(this) : 0xFFC02626);
        }

        section("已保存的配置（" + list.size() + " / " + ModelStore.MAX_MODELS + "）");
        if (list.isEmpty()) {
            row("（空）", "点下面的「＋ 新增配置」开始", Ui3.text3(this));
        }
        for (int i = 0; i < list.size(); i++) {
            addCard(list.get(i), list.get(i).id.equals(defId));
        }
        addMemoryNote();
    }

    void addMemoryNote()
    {
        section("长期记忆（T9-08D 接入）");
        row("状态", "尚未接入 · 不展示任何演示记忆", 0xFFB57708);
        row("将提供", "查看 / 添加 / 编辑 / 删除 / 停用 / 清空", Ui3.text3(this));
    }

    void addCard(final ModelStore.Model c, boolean isDefault)
    {
        LinearLayout card = new LinearLayout(this);
        card.setOrientation(LinearLayout.VERTICAL);
        card.setBackground(Ui3.roundStroke(this, Ui3.surface2(this), Ui3.line2(this), 10f));
        card.setPadding(Ui3.dp(this, 14), Ui3.dp(this, 10), Ui3.dp(this, 14), Ui3.dp(this, 10));

        LinearLayout head = new LinearLayout(this);
        head.setOrientation(LinearLayout.HORIZONTAL);
        head.setGravity(Gravity.CENTER_VERTICAL);
        String name = c.label.length() > 0 ? c.label : c.id;
        TextView t = Ui3.textBold(this, name, 18f, Ui3.text(this));
        head.addView(t);
        TextView v = Ui3.text(this, "  " + ModelStore.vendorName(c.vendor) + " · " + c.model,
                             13f, Ui3.text2(this));
        head.addView(v);
        if (isDefault) {
            TextView d = Ui3.text(this, "  默认", 12f, 0xFF14803E);
            head.addView(d);
        }
        if (!c.enabled) {
            head.addView(Ui3.text(this, "  已停用", 12f, 0xFFB57708));
        }
        card.addView(head);

        String base = c.baseUrl.length() > 0 ? c.baseUrl
                                             : ModelStore.defaultBase(c.vendor, c.apiMode);
        TextView sub = Ui3.text(this, (c.isDoubao() && c.endpointId.length() > 0
                ? ("Endpoint " + c.endpointId + " · ") : "")
                + (base.length() > 0 ? base : "（Base URL 未填写）"), 12f, Ui3.text3(this));
        card.addView(sub);
        TextView key = Ui3.text(this, "API Key：" + (c.apiKey.length() > 0
                ? c.apiKey : "（未填写）"), 12f, c.apiKey.length() > 0 ? Ui3.text2(this) : 0xFFB57708);
        card.addView(key);

        LinearLayout acts = new LinearLayout(this);
        acts.setOrientation(LinearLayout.HORIZONTAL);
        acts.setGravity(Gravity.END);
        acts.setPadding(0, Ui3.dp(this, 6), 0, 0);
        acts.addView(action("测试", Ui3.primary2(this), new Runnable() {
            public void run() { test(c); }
        }));
        acts.addView(action("编辑", Ui3.text(this), new Runnable() {
            public void run() { edit(c); }
        }));
        if (!isDefault) {
            acts.addView(action("设为默认", Ui3.text(this), new Runnable() {
                public void run() { makeDefault(c); }
            }));
        }
        acts.addView(action("删除", 0xFFC02626, new Runnable() {
            public void run() { remove(c); }
        }));
        card.addView(acts);

        LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        lp.bottomMargin = Ui3.dp(this, 10);
        box.addView(card, lp);
    }

    TextView action(String label, int color, final Runnable r)
    {
        TextView t = Ui3.textBold(this, label, 15f, color);
        t.setPadding(Ui3.dp(this, 12), Ui3.dp(this, 6), Ui3.dp(this, 12), Ui3.dp(this, 6));
        t.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) { r.run(); }
        });
        return t;
    }

    /* --------------------------------------------------------------- actions */

    void test(ModelStore.Model c)
    {
        String err = client.requestModelTest(c.id);
        toast(err != null ? err : ("已请求测试：" + c.label));
    }

    void makeDefault(ModelStore.Model c)
    {
        List<ModelStore.Model> list = ModelStore.load();
        if (!ModelStore.save(list, c.id)) { toast("保存失败"); return; }
        toast("默认模型： " + c.label);
        render();
    }

    void remove(final ModelStore.Model c)
    {
        new AlertDialog.Builder(this)
                .setTitle("删除配置")
                .setMessage("确定删除「" + (c.label.length() > 0 ? c.label : c.id) + "」？")
                .setPositiveButton("删除", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        List<ModelStore.Model> list = ModelStore.load();
                        String defId = ModelStore.loadDefaultId();
                        for (int i = 0; i < list.size(); i++) {
                            if (list.get(i).id.equals(c.id)) { list.remove(i); break; }
                        }
                        if (defId.equals(c.id)) {
                            /* 删掉当前默认：把默认交给第一条还在的配置，绝不留一个指向空号的 default */
                            defId = list.isEmpty() ? "" : list.get(0).id;
                        }
                        if (!ModelStore.save(list, defId)) { toast("保存失败"); return; }
                        toast("已删除");
                        render();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    /** 编辑（c == null = 新增）。所有字段明文可见、可改。 */
    void edit(final ModelStore.Model c)
    {
        final boolean isNew = (c == null);
        final ModelStore.Model m = new ModelStore.Model();
        if (!isNew) {
            m.id = c.id; m.vendor = c.vendor; m.label = c.label; m.baseUrl = c.baseUrl;
            m.apiKey = c.apiKey; m.model = c.model; m.endpointId = c.endpointId;
            m.apiMode = c.apiMode; m.extra = c.extra; m.maxTokens = c.maxTokens;
            m.temperature = c.temperature; m.timeoutMs = c.timeoutMs; m.enabled = c.enabled;
        } else {
            m.id = ModelStore.newId();
            m.vendor = ModelStore.V_OPENAI;
        }

        LinearLayout form = new LinearLayout(this);
        form.setOrientation(LinearLayout.VERTICAL);
        form.setPadding(Ui3.dp(this, 16), Ui3.dp(this, 8), Ui3.dp(this, 16), Ui3.dp(this, 8));

        final TextView vendorRow = Ui3.text(this, "", 14f, Ui3.primary2(this));
        form.addView(fieldLabel("类型（点一下换厂商）"));
        vendorRow.setText(ModelStore.vendorName(m.vendor));
        vendorRow.setPadding(0, Ui3.dp(this, 4), 0, Ui3.dp(this, 8));
        vendorRow.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                /* 三家轮换：豆包 -> 千问 -> OpenAI 兼容 -> 豆包 */
                if (ModelStore.V_DOUBAO.equals(m.vendor))      m.vendor = ModelStore.V_QWEN;
                else if (ModelStore.V_QWEN.equals(m.vendor))   m.vendor = ModelStore.V_OPENAI;
                else                                          m.vendor = ModelStore.V_DOUBAO;
                vendorRow.setText(ModelStore.vendorName(m.vendor));
            }
        });
        form.addView(vendorRow);

        final EditText label = input(form, "名称（自己看得懂就行）", m.label, false);
        final EditText base = input(form, "Base URL（留空 = 该厂商默认地址）", m.baseUrl, false);
        final EditText key = input(form, "API Key（明文保存）", m.apiKey, false);
        final EditText model = input(form, "模型名称", m.model, false);
        final EditText endpoint = input(form, "Endpoint ID（豆包专用，可留空）", m.endpointId, false);
        final EditText extra = input(form, "额外请求参数（JSON 对象，可留空）", m.extra, true);
        final EditText maxTok = input(form, "max_tokens", String.valueOf(m.maxTokens), false);
        final EditText temp = input(form, "temperature", String.valueOf(m.temperature), false);
        final EditText timeout = input(form, "超时（毫秒）", String.valueOf(m.timeoutMs), false);

        ScrollView sc = new ScrollView(this);
        sc.addView(form);

        new AlertDialog.Builder(this)
                .setTitle(isNew ? "新增模型配置" : "编辑模型配置")
                .setView(sc)
                .setPositiveButton("保存", new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface d, int w) {
                        m.label = label.getText().toString().trim();
                        m.baseUrl = base.getText().toString().trim();
                        m.apiKey = key.getText().toString().trim();
                        m.model = model.getText().toString().trim();
                        m.endpointId = endpoint.getText().toString().trim();
                        m.extra = extra.getText().toString().trim();
                        m.maxTokens = parseInt(maxTok.getText().toString(), 512);
                        m.temperature = parseDouble(temp.getText().toString(), 0.7);
                        m.timeoutMs = parseInt(timeout.getText().toString(), 30000);
                        if (ModelStore.V_QWEN.equals(m.vendor) && m.baseUrl.length() == 0) {
                            m.apiMode = ModelStore.MODE_NATIVE;
                        }
                        if (m.model.length() == 0 && m.endpointId.length() == 0) {
                            toast("模型名称或 Endpoint ID 至少要填一个");
                            return;
                        }
                        List<ModelStore.Model> list = ModelStore.load();
                        boolean replaced = false;
                        for (int i = 0; i < list.size(); i++) {
                            if (list.get(i).id.equals(m.id)) { list.set(i, m); replaced = true; break; }
                        }
                        if (!replaced) {
                            if (list.size() >= ModelStore.MAX_MODELS) {
                                toast("最多 " + ModelStore.MAX_MODELS + " 套配置");
                                return;
                            }
                            list.add(m);
                        }
                        String defId = ModelStore.loadDefaultId();
                        if (defId.length() == 0) defId = m.id;   /* 第一套自动成为默认 */
                        if (!ModelStore.save(list, defId)) { toast("保存失败"); return; }
                        toast("已保存，下一个请求立即生效");
                        render();
                    }
                })
                .setNegativeButton("取消", null)
                .show();
    }

    TextView fieldLabel(String s)
    {
        TextView t = Ui3.text(this, s, 12f, Ui3.text3(this));
        t.setPadding(0, Ui3.dp(this, 8), 0, 0);
        return t;
    }

    /** 一个字段 = 一行说明 + 一个输入框；multiline 用于额外参数那段 JSON */
    EditText input(LinearLayout form, String hint, String value, boolean multiline)
    {
        form.addView(fieldLabel(hint));
        EditText e = new EditText(this);
        e.setText(value == null ? "" : value);
        e.setHint(hint);
        e.setTextSize(13f);
        e.setTextColor(Ui3.text(this));
        e.setHintTextColor(Ui3.text3(this));
        if (multiline) {
            e.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE);
            e.setSingleLine(false);
            e.setMinLines(2);
        } else {
            e.setInputType(InputType.TYPE_CLASS_TEXT);
            e.setSingleLine(true);
        }
        form.addView(e);
        return e;
    }

    static int parseInt(String s, int def)
    {
        try { return Integer.parseInt(s.trim()); } catch (Throwable t) { return def; }
    }

    static double parseDouble(String s, double def)
    {
        try { return Double.parseDouble(s.trim()); } catch (Throwable t) { return def; }
    }

    void toast(String s) { Toast.makeText(this, s, Toast.LENGTH_SHORT).show(); }

    void section(String name)
    {
        TextView t = Ui3.text(this, name, 13f, Ui3.primary2(this));
        t.setPadding(0, Ui3.dp(this, 14), 0, Ui3.dp(this, 4));
        box.addView(t);
        box.addView(Ui3.divider(this));
    }

    void row(String label, String value, int color)
    {
        LinearLayout r = new LinearLayout(this);
        r.setOrientation(LinearLayout.HORIZONTAL);
        r.setGravity(Gravity.CENTER_VERTICAL);
        r.setPadding(0, Ui3.dp(this, 6), 0, Ui3.dp(this, 6));
        TextView l = Ui3.text(this, label, 14f, Ui3.text2(this));
        l.setLayoutParams(new LinearLayout.LayoutParams(Ui3.dp(this, 110),
                                                        ViewGroup.LayoutParams.WRAP_CONTENT));
        r.addView(l);
        TextView v = Ui3.text(this, value, 14f, color);
        r.addView(v, new LinearLayout.LayoutParams(0, ViewGroup.LayoutParams.WRAP_CONTENT, 1f));
        box.addView(r);
    }

    static String describe(String vendor, String label, String id)
    {
        String n = ModelStore.vendorName(vendor);
        if (label != null && label.length() > 0) return n + " · " + label + "（" + id + "）";
        return n + "（" + id + "）";
    }

    /* --------------------------------------------------------------- callbacks */

    public void onReceipt(VoiceBridgeClient.Receipt r) { }

    public void onTurn(VoiceBridgeClient.Turn t) { }

    public void onPlay(VoiceBridgeClient.Play p) { }

    public void onStatus(VoiceBridgeClient.Status s)
    {
        h.post(new Runnable() {
            public void run() {
                VoiceBridgeClient.Status st = client.status();
                String sig = st.testId + "/" + st.testMs + "/" + st.testOk + "/" + st.testRan;
                if (!sig.equals(lastTestSig)) {
                    lastTestSig = sig;
                    if (st.testRan) {
                        toast((st.testOk ? "连接正常：" : "连接失败：")
                                + (st.testOk ? (st.testMs + " ms") : st.testReason));
                    }
                }
                render();
            }
        });
    }

    public void onDiag(String line) { android.util.Log.i("T908MODELS", line); }
}
