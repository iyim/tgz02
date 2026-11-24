/*
 * t9_08b_r2_stop_model_test.java -- T9-08B-R2 host tests for the stop decision table.
 *
 *   javac -d out ../android/tts_exec/StopControl.java t9_08b_r2_stop_model_test.java
 *   java -cp out com.tgz02.tts.StopModelTest
 *
 * StopControl is deliberately Android-free so that the two decisions the executor takes -- "does
 * this control file name the item I am playing?" and "is this outcome terminal (never retried)?" --
 * can be checked on the host without a device, a provider or the factory TTS.
 *
 * Covered:
 *   1  no file                -> NONE
 *   2  empty file             -> NONE
 *   3  legacy free text       -> GLOBAL  ("new utterance")
 *   4  legacy "stop"          -> GLOBAL
 *   5  targeted stop          -> the id
 *   6  targeted stop without a trailing newline -> the id
 *   7  whitespace after '='   -> the id
 *   8  tts_id 0               -> INVALID
 *   9  negative tts_id        -> INVALID
 *  10  non-numeric tts_id     -> INVALID
 *  11  trailing junk          -> INVALID
 *  12  the id range           -> 2147483647 ok, 2147483648 INVALID
 *  13  matching: only the item that is playing may be stopped
 *  14  a global stop never "matches" (it is the legacy path, not a targeted stop)
 *  15  terminal outcomes: ok/complete/stopped/stop/interrupted
 *  16  failures stay retryable: timeout/error/rejected/provider_error
 *  17  what a targeted stop produces (stopped) is terminal -> no replay
 *  18  a stop aimed at the previous item does not match the next one (no misfire)
 *  19  a genuine failure is still classified as retryable (status=3 -> error -> retry)
 */
package com.tgz02.tts;

/* package-private on purpose: the file name need not match, and StopControl is package-private
 * too -- this test lives inside com.tgz02.tts so that it exercises the real class, not a copy */
final class StopModelTest {

    private static int pass = 0, fail = 0;

    private static void ck(boolean cond, String name)
    {
        if (cond) pass++;
        else { fail++; System.out.println("FAIL: " + name); }
    }

    private static void cki(int got, int want, String name)
    {
        if (got == want) pass++;
        else { fail++; System.out.println("FAIL: " + name + " (want " + want + " got " + got + ")"); }
    }

    public static void main(String[] args)
    {
        /* ---- 1..4 nothing / legacy ---- */
        cki(StopControl.parse(null), StopControl.NONE, "1 absent file is NONE");
        cki(StopControl.parse(""), StopControl.NONE, "2 empty file is NONE");
        cki(StopControl.parse("   \n"), StopControl.NONE, "2 whitespace only is NONE");
        cki(StopControl.parse("new utterance"), StopControl.GLOBAL, "3 legacy text is GLOBAL");
        cki(StopControl.parse("stop"), StopControl.GLOBAL, "4 legacy 'stop' is GLOBAL");
        cki(StopControl.parse("route=native intent=stop"), StopControl.GLOBAL,
            "4 legacy reason text is GLOBAL");

        /* ---- 5..12 the targeted form ---- */
        cki(StopControl.parse("stop_tts_id=4242\nwhy=ui stop\n"), 4242, "5 targeted id");
        cki(StopControl.parse("stop_tts_id=4242"), 4242, "6 no trailing newline still works");
        cki(StopControl.parse("stop_tts_id= 777\r\nwhy=x\r\n"), 777, "7 spaces after '='");
        cki(StopControl.parse("stop_tts_id=0\n"), StopControl.INVALID, "8 id 0 is INVALID");
        cki(StopControl.parse("stop_tts_id=-3\n"), StopControl.INVALID, "9 negative is INVALID");
        cki(StopControl.parse("stop_tts_id=abc\n"), StopControl.INVALID, "10 text is INVALID");
        cki(StopControl.parse("stop_tts_id=12abc\n"), StopControl.INVALID, "11 trailing junk");
        cki(StopControl.parse("stop_tts_id=2147483647\n"), 2147483647, "12 the boundary id");
        cki(StopControl.parse("stop_tts_id=2147483648\n"), StopControl.INVALID, "12 above range");

        /* ---- 13/14 matching ---- */
        ck(StopControl.matches(4242, 4242), "13 the playing item matches");
        ck(!StopControl.matches(4242, 4243), "13 another item does not match");
        ck(!StopControl.matches(StopControl.GLOBAL, 4242), "14 a global stop never matches");
        ck(!StopControl.matches(StopControl.NONE, 4242), "14 nothing in the file never matches");
        ck(!StopControl.matches(StopControl.INVALID, 4242), "14 a malformed target never matches");
        ck(!StopControl.matches(4242, -1), "14 an item without an id is never stopped");

        /* ---- 15/16 the terminal table ---- */
        ck(StopControl.isTerminal("ok"), "15 ok is terminal");
        ck(StopControl.isTerminal("complete"), "15 complete is terminal");
        ck(StopControl.isTerminal("stopped"), "15 stopped is terminal");
        ck(StopControl.isTerminal("stop"), "15 stop is terminal (the pre-R2 hole)");
        ck(StopControl.isTerminal("interrupted"), "15 interrupted is terminal");
        ck(!StopControl.isTerminal("timeout"), "16 timeout is still retryable");
        ck(!StopControl.isTerminal("error"), "16 error is still retryable");
        ck(!StopControl.isTerminal("rejected"), "16 rejected is still retryable");
        ck(!StopControl.isTerminal("provider_error"), "16 provider_error is still retryable");
        ck(!StopControl.isTerminal(null), "16 an unknown outcome is not terminal");

        /* ---- 17/18 what a stop produces, and where it must not land ---- */
        ck(StopControl.STOPPED.equals("stopped"), "17 a targeted stop produces stopped");
        ck(StopControl.isTerminal(StopControl.STOPPED),
           "17 that outcome is terminal -> the item is closed, never requeued");

        int previous = 4242;
        int next = 4243;
        boolean honour = StopControl.matches(previous, previous);
        boolean misfire = StopControl.matches(previous, next);
        ck(honour, "18 the stop is honoured while its own item plays");
        ck(!misfire, "18 the same stop cannot reach the next item ('3 fast presses' case)");
        ck(StopControl.isTerminal("stopped") && !misfire,
           "18 pressing stop again must not cancel the next queued item");

        /* ---- 19 the real failure path keeps its retry ---- */
        /* the executor maps the factory's onNotify status=3 to "error", and "error" stays
         * non-terminal, so a genuine playback fault is still retried (fault, not user stop) */
        String fromStatusThree = "error";
        ck(!StopControl.isTerminal(fromStatusThree),
           "19 status=3 is still a failure and still retried");

        System.out.print("\nT9-08B-R2 stop model tests: " + pass + " passed, " + fail + " failed\n");
        if (fail != 0) System.exit(1);
    }
}
