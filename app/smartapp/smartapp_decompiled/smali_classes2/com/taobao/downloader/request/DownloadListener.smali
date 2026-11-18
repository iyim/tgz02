.class public interface abstract Lcom/taobao/downloader/request/DownloadListener;
.super Ljava/lang/Object;
.source "DownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;
    }
.end annotation


# virtual methods
.method public abstract onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onDownloadProgress(I)V
.end method

.method public abstract onDownloadStateChange(Ljava/lang/String;Z)V
.end method

.method public abstract onFinish(Z)V
.end method

.method public abstract onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
.end method
