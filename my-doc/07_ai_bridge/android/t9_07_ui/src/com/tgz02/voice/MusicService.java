/*
 * MusicService.java -- T9-25: the native player engine.
 *
 * Design notes (each one is a measured fact from evidence/t9-25, not a guess):
 *
 *  1. CDN urls play directly on MediaPlayer (200 / Range 206), so no audio proxy is needed.
 *     Every play re-resolves, because a url lives for hours only.
 *  2. The factory ducks STREAM_MUSIC to ~50% whenever it speaks, and never restores it
 *     (03_factory_tts_duck.log). The guard thread below restores our target volume as soon
 *     as the factory dialog goes idle again.
 *  3. This unit has no AEC (05_device_caps.txt), so while the factory is listening we drop
 *     to 25% of the target volume -- the mic has to hear the user over the music.
 *  4. Playback survives the activity going away, so state lives here, not in the activity:
 *     the UI reads static getters and gets a callback on every change.
 *  5. Single MediaPlayer + a generation counter: switching tracks while prepareAsync() is
 *     still running is the classic crash here, so stale callbacks are dropped by generation.
 */
package com.tgz02.voice;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.MediaPlayer;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class MusicService extends Service
        implements MediaPlayer.OnPreparedListener, MediaPlayer.OnCompletionListener,
        MediaPlayer.OnErrorListener, AudioManager.OnAudioFocusChangeListener {

    static final String TAG = "T925MUSIC";
    static final String ACTION_CMD = "com.tgz02.voice.action.MUSIC_CMD";
    static final String EXTRA_CMD = "cmd";
    static final String EXTRA_ARG = "arg";
    static final String EXTRA_VOL = "vol";

    static final int LOOP_OFF = 0, LOOP_ALL = 1, LOOP_ONE = 2;

    /**
     * Hard ceiling for the media stream. The operator asked for it after a test run was too
     * loud: everything -- the guard, the UI bar and the voice "声音大一点" path -- clamps here,
     * so no route can push STREAM_MUSIC above half.
     */
    static final int MAX_VOLUME = 50;

    /* ------------------------------------------------------------------ state */

    interface Ui { void onMusic(); }

    private static final CopyOnWriteArrayList<Ui> UIS = new CopyOnWriteArrayList<Ui>();
    private static volatile MusicService INSTANCE;

    private final Handler main = new Handler(Looper.getMainLooper());
    private final ExecutorService io = Executors.newSingleThreadExecutor();

    private final Object lock = new Object();
    private final ArrayList<Music.Track> queue = new ArrayList<Music.Track>();
    private int index = -1;
    private MediaPlayer mp;
    private int generation;
    private boolean prepared;
    private volatile boolean playing;
    private volatile boolean resolving;
    private volatile String errorText = "";
    private volatile String qualityTag = "";
    private volatile String resolvedQuality = "";
    /** three bad tracks in a row means the queue is unusable -- stop instead of marching on */
    private int consecutiveFailures;
    private Music.Lrc lrc = Music.Lrc.EMPTY;
    private int loopMode = LOOP_ALL;
    private boolean shuffle;
    private int targetVolume;
    private long pendingSeekMs = -1;
    private AudioManager am;
    private MediaSession session;
    private NotificationManager nm;
    private Thread guard;

    /* ------------------------------------------------------------------ api */

    static MusicService peek() { return INSTANCE; }

    /** true when the engine is alive (a UI may show real state) */
    static boolean alive() { return INSTANCE != null; }

    static void addUi(Ui u) { if (u != null) UIS.add(u); }

    static void removeUi(Ui u) { UIS.remove(u); }

    /** fire-and-forget command channel: the UI, the home screen and the voice bus all use it */
    static void send(Context c, String cmd, String arg, int vol) {
        Intent it = new Intent(c, MusicService.class);
        it.setAction(ACTION_CMD);
        it.putExtra(EXTRA_CMD, cmd);
        if (arg != null) it.putExtra(EXTRA_ARG, arg);
        it.putExtra(EXTRA_VOL, vol);
        try {
            /* the app may be in the background when a voice command arrives: on 8.1 a plain
               startService() from there throws, a foreground start does not (onStartCommand
               calls startForeground immediately). */
            if (android.os.Build.VERSION.SDK_INT >= 26) c.startForegroundService(it);
            else c.startService(it);
        } catch (Throwable t) {
            Log.w(TAG, "startService failed: " + t);
        }
    }

    /** a queue handed over by a screen; only used until the service exists in this process */
    private static volatile List<Music.Track> PENDING;
    private static volatile int PENDING_AT;

    /**
     * Play a queue a screen just fetched. A track list does not fit through an Intent, and
     * the service may not exist yet, so: same process -> call it directly; otherwise stash
     * the list in a static slot and let the freshly created service pick it up.
     */
    static void playTracks(Context c, List<Music.Track> tracks, int at) {
        if (tracks == null || tracks.isEmpty()) return;
        MusicService s = INSTANCE;
        if (s != null) {
            s.playList(tracks, at);
            return;
        }
        PENDING = new ArrayList<Music.Track>(tracks);
        PENDING_AT = at;
        send(c, "pending", null, -1);
    }

    /* reads for the UI -- safe to call from any thread, never blocks */

    static Music.Track currentTrack() {
        MusicService s = INSTANCE;
        if (s == null) return null;
        synchronized (s.lock) {
            if (s.index < 0 || s.index >= s.queue.size()) return null;
            return s.queue.get(s.index);
        }
    }

    static List<Music.Track> queueSnapshot() {
        MusicService s = INSTANCE;
        ArrayList<Music.Track> out = new ArrayList<Music.Track>();
        if (s == null) return out;
        synchronized (s.lock) { out.addAll(s.queue); }
        return out;
    }

    static int indexNow() { MusicService s = INSTANCE; return s == null ? -1 : s.index; }

    static boolean isPlaying() { MusicService s = INSTANCE; return s != null && s.playing; }

    static boolean isResolving() { MusicService s = INSTANCE; return s != null && s.resolving; }

    static Music.Lrc lyricNow() {
        MusicService s = INSTANCE;
        return s == null ? Music.Lrc.EMPTY : s.lrc;
    }

    static String qualityNow() { MusicService s = INSTANCE; return s == null ? "" : s.qualityTag; }

    static String errorNow() { MusicService s = INSTANCE; return s == null ? "" : s.errorText; }

    static int loopNow() { MusicService s = INSTANCE; return s == null ? LOOP_ALL : s.loopMode; }

    static boolean shuffleNow() { MusicService s = INSTANCE; return s != null && s.shuffle; }

    static int volumeNow() { MusicService s = INSTANCE; return s == null ? 60 : s.targetVolume; }

    /**
     * getDuration()/getCurrentPosition() are only legal in the prepared/started states.
     * Calling them while prepareAsync() runs makes MediaPlayerNative raise error(-38), which
     * arrives in onError() and used to look like "this track cannot play" -- it skipped
     * perfectly good songs. The 200ms UI tick was hitting that window on every switch.
     * Before the player is ready we answer from the metadata the search result already has.
     */
    static long positionMs() {
        MusicService s = INSTANCE;
        if (s == null || s.mp == null || !s.prepared) return 0;
        try { return s.mp.getCurrentPosition(); } catch (Throwable t) { return 0; }
    }

    static long durationMs() {
        MusicService s = INSTANCE;
        if (s != null && s.mp != null && s.prepared) {
            try { return s.mp.getDuration(); } catch (Throwable t) { return 0; }
        }
        Music.Track t = currentTrack();
        return (t != null && t.durationSec > 0) ? t.durationSec * 1000L : 0;
    }

    /* -------------------------------------------------------------- lifecycle */

    @Override public void onCreate()
    {
        super.onCreate();
        INSTANCE = this;
        am = (AudioManager) getSystemService(Context.AUDIO_SERVICE);
        nm = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        targetVolume = Math.max(0, Math.min(MAX_VOLUME, Music.volume(this)));
        shuffle = getSharedPreferences("music", MODE_PRIVATE).getBoolean("shuffle", false);
        loopMode = getSharedPreferences("music", MODE_PRIVATE).getInt("loop", LOOP_ALL);
        buildChannel();
        buildSession();
        startGuard();
        restoreQueue();
        Log.i(TAG, "service created target_vol=" + targetVolume + " loop=" + loopMode
                + " shuffle=" + (shuffle ? 1 : 0));
    }

    @Override public int onStartCommand(Intent intent, int flags, int startId)
    {
        startForeground(0x7A12, notification());
        if (intent == null) return START_STICKY;
        String cmd = intent.getStringExtra(EXTRA_CMD);
        String arg = intent.getStringExtra(EXTRA_ARG);
        int vol = intent.getIntExtra(EXTRA_VOL, -1);
        if (cmd != null) run(cmd, arg, vol);
        return START_STICKY;
    }

    @Override public IBinder onBind(Intent intent) { return null; }

    @Override public void onDestroy()
    {
        Log.i(TAG, "service destroyed");
        destroyPlayer();
        abandonFocus();
        if (session != null) { try { session.release(); } catch (Throwable ignored) { } }
        UIS.clear();
        INSTANCE = null;
        super.onDestroy();
    }

    /* ---------------------------------------------------------------- commands */

    private void run(String cmd, String arg, int vol)
    {
        Log.i(TAG, "cmd=" + cmd + " arg=" + (arg == null ? "" : arg) + " vol=" + vol);
        if ("play".equals(cmd)) {
            if (arg != null && arg.trim().length() > 0) playQuery(arg.trim());
            else resume();
        } else if ("playlist".equals(cmd)) {
            playPlaylist(arg);                     /* 歌单名 -> 整单入队 */
        } else if ("pause".equals(cmd)) {
            pause();
        } else if ("resume".equals(cmd)) {
            resume();
        } else if ("toggle".equals(cmd)) {
            if (playing) pause(); else resume();
        } else if ("next".equals(cmd)) {
            next(false);
        } else if ("prev".equals(cmd)) {
            prev();
        } else if ("stop".equals(cmd)) {
            stopSelf();
        } else if ("vol".equals(cmd)) {
            int want = vol >= 0 ? vol : targetVolume + (arg == null ? 0 : parseInt(arg, 0));
            setTargetVolume(want, true);
        } else if ("volup".equals(cmd)) {
            setTargetVolume(targetVolume + 10, true);
        } else if ("voldown".equals(cmd)) {
            setTargetVolume(targetVolume - 10, true);
        } else if ("loop".equals(cmd)) {
            setLoop((loopMode + 1) % 3);
        } else if ("shuffle".equals(cmd)) {
            setShuffle(!shuffle);
        } else if ("seek".equals(cmd)) {
            seekTo(parseInt(arg, 0));
        } else if ("reload".equals(cmd)) {
            if (index >= 0) playAt(index);
        } else if ("pending".equals(cmd)) {
            List<Music.Track> p = PENDING;
            int at = PENDING_AT;
            PENDING = null;
            if (p != null && !p.isEmpty()) playList(p, at);
        }
    }

    private static int parseInt(String s, int dflt) {
        try { return Integer.parseInt(s.trim()); } catch (Throwable t) { return dflt; }
    }

    /** "播放周杰伦的晴天": search, queue every hit, start at the first one */
    void playQuery(final String q)
    {
        resolving = true;
        errorText = "";
        notifyUi();
        io.execute(new Runnable() {
            public void run() {
                final List<Music.Track> hits = Music.Api.search(MusicService.this, q, 1);
                main.post(new Runnable() {
                    public void run() {
                        resolving = false;
                        if (hits.isEmpty()) {
                            errorText = "没找到「" + q + "」";
                            Log.w(TAG, "query no hit: " + q);
                            notifyUi();
                            return;
                        }
                        Music.Track best = pickBest(hits, q);
                        int at = hits.indexOf(best);
                        playList(hits, at < 0 ? 0 : at);
                    }
                });
            }
        });
    }

    /**
     * Score every hit instead of taking the first: "周杰伦 晴天" must not land on a cover by
     * 某音乐站 just because the upstream ordering put it first.
     */
    private static Music.Track pickBest(List<Music.Track> hits, String q)
    {
        String want = q.replace(" ", "");
        Music.Track best = null;
        int bestScore = -1;
        for (int i = 0; i < hits.size(); i++) {
            Music.Track t = hits.get(i);
            int s = 0;
            String n = t.name == null ? "" : t.name.replace(" ", "");
            if (n.length() > 0 && n.equals(want)) s += 10;
            else if (n.length() > 0 && want.contains(n)) s += 6;
            if (t.singer != null && t.singer.length() > 0) {
                String[] parts = t.singer.split("[/、&,，]");
                for (int k = 0; k < parts.length; k++) {
                    String p = parts[k].replace(" ", "");
                    if (p.length() > 0 && want.contains(p)) { s += 8; break; }
                }
            }
            if (s > bestScore) { bestScore = s; best = t; }
        }
        return best == null ? hits.get(0) : best;
    }

    /** "播放我喜欢的歌单": match a cloud playlist by name, then queue it whole */
    void playPlaylist(final String name)
    {
        resolving = true;
        notifyUi();
        io.execute(new Runnable() {
            public void run() {
                final List<Music.Playlist> pls = Music.Api.playlists(MusicService.this);
                final Music.Playlist hit = pickPlaylist(pls, name);
                if (hit == null) {
                    main.post(new Runnable() {
                        public void run() {
                            resolving = false;
                            errorText = "没有叫「" + name + "」的歌单";
                            notifyUi();
                        }
                    });
                    return;
                }
                final List<Music.Track> tracks = Music.Api.tracks(MusicService.this, hit.gcid, 500);
                main.post(new Runnable() {
                    public void run() {
                        resolving = false;
                        if (tracks.isEmpty()) {
                            errorText = "歌单「" + hit.name + "」里没有可播的歌";
                            notifyUi();
                            return;
                        }
                        playList(tracks, 0);
                    }
                });
            }
        });
    }

    private static Music.Playlist pickPlaylist(List<Music.Playlist> pls, String name)
    {
        if (pls.isEmpty()) return null;
        String want = (name == null ? "" : name).replace(" ", "");
        for (int i = 0; i < pls.size(); i++) {
            String n = pls.get(i).name == null ? "" : pls.get(i).name.replace(" ", "");
            if (n.equals(want)) return pls.get(i);
        }
        for (int i = 0; i < pls.size(); i++) {
            String n = pls.get(i).name == null ? "" : pls.get(i).name;
            if (n.length() > 0 && (want.contains(n) || n.contains(want))) return pls.get(i);
        }
        /* "我喜欢" is the operator's default when no name is given */
        if (want.length() == 0) {
            for (int i = 0; i < pls.size(); i++) {
                if ("我喜欢".equals(pls.get(i).name)) return pls.get(i);
            }
            return pls.get(0);
        }
        return null;
    }

    void playList(List<Music.Track> tracks, int at)
    {
        if (tracks == null || tracks.isEmpty()) return;
        synchronized (lock) {
            queue.clear();
            queue.addAll(tracks);
        }
        playAt(at < 0 ? 0 : at);
    }

    void playAt(int at)
    {
        final int gen;
        final Music.Track t;
        synchronized (lock) {
            if (at < 0 || at >= queue.size()) return;
            index = at;
            t = queue.get(at);
            gen = ++generation;
        }
        errorText = "";
        qualityTag = "";
        prepared = false;
        playing = false;
        resolving = true;
        lrc = Music.Lrc.EMPTY;
        pendingSeekMs = -1;
        releasePlayer();
        notifyUi();
        saveQueue();

        io.execute(new Runnable() {
            public void run() {
                final Music.Api.Play got = Music.Api.resolvePlay(MusicService.this, t,
                        Music.quality(MusicService.this));
                final Music.Lrc lyr = Music.Api.lyric(MusicService.this, t);
                main.post(new Runnable() {
                    public void run() {
                        if (gen != generation) return;       /* superseded: drop */
                        resolving = false;
                        lrc = lyr;
                        if (got == null || got.url.length() == 0) {
                            errorText = "解析失败：" + t.title();
                            Log.w(TAG, "resolve failed: " + t.title());
                            notifyUi();
                            failAndSkip();
                            return;
                        }
                        resolvedQuality = got.quality;
                        startPlayer(got.url, gen);
                        notifyUi();
                    }
                });
            }
        });
    }

    private void startPlayer(String url, int gen)
    {
        if (gen != generation) return;
        try {
            /* Reuse one MediaPlayer for the whole service lifetime. Creating a new one right
               after release() races the previous instance's teardown on this MTK build and
               prepare() then fails with what=-38 (seen in ~half of the track switches). */
            MediaPlayer p = mp;
            if (p == null) {
                p = new MediaPlayer();
                mp = p;
                p.setOnPreparedListener(this);
                p.setOnCompletionListener(this);
                p.setOnErrorListener(this);
            } else {
                try { p.reset(); } catch (Throwable ignored) { }
            }
            p.setAudioAttributes(new AudioAttributes.Builder()
                    .setUsage(AudioAttributes.USAGE_MEDIA)
                    .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build());
            p.setWakeMode(this, PowerManager.PARTIAL_WAKE_LOCK);
            p.setDataSource(url);
            p.prepareAsync();
        } catch (Throwable t) {
            errorText = "播放失败：" + t.getClass().getSimpleName();
            Log.w(TAG, "startPlayer: " + t);
            failAndSkip();
        }
    }

    public void onPrepared(MediaPlayer p)
    {
        if (p != mp) { try { p.release(); } catch (Throwable ignored) { } return; }
        prepared = true;
        consecutiveFailures = 0;
        requestFocus();
        if (pendingSeekMs > 0) {
            p.seekTo((int) pendingSeekMs);
            pendingSeekMs = -1;
        }
        p.start();
        playing = true;
        Music.Track t = currentTrack();
        qualityTag = qualityOf(t);
        Log.i(TAG, "playing: " + (t == null ? "?" : t.title()) + " dur=" + p.getDuration() + "ms");
        updateSession(true);
        updateNotification();
        notifyUi();
        saveQueue();
    }

    /** the server tells us which tier it actually handed out; fall back to what we asked for */
    private String qualityOf(Music.Track t) {
        if (t == null) return "";
        String rq = resolvedQuality;
        if (rq != null && rq.length() > 0) {
            return ("128".equals(rq) || "320".equals(rq)) ? rq + "k" : rq;
        }
        String q = Music.quality(this);
        return (q == null || q.length() == 0) ? "" : q + "k";
    }

    /**
     * One bad track must not take the queue down with it, and a whole bad queue must not
     * march through 20 songs in 10 seconds: skip after a short delay (this MTK build also
     * needs a breath between two MediaPlayer instances) and give up after three.
     */
    private void failAndSkip()
    {
        consecutiveFailures++;
        Log.w(TAG, "skip after failure #" + consecutiveFailures);
        if (consecutiveFailures >= 3) {
            consecutiveFailures = 0;
            errorText = "这几首都放不了，换个歌单调调";
            releasePlayer();
            playing = false;
            notifyUi();
            return;
        }
        main.postDelayed(new Runnable() {
            public void run() { next(true); }
        }, 500);
    }

    public void onCompletion(MediaPlayer p)
    {
        if (p != mp) return;                 /* already replaced/released */
        if (loopMode == LOOP_ONE) {
            try { p.seekTo(0); p.start(); playing = true; notifyUi(); return; }
            catch (Throwable ignored) { }
        }
        next(true);
    }

    public boolean onError(MediaPlayer p, int what, int extra)
    {
        /* release()/reset() on a player that is being swapped out also lands here (errno
           -38 on this MTK build). Only a live player is a real failure -- otherwise one
           skip would cascade through the whole queue, which is exactly what we saw. */
        if (p != mp) return true;
        Log.w(TAG, "player error what=" + what + " extra=" + extra
                + " track=" + (currentTrack() == null ? "?" : currentTrack().title()));
        errorText = "播放出错（" + what + "/" + extra + "）";
        releasePlayer();
        playing = false;
        notifyUi();
        failAndSkip();
        return true;
    }

    void next(boolean auto)
    {
        synchronized (lock) {
            if (queue.isEmpty()) { return; }
            if (shuffle) {
                if (queue.size() == 1) { playAt(0); return; }
                int pick = index;
                for (int tries = 0; tries < 8 && pick == index; tries++) {
                    pick = (int) (Math.random() * queue.size());
                }
                playAt(pick);
                return;
            }
            if (index + 1 < queue.size()) { playAt(index + 1); return; }
            if (loopMode == LOOP_ALL) { playAt(0); return; }
        }
        /* end of queue, no loop: stop but keep the queue for "继续播放" */
        releasePlayer();
        playing = false;
        updateSession(false);
        notifyUi();
    }

    void prev()
    {
        synchronized (lock) {
            if (queue.isEmpty()) return;
            if (index > 0) { playAt(index - 1); return; }
            playAt(queue.size() - 1);
        }
    }

    void pause()
    {
        try { if (mp != null && playing) { mp.pause(); playing = false; } } catch (Throwable ignored) { }
        updateSession(false);
        updateNotification();
        notifyUi();
        saveQueue();
    }

    void resume()
    {
        if (mp != null && prepared) {
            try { requestFocus(); mp.start(); playing = true; } catch (Throwable ignored) { }
            updateSession(true);
            updateNotification();
            notifyUi();
            return;
        }
        /* nothing loaded yet: continue where the queue left off, or start the first track */
        int at = index;
        synchronized (lock) {
            if (queue.isEmpty()) { restoreQueue(); }
            if (!queue.isEmpty()) {
                if (at < 0 || at >= queue.size()) at = 0;
            }
        }
        if (at >= 0) playAt(at);
    }

    void seekTo(int ms)
    {
        if (mp == null || !prepared) return;
        try { mp.seekTo(ms); notifyUi(); } catch (Throwable ignored) { }
    }

    void setLoop(int mode)
    {
        loopMode = (mode % 3 + 3) % 3;
        getSharedPreferences("music", MODE_PRIVATE).edit().putInt("loop", loopMode).apply();
        notifyUi();
    }

    void setShuffle(boolean on)
    {
        shuffle = on;
        getSharedPreferences("music", MODE_PRIVATE).edit().putBoolean("shuffle", on).apply();
        notifyUi();
    }

    void setTargetVolume(int v, boolean apply)
    {
        targetVolume = Math.max(0, Math.min(MAX_VOLUME, v));
        Music.setVolume(this, targetVolume);
        if (apply && am != null) {
            try { am.setStreamVolume(AudioManager.STREAM_MUSIC, targetVolume, 0); }
            catch (Throwable t) { Log.w(TAG, "setStreamVolume: " + t); }
        }
        notifyUi();
    }

    /* ------------------------------------------------------- focus & guard */

    private boolean focusHeld;
    private boolean resumeOnGain;

    private void requestFocus()
    {
        if (am == null) return;
        int r = am.requestAudioFocus(this, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN);
        focusHeld = r == AudioManager.AUDIOFOCUS_REQUEST_GRANTED;
    }

    private void abandonFocus()
    {
        if (am != null && focusHeld) am.abandonAudioFocus(this);
        focusHeld = false;
    }

    public void onAudioFocusChange(int change)
    {
        Log.i(TAG, "focus change=" + change);
        if (change == AudioManager.AUDIOFOCUS_LOSS) {
            pause();
            resumeOnGain = false;
        } else if (change == AudioManager.AUDIOFOCUS_LOSS_TRANSIENT) {
            if (playing) { resumeOnGain = true; pause(); }
        } else if (change == AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK) {
            /* the factory speaks: leave the volume alone here, it ducks the stream itself */
        } else if (change == AudioManager.AUDIOFOCUS_GAIN) {
            if (resumeOnGain) { resumeOnGain = false; resume(); }
        }
    }

    /**
     * The two behaviours this device forces on us:
     *  - the factory lowers STREAM_MUSIC when it speaks and never puts it back (restore us);
     *  - there is no AEC, so while the factory is listening we drop to 25% (mic must win).
     */
    private void startGuard()
    {
        if (guard != null) return;
        guard = new Thread(new Runnable() {
            public void run() {
                while (INSTANCE == MusicService.this) {
                    try { Thread.sleep(1200); } catch (InterruptedException e) { return; }
                    try { tick(); } catch (Throwable t) { }
                }
            }
        }, "t925-guard");
        guard.setDaemon(true);
        guard.start();
    }

    private void tick()
    {
        if (am == null) return;
        int cur = am.getStreamVolume(AudioManager.STREAM_MUSIC);
        String st = voiceState();
        if (!playing) {
            /* not playing: still repair an obviously ducked volume once idle */
            if ("idle".equals(st) && cur < targetVolume - 3) am.setStreamVolume(
                    AudioManager.STREAM_MUSIC, targetVolume, 0);
            return;
        }
        if ("listening".equals(st)) {
            int want = Math.max(5, targetVolume * 25 / 100);
            if (cur != want) am.setStreamVolume(AudioManager.STREAM_MUSIC, want, 0);
        } else if ("speaking".equals(st)) {
            /* the factory is talking: its own duck is the correct level, don't fight it */
        } else if (cur < targetVolume - 3) {
            am.setStreamVolume(AudioManager.STREAM_MUSIC, targetVolume, 0);
            Log.i(TAG, "volume guard: " + cur + " -> " + targetVolume);
        }
    }

    /** dialog.state out of the worker's public status file: idle / listening / speaking */
    private String voiceState()
    {
        File f = new File("/data/local/tmp/t9_ui/status.public.json");
        if (!f.exists() || !f.canRead()) return "idle";
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] buf = new byte[8192];
            int n = in.read(buf);
            if (n <= 0) return "idle";
            String s = new String(buf, 0, n, "UTF-8");
            int i = s.indexOf("\"dialog\"");
            if (i < 0) return "idle";
            int j = s.indexOf("\"state\"", i);
            if (j < 0) return "idle";
            int q1 = s.indexOf('"', s.indexOf(':', j) + 1);
            int q2 = q1 < 0 ? -1 : s.indexOf('"', q1 + 1);
            if (q1 < 0 || q2 < 0) return "idle";
            return s.substring(q1 + 1, q2);
        } catch (Throwable t) {
            return "idle";
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) { }
        }
    }

    /* ---------------------------------------------------------- persistence */

    /** back to idle, but keep the instance for the next track (see startPlayer) */
    private void releasePlayer()
    {
        MediaPlayer p = mp;
        prepared = false;
        if (p != null) { try { p.reset(); } catch (Throwable ignored) { } }
    }

    /** really let the decoder go: service shutdown only */
    private void destroyPlayer()
    {
        MediaPlayer p = mp;
        mp = null;
        prepared = false;
        if (p != null) {
            try { p.reset(); } catch (Throwable ignored) { }
            try { p.release(); } catch (Throwable ignored) { }
        }
    }

    private void saveQueue()
    {
        try {
            org.json.JSONObject o = new org.json.JSONObject();
            o.put("index", index);
            o.put("playing", playing);
            org.json.JSONArray arr = new org.json.JSONArray();
            synchronized (lock) {
                for (int i = 0; i < queue.size(); i++) arr.put(queue.get(i).toJson());
            }
            o.put("queue", arr);
            o.put("title", currentTrack() == null ? "" : currentTrack().title());
            FileOutputStream fos = new FileOutputStream(new File(getFilesDir(), "play.music.json"));
            try { fos.write(o.toString().getBytes("UTF-8")); } finally { fos.close(); }
        } catch (Throwable t) {
            Log.w(TAG, "saveQueue: " + t);
        }
        persistQueue();
    }

    private void persistQueue()
    {
        try {
            org.json.JSONObject o = new org.json.JSONObject();
            o.put("index", index);
            org.json.JSONArray arr = new org.json.JSONArray();
            synchronized (lock) {
                /* keep the file small: 60 tracks is plenty for "continue where I was" */
                int from = Math.max(0, index - 5);
                int to = Math.min(queue.size(), from + 60);
                for (int i = from; i < to; i++) arr.put(queue.get(i).toJson());
                o.put("index", Math.max(0, index - from));
            }
            o.put("queue", arr);
            getSharedPreferences("music", MODE_PRIVATE).edit()
                    .putString("queue", o.toString()).apply();
        } catch (Throwable ignored) { }
    }

    private void restoreQueue()
    {
        if (!queue.isEmpty()) return;
        try {
            String raw = getSharedPreferences("music", MODE_PRIVATE).getString("queue", "");
            if (raw == null || raw.length() == 0) return;
            org.json.JSONObject o = new org.json.JSONObject(raw);
            org.json.JSONArray arr = o.optJSONArray("queue");
            if (arr == null) return;
            synchronized (lock) {
                queue.clear();
                for (int i = 0; i < arr.length(); i++) {
                    Music.Track t = Music.Track.fromJson(arr.optJSONObject(i));
                    if (t != null) queue.add(t);
                }
                index = Math.max(0, Math.min(queue.size() - 1, o.optInt("index", 0)));
            }
            Log.i(TAG, "restored queue: " + queue.size() + " tracks, index=" + index);
        } catch (Throwable t) {
            Log.w(TAG, "restoreQueue: " + t);
        }
    }

    /* ----------------------------------------------------------- notification */

    private static final String CHANNEL = "tg-music";

    private void buildChannel()
    {
        if (android.os.Build.VERSION.SDK_INT < 26) return;
        NotificationChannel ch = new NotificationChannel(CHANNEL, "音乐播放",
                NotificationManager.IMPORTANCE_LOW);
        ch.setShowBadge(false);
        nm.createNotificationChannel(ch);
    }

    private Notification notification()
    {
        Music.Track t = currentTrack();
        String title = t == null ? "音乐" : t.title();
        String text = t == null ? "说「播放晴天」开始" : t.sub();
        Intent open = new Intent(this, MusicActivity.class);
        open.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        PendingIntent pi = PendingIntent.getActivity(this, 1, open,
                PendingIntent.FLAG_UPDATE_CURRENT);
        Notification.Builder b = android.os.Build.VERSION.SDK_INT >= 26
                ? new Notification.Builder(this, CHANNEL)
                : new Notification.Builder(this);
        b.setContentTitle(title).setContentText(text)
                .setSmallIcon(android.R.drawable.ic_media_play)
                .setContentIntent(pi).setOngoing(playing).setOnlyAlertOnce(true);
        return b.build();
    }

    private void updateNotification()
    {
        try { nm.notify(0x7A12, notification()); } catch (Throwable ignored) { }
    }

    /* --------------------------------------------------------- media session */

    private void buildSession()
    {
        try {
            session = new MediaSession(this, "tg-music");
            session.setFlags(MediaSession.FLAG_HANDLES_MEDIA_BUTTONS
                    | MediaSession.FLAG_HANDLES_TRANSPORT_CONTROLS);
            session.setActive(true);
        } catch (Throwable t) {
            Log.w(TAG, "session: " + t);
        }
    }

    private void updateSession(boolean isPlaying)
    {
        if (session == null) return;
        try {
            Music.Track t = currentTrack();
            if (t != null) {
                session.setMetadata(new MediaMetadata.Builder()
                        .putString(MediaMetadata.METADATA_KEY_TITLE, t.title())
                        .putString(MediaMetadata.METADATA_KEY_ARTIST, t.singer)
                        .putString(MediaMetadata.METADATA_KEY_ALBUM, t.album)
                        .putLong(MediaMetadata.METADATA_KEY_DURATION, durationMs())
                        .build());
            }
            PlaybackState.Builder b = new PlaybackState.Builder()
                    .setActions(PlaybackState.ACTION_PLAY | PlaybackState.ACTION_PAUSE
                            | PlaybackState.ACTION_PLAY_PAUSE | PlaybackState.ACTION_STOP
                            | PlaybackState.ACTION_SKIP_TO_NEXT
                            | PlaybackState.ACTION_SKIP_TO_PREVIOUS);
            b.setState(isPlaying ? PlaybackState.STATE_PLAYING : PlaybackState.STATE_PAUSED,
                    positionMs(), 1f);
            session.setPlaybackState(b.build());
        } catch (Throwable ignored) { }
    }

    private void notifyUi()
    {
        main.post(new Runnable() {
            public void run() {
                for (int i = 0; i < UIS.size(); i++) {
                    Ui u = UIS.get(i);
                    try { u.onMusic(); } catch (Throwable ignored) { }
                }
            }
        });
    }
}
