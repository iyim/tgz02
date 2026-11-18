.class public interface abstract Lcom/alibaba/ailabs/basedomain/common/MediaManager$IMediaPlayStateListener;
.super Ljava/lang/Object;
.source "MediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/common/MediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaPlayStateListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onInterrupt(Ljava/lang/String;)V
.end method

.method public abstract onReplace(Ljava/lang/String;)V
.end method

.method public abstract onStopByUser(Ljava/lang/String;)V
.end method
