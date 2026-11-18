.class public interface abstract Lcom/taobao/downloader/adpater/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field public static final POINT_ADD:Ljava/lang/String; = "add"

.field public static final POINT_ALL_CALLBACK:Ljava/lang/String; = "allcallback"

.field public static final POINT_URL:Ljava/lang/String; = "url"


# virtual methods
.method public abstract monitorCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract monitorFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract monitorSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract stat(Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;Ljava/lang/String;)V
.end method
