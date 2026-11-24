/*
 * DoubaoRealtimeVoice.java -- T9-08C: 豆包实时语音的 App 侧占位实现
 *
 * 存在意义：把"实时语音"这个能力位在 App 里钉死，将来换成真实现时界面不用改。
 * 现在的行为是**每个动作都明确返回 not implemented**，不是空实现、不是假装成功。
 *
 * 真实实现时要做的事（与 worker 侧 doubao_realtime_provider.c 的注释一一对应）：
 *   connect           建立 wss（url/apiKey/appId），完成鉴权
 *   startSession      下发 model/sampleRate/channels/frameMs/bargeIn
 *   sendAudio         把 AudioRecord 的 PCM 打成帧上行（本 App 有 RECORD_AUDIO 时）
 *   receiveAudio      把下行 PCM 交给 AudioTrack
 *   receiveTranscript 把服务端事件翻成 onTranscript/onReplyDelta
 *   interrupt         发 barge-in，丢弃当前回复
 *   closeSession      结束会话
 *   disconnect        断链（重连带指数退避）
 */
package com.tgz02.voice;

final class DoubaoRealtimeVoice implements RealtimeVoice {

    private Listener listener;
    private String state = "idle";

    public String name() { return "doubao-realtime"; }

    public Result connect(Params p)
    {
        if (p == null) return new Result(false, "no params");
        if (p.apiKey == null || p.apiKey.length() == 0) return new Result(false, "api key is empty");
        if (p.appId == null || p.appId.length() == 0) return new Result(false, "app id is empty");
        if (p.model == null || p.model.length() == 0) return new Result(false, "realtime model is empty");
        if (p.url == null || !(p.url.startsWith("wss://") || p.url.startsWith("ws://"))) {
            return new Result(false, "realtime url must start with wss:// or ws://");
        }
        notifyState("idle");   /* 参数合法，但链路还没实现：状态仍然是 idle */
        return Result.notImplemented("connect");
    }

    public Result disconnect() { notifyState("idle"); return Result.notImplemented("disconnect"); }

    public Result startSession(Params p) { return Result.notImplemented("startSession"); }

    public Result sendAudio(short[] pcm, int frames)
    {
        if (pcm == null || frames <= 0) return new Result(false, "bad audio buffer");
        return Result.notImplemented("sendAudio");
    }

    public Result receiveAudio(short[] pcm, int frames) { return Result.notImplemented("receiveAudio"); }

    public Result receiveTranscript() { return Result.notImplemented("receiveTranscript"); }

    public Result interrupt() { return Result.notImplemented("interrupt"); }

    public Result closeSession() { notifyState("connected"); return Result.notImplemented("closeSession"); }

    public void setListener(Listener l) { listener = l; }

    private void notifyState(String s)
    {
        state = s;
        Listener l = listener;
        if (l != null) l.onState(state);
    }
}
