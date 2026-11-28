/*
 * ConfigServer.java -- T9-21: 在设备上起一个极小的 HTTP 服务，用手机/电脑浏览器配置大模型。
 *
 * 为什么需要：本机屏幕 1024x600、mdpi，键盘 + 表单在设备上点起来非常难受；
 * 而大模型配置本质上就是几个字符串（vendor / base_url / model / api_key）。
 *
 * 设计约束：
 *   - 不引入任何第三方库（项目全程 javac + d8 + aapt2，没有 gradle 依赖管理），
 *     所以 HTTP 用 ServerSocket 手写，只支持 GET/POST + Content-Length；
 *   - 只写 ModelStore 的 models.json（App 自己的文件），不碰 worker.conf；
 *   - 监听 0.0.0.0，仅局域网可达（设备本身没有公网地址）；
 *   - 保存后调用 ModelStore.save()，worker 在下次启动/下一轮会读到新配置。
 */
package com.tgz02.voice;

import android.content.Context;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URLDecoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class ConfigServer {

    private static final int[] PORTS = { 8080, 8088, 8090, 18080 };

    private static ConfigServer sInstance;

    private final Context app;
    private ServerSocket server;
    private Thread loop;
    private volatile boolean running;
    private int port = -1;

    private ConfigServer(Context c) { app = c.getApplicationContext(); }

    static synchronized ConfigServer get(Context c)
    {
        if (sInstance == null) sInstance = new ConfigServer(c);
        return sInstance;
    }

    synchronized boolean isRunning() { return running && server != null && !server.isClosed(); }

    int port() { return port; }

    /** 启动（幂等）。返回可访问的 URL，失败返回 null。 */
    synchronized String start()
    {
        if (isRunning()) return url();
        for (int p : PORTS) {
            try {
                server = new ServerSocket(p);
                port = p;
                break;
            } catch (Throwable ignored) {
                server = null;
            }
        }
        if (server == null) return null;
        running = true;
        loop = new Thread(new Runnable() {
            public void run() { acceptLoop(); }
        }, "tgz02-config");
        loop.setDaemon(true);
        loop.start();
        return url();
    }

    synchronized void stop()
    {
        running = false;
        try { if (server != null) server.close(); } catch (Throwable ignored) { }
        server = null;
        port = -1;
    }

    String url()
    {
        String ip = localIp();
        return "http://" + ip + ":" + port;
    }

    /* ------------------------------------------------------------------ net */

    static String localIp()
    {
        try {
            List<NetworkInterface> ifs = Collections.list(NetworkInterface.getNetworkInterfaces());
            String fallback = null;
            for (NetworkInterface ni : ifs) {
                if (!ni.isUp() || ni.isLoopback()) continue;
                for (InetAddress a : Collections.list(ni.getInetAddresses())) {
                    if (!(a instanceof Inet4Address)) continue;
                    String s = a.getHostAddress();
                    if (s == null || s.startsWith("127.")) continue;
                    if (s.startsWith("192.168.") || s.startsWith("10.") || s.startsWith("172."))
                        return s;
                    if (fallback == null) fallback = s;
                }
            }
            if (fallback != null) return fallback;
        } catch (Throwable ignored) { }
        return "127.0.0.1";
    }

    private void acceptLoop()
    {
        while (running) {
            Socket s = null;
            try {
                s = server.accept();
                s.setSoTimeout(8000);
                handle(s);
            } catch (Throwable ignored) {
            } finally {
                try { if (s != null) s.close(); } catch (Throwable ignored) { }
            }
        }
    }

    private void handle(Socket s) throws Exception
    {
        InputStream in = s.getInputStream();
        BufferedReader r = new BufferedReader(new InputStreamReader(in, "UTF-8"));

        String line = r.readLine();
        if (line == null) return;
        String[] parts = line.split(" ");
        if (parts.length < 2) return;
        String method = parts[0];
        String path = parts[1];

        int contentLength = 0;
        String h;
        while ((h = r.readLine()) != null && h.length() > 0) {
            int c = h.indexOf(':');
            if (c > 0 && h.substring(0, c).trim().equalsIgnoreCase("Content-Length")) {
                try { contentLength = Integer.parseInt(h.substring(c + 1).trim()); }
                catch (Throwable ignored) { }
            }
        }

        String body = "";
        if (contentLength > 0) {
            char[] buf = new char[contentLength];
            int off = 0;
            while (off < contentLength) {
                int n = r.read(buf, off, contentLength - off);
                if (n <= 0) break;
                off += n;
            }
            body = new String(buf, 0, off);
        }

        if (path.startsWith("/save") && "POST".equals(method)) {
            reply(s, saveForm(parseForm(body)));
        } else if (path.startsWith("/json")) {
            reply(s, "{\"url\":\"" + url() + "\"}", "application/json; charset=utf-8");
        } else {
            reply(s, page());
        }
    }

    private void reply(Socket s, String html) throws Exception
    {
        reply(s, html, "text/html; charset=utf-8");
    }

    private void reply(Socket s, String body, String type) throws Exception
    {
        byte[] b = body.getBytes("UTF-8");
        OutputStream o = s.getOutputStream();
        String head = "HTTP/1.1 200 OK\r\n"
                + "Content-Type: " + type + "\r\n"
                + "Content-Length: " + b.length + "\r\n"
                + "Cache-Control: no-store\r\n"
                + "Connection: close\r\n\r\n";
        o.write(head.getBytes("UTF-8"));
        o.write(b);
        o.flush();
    }

    /* ----------------------------------------------------------------- form */

    private static Map<String, String> parseForm(String body)
    {
        Map<String, String> m = new HashMap<String, String>();
        if (body == null || body.length() == 0) return m;
        String[] kv = body.split("&");
        for (String p : kv) {
            int eq = p.indexOf('=');
            if (eq <= 0) continue;
            try {
                String k = URLDecoder.decode(p.substring(0, eq), "UTF-8");
                String v = URLDecoder.decode(p.substring(eq + 1), "UTF-8");
                m.put(k, v);
            } catch (Throwable ignored) { }
        }
        return m;
    }

    private synchronized String saveForm(Map<String, String> f)
    {
        String base = trim(f.get("base_url"));
        String model = trim(f.get("model"));
        String key = trim(f.get("api_key"));
        String vendor = trim(f.get("vendor"));
        String label = trim(f.get("label"));
        String defId = trim(f.get("default_id"));
        if (vendor.length() == 0) vendor = ModelStore.V_OPENAI;
        if (base.length() == 0 || model.length() == 0) {
            return pageWith("base_url 和 model 不能为空");
        }

        /* worker 的 mc_valid_id() 只接受 [A-Za-z0-9._-]，中文名会被拒（"model entry has
         * no usable id"）。所以 id 一律用安全 slug，中文只留在 label 里给人看。 */
        List<ModelStore.Model> list = ModelStore.load();
        ModelStore.Model m = null;
        for (ModelStore.Model x : list) {
            if (label.length() > 0 && label.equals(x.label)) { m = x; break; }
            if (defId.length() > 0 && defId.equals(x.id)) { m = x; break; }
        }
        if (m == null) {
            if (list.size() >= ModelStore.MAX_MODELS) list.remove(0);
            m = new ModelStore.Model();
            m.id = safeId(label, model);
            list.add(m);
        }
        m.vendor = vendor;
        m.label = label.length() > 0 ? label : model;
        m.baseUrl = base;
        m.model = model;
        m.apiKey = key;
        m.apiMode = ModelStore.MODE_NATIVE;
        m.endpointId = "";
        if (m.id != null && !m.id.equals(safeId(m.id, m.id))) m.id = safeId(m.id, model);

        boolean ok = ModelStore.save(list, m.id);
        if (!ok) return pageWith("写入 models.json 失败");
        return pageWith("已保存：" + escape(m.label) + " → " + escape(m.baseUrl)
                + "（id=" + escape(m.id) + "，重启语音后台后生效）");
    }

    /** 把任意文本压成 worker 接受的 id：[A-Za-z0-9._-]，非空、长度有上限 */
    static String safeId(String label, String fallback)
    {
        String src = (label != null && label.length() > 0) ? label : fallback;
        if (src == null) src = "";
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < src.length(); i++) {
            char c = src.charAt(i);
            boolean ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')
                    || (c >= '0' && c <= '9') || c == '-' || c == '_' || c == '.';
            if (ok) {
                b.append(c);
            } else if (b.length() > 0 && b.charAt(b.length() - 1) != '-') {
                b.append('-');
            }
        }
        String s = b.toString();
        while (s.startsWith("-")) s = s.substring(1);
        while (s.endsWith("-")) s = s.substring(0, s.length() - 1);
        if (s.length() == 0) s = "m" + System.currentTimeMillis();
        if (s.length() > 40) s = s.substring(0, 40);
        return s;
    }

    private static String trim(String s) { return s == null ? "" : s.trim(); }

    /* ----------------------------------------------------------------- html */

    private String page() { return pageWith(""); }

    private String pageWith(String notice)
    {
        List<ModelStore.Model> list = ModelStore.load();
        String defId = ModelStore.loadDefaultId();

        StringBuilder cur = new StringBuilder();
        if (list.isEmpty()) {
            cur.append("<p class=warn>本机还没有保存过任何大模型配置（models.json 不存在）。</p>");
        } else {
            cur.append("<table>");
            for (ModelStore.Model m : list) {
                cur.append("<tr><td>").append(escape(m.label)).append("</td><td>")
                   .append(escape(m.vendor)).append("</td><td>").append(escape(m.baseUrl))
                   .append("</td><td>").append(escape(m.model)).append("</td><td>")
                   .append(m.id.equals(defId) ? "默认" : "").append("</td></tr>");
            }
            cur.append("</table>");
        }

        return "<!doctype html><html><head><meta charset=utf-8>"
            + "<meta name=viewport content='width=device-width,initial-scale=1'>"
            + "<title>TG-Z02 大模型配置</title><style>"
            + "body{font-family:system-ui,-apple-system,sans-serif;margin:0;padding:18px;"
            + "background:#f5f7fb;color:#1f2a37}"
            + "h1{font-size:20px;margin:0 0 4px}p.sub{color:#6b7280;font-size:13px;margin:0 0 16px}"
            + "form{background:#fff;border-radius:12px;padding:16px;box-shadow:0 1px 3px rgba(0,0,0,.08)}"
            + "label{display:block;font-size:13px;color:#4b5563;margin:12px 0 4px}"
            + "input,select{width:100%;box-sizing:border-box;padding:11px;font-size:15px;"
            + "border:1px solid #d1d5db;border-radius:8px;background:#fff}"
            + "button{margin-top:18px;width:100%;padding:14px;font-size:16px;font-weight:600;"
            + "color:#fff;background:#2563eb;border:0;border-radius:10px}"
            + ".notice{background:#ecfdf5;border:1px solid #a7f3d0;color:#065f46;padding:10px 12px;"
            + "border-radius:8px;font-size:14px;margin-bottom:14px}"
            + ".warn{color:#b45309;font-size:14px}"
            + "table{width:100%;border-collapse:collapse;font-size:12px;margin-top:6px}"
            + "td{border-bottom:1px solid #eef2f7;padding:6px 4px;word-break:break-all}"
            + ".hint{font-size:12px;color:#6b7280;margin-top:10px;line-height:1.6}"
            + "</style></head><body>"
            + "<h1>布丁 · 大模型配置</h1>"
            + "<p class=sub>" + escape(url()) + "</p>"
            + (notice.length() > 0 ? "<div class=notice>" + notice + "</div>" : "")
            + "<form method=post action=/save>"
            + "<label>厂商</label><select name=vendor>"
            + "<option value=openai>OpenAI 兼容（自建/代理）</option>"
            + "<option value=doubao>豆包 / 火山方舟</option>"
            + "<option value=qwen>通义千问</option></select>"
            + "<label>名称（留空用模型名）</label><input name=label placeholder='家里那台 4090'>"
            + "<label>接口地址 base_url</label>"
            + "<input name=base_url placeholder='http://192.168.1.13:8790/v1' required>"
            + "<label>模型名 model</label>"
            + "<input name=model placeholder='deepseek-flash' required>"
            + "<label>API Key（可留空）</label><input name=api_key placeholder='sk-...'>"
            + "<button type=submit>保存</button></form>"
            + "<p class=hint>保存写入 /data/data/com.tgz02.voice/files/models.json。"
            + "语音后台在下次启动时读取它；配置完重启一次设备即生效。</p>"
            + "<h1 style='margin-top:22px'>当前已保存</h1>" + cur
            + "</body></html>";
    }

    static String escape(String s)
    {
        if (s == null) return "";
        StringBuilder b = new StringBuilder(s.length() + 8);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '<') b.append("&lt;");
            else if (c == '>') b.append("&gt;");
            else if (c == '&') b.append("&amp;");
            else if (c == '"') b.append("&quot;");
            else b.append(c);
        }
        return b.toString();
    }
}
