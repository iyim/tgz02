.class public interface abstract Lcom/alibaba/ailabs/geniesdk/record/IInputDeviceListener;
.super Ljava/lang/Object;
.source "IInputDeviceListener.java"


# virtual methods
.method public abstract onFeed(I[BI)I
.end method

.method public abstract onStartTalk(Lcom/alibaba/ailabs/geniesdk/record/WakeUpInfo;Lcom/alibaba/ailabs/geniesdk/record/WakeUpRet;)I
.end method

.method public abstract onStopTalk(ILcom/alibaba/ailabs/geniesdk/record/WakeUpEndInfo;)V
.end method

.method public abstract onStream(ILjava/lang/String;ZZ)V
.end method

.method public abstract onVolume(II)V
.end method
