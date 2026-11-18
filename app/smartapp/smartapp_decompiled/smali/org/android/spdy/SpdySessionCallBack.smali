.class final Lorg/android/spdy/SpdySessionCallBack;
.super Ljava/lang/Object;
.source "SpdySessionCallBack.java"

# interfaces
.implements Lorg/android/spdy/Intenalcb;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.bioPingRecvCallback] - "

    .line 200
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v1, :cond_0

    .line 202
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.bioPingRecvCallback] - no sessionCallBack."

    .line 204
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.getSSLMeta] - "

    .line 211
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 212
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v1, :cond_0

    .line 213
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1}, Lorg/android/spdy/SessionCb;->getSSLMeta(Lorg/android/spdy/SpdySession;)[B

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "[SpdySessionCallBack.getSSLMeta] - no sessionCallBack."

    .line 215
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.putSSLMeta] - "

    .line 223
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v1, :cond_0

    .line 225
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->putSSLMeta(Lorg/android/spdy/SpdySession;[B)I

    move-result p1

    return p1

    :cond_0
    const-string p1, "[SpdySessionCallBack.putSSLMeta] - no sessionCallBack."

    .line 227
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - "

    .line 151
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v1, :cond_0

    .line 153
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdyCustomControlFrameFailCallback] - no sessionCallBack."

    .line 155
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - "

    .line 141
    invoke-static {v0, v2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_0

    .line 143
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lorg/android/spdy/SessionCb;->spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V

    goto :goto_0

    :cond_0
    const-string v1, "[SpdySessionCallBack.spdyCustomControlFrameRecvCallback] - no sessionCallBack."

    .line 145
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;I)V
    .locals 9

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[SpdySessionCallBack.spdyDataChunkRecvCB] - "

    .line 15
    invoke-static {v0, v2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 17
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 18
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 19
    iget-object v0, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v6, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "[SpdySessionCallBack.spdyDataChunkRecvCB] - no sessionCallBack."

    .line 21
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    const-string/jumbo v1, "spdyDataChunkRecvCB"

    .line 23
    invoke-static {v1, v0, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .locals 9

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[SpdySessionCallBack.spdyDataRecvCallback] - "

    .line 31
    invoke-static {v0, v2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 33
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 34
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 35
    iget-object v0, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v6, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyDataRecvCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "[SpdySessionCallBack.spdyDataRecvCallback] - no sessionCallBack."

    .line 37
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    const-string/jumbo v1, "spdyDataRecvCallback"

    .line 39
    invoke-static {v1, v0, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJII)V
    .locals 9

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyDataSendCallback] - "

    .line 47
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p6}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object p6

    if-eqz p6, :cond_0

    .line 49
    iget-object v1, p6, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v1, :cond_0

    .line 50
    iget-object v2, p6, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v8, p6, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-interface/range {v2 .. v8}, Lorg/android/spdy/Spdycb;->spdyDataSendCallback(Lorg/android/spdy/SpdySession;ZJILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdyDataSendCallback] - no sessionCallBack."

    .line 52
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    const-string/jumbo v0, "tnet-jni"

    const-string v2, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    .line 93
    invoke-static {v0, v2, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, 0x3

    .line 94
    invoke-static {v6}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 95
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v7

    .line 96
    invoke-virtual {p1, p5}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v3, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v3, :cond_0

    .line 98
    iget-object v0, v2, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v2, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/android/spdy/Spdycb;->spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "[SpdySessionCallBack.spdyOnStreamResponse] - no sessionCallBack."

    .line 100
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v0, "spdyOnStreamResponse"

    .line 102
    invoke-static {v0, v6, v7, v8}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyPingRecvCallback] - "

    .line 126
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 127
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 128
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_0

    .line 129
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 130
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    const-string/jumbo p1, "spdyPingRecvCallback"

    .line 131
    invoke-static {p1, v1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdyPingRecvCallback] - no sessionCallBack."

    .line 133
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JI)V
    .locals 4

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tnet-jni"

    const-string v2, "[SpdySessionCallBack.spdyOnStreamResponse] - "

    invoke-static {v1, v2, v0}, Lorg/android/spdy/spduLog;->Logd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 79
    invoke-virtual {p1, p4}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object p4

    if-eqz p4, :cond_0

    .line 80
    iget-object v0, p4, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p4, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object p4, p4, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/Spdycb;->spdyRequestRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdyRequestRecvCallback] - no sessionCallBack."

    .line 83
    invoke-static {v1, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x3

    const-string/jumbo p2, "spdyPingRecvCallback"

    .line 85
    invoke-static {p2, p1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 2

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionCloseCallback] - "

    .line 189
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    iget-object v1, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v1, :cond_0

    .line 191
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/android/spdy/SessionCb;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdySessionCloseCallback] - no sessionCallBack."

    .line 193
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionConnectCB] - "

    .line 111
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 112
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 113
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_0

    .line 114
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 115
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2}, Lorg/android/spdy/SessionCb;->spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V

    const-string/jumbo p1, "spdySessionConnectCB"

    .line 116
    invoke-static {p1, v1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdySessionConnectCB] - no sessionCallBack."

    .line 118
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 4

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionFailedError] - "

    .line 161
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 162
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 163
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_0

    .line 164
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 165
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/SessionCb;->spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V

    .line 166
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->clearAllStreamCb()V

    const-string/jumbo p1, "spdySessionFailedError"

    .line 167
    invoke-static {p1, v1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdySessionFailedError] - no sessionCallBack."

    .line 169
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 4

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdySessionOnWritable] - "

    .line 175
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 176
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->start(I)V

    .line 177
    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    instance-of v2, v2, Lorg/android/spdy/SessionExtraCb;

    if-eqz v2, :cond_0

    .line 178
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v2

    .line 179
    iget-object v0, p1, Lorg/android/spdy/SpdySession;->sessionCallBack:Lorg/android/spdy/SessionCb;

    check-cast v0, Lorg/android/spdy/SessionExtraCb;

    nop

    nop

    invoke-interface {v0, p1, p2, p3}, Lorg/android/spdy/SessionExtraCb;->spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V

    const-string/jumbo p1, "spdySessionOnWritable"

    .line 180
    invoke-static {p1, v1, v2, v3}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    goto :goto_0

    :cond_0
    const-string p1, "[SpdySessionCallBack.spdySessionOnWritable] - no sessionCallBack."

    .line 182
    invoke-static {v0, p1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :goto_0
    invoke-static {v1}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JIILorg/android/spdy/SuperviseData;)V
    .locals 11

    move-object v7, p1

    move/from16 v8, p5

    const-string/jumbo v0, "tnet-jni"

    const-string v1, "[SpdySessionCallBack.spdyStreamCloseCallback] - "

    .line 61
    invoke-static {v0, v1, p1}, Lorg/android/spdy/spduLog;->Logi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lorg/android/spdy/NetTimeGaurd;->begin()J

    move-result-wide v9

    .line 63
    invoke-virtual {p1, v8}, Lorg/android/spdy/SpdySession;->getSpdyStream(I)Lorg/android/spdy/SpdyStreamContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v2, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    if-eqz v2, :cond_0

    .line 65
    iget-object v0, v1, Lorg/android/spdy/SpdyStreamContext;->callBack:Lorg/android/spdy/Spdycb;

    iget-object v5, v1, Lorg/android/spdy/SpdyStreamContext;->streamContext:Ljava/lang/Object;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lorg/android/spdy/Spdycb;->spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V

    .line 66
    invoke-virtual {p1, v8}, Lorg/android/spdy/SpdySession;->removeSpdyStream(I)V

    goto :goto_0

    :cond_0
    const-string v1, "[SpdySessionCallBack.spdyStreamCloseCallback] - no sessionCallBack."

    .line 68
    invoke-static {v0, v1}, Lorg/android/spdy/spduLog;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x3

    const-string/jumbo v1, "spdyStreamCloseCallback"

    .line 70
    invoke-static {v1, v0, v9, v10}, Lorg/android/spdy/NetTimeGaurd;->end(Ljava/lang/String;IJ)V

    .line 71
    invoke-static {v0}, Lorg/android/spdy/NetTimeGaurd;->finish(I)V

    return-void
.end method
