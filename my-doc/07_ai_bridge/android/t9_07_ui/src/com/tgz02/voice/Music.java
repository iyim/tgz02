/*
 * Music.java -- T9-25: the KuGou music data layer for the native player.
 *
 * Why a separate class: everything that is "protocol" lives here and nowhere else. The
 * player (MusicService) and the screens (MusicActivity / MusicListActivity) only ever see
 * Track / Playlist / Lrc objects, so swapping the backend later (LAN python service today,
 * a pure-Java KgClient tomorrow) touches this file only.
 *
 * The backend is the operator's own kugou-web service (D:\Code\py2\kugou-web), bound to the
 * LAN with a shared token (see KUGOU_BIND / KUGOU_TOKEN there). Endpoints used:
 *   GET /api/session                      login state
 *   GET /api/search?kw=&page=             search
 *   GET /api/me/playlists                 cloud playlists
 *   GET /api/me/tracks?gcid=&limit=       tracks of one playlist
 *   GET /api/play?hash=&quality=          resolve a playable CDN url
 *   GET /api/lyric?hash=&duration=        LRC text
 *
 * Nothing here runs on the UI thread: every call is blocking and must be used from a
 * worker thread (MusicService's executor, or a screen's own thread).
 */
package com.tgz02.voice;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

public final class Music {

    private Music() { }

    private static final String TAG = "T925MUSIC";

    static void logw(String where, Throwable t) {
        android.util.Log.w(TAG, where + ": " + t);
    }

    /* ------------------------------------------------------------------ config */

    private static final String PREF = "music";
    private static final String K_BASE = "base";
    private static final String K_TOKEN = "token";
    private static final String K_QUALITY = "quality";
    private static final String K_VOLUME = "volume";

    /** the operator's box; the device talks to it over the LAN (verified: 401 without token) */
    static final String DEFAULT_BASE = "http://192.168.1.5:8848";

