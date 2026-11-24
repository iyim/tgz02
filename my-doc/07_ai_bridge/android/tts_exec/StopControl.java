/*
 * StopControl.java -- T9-08B-R2: the stop decision table, deliberately free of Android imports
 * so that the host can compile and run it (tests/t9_08b_r2_stop_model_test.java).
 *
 * The executor reads one control file, <tts_queue>/control/stop, and two shapes exist:
 *
 *   legacy  (T5-06D / T7-04)  free text, e.g. "new utterance" or "stop"  -> stop EVERYTHING
 *   controlled (T9-08B-R2)    "stop_tts_id=<n>" and "why=<text>"         -> stop ONLY tts_id n
 *
 * The distinction is the whole point of this stage:
 *   - a targeted stop names the item it wants stopped, so it may only be applied to that item;
 *   - a targeted stop that arrives when that item is gone (already finished, or the next item
 *     already started) is dropped -- it must never stop whatever is playing now;
 *   - a legacy id-less stop keeps meaning "all", exactly as before this stage.
 */
package com.tgz02.tts;

final class StopControl {

    /** no control file / nothing to do */
    static final int NONE = -2;
    /** legacy, id-less stop: stop everything (the pre-R2 semantics, unchanged) */
    static final int GLOBAL = -1;
    /** a targeted stop whose value is unusable: drop it, act on nothing */
    static final int INVALID = -3;

    private static final String KEY = "stop_tts_id=";
    private static final long MAX_ID = 2147483647L;

    private StopControl() { }

    /**
     * Parse the content of control/stop.
     *
     * @return NONE, GLOBAL, INVALID, or a positive tts_id
     */
    static int parse(String content)
    {
        if (content == null) return NONE;
        int at = content.indexOf(KEY);
        if (at < 0) return content.trim().length() == 0 ? NONE : GLOBAL;
        int i = at + KEY.length();
        while (i < content.length() && (content.charAt(i) == ' ' || content.charAt(i) == '\t')) i++;
        long v = 0;
        int digits = 0;
        while (i < content.length()) {
            char c = content.charAt(i);
            if (c < '0' || c > '9') break;
            v = v * 10 + (c - '0');
            digits++;
            i++;
            if (v > MAX_ID) return INVALID;
        }
        if (digits == 0 || v <= 0) return INVALID;
        /* the value must be the whole rest of its line: "12abc" is not a tts_id */
        if (i < content.length()) {
            char c = content.charAt(i);
            if (c != '\n' && c != '\r') return INVALID;
        }
        return (int) v;
    }

    /**
     * A targeted stop only ever affects the item whose tts_id it names. A global stop is handled
     * by the legacy path, so it never "matches" here.
     */
    static boolean matches(int target, int currentTtsId)
    {
        return target > 0 && currentTtsId > 0 && target == currentTtsId;
    }

    /**
     * Outcomes that end an item for good: such an item is marked done and NEVER requeued.
     *
     * "stop" is here on purpose (T9-08B-R2): the factory can report status=stop for an item,
     * and before this stage that word fell through to the retry branch and was spoken again.
     * "error"/"timeout"/"rejected"/"provider_error" are NOT terminal: a real playback failure
     * must keep its retry, otherwise a genuine fault would be swallowed by the stop fix.
     */
    static boolean isTerminal(String outcome)
    {
        if (outcome == null) return false;
        return outcome.equals("ok") || outcome.equals("complete")
            || outcome.equals("stopped") || outcome.equals("stop")
            || outcome.equals("interrupted");
    }

    /** the outcome an honoured targeted stop produces (terminal: no retry, no replay) */
    static final String STOPPED = "stopped";
}
