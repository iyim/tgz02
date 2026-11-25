/*
 * BackendJson.java -- T9-10: one place that turns the records the service observes into the
 * exact JSON shapes the UI already knows how to parse.
 *
 * Why this exists instead of a Parcelable per record:
 *   the UI's parsers (VoiceBridgeClient.parseStatus / parseTurn / parsePlay / parseReceipt) were
 *   written against the worker's own JSON. Serialising back into the same shape means the UI
 *   needs no new field mapping, and when the worker adds a field only one parser has to learn it.
 */
package com.tgz02.voice;

import org.json.JSONObject;

final class BackendJson {

    private BackendJson() { }

    static String status(VoiceBridgeClient.Status s)
    {
        try {
            JSONObject o = new JSONObject();
            o.put("ts_ms", s.tsMs);
            o.put("pid", s.pid);
            o.put("uptime_ms", s.uptimeMs);
            o.put("worker", s.worker);

            JSONObject p = new JSONObject();
            p.put("name", s.provider);
            p.put("model", s.model);
            p.put("mock", s.mock ? 1 : 0);
            p.put("ok", s.ok);
            p.put("err", s.err);
            p.put("timeout", s.timeout);
            p.put("last_http", s.lastHttp);
            p.put("last_error", s.lastError);
            p.put("last_class", s.lastClass);
            p.put("last_latency_ms", s.latencyMs);
            o.put("provider", p);

            JSONObject d = new JSONObject();
            d.put("state", s.dialog);
            d.put("sc", s.sc);
            d.put("round", s.round);
            d.put("session", s.session);
            d.put("listening", s.listening ? 1 : 0);
            d.put("tap", s.tap ? 1 : 0);
            o.put("dialog", d);

            JSONObject c = new JSONObject();
            c.put("inbox_accepted", s.inboxAccepted);
            c.put("inbox_rejected", s.inboxRejected);
            c.put("ui_published", s.uiPublished);
            c.put("ui_errors", s.uiErrors);
            o.put("counters", c);

            JSONObject m = new JSONObject();
            m.put("enabled", s.modelsEnabled ? 1 : 0);
            m.put("active", s.modelsActive ? 1 : 0);
            m.put("id", s.modelsId);
            m.put("vendor", s.modelsVendor);
            m.put("label", s.modelsLabel);
            m.put("model", s.modelsModel);
            m.put("mode", s.modelsMode);
            m.put("count", s.modelsCount);
            m.put("reloads", s.modelsReloads);
            m.put("error", s.modelsError);
            m.put("calls", s.modelsCalls);
            m.put("ok", s.modelsOk);
            m.put("err", s.modelsErr);
            m.put("timeout", s.modelsTimeout);
            m.put("last_ms", s.modelsLastMs);
            m.put("last_class", s.modelsLastClass);
            m.put("last_error", s.modelsLastError);
            JSONObject t = new JSONObject();
            t.put("id", s.testId);
            t.put("ran", s.testRan ? 1 : 0);
            t.put("ok", s.testOk ? 1 : 0);
            t.put("ms", s.testMs);
            t.put("reason", s.testReason);
            m.put("test", t);
            o.put("models", m);

            o.put("present", s.present);
            return o.toString();
        } catch (Throwable t) {
            return "";
        }
    }

    static String turn(VoiceBridgeClient.Turn t)
    {
        try {
            JSONObject o = new JSONObject();
            o.put("seq", t.seq);
            o.put("ts_ms", t.tsMs);
            o.put("kind", t.kind);
            o.put("session", t.session);
            o.put("event_id", t.eventId);
            o.put("route", t.route);
            o.put("skill", t.skill);
            o.put("user", t.user);
            o.put("reply", t.reply);
            o.put("reply_bytes", t.replyBytes);
            o.put("status", t.status);
            o.put("reason", t.reason);
            return o.toString();
        } catch (Throwable e) {
            return "";
        }
    }

    static String play(VoiceBridgeClient.Play p)
    {
        try {
            JSONObject o = new JSONObject();
            o.put("event_id", p.eventId);
            o.put("tts_id", p.ttsId);
            o.put("state", p.state);
            o.put("last_outcome", p.outcome);
            o.put("dur_ms", p.durMs);
            return o.toString();
        } catch (Throwable t) {
            return "";
        }
    }

    static String receipt(VoiceBridgeClient.Receipt r)
    {
        try {
            JSONObject o = new JSONObject();
            o.put("event_id", r.eventId);
            o.put("ok", r.ok);
            o.put("stage", r.stage);
            o.put("reason", r.reason);
            o.put("ts_ms", r.tsMs);
            return o.toString();
        } catch (Throwable t) {
            return "";
        }
    }
}
