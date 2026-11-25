// ITgDemo.aidl -- UI -> service direction of the T9-09 experiment.
//
// This is OUR interface (not the factory's IAliTVASR): the point is to prove that a separate
// Android service process can be reached by our own UI over AIDL on this 8.1 / ARM32 device,
// that the direction is bidirectional, and that a native (C) child process can live behind it.
package com.tgz02.binderdemo;

import com.tgz02.binderdemo.ITgDemoCallback;

interface ITgDemo {
    String echo(String s);
    int add(int a, int b);
    int svcPid();                 // pid of the service process (must differ from the UI pid)
    String svcInfo();             // process name, uid, thread, start time

    void registerCallback(ITgDemoCallback cb);
    void unregisterCallback(ITgDemoCallback cb);
    int callbackCount();          // how many ticks the service actually pushed

    int startNative();            // fork/exec the C daemon, return its pid
    int stopNative();
    int nativePid();
    String askNative(String req); // one request/response line over the child's stdin/stdout
}
