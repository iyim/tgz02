/*
 * SessionStore.java -- T9-07: local conversation history, no cloud, no database.
 *
 * One JSON file per session under filesDir/sessions. Every first append of a message rewrites
 * that one file atomically (tmp + rename), so the history survives a crash and a device reboot
 * without a second consistency mechanism. Bounded: <= MAX_SESSIONS sessions, <= MAX_MSGS
 * messages per session, so a long-lived speaker cannot fill the disk.
 *
 * The store also remembers every event_id it has ever shown. The worker keeps the last N events
 * on disk and the UI re-reads them after a restart (that is how a turn that happened while the
 * app was closed still shows up); the id set is what stops that backfill from duplicating a
 * message that is already in the history.
 */
package com.tgz02.voice;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

final class SessionStore {

    static final int MAX_SESSIONS = 40;
    static final int MAX_MSGS     = 200;

    static final String ROLE_USER = "user";
    static final String ROLE_ASST = "assistant";

    static final String S_PENDING = "pending";
    static final String S_ASKED   = "asked";      /* submitted, the AI answer is being produced */
    static final String S_QUEUED  = "queued";
    static final String S_PLAYING = "playing";
    static final String S_PLAYED  = "played";
    static final String S_STOPPED = "stopped";
    static final String S_FAILED  = "failed";
    /* T9-07R1: the AI turn itself failed (the request was accepted, the answer was not) */
    static final String S_TURN_FAILED = "turn_failed";

    static final class Msg {
        String role = ROLE_USER;
        String text = "";
        long ts;
        String eventId = "";
        int ttsId;
        String state = "";

        Msg copy()
        {
            Msg m = new Msg();
            m.role = role; m.text = text; m.ts = ts; m.eventId = eventId;
            m.ttsId = ttsId; m.state = state;
            return m;
        }
    }

    static final class Session {
        String id = "";
        long created, updated;
        String title = "";
        final ArrayList<Msg> msgs = new ArrayList<Msg>();
    }

    private final File dir;
    private final Set<String> seenEvents = new HashSet<String>();
    private Session current;

    SessionStore(File filesDir)
    {
        dir = new File(filesDir, "sessions");
        if (!dir.isDirectory()) dir.mkdirs();
        for (Session s : readAll()) {
            for (Msg m : s.msgs) if (m.eventId.length() > 0) seenEvents.add(m.eventId);
        }
    }

    Session current()
    {
        if (current == null) {
            List<Session> all = readAll();
            current = all.isEmpty() ? newSession() : all.get(0);
        }
        return current;
    }

    /** newest first, metadata only */
    List<Session> list()
    {
        List<Session> all = readAll();
        Collections.sort(all, new Comparator<Session>() {
            public int compare(Session a, Session b) {
                return a.updated < b.updated ? 1 : (a.updated > b.updated ? -1 : 0);
            }
        });
        return all;
    }

    Session newSession()
    {
        Session s = new Session();
        s.id = "s" + System.currentTimeMillis();
        s.created = s.updated = System.currentTimeMillis();
        s.title = "";
        current = s;
        save(s);
        return s;
    }

    Session open(String id)
    {
        for (Session s : readAll()) {
            if (s.id.equals(id)) { current = s; return s; }
        }
        return current();
    }

    boolean hasEvent(String eventId)
    {
        return eventId != null && eventId.length() > 0 && seenEvents.contains(eventId);
    }

    /** does this event already have a message with this role in the open session? */
    boolean hasRole(String eventId, String role)
    {
        if (eventId == null || eventId.length() == 0) return false;
        Session s = current();
        for (int i = 0; i < s.msgs.size(); i++) {
            Msg m = s.msgs.get(i);
            if (eventId.equals(m.eventId) && role.equals(m.role)) return true;
        }
        return false;
    }

    /** append a message to the open session; returns the stored copy */
    Msg append(String role, String text, String eventId, String state)
    {
        Session s = current();
        Msg m = new Msg();
        m.role = role;
        m.text = text == null ? "" : text;
        m.ts = System.currentTimeMillis();
        m.eventId = eventId == null ? "" : eventId;
        m.state = state == null ? "" : state;
        s.msgs.add(m);
        if (s.msgs.size() > MAX_MSGS) s.msgs.subList(0, s.msgs.size() - MAX_MSGS).clear();
        if (s.title.length() == 0 && ROLE_USER.equals(role)) {
            String t = m.text.trim();
            s.title = t.length() > 18 ? t.substring(0, 18) + "…" : t;
        }
        s.updated = m.ts;
        if (m.eventId.length() > 0) seenEvents.add(m.eventId);
        save(s);
        prune();
        return m;
    }

