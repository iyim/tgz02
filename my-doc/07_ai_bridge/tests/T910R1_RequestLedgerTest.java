/*
 * T910R1_RequestLedgerTest.java -- host test for the accept/commit/release rule.
 *
 * The bug this guards against was real: submitStop/submitModelTest recorded the id BEFORE writing
 * and never released it on failure, so one failed write turned that request into a permanent
 * "duplicate" that could never be retried.
 *
 *   javac -d out src\com\tgz02\voice\RequestLedger.java tests\T910R1_RequestLedgerTest.java
 *   java -cp out com.tgz02.voice.T910R1_RequestLedgerTest
 */
package com.tgz02.voice;

public class T910R1_RequestLedgerTest {

    static int passed = 0, failed = 0;

    static void check(String what, boolean ok) {
        if (ok) { passed++; System.out.println("OK    " + what); }
        else { failed++; System.out.println("FAIL  " + what); }
    }

    public static void main(String[] args) {
        RequestLedger l = new RequestLedger();

        check("fresh id is unknown", !l.seen("ask-1"));
        l.commit("ask-1");
        check("committed id is seen", l.seen("ask-1"));
        check("size after commit = 1", l.size() == 1);

        l.commit("ask-1");
        check("committing twice does not grow", l.size() == 1);

        l.commit("ask-2");
        l.release("ask-2");
        check("released id is unknown again (retryable)", !l.seen("ask-2"));
        check("released id left the table", l.size() == 1);

        l.commit("ask-2");
        check("retry with the same id after release commits", l.seen("ask-2"));
        check("size back to 2", l.size() == 2);

        /* null safety: callers pass ids from AIDL, which can be null */
        l.commit(null);
        l.release(null);
        check("null ids are ignored", l.size() == 2 && !l.seen(null));

        /* bounded table: the LRU evicts the oldest once MAX+ entries are accepted */
        RequestLedger big = new RequestLedger();
        for (int i = 0; i < RequestLedger.MAX; i++) big.commit("id-" + i);
        check("table holds MAX entries", big.size() == RequestLedger.MAX);
        big.commit("id-overflow");
        check("size stays bounded at MAX", big.size() == RequestLedger.MAX);
        check("oldest entry was evicted", !big.seen("id-0"));
        check("newest entry is present", big.seen("id-overflow"));

        l.clear();
        check("clear empties the table", l.size() == 0);

        System.out.println("RESULT passed=" + passed + " failed=" + failed);
        if (failed > 0) System.exit(1);
    }
}
