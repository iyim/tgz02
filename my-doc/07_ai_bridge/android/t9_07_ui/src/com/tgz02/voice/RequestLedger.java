/*
 * RequestLedger.java -- T9-10-R1: the accept/commit/release rule for submitted request ids.
 *
 * Why a separate class: the rule ("an id counts as accepted only after the request really landed,
 * and a failed write must release the id so the caller can retry") is the kind of thing that has
 * to be testable without an Android device. It has no Android dependency and is exercised by
 * tests/T910R1_RequestLedgerTest.java on the host.
 *
 * Bounded on purpose: the worker keeps its own idempotency table, so this one only has to cover
 * the retry window. When an id falls out of the LRU it is simply unknown again -- a duplicate that
 * old would be caught by the worker's own event_id check, not here.
 */
package com.tgz02.voice;

import java.util.LinkedHashMap;
import java.util.Map;

final class RequestLedger {

    static final int MAX = 256;

    private final LinkedHashMap<String, Long> accepted =
            new LinkedHashMap<String, Long>(64, 0.75f, true) {
                @Override protected boolean removeEldestEntry(Map.Entry<String, Long> e) {
                    return size() > MAX;
                }
            };

    /** true when this id already landed on the bus (do not write it again) */
    synchronized boolean seen(String id) {
        return id != null && accepted.containsKey(id);
    }

    /** call ONLY after the file write succeeded */
    synchronized void commit(String id) {
        if (id != null) accepted.put(id, System.currentTimeMillis());
    }

    /** call when the write failed: the same request must stay retryable */
    synchronized void release(String id) {
        if (id != null) accepted.remove(id);
    }

    synchronized int size() {
        return accepted.size();
    }

    synchronized void clear() {
        accepted.clear();
    }
}
