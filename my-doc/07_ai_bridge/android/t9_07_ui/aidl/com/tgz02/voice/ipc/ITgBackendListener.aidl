// ITgBackendListener.aidl -- T9-10: service -> UI events.
//
// kind:
//   "turn"     one record of <ui>/events/<seq>.json     (what the user said / what was answered)
//   "play"     one observation of play.public.json      (event_id -> tts_id, playing/idle/outcome)
//   "status"   one observation of status.public.json    (worker + dialog + model counters)
//   "receipt"  one result/<event_id>.json               (accepted / refused / timeout)
//   "diag"     a service-side diagnostic line (never used for business logic)
package com.tgz02.voice.ipc;

interface ITgBackendListener {
    void onEvent(String kind, String json);
}
