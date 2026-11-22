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
    static boolean selfCheck = false;
    static boolean recoverOnly = false;

    /* ------------------------------------------- 故障注入（T5-06D-P1，仅测试用）
     * 正常运行时是空集合：不指定 --fault / TTS_EXEC_FAULT 就完全按真实路径执行。
     * 取值：
     *   recover_write / recover_fsync / recover_rename / recover_dirfsync   inflight -> queue
     *   retry_write   / retry_fsync   / retry_rename   / retry_dirfsync     播放失败后回队列
     *   failed_write  / failed_fsync  / failed_rename  / failed_dirfsync    停车场（failed/）
     *   done_write    / done_fsync    / done_rename    / done_dirfsync      done 标记
     *   baditem_rename / baditem_dirfsync                                    坏条目改名入 failed/
     *   provider_fail   playTts 直接失败（不碰原厂 provider，不出声）
     *   fake_ok         不调 provider，直接当作播报完成（只用于验证 done 标记持久化）
     */
    static final java.util.HashSet<String> faults = new java.util.HashSet<String>();

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
    /* P1：持久化失败不再静默——每一种失败都有自己的计数，都能在 state.json 里看到 */
    static long nDoneFailed;      /* done 标记没落盘（inflight 原件保留，重启会重放） */
    static long nPersistFailed;   /* 回队列/停车场写入没落盘（inflight 原件保留） */
    static long nRecoverFailed;   /* 启动恢复时 inflight -> queue/failed 没落盘 */
    static long nBadItemStuck;    /* 坏条目改名入 failed/ 没落盘（留在 inflight/） */
    static int lastTtsId = -1;
    static String lastOutcome = "";
    static String lastEventId = "";

    /* T7-02：公开播放状态（play.public.json，0644）——给 ai_worker 的回声过滤和测试看，
     * 只有"现在是否在播 / 播的是哪个 event_id / 起止毫秒"，绝不含播报正文。
     * journal.jsonl 与 state.json 仍是 0600 root-only，行为不变。 */
    static volatile String pubState = "idle";
    static volatile String pubEventId = "";
    static volatile int pubTtsId = -1;
    static volatile long pubStartedMs = 0;
    static volatile long pubFinishedMs = 0;
    static volatile String pubLastOutcome = "";

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

    /** 0644：owner 读写、其它人只读。只用于 play.public.json（不含任何正文）。 */
    static void chmod644(File f) {
        f.setReadable(false, false);
        f.setWritable(false, false);
        f.setExecutable(false, false);
        f.setReadable(true, false);
        f.setWritable(true, true);
    }

    /**
     * T7-02：发布"当前播放状态"。ai_worker 靠它判断"这条 asr_final 是不是我自己播报的回声"，
     * 也靠它做播报窗口计时。写到 tmp -> fsync -> rename，读到的一定是完整 JSON。
     */
    static void writePlayState() {
        JSONObject o = new JSONObject();
        try {
            o.put("v", 1);
            o.put("pid", android.os.Process.myPid());
            o.put("updated_ms", nowMs());
            o.put("state", pubState);
            o.put("event_id", pubEventId == null ? "" : pubEventId);
            o.put("tts_id", (long) pubTtsId);
            o.put("started_ms", pubStartedMs);
            o.put("finished_ms", pubFinishedMs);
            o.put("last_outcome", pubLastOutcome == null ? "" : pubLastOutcome);
            o.put("queue_depth", listItems(queueDir).size());
            o.put("inflight_depth", listItems(inflightDir).size());
            File tmp = new File(root, "play.public.json.tmp");
            File dst = new File(root, "play.public.json");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            fos.write(o.toString(2).getBytes(UTF8));
            fos.flush();
            fos.getFD().sync();
            fos.close();
            chmod644(tmp);
            if (dst.exists() && !dst.delete()) out("play.public delete failed");
            if (!tmp.renameTo(dst)) out("play.public rename failed");
        } catch (Throwable t) {
            out("play.public write failed: " + t);
        }
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
            /* P1：持久化失败必须可见（否则"没播"和"播了没记住"分不清） */
            o.put("done_marker_failed", nDoneFailed);
            o.put("persist_failed", nPersistFailed);
            o.put("recover_failed", nRecoverFailed);
            o.put("bad_item_stuck", nBadItemStuck);
            o.put("faults", faultList());
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

    static boolean hasFault(String name) { return faults.contains(name); }

    static String faultList() {
        if (faults.isEmpty()) return "";
        ArrayList<String> v = new ArrayList<String>(faults);
        Collections.sort(v);
        StringBuilder sb = new StringBuilder();
        for (String s : v) { if (sb.length() > 0) sb.append(','); sb.append(s); }
        return sb.toString();
    }

    /**
     * 目录 fsync。Java 层没有直接 API（FileInputStream/FileOutputStream 拒绝目录），
     * 用 android.system.Os.open(O_RDONLY) 拿到目录 fd 再 fsync——这正是 POSIX 的语义。
     * 返回 false = 目录项可能还没落盘，调用方必须把源文件当成唯一副本保留。
     */
    static boolean dirSync(File dir) {
        java.io.FileDescriptor fd = null;
        try {
            fd = android.system.Os.open(dir.getAbsolutePath(),
                    android.system.OsConstants.O_RDONLY, 0);
            android.system.Os.fsync(fd);
            return true;
        } catch (Throwable t) {
            out("dirfsync failed (" + dir.getAbsolutePath() + "): " + t);
            return false;
        } finally {
            if (fd != null) { try { android.system.Os.close(fd); } catch (Throwable ignored) { } }
        }
    }

    /**
     * 原子写一个条目到 dir/<event_id>.json，**返回 true 仅当四步全部成功**：
     *   1) tmp 文件写入 2) 文件 fsync 3) 原子 rename（rename(2) 本身覆盖目标）
     *   4) 目标目录 fsync
     * 只有 true 之后调用方才允许删除源文件（P1 的核心约定）。
     * stage 只用于构造 tmp 文件名和选择故障注入点，不写进正文。
     */
    static boolean writeItem(Item it, File dir, String stage) {
        File tmp = new File(tmpDir, it.eventId + "." + stage + ".json.tmp");
        File dst = new File(dir, it.eventId + ".json");
        try {
            if (hasFault(stage + "_write")) throw new IOException("injected fault: " + stage + "_write");
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
                if (hasFault(stage + "_fsync")) throw new IOException("injected fault: " + stage + "_fsync");
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            chmod600(tmp);
            if (hasFault(stage + "_rename")) throw new IOException("injected fault: " + stage + "_rename");
            /* rename(2) 原子替换目标：不先删旧文件，避免"删了新的、旧也没了"的窗口 */
            if (!tmp.renameTo(dst)) throw new IOException("rename into " + dir.getName() + " failed");
            if (hasFault(stage + "_dirfsync")) throw new IOException("injected fault: " + stage + "_dirfsync");
            if (!dirSync(dir)) throw new IOException("dir fsync failed (" + dir.getName() + ")");
            return true;
        } catch (Exception e) {
            out("persist " + stage + " FAILED event=" + it.eventId + " bytes=" + it.textBytes
                    + " err=" + e.getMessage() + " (source kept)");
            try { if (tmp.exists()) tmp.delete(); } catch (Throwable ignored) { }
            return false;
        }
    }

    /**
     * 把已有文件原子改名到 dir/（不复制正文，rename 即两边同一个 inode）。
     * 只用于无法解析的坏条目：没有 event_id 就没法重写 JSON。
     */
    static boolean moveFile(File f, File dir, String stage) {
        File dst = new File(dir, f.getName());
        try {
            if (hasFault(stage + "_rename")) throw new IOException("injected fault: " + stage + "_rename");
            if (!f.renameTo(dst)) throw new IOException("rename into " + dir.getName() + " failed");
            if (hasFault(stage + "_dirfsync")) throw new IOException("injected fault: " + stage + "_dirfsync");
            if (!dirSync(dir)) throw new IOException("dir fsync failed (" + dir.getName() + ")");
            return true;
        } catch (Exception e) {
            out("move " + stage + " FAILED item=" + f.getName() + " err=" + e.getMessage());
            return false;
        }
    }

    /* ================================================================== queue */

    /**
     * 启动恢复：把上次崩溃留在 inflight/ 的条目**先安全落盘再删原件**。
     * 任何一步失败 → 原 inflight 文件原地保留（下一次启动还能再恢复），并记 event_id + 错误类型。
     */
    static void recoverInflight() {
        ArrayList<File> left = listItems(inflightDir);
        for (File f : left) {
            long age = nowMs() - f.lastModified();
            Item it = null;
            try {
                it = readItem(f);
            } catch (Throwable t) {
                nBadItem++;
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"recover_unreadable\",\"item\":\""
                        + esc(f.getName()) + "\",\"age_ms\":" + age + "}");
                if (!moveFile(f, failedDir, "baditem")) {
                    nBadItemStuck++;
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"recover_failure\",\"item\":\""
                            + esc(f.getName()) + "\",\"stage\":\"failed\",\"err\":\"move failed\"}");
                    out("recover: unreadable item " + f.getName()
                            + " stays in inflight/ (failed/ not durable)");
                }
                continue;
            }
            it.attempts = it.attempts + 1;
            journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"recover\",\"event_id\":\""
                    + esc(it.eventId) + "\",\"attempts\":" + it.attempts + ",\"age_ms\":" + age + "}");

            boolean toFailed = it.attempts >= maxAttempts;
            boolean persisted = toFailed ? parkFailed(it) : writeItem(it, queueDir, "recover");
            if (!persisted) {
                nRecoverFailed++;
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"recover_failure\",\"event_id\":\""
                        + esc(it.eventId) + "\",\"stage\":\"" + (toFailed ? "failed" : "queue")
                        + "\",\"attempts\":" + it.attempts + "}");
                out("recover FAILED event=" + it.eventId + " attempts=" + it.attempts
                        + " target=" + (toFailed ? "failed/" : "queue/") + "; inflight file kept");
                continue;   /* 目标没落盘 → 原件必须留着 */
            }

            if (toFailed) {
                out("inflight item " + it.eventId + " reached max attempts (" + it.attempts
                        + "); parked in failed/");
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"give_up\",\"event_id\":\""
                        + esc(it.eventId) + "\",\"attempts\":" + it.attempts + "}");
            } else {
                out("recovered inflight item " + it.eventId + " attempts=" + it.attempts + " -> queue");
            }
            if (!f.delete()) out("inflight delete failed (kept): " + f.getName());
        }
        File[] tmps = tmpDir.listFiles();
        if (tmps != null)
            for (File t : tmps)
                /* 只清理明显陈旧的临时文件：enqueue 模式不拿锁，别抢别人正在写的 tmp */
                if (t.isFile() && nowMs() - t.lastModified() > 10000) t.delete();
    }

    /** 把条目停到 failed/（保留正文，设备本地 0600，不进日志/证据）。true = 已持久化。 */
    static boolean parkFailed(Item it) {
        return writeItem(it, failedDir, "failed");
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
        /* 故障注入：只在显式 --fault 时进入，正常路径不进这两个分支 */
        if (hasFault("provider_fail")) {
            journalEvent(it, -1, "provider_error", t0, nowMs(), it.textBytes, attempts,
                    "injected fault: provider_fail");
            return "provider_error";
        }
        if (hasFault("fake_ok")) {
            journalEvent(it, -1, "ok", t0, nowMs(), it.textBytes, attempts, "injected fault: fake_ok");
            return "ok";
        }
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
        pubTtsId = id;
        writePlayState();       /* T7-02：把 tts_id 补进公开播放状态 */
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

    /**
     * 写 done 标记（<event_id>.ok）。true = 标记已经落盘，调用方才允许删除 inflight 原件。
     * 失败时 inflight 原件保留 → 重启后重放（至少一次投递），绝不会"标记失败 + 回答被删"。
     */
    static boolean markDone(Item it) {
        File tmp = new File(tmpDir, it.eventId + ".ok.tmp");
        File marker = new File(doneDir, it.eventId + ".ok");
        try {
            if (hasFault("done_write")) throw new IOException("injected fault: done_write");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write((isoNow() + "\n").getBytes(UTF8));
                fos.flush();
                if (hasFault("done_fsync")) throw new IOException("injected fault: done_fsync");
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            chmod600(tmp);
            if (hasFault("done_rename")) throw new IOException("injected fault: done_rename");
            if (!tmp.renameTo(marker)) throw new IOException("rename into done/ failed");
            if (hasFault("done_dirfsync")) throw new IOException("injected fault: done_dirfsync");
            if (!dirSync(doneDir)) throw new IOException("dir fsync failed (done)");
            return true;
        } catch (Exception e) {
            out("done marker NOT persisted event=" + it.eventId + " bytes=" + it.textBytes
                    + " err=" + e.getMessage() + " (inflight kept, replay after restart)");
            try { if (tmp.exists()) tmp.delete(); } catch (Throwable ignored) { }
            return false;
        }
    }

    /* =================================================================== drain */

    /**
     * 从队列取一条播报。所有"移走条目"的动作都遵守同一条规则：
     *   先让目标文件落盘（write/fsync/rename/dirfsync 全成功）→ 才删 inflight 原件；
     *   目标没落盘 → inflight 原件保留，本次运行不再碰它（下次启动 recoverInflight 再试）。
     */
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
                if (!moveFile(claimed, failedDir, "baditem")) {
                    nBadItemStuck++;
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"persist_failure\",\"item\":\""
                            + esc(claimed.getName()) + "\",\"stage\":\"failed\",\"err\":\"bad item move failed\"}");
                    out("bad item " + claimed.getName() + " stays in inflight/ (failed/ not durable)");
                }
                processed++;
                writeState();
                continue;
            }
            it.attempts = it.attempts + 1;
            /* T7-04：已经有 stop 请求（用户插话/说"停"）→ 队列里剩下的项直接作废，
             * 不再"先播一遍再停"（否则还能听到半秒残音），也不算失败。 */
            if (stopRequest) {
                nStopped++;
                processed++;
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"cancel\",\"event_id\":\""
                        + esc(it.eventId) + "\",\"attempts\":" + it.attempts + "}");
                out("event " + it.eventId + " cancelled (stop requested)");
                if (!markDone(it)) {
                    nDoneFailed++;
                    writeState();
                    continue;
                }
                if (!claimed.delete()) out("payload delete failed: " + claimed.getName());
                writeState();
                continue;
            }
            /* T7-02：进入播报前先发布 playing，播完（成功/失败/超时）发布 idle。
             * 中间不需要轮询：playItem 本身阻塞到结束。 */
            pubState = "playing";
            pubEventId = it.eventId;
            pubTtsId = -1;
            pubStartedMs = nowMs();
            pubFinishedMs = 0;
            pubLastOutcome = "";
            writePlayState();
            String outcome = playItem(it, it.attempts);
            pubState = "idle";
            pubFinishedMs = nowMs();
            pubLastOutcome = outcome;
            writePlayState();
            nPlayed++;
            processed++;

            if (outcome.equals("ok") || outcome.equals("stopped") || outcome.equals("interrupted")) {
                /* T7-04：interrupted 也是终态。它来自"用户唤醒/插话把播报打断"，
                 * 重播一遍等于把用户刚打断的那段话又说回去（真机实测：唤醒后回答又续上）。 */
                if (outcome.equals("ok")) nOk++;
                else if (outcome.equals("stopped")) { nStopped++; stopRequest = false; }
                else { nInterrupted++; stopRequest = false; }
                if (!markDone(it)) {
                    /* done 标记没落盘：回答正文还在 inflight/，绝不删除；重启后重放（可能重复播一次） */
                    nDoneFailed++;
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"done_marker_failure\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"outcome\":\"" + esc(outcome)
                            + "\",\"attempts\":" + it.attempts + "}");
                    out("event " + it.eventId + " played (" + outcome + ") but done marker is NOT durable; "
                            + "payload kept in inflight/ and will be replayed after restart");
                    writeState();
                    continue;
                }
                if (!claimed.delete()) out("payload delete failed: " + claimed.getName());
            } else {
                /* timeout / error / interrupted / rejected / provider_error：不丢正文，回到队列重试 */
                if (outcome.equals("timeout")) nTimeout++;
                else nError++;

                boolean toFailed = it.attempts >= maxAttempts;
                boolean persisted = toFailed ? parkFailed(it) : writeItem(it, queueDir, "retry");
                if (!persisted) {
                    nPersistFailed++;
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"persist_failure\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"stage\":\"" + (toFailed ? "failed" : "queue")
                            + "\",\"outcome\":\"" + esc(outcome) + "\",\"attempts\":" + it.attempts + "}");
                    out("event " + it.eventId + " outcome=" + outcome + " attempts=" + it.attempts
                            + ": " + (toFailed ? "failed/" : "queue/") + " write NOT durable; "
                            + "payload kept in inflight/");
                    writeState();
                    continue;
                }
                if (toFailed) {
                    out("event " + it.eventId + " failed after " + it.attempts
                            + " attempts (" + outcome + "); parked in failed/");
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"give_up\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"attempts\":" + it.attempts
                            + ",\"outcome\":\"" + esc(outcome) + "\"}");
                } else {
                    out("event " + it.eventId + " requeued (attempt " + it.attempts
                            + " failed: " + outcome + ")");
                    journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"retry\",\"event_id\":\""
                            + esc(it.eventId) + "\",\"attempts\":" + it.attempts
                            + ",\"outcome\":\"" + esc(outcome) + "\"}");
                    try { Thread.sleep(2000); } catch (InterruptedException ignored) { }
                }
                if (!claimed.delete()) out("payload delete failed: " + claimed.getName());
            }
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
            /* T7-02：启动即发布一次 idle，把上一次崩溃可能留下的 "playing" 覆盖掉 */
            pubState = "idle";
            pubEventId = "";
            pubTtsId = -1;
            pubStartedMs = 0;
            pubFinishedMs = 0;
            pubLastOutcome = "";
            if (enqueueTextFile == null) writePlayState();

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
                boolean ok = writeItem(item, queueDir, "enqueue");
                out("enqueued event=" + item.eventId + " bytes=" + item.textBytes
                        + " queue=" + queueDir + " ok=" + ok);
                System.exit(ok ? EXIT_OK : EXIT_ITEM_FAILED);
            }

            /* 自检模式：不碰 provider，只验证"写文件 + 文件 fsync + rename + 目录 fsync"
             * 这条链在本机是否真的可用（目录 fsync 走 Os.open + Os.fsync）。 */
            if (selfCheck) {
                Item it = new Item();
                it.eventId = "selfcheck-" + nowMs();
                it.text = "selfcheck";
                it.textBytes = it.text.getBytes(UTF8).length;
                boolean ok = writeItem(it, queueDir, "enqueue") && dirSync(queueDir);
                File probe = new File(queueDir, it.eventId + ".json");
                boolean same = probe.isFile() && probe.length() > 0;
                out("selfcheck root=" + root + " write=" + ok + " dirfsync=" + ok + " file=" + same);
                journal("{\"ts\":\"" + isoNow() + "\",\"kind\":\"selfcheck\",\"event_id\":\""
                        + esc(it.eventId) + "\",\"ok\":" + ok + "}");
                if (ok) probe.delete();
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

            /* 只做启动恢复（不碰 provider、不播报）。故障注入测试用它把
             * "inflight -> queue/failed 的持久化"单独隔离出来验证。 */
            if (recoverOnly) {
                recoverInflight();
                writeState();
                out("recover_only done recover_failed=" + nRecoverFailed
                        + " bad_item_stuck=" + nBadItemStuck);
                finish(fl, lf, (nRecoverFailed + nBadItemStuck) == 0 ? EXIT_OK : EXIT_ITEM_FAILED);
            }

            Class<?> atCls = Class.forName("android.app.ActivityThread");
            Object at = atCls.getMethod("systemMain").invoke(null);
            Context ctx = (Context) atCls.getMethod("getSystemContext").invoke(at);
            resolver = ctx.getContentResolver();
            amSvc = Class.forName("android.app.ActivityManager").getMethod("getService").invoke(null);
            providerOpen();

            logTail = new LogTail();
            logTail.start();

            out("ready pid=" + android.os.Process.myPid() + " root=" + root
                    + " timeout_ms=" + playTimeoutMs + " once=" + once
                    + " max_attempts=" + maxAttempts
                    + (faults.isEmpty() ? "" : " faults=" + faultList()));

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
                    + " error=" + nError + " stopped=" + nStopped + " bad_item=" + nBadItem
                    + " done_failed=" + nDoneFailed + " persist_failed=" + nPersistFailed
                    + " recover_failed=" + nRecoverFailed + " bad_item_stuck=" + nBadItemStuck);
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
        /* 环境变量兜底：守护进程由脚本拉起时不必改命令行 */
        String env = System.getenv("TTS_EXEC_FAULT");
        if (env != null && env.length() > 0) addFaults(env);
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
            else if (s.equals("--fault")) { if (++i >= a.length) return false; addFaults(a[i]); }
            else if (s.equals("--selfcheck")) { selfCheck = true; }
            else if (s.equals("--recover-only")) { recoverOnly = true; }
            else if (s.equals("--stop")) { stopRequest = true; }
            else if (s.equals("--stop-id")) { if (++i >= a.length) return false; stopId = Integer.parseInt(a[i]); }
            else return false;
        }
        return true;
    }

    /** --fault a,b 或 TTS_EXEC_FAULT=a:b 都接受；未知名字直接忽略（不影响正常运行）。 */
    static void addFaults(String spec) {
        String[] parts = spec.split("[,: ]+");
        for (String p : parts) if (p.length() > 0) faults.add(p.trim());
    }

    static void usage() {
        System.out.println("usage: TtsExec [--root DIR] [--once] [--stop] [--play-file F --event-id ID]"
                + " [--enqueue-file F --event-id ID] [--selfcheck] [--recover-only] [--fault NAME[,NAME...]]"
                + " [--timeout-ms N] [--idle-ms N] [--poll-ms N] [--max-attempts N] [--verbose]");
    }
}
