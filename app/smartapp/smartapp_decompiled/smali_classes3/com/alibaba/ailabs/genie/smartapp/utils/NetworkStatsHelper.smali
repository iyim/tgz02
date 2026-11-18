.class public Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;
.super Ljava/lang/Object;
.source "NetworkStatsHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# instance fields
.field networkStatsManager:Landroid/app/usage/NetworkStatsManager;


# direct methods
.method public constructor <init>(Landroid/app/usage/NetworkStatsManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    return-void
.end method

.method public static getTimesmorning()J
    .locals 3

    .line 191
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    .line 192
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 193
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 194
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 196
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getAllRxBytesWifi()J
    .locals 7

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x1

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 83
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAllTodayWifi()J
    .locals 7

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x1

    const-string v2, ""

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->getTimesmorning()J

    move-result-wide v3

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    return-wide v1

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getAllTxBytesWifi()J
    .locals 7

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v1, 0x1

    const-string v2, ""

    const-wide/16 v3, 0x0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 96
    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPackageDayBytesWifi(I)J
    .locals 9

    const/4 v0, 0x0

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->networkStatsManager:Landroid/app/usage/NetworkStatsManager;

    const/4 v2, 0x1

    const-string v3, ""

    .line 218
    invoke-static {}, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;->getTimesmorning()J

    move-result-wide v4

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move v8, p1

    .line 215
    invoke-virtual/range {v1 .. v8}, Landroid/app/usage/NetworkStatsManager;->queryDetailsForUid(ILjava/lang/String;JJI)Landroid/app/usage/NetworkStats;

    move-result-object v0

    .line 221
    new-instance p1, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p1}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 222
    invoke-virtual {v0, p1}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 223
    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v1, v3

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    :cond_0
    return-wide v1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    :cond_1
    throw p1

    :catch_0
    nop

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/usage/NetworkStats;->close()V

    :cond_2
    return-wide v1
.end method

.method public reportWifiCount()V
    .locals 1

    .line 235
    :try_start_0
    new-instance v0, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper$1;-><init>(Lcom/alibaba/ailabs/genie/smartapp/utils/NetworkStatsHelper;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/smartapp/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
