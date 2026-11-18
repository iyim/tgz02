.class public interface abstract Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper$DownloadFileListener;
.super Ljava/lang/Object;
.source "DownloadFileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/oss/DownloadFileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadFileListener"
.end annotation


# virtual methods
.method public abstract onFailed(ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Ljava/io/InputStream;)V
.end method
