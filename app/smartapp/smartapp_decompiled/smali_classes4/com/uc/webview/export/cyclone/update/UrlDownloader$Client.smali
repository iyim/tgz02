.class public interface abstract Lcom/uc/webview/export/cyclone/update/UrlDownloader$Client;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/cyclone/update/UrlDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Client"
.end annotation


# virtual methods
.method public abstract onDownloadBegin()V
.end method

.method public abstract onDownloadCheck()V
.end method

.method public abstract onDownloadException(Ljava/lang/Throwable;)V
.end method

.method public abstract onDownloadFailed(Ljava/lang/Throwable;)V
.end method

.method public abstract onDownloadFileDeleted()V
.end method

.method public abstract onDownloadFileExists()V
.end method

.method public abstract onDownloadRecovered()V
.end method

.method public abstract onDownloadSuccess()V
.end method

.method public abstract onHeaderReceived(Ljava/lang/Throwable;)Z
.end method

.method public abstract onProgressChanged()V
.end method
