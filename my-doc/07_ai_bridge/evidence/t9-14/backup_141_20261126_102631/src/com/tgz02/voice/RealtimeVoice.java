/*
 * RealtimeVoice.java -- T9-08C: 实时语音的 App 侧接口（本轮只建立扩展位置）
 *
 * 对应 worker 侧的 realtime_voice.h。为什么 App 也要有这一层：
 *   实时语音的音频采集/播放在 App 进程（有麦克风与音频焦点），协议在 worker 侧。
 *   两边用同一组动作名（connect / startSession / sendAudio / receiveAudio /
 *   receiveTranscript / interrupt / closeSession / disconnect）对接，
 *   以后接豆包实时语音时，界面只认这个接口，不需要知道 wss 细节。
 *
 * 本轮状态：**全部 notImplemented**。不做假实现、不假装已连通；
 * 现有原厂唤醒/ASR/TTS 链路完全不受影响（这条链路是并行的，未启用）。
 */
package com.tgz02.voice;

interface RealtimeVoice {

    /** 与 worker 侧 rv_params 对齐的连接参数 */
    final class Params {
        public String url = "";
        public String apiKey = "";
        public String appId = "";
        public String model = "";
        public int sampleRate = 16000;
        public int channels = 1;
        public int frameMs = 20;
        public boolean bargeIn = true;
    }

    final class Result {
        public final boolean ok;
        public final String reason;
        public Result(boolean ok, String reason) { this.ok = ok; this.reason = reason; }
        static Result notImplemented(String what) { return new Result(false, what + ": not implemented"); }
        static Result ok() { return new Result(true, ""); }
    }

    /* 双向音频与转写事件的回调（由实现方在后台线程调用） */
    interface Listener {
        void onTranscript(String text, boolean isFinal);
        void onReplyDelta(String text);
        void onState(String state);
        void onError(String reason);
    }

    String name();

    Result connect(Params p);
    Result disconnect();
    Result startSession(Params p);
    Result sendAudio(short[] pcm, int frames);
    Result receiveAudio(short[] pcm, int frames);
    Result receiveTranscript();
    Result interrupt();
    Result closeSession();

    void setListener(Listener l);
}
