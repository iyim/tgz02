.class public Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;
.super Ljava/lang/Object;
.source "MonitorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/downloader/util/MonitorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DownloadStat"
.end annotation


# instance fields
.field public biz:Ljava/lang/String;

.field public connectTime:J

.field public downloadSpeed:D

.field public downloadTime:J

.field public error_code:Ljava/lang/String;

.field public error_msg:Ljava/lang/String;

.field public range:Z

.field public retry:Z

.field public size:J

.field public startTime:J

.field public success:Z

.field public traffic:J

.field public url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/downloader/util/MonitorUtil$DownloadStat;->startTime:J

    return-void
.end method