    static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREF, Context.MODE_PRIVATE);
    }

    /*
     * files/music.conf -- the same "root writes a file" pattern the rest of this project
     * uses (worker.conf, models.json). It exists because this device has no keyboard worth
     * typing a 24-char token into: the operator seeds the file once from the host, and the
     * in-app setting (prefs) stays available as an override.
     *   base=http://192.168.1.5:8848
     *   token=<KUGOU_TOKEN of the python service>
     *   quality=320
     */
    private static volatile long confStamp = -1;
    private static volatile String confBase = "";
    private static volatile String confToken = "";
    private static volatile String confQuality = "";

    private static void readConf(Context c)
    {
        try {
            java.io.File f = new java.io.File(c.getFilesDir(), "music.conf");
            if (!f.exists()) return;
            long stamp = f.lastModified() * 31 + f.length();
            if (stamp == confStamp) return;
            String text = Music.Api.readAll(new java.io.FileInputStream(f));
            String b = "", t = "", q = "";
            String[] rows = text.split("\n");
            for (int i = 0; i < rows.length; i++) {
                String row = rows[i].trim();
                if (row.length() == 0 || row.startsWith("#")) continue;
                int eq = row.indexOf('=');
                if (eq <= 0) continue;
                String k = row.substring(0, eq).trim().toLowerCase();
                String v = row.substring(eq + 1).trim();
                if (k.equals("base") || k.equals("url")) b = v;
                else if (k.equals("token")) t = v;
                else if (k.equals("quality")) q = v;
            }
            confBase = b;
            confToken = t;
            confQuality = q;
            confStamp = stamp;
        } catch (Throwable ignored) { }
    }

    static String base(Context c) {
        String v = prefs(c).getString(K_BASE, "");
        if (!TextUtils.isEmpty(v)) return v;
        readConf(c);
        return TextUtils.isEmpty(confBase) ? DEFAULT_BASE : confBase;
    }

    static String token(Context c) {
        String v = prefs(c).getString(K_TOKEN, "");
        if (!TextUtils.isEmpty(v)) return v;
        readConf(c);
        return confToken == null ? "" : confToken;
    }

    /** true when the player has no token at all: the LAN service will answer 401 */
    static boolean configured(Context c) {
        return token(c).length() > 0;
    }

    static void setBase(Context c, String url, String token) {
        prefs(c).edit().putString(K_BASE, url.trim()).putString(K_TOKEN,
                token == null ? "" : token.trim()).apply();
    }

    static String quality(Context c) {
        String v = prefs(c).getString(K_QUALITY, "");
        if (!TextUtils.isEmpty(v)) return v;
        readConf(c);
        return TextUtils.isEmpty(confQuality) ? "320" : confQuality;
    }

    static void setQuality(Context c, String q) {
        prefs(c).edit().putString(K_QUALITY, q).apply();
    }

    /** the volume the player restores after the factory ducks it (see MusicService) */
    static int volume(Context c) {
        return Math.min(MusicService.MAX_VOLUME, prefs(c).getInt(K_VOLUME, 40));
    }

    static void setVolume(Context c, int v) {
        prefs(c).edit().putInt(K_VOLUME,
                Math.max(0, Math.min(MusicService.MAX_VOLUME, v))).apply();
    }

    /* ------------------------------------------------------------------- model */

    public static final class Track {
        public String name = "";
        public String singer = "";
        public String album = "";
        public String hash = "";
        public String cover = "";
        public long mixSongId;
        public int durationSec;

        public String title() { return name == null ? "" : name; }

        public String sub() {
            if (TextUtils.isEmpty(singer)) return TextUtils.isEmpty(album) ? "" : album;
            if (TextUtils.isEmpty(album)) return singer;
            return singer + " · " + album;
        }

        public JSONObject toJson() {
            JSONObject o = new JSONObject();
            try {
                o.put("name", name);
                o.put("singer", singer);
                o.put("album", album);
                o.put("hash", hash);
                o.put("cover", cover);
                o.put("mix_song_id", mixSongId);
                o.put("duration", durationSec);
            } catch (Throwable ignored) { }
            return o;
        }

        public static Track fromJson(JSONObject o) {
            if (o == null) return null;
            Track t = new Track();
            t.name = o.optString("name", "");
            t.singer = o.optString("singer", "");
            t.album = o.optString("album", "");
            t.hash = o.optString("hash", "");
            t.cover = o.optString("cover", "");
            t.mixSongId = o.optLong("mix_song_id", 0);
            t.durationSec = o.optInt("duration", 0);
            return TextUtils.isEmpty(t.hash) ? null : t;
        }
    }

    public static final class Playlist {
        public String name = "";
        public String gcid = "";
        public String cover = "";
        public int count;
    }

    /* --------------------------------------------------------------------- lrc */

    /** parsed LRC: parallel arrays, ascending time; indexAt() is a binary search */
    public static final class Lrc {
        public final long[] times;
        public final String[] lines;

        private Lrc(long[] t, String[] l) { times = t; lines = l; }

        public boolean isEmpty() { return lines.length == 0; }

        public int size() { return lines.length; }

        public int indexAt(long ms) {
            if (lines.length == 0) return -1;
            int lo = 0, hi = lines.length - 1, best = -1;
            while (lo <= hi) {
                int mid = (lo + hi) >>> 1;
                if (times[mid] <= ms) { best = mid; lo = mid + 1; }
                else hi = mid - 1;
            }
            return best;
        }

        public static final Lrc EMPTY = new Lrc(new long[0], new String[0]);

        /**
         * Accepts [mm:ss], [mm:ss.x] and [mm:ss.xx] (the service already normalises KRC to
         * LRC). One source line may carry several timestamps; each produces its own entry.
         */
        public static Lrc parse(String text) {
            if (text == null || text.length() == 0) return EMPTY;
            ArrayList<Long> ts = new ArrayList<Long>();
            ArrayList<String> ls = new ArrayList<String>();
            String[] rows = text.split("\n");
            for (int i = 0; i < rows.length; i++) {
                String row = rows[i].trim();
                if (row.length() < 5 || row.charAt(0) != '[') continue;
                int close = row.indexOf(']');
                if (close < 0) continue;
                int n = 0;
                while (close > 0 && close < row.length()) {
                    String stamp = row.substring(1, close);
                    long ms = stampMs(stamp);
                    if (ms < 0) break;
                    String rest = row.substring(close + 1).trim();
                    if (rest.length() > 0) {
                        ts.add(Long.valueOf(ms));
                        ls.add(rest);
                        n++;
                    }
                    if (close + 1 >= row.length() || row.charAt(close + 1) != '[') break;
                    int next = row.indexOf(']', close + 1);
                    if (next < 0) break;
                    close = next;
                }
                if (n == 0 && close + 1 < row.length()) {
                    /* timestamp only, empty text: keep the beat so the highlight still moves */
                    long ms = stampMs(row.substring(1, close));
                    if (ms >= 0) { ts.add(Long.valueOf(ms)); ls.add(""); }
                }
            }
            /* sort by time (files are usually ordered, but multi-stamp lines are not) */
            for (int i = 1; i < ts.size(); i++) {
                long tv = ts.get(i).longValue();
                String sv = ls.get(i);
                int j = i - 1;
                while (j >= 0 && ts.get(j).longValue() > tv) {
                    ts.set(j + 1, ts.get(j));
                    ls.set(j + 1, ls.get(j));
                    j--;
                }
                ts.set(j + 1, Long.valueOf(tv));
                ls.set(j + 1, sv);
            }
            long[] ta = new long[ts.size()];
            String[] la = new String[ls.size()];
            for (int i = 0; i < ta.length; i++) {
                ta[i] = ts.get(i).longValue();
                la[i] = ls.get(i);
            }
            return new Lrc(ta, la);
        }

        /** "03:12.45" / "1:2.3" -> ms; -1 when it is not a timestamp */
        private static long stampMs(String s) {
            int colon = s.indexOf(':');
            if (colon <= 0) return -1;
            try {
                int min = Integer.parseInt(s.substring(0, colon).trim());
                String tail = s.substring(colon + 1).trim();
                int dot = tail.indexOf('.');
                int sec, frac = 0, fracDigits = 0;
                if (dot < 0) {
                    sec = Integer.parseInt(tail);
                } else {
                    sec = Integer.parseInt(tail.substring(0, dot));
                    String f = tail.substring(dot + 1);
                    fracDigits = f.length();
                    if (fracDigits > 3) f = f.substring(0, 3);
                    frac = Integer.parseInt(f);
                    for (int i = f.length(); i < 3; i++) frac *= 10;
                }
                return min * 60000L + sec * 1000L + frac;
            } catch (Throwable t) {
                return -1;
            }
        }
    }

    /* --------------------------------------------------------------------- api */

    public static final class Api {

        public static boolean loggedIn(Context c) {
            try {
                JSONObject o = get(c, "/api/session");
                return o != null && o.optBoolean("logged_in", false);
            } catch (Throwable t) {
                return false;
            }
        }

        public static String sessionName(Context c) {
            try {
                JSONObject o = get(c, "/api/session");
                if (o == null) return "";
                String nick = o.optString("nickname", "");
                int vip = o.optInt("vip_type", 0);
                return nick + (vip > 0 ? " · 会员" : "");
            } catch (Throwable t) {
                return "";
            }
        }

        public static List<Track> search(Context c, String kw, int page) {
            ArrayList<Track> out = new ArrayList<Track>();
            try {
                JSONObject o = get(c, "/api/search?kw=" + enc(kw) + "&page=" + page);
                JSONArray arr = o == null ? null : o.optJSONArray("songs");
                if (arr == null) return out;
                for (int i = 0; i < arr.length(); i++) {
                    Track t = track(arr.optJSONObject(i));
                    if (t != null) out.add(t);
                }
            } catch (Throwable ignored) { }
            return out;
        }

        public static List<Playlist> playlists(Context c) {
            ArrayList<Playlist> out = new ArrayList<Playlist>();
            try {
                JSONObject o = get(c, "/api/me/playlists");
                JSONArray arr = o == null ? null : o.optJSONArray("playlists");
                if (arr == null) return out;
                for (int i = 0; i < arr.length(); i++) {
                    JSONObject it = arr.optJSONObject(i);
                    if (it == null) continue;
                    Playlist p = new Playlist();
                    p.name = it.optString("name", "");
                    p.gcid = it.optString("gcid", "");
                    p.cover = it.optString("cover", "");
                    p.count = it.optInt("count", 0);
                    if (!TextUtils.isEmpty(p.gcid)) out.add(p);
                }
            } catch (Throwable ignored) { }
            return out;
        }

        public static List<Track> tracks(Context c, String gcid, int limit) {
            ArrayList<Track> out = new ArrayList<Track>();
            try {
                String path = "/api/me/tracks?limit=" + limit;
                if (!TextUtils.isEmpty(gcid)) path += "&gcid=" + enc(gcid);
                JSONObject o = get(c, path);
                JSONArray arr = o == null ? null : o.optJSONArray("songs");
                if (arr == null) return out;
                for (int i = 0; i < arr.length(); i++) {
                    Track t = track(arr.optJSONObject(i));
                    if (t != null) out.add(t);
                }
            } catch (Throwable ignored) { }
            return out;
        }

        /** best allowed quality + one downgrade attempt happen server side; returns "" on miss */
        public static String resolve(Context c, Track t, String quality) {
            Play p = resolvePlay(c, t, quality);
            return p == null ? "" : p.url;
        }

        /** one resolve call: the url plus the tier the server actually handed out */
        public static final class Play {
            public String url = "";
            public String quality = "";
        }

        public static Play resolvePlay(Context c, Track t, String quality) {
            Play out = new Play();
            try {
                String path = "/api/play?hash=" + enc(t.hash) + "&quality="
                        + enc(TextUtils.isEmpty(quality) ? "320" : quality);
                if (t.mixSongId > 0) path += "&album_audio_id=" + t.mixSongId;
                JSONObject o = get(c, path);
                if (o == null) return out;
                out.url = o.optString("url", "");
                out.quality = o.optString("quality", "");
                return out;
            } catch (Throwable t2) {
                return out;
            }
        }

        /* -------------------------------------------------------------- account */

        /** one QR-login attempt: the key to poll, the url to draw, and where it stands */
        public static final class Login {
            public String key = "";
            public String url = "";
            public String status = "";
            public boolean loggedIn;
        }

        public static Login qrStart(Context c) {
            Login out = new Login();
            try {
                JSONObject o = get(c, "/api/login/qr");
                if (o == null) return out;
                out.key = o.optString("key", "");
                out.url = o.optString("url", "");
            } catch (Throwable t) {
                logw("qrStart", t);
            }
            return out;
        }

        /** status: 0/1 waiting, 2 scanned (waiting for confirm), 4 confirmed */
        public static Login qrCheck(Context c, String key) {
            Login out = new Login();
            try {
                JSONObject o = get(c, "/api/login/qr/check?key=" + enc(key));
                if (o == null) return out;
                out.status = String.valueOf(o.optInt("status", 0));
                out.loggedIn = o.optBoolean("logged_in", false)
                        || "4".equals(o.optString("status", ""));
            } catch (Throwable t) {
                logw("qrCheck", t);
            }
            return out;
        }

        public static boolean logout(Context c) {
            try {
                JSONObject o = get(c, "/api/logout");
                return o != null && o.optBoolean("ok", false);
            } catch (Throwable t) {
                return false;
            }
        }

        /** {nickname, vipType, userId} of the service's current session */
        public static String[] account(Context c) {
            try {
                JSONObject o = get(c, "/api/session");
                if (o == null) return new String[] { "", "", "" };
                return new String[] {
                        o.optString("nickname", ""),
                        String.valueOf(o.optInt("vip_type", 0)),
                        String.valueOf(o.optLong("userid", 0)) };
            } catch (Throwable t) {
                return new String[] { "", "", "" };
            }
        }

        public static Lrc lyric(Context c, Track t) {            try {
                String path = "/api/lyric?hash=" + enc(t.hash);
                if (t.durationSec > 0) path += "&duration=" + t.durationSec;
                JSONObject o = get(c, path);
                if (o == null) return Lrc.EMPTY;
                return Lrc.parse(o.optString("lyric", ""));
            } catch (Throwable t2) {
                return Lrc.EMPTY;
            }
        }

        static Track track(JSONObject o) {
            if (o == null) return null;
            Track t = new Track();
            t.name = o.optString("SongName", "");
            t.singer = o.optString("SingerName", "");
            t.album = o.optString("AlbumName", "");
            t.hash = o.optString("FileHash", "");
            t.cover = o.optString("Cover", "");
            t.mixSongId = o.optLong("MixSongID", 0);
            t.durationSec = o.optInt("Duration", 0);
            if (TextUtils.isEmpty(t.hash) || TextUtils.isEmpty(t.name)) return null;
            return t;
        }

        /* ---------------------------------------------------------------- http */

        static JSONObject get(Context c, String path) throws Exception {
            HttpURLConnection conn = null;
            InputStream in = null;
            try {
                URL u = new URL(base(c) + path);
                conn = (HttpURLConnection) u.openConnection();
                conn.setConnectTimeout(6000);
                conn.setReadTimeout(20000);
                conn.setRequestMethod("GET");
                String tok = token(c);
                if (!TextUtils.isEmpty(tok)) conn.setRequestProperty("X-Tg-Token", tok);
                conn.setRequestProperty("Accept", "application/json");
                int code = conn.getResponseCode();
                in = code >= 400 ? conn.getErrorStream() : conn.getInputStream();
                String body = readAll(in);
                if (code == 401) {
                    throw new IllegalStateException("后端拒绝访问（令牌不对）");
                }
                if (body == null || body.length() == 0) {
                    throw new IllegalStateException("空响应 HTTP " + code);
                }
                return new JSONObject(body);
            } finally {
                if (in != null) try { in.close(); } catch (Throwable ignored) { }
                if (conn != null) try { conn.disconnect(); } catch (Throwable ignored) { }
            }
        }

        static String readAll(InputStream in) throws Exception {
            if (in == null) return "";
            ByteArrayOutputStream bos = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) bos.write(buf, 0, n);
            return new String(bos.toByteArray(), "UTF-8");
        }

        static String enc(String s) {
            try {
                return URLEncoder.encode(s == null ? "" : s, "UTF-8");
            } catch (Throwable t) {
                return "";
            }
        }
    }
}
