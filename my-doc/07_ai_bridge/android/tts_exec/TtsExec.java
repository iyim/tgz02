/*
 * TtsExec.java -- T5-06D 原厂 TTS 执行器（独立进程，不修改原厂 APK / native / system）
 *
 * 调用链（真机验证过的原厂入口）：
 *   app_process + 本 dex
 *     -> IActivityManager.getContentProviderExternal("com.alibaba.ailabs.genie.assistant.provider")
 *     -> ContentProviderClient.query(content://.../GenieApi, selection=JSON{method:4,...})
 *     -> :core 进程 GenieTable.query -> VoiceManager.playTts -> AiLabsCore.playTts (native)
 *     -> 原厂 TtsManager 走原厂 websocket 会话取云 TTS 流
 *     -> UTPPlayer / ApolloRenderAdapter / OpenSL ES -> 原厂扬声器
 *
 * 状态反馈：原厂在 AudioStateManager 里给每条 TTS 打印
 *   "_ali_stub_json_handle_tts_feedback:status = play|complete,type = tts,agmcId(tts_id) =<id>"
 * 本执行器按 tts_id 过滤这些行（行内不含回答正文），得到开始/完成。
 *
 * 硬性约束：
 *   - 回答正文只在设备本地队列文件里出现；日志、journal、state 只记 id / 字节数 / 时间。
 *   - 模型输出只作为 TTS 文本参数进入 ContentProvider 的 JSON 字段，绝不拼接成命令。
 *   - 不调用 AudioManager，不改音量、不改音频通道；原厂音量控制完全保留。
 */
package com.tgz02.tts;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.channels.FileLock;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.json.JSONObject;

public final class TtsExec {

    static final String AUTHORITY = "com.alibaba.ailabs.genie.assistant.provider";
    static final String GENIE_URI = "content://" + AUTHORITY + "/GenieApi";
    static final int METHOD_PLAY_TTS = 4;
    static final int METHOD_STOP_TTS = 5;      /* insert 路径 */
    static final String PKG_TAG = "com.tgz02.aibridge.tts";
    static final Charset UTF8 = Charset.forName("UTF-8");

    static final int EXIT_OK = 0;
    static final int EXIT_USAGE = 2;
    static final int EXIT_BUSY = 3;
    static final int EXIT_INIT = 4;
    static final int EXIT_ITEM_FAILED = 5;

    /* ---------------------------------------------------------------- config */

    static String root = "/data/local/tmp/t5_bridge/tts";
    static File queueDir, inflightDir, doneDir, failedDir, tmpDir, controlDir;
    static File journalFile, stateFile, lockFile;
    static long idleTimeoutMs = 8000;      /* 没有新条目时在队列上等多久 */
    static long playTimeoutMs = 60000;     /* 单条 TTS 播报上限（超时 = timeout） */
    static int maxAttempts = 3;
    static long claimStaleMs = 180000;     /* inflight 超过这么久视为上次崩溃遗留 */
    static int pollMs = 120;
    static boolean once = false;
    static boolean verbose = false;
    static String playTextFile = null;
    static String playEventId = "adhoc";
    static boolean stopRequest = false;
    static int stopId = -1;
    /* --enqueue-file F --event-id ID：只把文本写进队列（不拿单实例锁、不碰 provider），
     * 由正在跑的守护进程负责播报。这样"直连播报"也不会和守护进程抢锁。 */
    static String enqueueTextFile = null;

    /* -------------------------------------------------------------- provider */

    static Object amSvc;
    static ContentResolver resolver;
    static IBinder providerToken = new Binder();
    static ContentProviderClient provider;
    static Method mGetProviderExternal, mRemoveProviderExternal;
    static Class<?> clsHolder;

    /* ----------------------------------------------------------------- state */

    static final Object journalLock = new Object();
    static final Object statusLock = new Object();
    static final Map<Integer, TtsStatus> statuses = new HashMap<Integer, TtsStatus>();
    static LogTail logTail;

