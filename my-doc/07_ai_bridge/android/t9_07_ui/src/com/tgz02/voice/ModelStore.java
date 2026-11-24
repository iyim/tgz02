/*
 * ModelStore.java -- T9-08C: the multi-vendor model configuration, owned by the App.
 *
 * Where it lives: <app files>/models.json  (see PATH below)
 *   - the App reads and writes it, so the settings screen is the only place a user needs to go;
 *   - the worker (root) reads the same file and picks changes up on the fly (mtime check),
 *     so saving a configuration applies to the next reply without restarting anything;
 *   - it is a separate file from the conversation history (files/sessions), so clearing history
 *     never touches the model configuration.
 *
 * What it deliberately is NOT: no encryption, no masking, no keychain. The product requirement is
 * that the user can see and edit every field, so the API key is stored and displayed as plain text.
 *
 * File format (the worker's parser in android/model_cfg.c is the reference):
 *   {"v":1,"default_id":"...","models":[{"id":..,"vendor":..,"label":..,"base_url":..,
 *    "api_key":..,"model":..,"endpoint_id":..,"api_mode":..,"extra":{..},
 *    "max_tokens":..,"temperature":..,"timeout_ms":..,"enabled":true}, ...]}
 */
package com.tgz02.voice;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

final class ModelStore {

    /* same file the worker reads (--models default) */
    static final String PATH = "/data/data/com.tgz02.voice/files/models.json";

    static final String V_DOUBAO = "doubao";
    static final String V_QWEN   = "qwen";
    static final String V_OPENAI = "openai";

    static final String MODE_NATIVE = "native";
    static final String MODE_COMPAT = "compat";

    static final String BASE_DOUBAO      = "https://ark.cn-beijing.volces.com/api/v3";
    static final String BASE_QWEN        = "https://dashscope.aliyuncs.com/api/v1";
    static final String BASE_QWEN_COMPAT = "https://dashscope.aliyuncs.com/compatible-mode/v1";

    static final int MAX_MODELS = 8;

    static final class Model {
        String id = "";
        String vendor = V_OPENAI;
        String label = "";
        String baseUrl = "";
        String apiKey = "";
        String model = "";
        String endpointId = "";       /* 豆包 */
        String apiMode = MODE_NATIVE; /* 千问 */
        String extra = "";            /* 额外请求参数（JSON 对象文本） */
        int maxTokens = 512;
        double temperature = 0.7;
        int timeoutMs = 30000;
        boolean enabled = true;

        boolean isDoubao() { return V_DOUBAO.equals(vendor); }
        boolean isQwen()   { return V_QWEN.equals(vendor); }
        boolean isCompat() { return MODE_COMPAT.equals(apiMode); }
    }

    private ModelStore() { }

    /* ------------------------------------------------------------------ read */

    static String path()
    {
        return PATH;
    }

    static List<Model> load()
    {
        List<Model> out = new ArrayList<Model>();
        String raw = readAll(PATH);
        if (raw == null || raw.length() == 0) return out;
        try {
            JSONObject o = new JSONObject(raw);
            JSONArray arr = o.optJSONArray("models");
            if (arr == null) return out;
            for (int i = 0; i < arr.length() && out.size() < MAX_MODELS; i++) {
                JSONObject m = arr.optJSONObject(i);
                if (m == null) continue;
                Model c = new Model();
                c.id = m.optString("id", "");
                c.vendor = m.optString("vendor", V_OPENAI);
                c.label = m.optString("label", "");
                c.baseUrl = m.optString("base_url", "");
                c.apiKey = m.optString("api_key", "");
                c.model = m.optString("model", "");
                c.endpointId = m.optString("endpoint_id", "");
                c.apiMode = m.optString("api_mode", MODE_NATIVE);
                Object extra = m.opt("extra");
                c.extra = (extra == null || extra == JSONObject.NULL) ? "" : String.valueOf(extra);
                c.maxTokens = m.optInt("max_tokens", 512);
                c.temperature = m.optDouble("temperature", 0.7);
                c.timeoutMs = m.optInt("timeout_ms", 30000);
                c.enabled = m.optBoolean("enabled", true);
                if (c.id.length() > 0) out.add(c);
            }
        } catch (Throwable t) {
            /* an unreadable file must not crash the settings screen: the list comes back empty
             * and the user can simply add a new configuration */
        }
        return out;
    }

    static String loadDefaultId()
    {
        String raw = readAll(PATH);
        if (raw == null) return "";
        try {
            return new JSONObject(raw).optString("default_id", "");
        } catch (Throwable t) {
            return "";
        }
    }

    /* ----------------------------------------------------------------- write */

    static boolean save(List<Model> models, String defaultId)
    {
        try {
            JSONObject root = new JSONObject();
            root.put("v", 1);
            root.put("default_id", defaultId == null ? "" : defaultId);
            JSONArray arr = new JSONArray();
            if (models != null) {
                for (int i = 0; i < models.size() && i < MAX_MODELS; i++) {
                    Model c = models.get(i);
                    JSONObject m = new JSONObject();
                    m.put("id", c.id);
                    m.put("vendor", c.vendor);
                    m.put("label", c.label);
                    m.put("base_url", c.baseUrl);
                    m.put("api_key", c.apiKey);
                    m.put("model", c.model);
                    if (c.isDoubao()) m.put("endpoint_id", c.endpointId);
                    if (c.isQwen())   m.put("api_mode", c.apiMode);
                    if (c.extra != null && c.extra.trim().length() > 0) {
                        /* extra 以 JSON 对象**文本**保存（worker 两种形态都收：字符串或对象）。
                         * 这样 App 这边不必自己拼 JSON，用户写错时 worker 会明确拒绝并给出原因。 */
                        m.put("extra", c.extra.trim());
                    }
                    m.put("max_tokens", c.maxTokens);
                    m.put("temperature", c.temperature);
                    m.put("timeout_ms", c.timeoutMs);
                    m.put("enabled", c.enabled);
                    arr.put(m);
                }
            }
            root.put("models", arr);
            String text = root.toString();

            File f = new File(PATH);
            File dir = f.getParentFile();
            if (dir != null && !dir.isDirectory() && !dir.mkdirs()) return false;
            File tmp = new File(dir, ".models.json.tmp");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(text.getBytes("UTF-8"));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(f)) { tmp.delete(); return false; }
            return true;
        } catch (Throwable t) {
            return false;
        }
    }

    static String newId()
    {
        return "m" + System.currentTimeMillis();
    }

    static Model find(List<Model> list, String id)
    {
        if (list == null || id == null) return null;
        for (int i = 0; i < list.size(); i++) {
            if (id.equals(list.get(i).id)) return list.get(i);
        }
        return null;
    }

    static String vendorName(String vendor)
    {
        if (V_DOUBAO.equals(vendor)) return "豆包";
        if (V_QWEN.equals(vendor))   return "通义千问";
        return "OpenAI 兼容";
    }

    static String defaultBase(String vendor, String apiMode)
    {
        if (V_DOUBAO.equals(vendor)) return BASE_DOUBAO;
        if (V_QWEN.equals(vendor))   return MODE_COMPAT.equals(apiMode) ? BASE_QWEN_COMPAT : BASE_QWEN;
        return "";
    }

    /* ------------------------------------------------------------------ io */

    static String readAll(String path)
    {
        File f = new File(path);
        if (!f.isFile()) return null;
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] b = new byte[(int) Math.min(f.length(), 64 * 1024)];
            int n = in.read(b);
            if (n <= 0) return null;
            return new String(b, 0, n, "UTF-8");
        } catch (Throwable t) {
            return null;
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) { }
        }
    }
}
