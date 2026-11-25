// ITgBackend.aidl -- T9-10: the product's backend interface (replaces the T9-09 demo).
//
// Design rules that come from the T9-09 experiments and the reviewer's constraints:
//   * the UI never touches the worker's files any more; the service is the only poller;
//   * every submit carries a client-generated event_id, so a retried request after a UI crash
//     or a rebind is idempotent instead of duplicated;
//   * Binder threads only do parameter validation plus one small atomic file write (O(1), no
//     polling, no HTTP); all observation happens on the service's own poller thread;
//   * data crosses the boundary as JSON strings: the same parser that already understands
//     status.public.json / events / play.public.json runs on both sides, so a field added by the
//     worker does not require a new AIDL method.
//
// Return value of every submit*: the event_id on success, or "err:<code>:<message>" where code is
// one of invalid_arg | duplicate | inbox_unwritable | internal.
package com.tgz02.voice.ipc;

import com.tgz02.voice.ipc.ITgBackendListener;

interface ITgBackend {
    int apiLevel();                            // 1
    String apiVersion();                       // "1.0.0"

    /** backend pid/uid/proc/uptime/listener count + whether the worker looks alive */
    String healthJson();

    /** ask the AI pipeline; the answer is spoken by the factory TTS as usual */
    String submitAsk(String eventId, String text);

    /** speak the text verbatim (kind=say) -- used by the memory confirmation flow */
    String submitSay(String eventId, String text);

    /** the ONE way to stop a playback: names the tts_id the executor must stop */
    String submitStop(String eventId, int ttsId);

    /** ask the worker to test one model configuration (empty id = the active one) */
    String submitModelTest(String eventId, String modelId);

    String statusJson();                       // last observed status.public.json ("" if never)
    String playJson();                         // last observed play.public.json
    String receiptJson(String eventId);        // one result/<id>.json, "" when not there yet

    void registerListener(ITgBackendListener l);
    void unregisterListener(ITgBackendListener l);
    int listenerCount();
}