    /** mark the message(s) that belong to event_id (the last one wins for the tts_id) */
    void setState(String eventId, String state, int ttsId)
    {
        if (eventId == null || eventId.length() == 0) return;
        Session s = current();
        boolean changed = false;
        for (int i = s.msgs.size() - 1; i >= 0; i--) {
            Msg m = s.msgs.get(i);
            if (!eventId.equals(m.eventId)) continue;
            if (state != null && state.length() > 0) { m.state = state; changed = true; }
            if (ttsId > 0) { m.ttsId = ttsId; changed = true; }
        }
        if (changed) { s.updated = System.currentTimeMillis(); save(s); }
    }

    /* ------------------------------------------------------------------ storage */

    private void save(Session s)
    {
        File tmp = new File(dir, s.id + ".json.tmp");
        File dst = new File(dir, s.id + ".json");
        try {
            JSONObject o = new JSONObject();
            o.put("v", 1);
            o.put("id", s.id);
            o.put("created", s.created);
            o.put("updated", s.updated);
            o.put("title", s.title);
            JSONArray arr = new JSONArray();
            for (Msg m : s.msgs) {
                JSONObject j = new JSONObject();
                j.put("role", m.role);
                j.put("text", m.text);
                j.put("ts", m.ts);
                j.put("event_id", m.eventId);
                j.put("tts_id", m.ttsId);
                j.put("state", m.state);
                arr.put(j);
            }
            o.put("msgs", arr);
            byte[] body = o.toString().getBytes("UTF-8");
            FileOutputStream fos = new FileOutputStream(tmp, false);
            try {
                fos.write(body);
                fos.flush();
                fos.getFD().sync();
            } finally {
                fos.close();
            }
            if (!tmp.renameTo(dst)) {
                dst.delete();
                tmp.renameTo(dst);
            }
        } catch (Throwable t) {
            try { tmp.delete(); } catch (Throwable ignored) { }
        }
    }

    private List<Session> readAll()
    {
        List<Session> out = new ArrayList<Session>();
        String[] names = dir.list();
        if (names == null) return out;
        for (int i = 0; i < names.length; i++) {
            if (!names[i].endsWith(".json")) continue;
            String raw = VoiceBridgeClient.readAll(new File(dir, names[i]));
            if (raw == null) continue;
            try {
                JSONObject o = new JSONObject(raw);
                Session s = new Session();
                s.id = o.optString("id", names[i].substring(0, names[i].length() - 5));
                s.created = o.optLong("created", 0);
                s.updated = o.optLong("updated", 0);
                s.title = o.optString("title", "");
                JSONArray arr = o.optJSONArray("msgs");
                if (arr != null) {
                    for (int k = 0; k < arr.length(); k++) {
                        JSONObject j = arr.optJSONObject(k);
                        if (j == null) continue;
                        Msg m = new Msg();
                        m.role = j.optString("role", ROLE_USER);
                        m.text = j.optString("text", "");
                        m.ts = j.optLong("ts", 0);
                        m.eventId = j.optString("event_id", "");
                        m.ttsId = j.optInt("tts_id", 0);
                        m.state = j.optString("state", "");
                        s.msgs.add(m);
                    }
                }
                out.add(s);
            } catch (Throwable ignored) { }
        }
        return out;
    }

    private void prune()
    {
        List<Session> all = readAll();
        if (all.size() <= MAX_SESSIONS) return;
        Collections.sort(all, new Comparator<Session>() {
            public int compare(Session a, Session b) {
                return a.updated < b.updated ? -1 : (a.updated > b.updated ? 1 : 0);
            }
        });
        for (int i = 0; i < all.size() - MAX_SESSIONS; i++) {
            if (current != null && current.id.equals(all.get(i).id)) continue;
            new File(dir, all.get(i).id + ".json").delete();
        }
    }

    int messageCount()
    {
        int n = 0;
        for (Session s : readAll()) n += s.msgs.size();
        return n;
    }
}
