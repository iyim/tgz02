.class public interface abstract Lcom/taobao/downloader/request/task/TaskListener;
.super Ljava/lang/Object;
.source "TaskListener.java"

# interfaces
.implements Lcom/taobao/downloader/download/IListener;


# virtual methods
.method public abstract onDownloadStateChange(Ljava/lang/String;Z)V
.end method

.method public abstract onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
.end method
