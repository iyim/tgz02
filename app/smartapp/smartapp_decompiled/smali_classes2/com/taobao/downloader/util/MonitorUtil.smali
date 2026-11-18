.class public Lcom/taobao/downloader/util/MonitorUtil;
.super Ljava/lang/Object;
.source "MonitorUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static monitorFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 26
    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    if-eqz v0, :cond_0

    .line 27
    sget-object v1, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    const-string v2, "download-sdk"

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-interface/range {v1 .. v6}, Lcom/taobao/downloader/adpater/Monitor;->monitorFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static monitorSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    :try_start_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    instance-of v0, v0, Lcom/taobao/downloader/adpater/Monitor;

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    const-string v1, "download-sdk"

    invoke-interface {v0, v1, p0, p1}, Lcom/taobao/downloader/adpater/Monitor;->monitorSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static statDownload(Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    if-eqz v0, :cond_0

    .line 34
    :try_start_0
    sget-object v0, Lcom/taobao/downloader/Configuration;->monitor:Lcom/taobao/downloader/adpater/Monitor;

    invoke-interface {v0, p0, p1}, Lcom/taobao/downloader/adpater/Monitor;->stat(Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "stat"

    const-string v0, "on exception"

    .line 36
    invoke-static {p1, v0, p0}, Lcom/taobao/downloader/util/LogUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
