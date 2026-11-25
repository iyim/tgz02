// ITgDemoCallback.aidl -- service -> UI direction of the T9-09 experiment.
// Deliberately small: it only has to prove that the callback object crosses the process
// boundary from our own service back into our own UI.
package com.tgz02.binderdemo;

interface ITgDemoCallback {
    void onTick(int seq, long ts);
    void onNativeLine(String line);
}
