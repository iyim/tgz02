.class public interface abstract Lcom/uc/base/net/IHttpEventListener;
.super Ljava/lang/Object;
.source "IHttpEventListener.java"


# virtual methods
.method public abstract onBodyReceived([BI)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onHeaderReceived(Lcom/uc/base/net/adaptor/Headers;)V
.end method

.method public abstract onMetrics(Lcom/uc/base/net/metrics/IHttpConnectionMetrics;)V
.end method

.method public abstract onRedirect(Ljava/lang/String;)Z
.end method

.method public abstract onRequestCancel()V
.end method

.method public abstract onStatusMessage(Ljava/lang/String;ILjava/lang/String;)V
.end method