    static long nPlayed, nOk, nTimeout, nError, nStopped, nSkipped, nBadItem, nInterrupted;
    static int lastTtsId = -1;
    static String lastOutcome = "";
    static String lastEventId = "";

    /* ================================================================ helpers */

    static void out(String s) {
        System.out.println("tts_exec: " + s);
        System.out.flush();
    }

    static void log(String s) {
        if (verbose) out(s);
    }

    static long nowMs() { return System.currentTimeMillis(); }

    static String isoNow() {
        java.text.SimpleDateFormat f = new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSZ");
        return f.format(new java.util.Date());
    }

    static void mkdirs(File d) {
        if (!d.isDirectory() && !d.mkdirs() && !d.isDirectory()) {
            throw new RuntimeException("mkdir failed: " + d);
        }
        /* 0700：只有 owner(root) 能进；不依赖 shell 的 umask */
        d.setReadable(false, false);
        d.setWritable(false, false);
        d.setExecutable(false, false);
        d.setReadable(true, true);
        d.setWritable(true, true);
        d.setExecutable(true, true);
    }

    static void chmod600(File f) {
        f.setReadable(false, false);
        f.setWritable(false, false);
        f.setReadable(true, true);
        f.setWritable(true, true);
    }

    static boolean validEventId(String id) {
        if (id == null || id.length() == 0 || id.length() > 128) return false;
        for (int i = 0; i < id.length(); i++) {
            char c = id.charAt(i);
            boolean ok = (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
                    || c == '-' || c == '_' || c == '.';
            if (!ok) return false;
        }
        return !id.equals(".") && !id.equals("..");
    }

    static void journal(String json) {
        synchronized (journalLock) {
            FileOutputStream fos = null;
            try {
                fos = new FileOutputStream(journalFile, true);
                fos.write(json.getBytes(UTF8));
                fos.write('\n');
                fos.flush();
                fos.getFD().sync();
            } catch (IOException e) {
                out("journal write failed: " + e);
            } finally {
                if (fos != null) try { fos.close(); } catch (IOException ignored) { }
            }
            chmod600(journalFile);
        }
    }

    static void writeState() {
        JSONObject o = new JSONObject();
        try {
            o.put("v", 1);
            o.put("pid", android.os.Process.myPid());
            o.put("ts", isoNow());
            o.put("root", root);
            o.put("queue_depth", listItems(queueDir).size());
            o.put("inflight_depth", listItems(inflightDir).size());
            o.put("done_count", countFiles(doneDir));
            o.put("failed_count", countFiles(failedDir));
            o.put("played", nPlayed);
            o.put("ok", nOk);
            o.put("timeout", nTimeout);
            o.put("error", nError);
            o.put("interrupted", nInterrupted);
            o.put("stopped", nStopped);
            o.put("skipped", nSkipped);
            o.put("bad_item", nBadItem);
            o.put("last_tts_id", lastTtsId);
            o.put("last_outcome", lastOutcome);
            o.put("last_event_id", lastEventId);
            File tmp = new File(root, "state.json.tmp");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            fos.write(o.toString(2).getBytes(UTF8));
            fos.flush();
            fos.getFD().sync();
            fos.close();
            chmod600(tmp);
            if (stateFile.exists()) stateFile.delete();
            if (!tmp.renameTo(stateFile)) out("state rename failed");
        } catch (Exception e) {
            out("state write failed: " + e);
        }
    }

    static ArrayList<File> listItems(File dir) {
        ArrayList<File> v = new ArrayList<File>();
        File[] fs = dir.listFiles();
        if (fs == null) return v;
        for (File f : fs) if (f.isFile() && f.getName().endsWith(".json")) v.add(f);
        /* 顺序 = 入队顺序（mtime），同 mtime 用文件名兜底。
         * 文件名是 <event_id>.json，不含时间，所以 mtime 是唯一的排序依据。 */
        Collections.sort(v, new java.util.Comparator<File>() {
            public int compare(File a, File b) {
                long ma = a.lastModified(), mb = b.lastModified();
                if (ma != mb) return ma < mb ? -1 : 1;
                return a.getName().compareTo(b.getName());
            }
        });
        return v;
    }

    static int countFiles(File dir) {
        File[] fs = dir.listFiles();
        return fs == null ? 0 : fs.length;
    }

    /* ============================================================== provider */

    static void providerOpen() throws Exception {
        Class<?> iam = Class.forName("android.app.IActivityManager");
        if (mGetProviderExternal == null) {
            mGetProviderExternal = iam.getMethod("getContentProviderExternal",
                    String.class, int.class, IBinder.class);
            mRemoveProviderExternal = iam.getMethod("removeContentProviderExternal",
                    String.class, IBinder.class);
            clsHolder = Class.forName("android.app.ContentProviderHolder");
        }
        Object holder = mGetProviderExternal.invoke(amSvc, AUTHORITY, 0, providerToken);
        if (holder == null) throw new IOException("provider holder is null (app not running?)");
        Object p = clsHolder.getField("provider").get(holder);
        if (p == null) throw new IOException("provider interface is null");
        Constructor<?> k = Class.forName("android.content.ContentProviderClient")
                .getDeclaredConstructor(ContentResolver.class,
                        Class.forName("android.content.IContentProvider"), boolean.class);
        k.setAccessible(true);
        provider = (ContentProviderClient) k.newInstance(resolver, p, true);
    }

    static void providerClose() {
        try {
            if (provider != null) provider.close();
        } catch (Throwable ignored) { }
        provider = null;
        try {
            if (mRemoveProviderExternal != null)
                mRemoveProviderExternal.invoke(amSvc, AUTHORITY, providerToken);
        } catch (Throwable ignored) { }
    }

    /** 原厂 GenieApi.playTTS 的等价调用（method=4）。返回 tts id（>0 表示已受理）。 */
    static int playTts(String text) throws Exception {
        JSONObject data = new JSONObject();
        data.put("sessionId", 0);
        data.put("tts", text);
        data.put("isOpenMic", false);        /* 不在播报后抢麦，避免打断原厂 ASR */
        data.put("ignoreMute", false);       /* 尊重原厂静音状态 */
        data.put("feedback", false);
        data.put("secretKey", "");
        data.put("pkg", PKG_TAG);
        data.put("wakeupType", 1);
        JSONObject req = new JSONObject();
        req.put("method", METHOD_PLAY_TTS);
        req.put("data", data);

        verifyProvider();
        Cursor c = provider.query(Uri.parse(GENIE_URI), null, req.toString(), null, null);
        int id = -1;
        try {
            if (c != null) {
                Bundle b = c.getExtras();
                if (b != null) id = b.getInt("data", -1);
            }
        } finally {
            if (c != null) c.close();
        }
        return id;
    }

    /** 原厂 stopTTS（insert 路径，method=5；id<0 表示停当前全部）。 */
    static int stopTts(int id) throws Exception {
        ContentValues cv = new ContentValues();
        cv.put("method", METHOD_STOP_TTS);
        cv.put("sessionId", id);
        verifyProvider();
        Uri u = provider.insert(Uri.parse(GENIE_URI), cv);
        return u == null ? 0 : 1;
    }

    static void verifyProvider() throws Exception {
        if (provider == null) providerOpen();
    }

    /* =============================================================== log tail */

    static final class TtsStatus {
        int id;
        long acceptedMs;
        long startMs = -1;
        long endMs = -1;
        String endKind = null;   /* complete | stop | error */
    }

    /**
     * 读原厂日志里的 TTS 反馈行。
     * 只认两类行，都不含回答正文：
     *   AudioStateManager ... status = play|complete,type = tts,agmcId(tts_id) =<id>
     *   VoiceManager    ... onNotify id= <id> ,status = <n>
     */
    static final class LogTail implements Runnable {
        private static final Pattern P_FB = Pattern.compile(
                "audioHandleTtsFeedback.*status = (\\w+),type = tts,agmcId\\(tts_id\\) =(\\d+)");
        private static final Pattern P_NT = Pattern.compile("onNotify id= (\\d+) ,status = (\\d+)");
        private Process proc;
        private Thread thread;
        private volatile boolean running = true;

        void start() {
            thread = new Thread(this, "logtail");
            thread.setDaemon(true);
            thread.start();
        }

        void stop() {
            running = false;
            if (proc != null) { try { proc.destroy(); } catch (Throwable ignored) { } }
        }

        private void spawn() throws IOException {
            ProcessBuilder pb = new ProcessBuilder("/system/bin/logcat", "-v", "time",
                    "-s", "AudioStateManager:D", "VoiceManager:D");
            pb.redirectErrorStream(true);
            proc = pb.start();
        }

        public void run() {
            while (running) {
                try {
                    if (proc == null) spawn();
                    BufferedReader r = new BufferedReader(new InputStreamReader(proc.getInputStream(), UTF8));
                    String line;
                    while (running && (line = r.readLine()) != null) handle(line);
                } catch (Throwable t) {
                    if (running) log("logtail restart: " + t);
                } finally {
                    if (proc != null) { try { proc.destroy(); } catch (Throwable ignored) { } proc = null; }
                }
                try { Thread.sleep(500); } catch (InterruptedException ignored) { }
            }
        }

        private void handle(String line) {
            Matcher m = P_FB.matcher(line);
            if (m.find()) {
                String st = m.group(1);
                int id = parseInt(m.group(2));
                if (st.equals("play")) noteStart(id);
                else if (st.equals("complete")) noteEnd(id, "complete");
                else if (st.equals("stop") || st.equals("stopped")) noteEnd(id, "stop");
                /* 原厂被打断（新会话/提示音抢走音频通道）是独立状态，不是播放失败 */
                else if (st.equals("interupt") || st.equals("interrupted")) noteEnd(id, "interrupted");
                else if (st.contains("fail") || st.contains("error")) noteEnd(id, "error");
                return;
            }
            m = P_NT.matcher(line);
            if (m.find()) {
                int id = parseInt(m.group(1));
                int code = parseInt(m.group(2));
                if (code == 1) noteStart(id);
                else if (code == 2) noteEnd(id, "complete");
                else if (code == 3) noteEnd(id, "error");
            }
        }
    }

    static int parseInt(String s) {
        try { return Integer.parseInt(s); } catch (Exception e) { return -1; }
    }

    static void noteStart(int id) {
        if (id <= 0) return;
        synchronized (statusLock) {
            TtsStatus s = statuses.get(id);
            if (s == null) { s = new TtsStatus(); s.id = id; statuses.put(id, s); }
            if (s.startMs < 0) s.startMs = nowMs();
        }
    }

    static void noteEnd(int id, String kind) {
        if (id <= 0) return;
        synchronized (statusLock) {
            TtsStatus s = statuses.get(id);
            if (s == null) { s = new TtsStatus(); s.id = id; statuses.put(id, s); }
            if (s.endMs < 0) { s.endMs = nowMs(); s.endKind = kind; }
        }
    }

    static void registerAccepted(int id) {
        synchronized (statusLock) {
            TtsStatus s = new TtsStatus();
            s.id = id;
            s.acceptedMs = nowMs();
            statuses.put(id, s);
        }
    }

    static TtsStatus snapshot(int id) {
        synchronized (statusLock) { return statuses.get(id); }
    }

    /* ================================================================ payload */

    static final class Item {
        File file;
        String eventId;
        String text;
        int textBytes;
        int attempts;
    }

    static Item readItem(File f) throws Exception {
        RandomAccessFile raf = new RandomAccessFile(f, "r");
        byte[] buf;
        try {
            long n = raf.length();
            if (n <= 0 || n > 64 * 1024) throw new IOException("bad item size " + n);
            buf = new byte[(int) n];
            raf.readFully(buf);
        } finally {
            raf.close();
        }
        JSONObject o = new JSONObject(new String(buf, UTF8));
        Item it = new Item();
        it.file = f;
        it.eventId = o.optString("event_id", "");
        it.text = o.optString("text", "");
        it.textBytes = it.text.getBytes(UTF8).length;
        it.attempts = o.optInt("attempts", 0);
        if (!validEventId(it.eventId)) throw new IOException("bad event_id");
        if (it.text.length() == 0) throw new IOException("empty text");
        return it;
    }

    /** 原子重写条目（tmp + fsync + rename + fsync(dir)），保持 0600。 */
    static boolean writeItem(Item it, File dir) {
        try {
            File tmp = new File(tmpDir, it.eventId + ".json.tmp");
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("event_id", it.eventId);
            o.put("created_ms", nowMs());
            o.put("attempts", it.attempts);
            o.put("text", it.text);
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(o.toString().getBytes(UTF8));
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            chmod600(tmp);
            File dst = new File(dir, it.eventId + ".json");
            if (dst.exists()) dst.delete();
            if (!tmp.renameTo(dst)) { out("requeue rename failed: " + dst); return false; }
            return true;
        } catch (Exception e) {
            out("requeue failed: " + e);
            return false;
        }
    }

    /* ================================================================== queue */

    static void recoverInflight() {
        ArrayList<File> left = listItems(inflightDir);
        for (File f : left) {
            long age = nowMs() - f.lastModified();
            journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"recover\",\"item\":\""
                    + esc(f.getName()) + "\",\"age_ms\":" + age + "}");
            Item it = null;
            try { it = readItem(f); } catch (Throwable t) {
                nBadItem++;
                moveFailed(f, 0);
                continue;
            }
            it.attempts = it.attempts + 1;
            f.delete();
            if (it.attempts >= maxAttempts) {
                out("inflight item " + it.eventId + " reached max attempts (" + it.attempts + "); parking");
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"give_up\",\"event_id\":\""
                        + esc(it.eventId) + "\",\"attempts\":" + it.attempts + "}");
                parkFailed(it);
            } else if (writeItem(it, queueDir)) {
                out("recovered inflight item " + it.eventId + " attempts=" + it.attempts + " -> queue");
            }
        }
        File[] tmps = tmpDir.listFiles();
        if (tmps != null) for (File t : tmps) if (t.isFile()) t.delete();
    }

    /** 把条目原样停在 failed/（保留正文，设备本地 0600，不进日志/证据）。 */
    static void parkFailed(Item it) {
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("event_id", it.eventId);
            o.put("created_ms", nowMs());
            o.put("attempts", it.attempts);
            o.put("text", it.text);
            File tmp = new File(tmpDir, it.eventId + ".json.tmp");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try { fos.write(o.toString().getBytes(UTF8)); fos.flush(); fos.getFD().sync(); }
            finally { fos.close(); }
            chmod600(tmp);
            File dst = new File(failedDir, it.eventId + ".json");
            if (dst.exists()) dst.delete();
            tmp.renameTo(dst);
        } catch (Exception e) {
            out("park failed: " + e);
        }
    }

    static String esc(String s) {
        if (s == null) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c == '"' || c == '\\') sb.append('\\').append(c);
            else if (c < 0x20) sb.append(' ');
            else sb.append(c);
        }
        return sb.toString();
    }

    /** 播放一个条目；返回 outcome 字符串。 */
    static String playItem(Item it, int attempts) {
        long t0 = nowMs();
        int id = -1;
        try {
            id = playTts(it.text);
        } catch (Throwable t) {
            provider = null;   /* 让下一次重新获取 provider */
            journalEvent(it, -1, "provider_error", t0, nowMs(), it.textBytes, attempts,
                    String.valueOf(t.getMessage()));
            return "provider_error";
        }
        if (id <= 0) {
            journalEvent(it, id, "rejected", t0, nowMs(), it.textBytes, attempts, "no tts id");
            return "rejected";
        }
        registerAccepted(id);
        lastTtsId = id;
        out("play tts_id=" + id + " event=" + it.eventId + " bytes=" + it.textBytes);

        long deadline = t0 + playTimeoutMs;
        String outcome = null;
        while (nowMs() < deadline) {
            if (stopRequest) {
                try { stopTts(stopId); } catch (Throwable ignored) { }
                outcome = "stopped";
                break;
            }
            TtsStatus s = snapshot(id);
            if (s != null && s.endMs > 0) {
                outcome = s.endKind == null ? "complete" : s.endKind;
                break;
            }
            try { Thread.sleep(pollMs); } catch (InterruptedException ignored) { }
        }
        if (outcome == null) outcome = "timeout";
        if (outcome.equals("complete")) outcome = "ok";
        journalEvent(it, id, outcome, t0, nowMs(), it.textBytes, attempts, "");
        return outcome;
    }

    static void journalEvent(Item it, int ttsId, String outcome, long t0, long t1,
                             int textBytes, int attempts, String note) {
        StringBuilder sb = new StringBuilder(256);
        sb.append("{\"ts\":\"").append(isoNow()).append("\"");
        sb.append(",\"kind\":\"tts\",\"event_id\":\"").append(esc(it.eventId)).append("\"");
        sb.append(",\"tts_id\":").append(ttsId);
        sb.append(",\"outcome\":\"").append(esc(outcome)).append("\"");
        sb.append(",\"dur_ms\":").append(t1 - t0);
        sb.append(",\"text_bytes\":").append(textBytes);
        sb.append(",\"attempts\":").append(attempts);
        if (note.length() > 0) sb.append(",\"note\":\"").append(esc(note)).append("\"");
        sb.append("}");
        journal(sb.toString());
        lastOutcome = outcome;
        lastEventId = it.eventId;
    }

    static void markDone(Item it) {
        File marker = new File(doneDir, it.eventId + ".ok");
        try {
            FileOutputStream fos = new FileOutputStream(marker, false);
            fos.write((isoNow() + "\n").getBytes(UTF8));
            fos.close();
            chmod600(marker);
        } catch (IOException e) {
            out("done marker failed: " + e);
        }
        if (!it.file.delete()) out("payload delete failed: " + it.file.getName());
    }

    static void moveFailed(File f, int attempts) {
        File dst = new File(failedDir, f.getName());
        if (dst.exists()) dst.delete();
        if (!f.renameTo(dst)) out("failed move failed for " + f.getName());
        else out("item moved to failed: " + dst.getName() + " attempts=" + attempts);
    }

    /* =================================================================== drain */

    static int drainOnce() {
        ArrayList<File> items = listItems(queueDir);
        if (items.isEmpty()) return 0;
        int processed = 0;
        for (File f : items) {
            File claimed = new File(inflightDir, f.getName());
            if (!f.renameTo(claimed)) { log("claim failed " + f.getName()); continue; }
            Item it;
            try {
                it = readItem(claimed);
            } catch (Throwable t) {
                nBadItem++;
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"bad_item\",\"item\":\""
                        + esc(claimed.getName()) + "\",\"note\":\"" + esc(String.valueOf(t.getMessage())) + "\"}");
                moveFailed(claimed, 0);
                continue;
            }
            it.attempts = it.attempts + 1;
            String outcome = playItem(it, it.attempts);
            nPlayed++;
            if (outcome.equals("ok")) {
                nOk++;
                markDone(it);
                claimed.delete();
            } else if (outcome.equals("stopped")) {
                nStopped++;
                stopRequest = false;
                markDone(it);
                claimed.delete();
            } else {
                /* timeout / error / interrupted / rejected / provider_error：不丢正文，回到队列重试 */
                if (outcome.equals("timeout")) nTimeout++;
                else if (outcome.equals("interrupted")) nInterrupted++;
                else nError++;
                claimed.delete();
                if (it.attempts >= maxAttempts) {
                    out("event " + it.eventId + " failed after " + it.attempts
                            + " attempts (" + outcome + "); parked in failed/");
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"give_up\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"attempts\":" + it.attempts
                            + ",\"outcome\":\"" + esc(outcome) + "\"}");
                    parkFailed(it);
                } else if (writeItem(it, queueDir)) {
                    out("event " + it.eventId + " requeued (attempt " + it.attempts
                            + " failed: " + outcome + ")");
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"retry\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"attempts\":" + it.attempts
                            + ",\"outcome\":\"" + esc(outcome) + "\"}");
                    try { Thread.sleep(2000); } catch (InterruptedException ignored) { }
                }
            }
            processed++;
            writeState();
        }
        return processed;
    }

    /* ==================================================================== stop */

    static void handleControl() {
        File stopFile = new File(controlDir, "stop");
        if (stopFile.isFile()) {
            stopRequest = true;
            stopId = -1;
            stopFile.delete();
            out("control: stop requested");
            journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"stop_request\"}");
        }
    }

    /* ==================================================================== main */

    public static void main(String[] args) {
        Looper.prepareMainLooper();
        int rc = EXIT_OK;
        try {
            if (!parseArgs(args)) { usage(); System.exit(EXIT_USAGE); }
            setupDirs();

            /* 入队模式：写完就退出，不参与单实例锁，也不需要 provider / logcat */
            if (enqueueTextFile != null) {
                if (!validEventId(playEventId)) {
                    System.out.println("tts_exec: bad event id: " + playEventId);
                    System.exit(EXIT_USAGE);
                }
                Item item = new Item();
                item.eventId = playEventId;
                item.text = readAll(enqueueTextFile);
                item.textBytes = item.text.getBytes(UTF8).length;
                item.attempts = 0;
                boolean ok = writeItem(item, queueDir);
                out("enqueued event=" + item.eventId + " bytes=" + item.textBytes
                        + " queue=" + queueDir + " ok=" + ok);
                System.exit(ok ? EXIT_OK : EXIT_ITEM_FAILED);
            }

            RandomAccessFile lf = new RandomAccessFile(lockFile, "rw");
            FileLock fl = lf.getChannel().tryLock();
            if (fl == null) {
                lf.close();
                System.out.println("tts_exec: another instance is running");
                System.exit(EXIT_BUSY);
            }
            writePidFile();

            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object at = atCls.getMethod("systemMain").invoke(null);
            Context ctx = (Context) atCls.getMethod("getSystemContext").invoke(at);
            resolver = ctx.getContentResolver();
            amSvc = Class.forName("android.app.ActivityManager").getMethod("getService").invoke(null);
            providerOpen();

            logTail = new LogTail();
            logTail.start();

            out("ready pid=" + android.os.Process.myPid() + " root=" + root
                    + " timeout_ms=" + playTimeoutMs + " once=" + once);

            if (stopRequest) {
                try { stopTts(stopId); } catch (Throwable t) { out("stop failed: " + t); }
                out("stop issued");
                System.exit(EXIT_OK);
            }

            if (playTextFile != null) {
                String text = readAll(playTextFile);
                Item it = new Item();
                it.file = new File(tmpDir, playEventId + ".adhoc");
                it.eventId = playEventId;
                it.text = text;
                it.textBytes = text.getBytes(UTF8).length;
                String outcome = playItem(it, 1);
                nPlayed++;
                if (outcome.equals("ok")) nOk++; else if (outcome.equals("timeout")) nTimeout++; else nError++;
                out("outcome=" + outcome);
                writeState();
                rc = outcome.equals("ok") ? EXIT_OK : EXIT_ITEM_FAILED;
                finish(fl, lf, rc);
            }

            recoverInflight();
            writeState();

            long idleSince = nowMs();
            while (true) {
                handleControl();
                int n = drainOnce();
                if (n > 0) { idleSince = nowMs(); continue; }
                if (once) break;
                if (idleTimeoutMs > 0 && nowMs() - idleSince > idleTimeoutMs) {
                    out("idle timeout; exiting");
                    break;
                }
                try { Thread.sleep(pollMs); } catch (InterruptedException ignored) { }
            }
            writeState();
            out("exit played=" + nPlayed + " ok=" + nOk + " timeout=" + nTimeout
                    + " error=" + nError + " stopped=" + nStopped + " bad_item=" + nBadItem);
            finish(fl, lf, rc);
        } catch (Throwable t) {
            t.printStackTrace();
            try { System.out.flush(); } catch (Throwable ignored) { }
            System.exit(EXIT_INIT);
        }
    }

    static void finish(FileLock fl, RandomAccessFile lf, int rc) {
        try { if (logTail != null) logTail.stop(); } catch (Throwable ignored) { }
        providerClose();
        try { if (fl != null) fl.release(); } catch (Throwable ignored) { }
        try { if (lf != null) lf.close(); } catch (Throwable ignored) { }
        System.out.flush();
        System.exit(rc);
    }

    static String readAll(String path) throws IOException {
        RandomAccessFile raf = new RandomAccessFile(path, "r");
        try {
            long n = raf.length();
            if (n <= 0 || n > 64 * 1024) throw new IOException("bad text size " + n);
            byte[] b = new byte[(int) n];
            raf.readFully(b);
            String s = new String(b, UTF8).trim();
            if (s.length() == 0) throw new IOException("empty text");
            return s;
        } finally {
            raf.close();
        }
    }

    static void writePidFile() {
        File f = new File(root, "tts_exec.pid");
        try {
            FileOutputStream fos = new FileOutputStream(f, false);
            fos.write((android.os.Process.myPid() + "\n").getBytes(UTF8));
            fos.close();
            chmod600(f);
            out("pid file written: " + f.getAbsolutePath() + " exists=" + f.exists());
        } catch (Throwable e) {
            out("pid file write failed (" + f.getAbsolutePath() + "): " + e);
        }
    }

    static void setupDirs() {
        if (root.endsWith("/")) root = root.substring(0, root.length() - 1);
        queueDir = new File(root, "queue");
        inflightDir = new File(root, "inflight");
        doneDir = new File(root, "done");
        failedDir = new File(root, "failed");
        tmpDir = new File(root, "tmp");
        controlDir = new File(root, "control");
        journalFile = new File(root, "journal.jsonl");
        stateFile = new File(root, "state.json");
        lockFile = new File(root, "tts_exec.lock");
        File r = new File(root);
        if (!r.isDirectory() && !r.mkdirs()) throw new RuntimeException("cannot create " + root);
        mkdirs(queueDir); mkdirs(inflightDir); mkdirs(doneDir);
        mkdirs(failedDir); mkdirs(tmpDir); mkdirs(controlDir);
    }

    static boolean parseArgs(String[] a) {
        for (int i = 0; i < a.length; i++) {
            String s = a[i];
            if (s.equals("--root")) { if (++i >= a.length) return false; root = a[i]; }
            else if (s.equals("--once")) once = true;
            else if (s.equals("--verbose")) verbose = true;
            else if (s.equals("--timeout-ms")) { if (++i >= a.length) return false; playTimeoutMs = Long.parseLong(a[i]); }
            else if (s.equals("--idle-ms")) { if (++i >= a.length) return false; idleTimeoutMs = Long.parseLong(a[i]); }
            else if (s.equals("--max-attempts")) { if (++i >= a.length) return false; maxAttempts = Integer.parseInt(a[i]); }
            else if (s.equals("--poll-ms")) { if (++i >= a.length) return false; pollMs = Integer.parseInt(a[i]); }
            else if (s.equals("--play-file")) { if (++i >= a.length) return false; playTextFile = a[i]; }
            else if (s.equals("--enqueue-file")) { if (++i >= a.length) return false; enqueueTextFile = a[i]; }
            else if (s.equals("--event-id")) { if (++i >= a.length) return false; playEventId = a[i]; }
            else if (s.equals("--stop")) { stopRequest = true; }
            else if (s.equals("--stop-id")) { if (++i >= a.length) return false; stopId = Integer.parseInt(a[i]); }
            else return false;
        }
        return true;
    }

    static void usage() {
        System.out.println("usage: TtsExec [--root DIR] [--once] [--stop] [--play-file F --event-id ID]"
                + " [--enqueue-file F --event-id ID]"
                + " [--timeout-ms N] [--idle-ms N] [--poll-ms N] [--max-attempts N] [--verbose]");
    }
}
