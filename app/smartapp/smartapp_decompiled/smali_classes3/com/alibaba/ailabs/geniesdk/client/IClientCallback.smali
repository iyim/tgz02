.class public interface abstract Lcom/alibaba/ailabs/geniesdk/client/IClientCallback;
.super Ljava/lang/Object;
.source "IClientCallback.java"


# static fields
.field public static final ASR_STATUS_RECOGNIZE_END:I = 0x4

.field public static final ASR_STATUS_RECOGNIZE_START:I = 0x3

.field public static final ASR_STATUS_RECORD_END:I = 0x2

.field public static final ASR_STATUS_RECORD_START:I = 0x1

.field public static final ASR_STATUS_VOLUME_UPDATE:I = 0x5


# virtual methods
.method public abstract getContext()Ljava/lang/String;
.end method

.method public abstract getMediaPolicy()I
.end method

.method public abstract handleCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
.end method

.method public abstract isBinderAlive()Z
.end method

.method public abstract isForegroundApp()Z
.end method

.method public abstract onASRStatus(II)V
.end method

.method public abstract onFocusChange(Z)V
.end method

.method public abstract onNotifyEvent(IILjava/lang/String;)V
.end method

.method public abstract onStream(Ljava/lang/String;Z)Lcom/alibaba/ailabs/geniesdk/client/ClientReturn;
.end method
