.class public Lcom/alibaba/analytics/core/sync/UploadLogFromDB;
.super Lcom/alibaba/analytics/core/sync/UploadLog;
.source "UploadLogFromDB.java"


# static fields
.field private static final Default_WIN_SIZE:I = 0x4

.field private static final MAX_LOG_COUNT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "UploadLogFromDB"

.field private static final TAG_TNET_DOWNGRADE:Ljava/lang/String; = "utanalytics_tnet_downgrade"

.field private static final TOTAL_MAX_POST_SIZE:I = 0x500000

.field private static s_instance:Lcom/alibaba/analytics/core/sync/UploadLogFromDB;


# instance fields
.field private volatile bRunning:Z

.field private bTnetDowngradeCount:Z

.field private hasSuccess:Z

.field private mAveragePackageSize:F

.field private mFactor:I

.field public final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private mTNetFailTimes:I

.field private mTnetDowngradeCount:I

.field private mUploadByteSize:I

.field private mUploadCount:J

.field private mUploadIndex:I

.field private mWinSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->s_instance:Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLog;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    const/4 v1, -0x1

    .line 37
    iput v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 38
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    const/high16 v1, 0x43480000    # 200.0f

    .line 39
    iput v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAveragePackageSize:F

    .line 40
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadCount:J

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->hasSuccess:Z

    .line 43
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    .line 45
    iget v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMaxUploadTimes:I

    iput v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    const/16 v1, 0xa

    .line 47
    iput v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTnetDowngradeCount:I

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bTnetDowngradeCount:Z

    .line 50
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method private addToDelayList(Ljava/util/List;Lcom/alibaba/analytics/core/model/Log;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/model/Log;",
            ">;",
            "Lcom/alibaba/analytics/core/model/Log;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/model/Log;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 326
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private calPackPackageWindowSize(Ljava/lang/Boolean;J)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 345
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    return p1

    .line 347
    :cond_0
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    int-to-float v0, v0

    long-to-float v1, p2

    div-float/2addr v0, v1

    .line 350
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const-wide/32 v3, 0xafc8

    cmp-long p1, p2, v3

    if-lez p1, :cond_1

    .line 352
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    return p1

    :cond_1
    const p1, 0x472fc800    # 45000.0f

    mul-float v0, v0, p1

    float-to-double p1, v0

    .line 355
    iget p3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAveragePackageSize:F

    float-to-double v3, p3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v3

    iget p3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    int-to-double v3, p3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p1, v3

    double-to-int p1, p1

    iput p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    goto :goto_0

    .line 358
    :cond_2
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    div-int/2addr p1, v1

    iput p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 359
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    .line 361
    :goto_0
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    const/4 p2, 0x0

    if-ge p1, v2, :cond_3

    .line 362
    iput v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 363
    iput p2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    goto :goto_1

    :cond_3
    const/16 p3, 0x15e

    if-le p1, p3, :cond_4

    .line 365
    iput p3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 367
    :cond_4
    :goto_1
    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo p3, "winsize"

    aput-object p3, p1, p2

    iget p2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "UploadLogFromDB"

    invoke-static {p2, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget p1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    return p1
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;
    .locals 1

    .line 54
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->s_instance:Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    return-object v0
.end method

.method private getLogCount()I
    .locals 2

    .line 372
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 374
    invoke-static {}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wi-Fi"

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x14

    .line 376
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    goto :goto_0

    :cond_0
    const-string v1, "4G"

    .line 377
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    .line 378
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    goto :goto_0

    :cond_1
    const-string v1, "3G"

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    .line 380
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 382
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 385
    :cond_3
    :goto_0
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    return v0
.end method

.method private getTnetDowngrade()V
    .locals 0

    .line 131
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->initTnetDowngradeByAppInfo()V

    .line 132
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getTnetDowngradeBySystemConfig()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getTnetDowngradeBySystemConfig()V
    .locals 2

    .line 156
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "tnet_downgrade"

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 158
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTnetDowngradeCount:I

    :cond_0
    return-void
.end method

.method private initTnetDowngradeByAppInfo()V
    .locals 3

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bTnetDowngradeCount:Z

    if-eqz v0, :cond_0

    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "utanalytics_tnet_downgrade"

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 143
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v2, :cond_1

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 145
    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTnetDowngradeCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :catch_0
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bTnetDowngradeCount:Z

    return-void
.end method

.method private reduceWindowSize()V
    .locals 5

    .line 333
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 334
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 335
    iput v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 336
    iput v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mFactor:I

    goto :goto_0

    :cond_0
    const/16 v4, 0x15e

    if-le v0, v4, :cond_1

    .line 338
    iput v4, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    .line 340
    :cond_1
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "winsize"

    aput-object v1, v0, v2

    iget v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mWinSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "UploadLogFromDB"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private uploadEventLog()V
    .locals 6

    .line 81
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 82
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/core/network/NetworkUtil;->isConnectInternet(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "UploadLogFromDB"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 83
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Network is Disconnected"

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iget-object v4, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v4

    if-eq v0, v4, :cond_1

    const/4 v0, 0x4

    .line 87
    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "current networkstatus"

    aput-object v4, v0, v3

    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getNetworkStatus()Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "mAllowedNetworkStatus"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 91
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    if-nez v0, :cond_7

    .line 92
    iput-boolean v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    const-wide/16 v4, 0x0

    .line 98
    :try_start_0
    iput-wide v4, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadCount:J

    .line 99
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/MutiProcessLock;->lock(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "Other Process is Uploading, break"

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    .line 126
    invoke-static {}, Lcom/alibaba/analytics/utils/MutiProcessLock;->release()V

    return-void

    .line 104
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getLogCount()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->get(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 111
    :cond_3
    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->uploadLogs(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMaxUploadTimes:I

    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    goto :goto_1

    .line 115
    :cond_4
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    .line 116
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    if-lez v0, :cond_5

    .line 117
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadQueueMgr;->getInstance()Lcom/alibaba/analytics/core/sync/UploadQueueMgr;

    move-result-object v0

    const-string v4, "i"

    invoke-virtual {v0, v4}, Lcom/alibaba/analytics/core/sync/UploadQueueMgr;->add(Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_5
    iget v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMaxUploadTimes:I

    iput v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadIndex:I

    goto :goto_1

    .line 106
    :cond_6
    :goto_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v4, "logs is null"

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    .line 126
    invoke-static {}, Lcom/alibaba/analytics/utils/MutiProcessLock;->release()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 123
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    :goto_1
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    .line 126
    invoke-static {}, Lcom/alibaba/analytics/utils/MutiProcessLock;->release()V

    return-void

    .line 125
    :goto_2
    iput-boolean v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    .line 126
    invoke-static {}, Lcom/alibaba/analytics/utils/MutiProcessLock;->release()V

    throw v0

    :cond_7
    return-void
.end method

.method private uploadLogs(Ljava/util/List;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/model/Log;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v1, p0

    .line 164
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 165
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->buildEventRequestMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "UploadLogFromDB"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_5

    .line 172
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/Variables;->isHttpService()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 173
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->setIpv6Connection(Z)V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->setIpv6Connection(Z)V

    :goto_0
    const/4 v5, 0x0

    .line 180
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/BizRequest;->getPackRequest(Ljava/util/Map;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 182
    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v5

    :goto_1
    if-nez v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->reduceWindowSize()V

    return v3

    .line 188
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 190
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/analytics/core/Variables;->isHttpService()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 191
    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/UrlWrapper;->sendRequest([B)Lcom/alibaba/analytics/core/sync/BizResponse;

    move-result-object v0

    goto :goto_2

    .line 193
    :cond_3
    invoke-static {v0}, Lcom/alibaba/analytics/core/sync/TnetUtil;->sendRequest([B)Lcom/alibaba/analytics/core/sync/BizResponse;

    move-result-object v0

    .line 195
    :goto_2
    invoke-virtual {v0}, Lcom/alibaba/analytics/core/sync/BizResponse;->isSuccess()Z

    move-result v8

    .line 196
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v6, v9, v6

    .line 199
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-direct {p0, v11, v6, v7}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->calPackPackageWindowSize(Ljava/lang/Boolean;J)I

    .line 201
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getTnetDowngrade()V

    .line 203
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->isIpv6Connection()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 204
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/analytics/core/Variables;->isHttpService()Z

    move-result v11

    if-nez v11, :cond_4

    .line 205
    invoke-static {}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->getInstance()Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;

    move-result-object v11

    iget v12, v0, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    iget-wide v13, v0, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    invoke-virtual {v11, v8, v12, v13, v14}, Lcom/alibaba/analytics/core/ipv6/TnetIpv6Manager;->response(ZIJ)V

    :cond_4
    if-eqz v8, :cond_5

    .line 209
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alibaba/analytics/core/Variables;->turnOnSelfMonitor()V

    .line 210
    iput-boolean v4, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->hasSuccess:Z

    .line 211
    iput v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    .line 212
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v11

    move-object/from16 v12, p1

    invoke-virtual {v11, v12}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->delete(Ljava/util/List;)I

    move-result v11

    .line 213
    iget-wide v13, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadCount:J

    int-to-long v3, v11

    add-long/2addr v13, v3

    iput-wide v13, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadCount:J

    .line 214
    iget-object v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v4, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_TRAFFIC:I

    iget v11, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    int-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-static {v4, v5, v11}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 216
    :try_start_1
    iget-object v0, v0, Lcom/alibaba/analytics/core/sync/BizResponse;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->parserConfig(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :cond_5
    move-object/from16 v12, p1

    .line 221
    iget v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    .line 222
    iget v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    iget v5, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTnetDowngradeCount:I

    if-le v3, v5, :cond_6

    .line 223
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alibaba/analytics/core/Variables;->setHttpService(Z)V

    .line 224
    new-array v0, v4, [Ljava/lang/Object;

    const-string/jumbo v3, "setHttpService"

    const/4 v5, 0x0

    aput-object v3, v0, v5

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 228
    :cond_6
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/analytics/core/Variables;->isSelfMonitorTurnOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 229
    iget-boolean v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->hasSuccess:Z

    if-eqz v3, :cond_7

    iget v3, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTNetFailTimes:I

    iget v4, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mTnetDowngradeCount:I

    if-gt v3, v4, :cond_7

    .line 230
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 231
    iget-wide v4, v0, Lcom/alibaba/analytics/core/sync/BizResponse;->rt:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "rt"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget v4, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pSize"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget v0, v0, Lcom/alibaba/analytics/core/sync/BizResponse;->errCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "errCode"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "type"

    const-string v4, "1"

    .line 234
    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v4, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->UPLOAD_FAILED:I

    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    goto :goto_3

    .line 237
    :cond_7
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->turnOffSelfMonitor()V

    .line 241
    :catch_1
    :cond_8
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/16 v0, 0x8

    .line 242
    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "isSendSuccess"

    const/4 v11, 0x0

    aput-object v5, v0, v11

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v0, v8

    const/4 v5, 0x2

    const-string/jumbo v8, "upload log count"

    aput-object v8, v0, v5

    const/4 v5, 0x3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v5

    const/4 v5, 0x4

    const-string/jumbo v8, "upload consume"

    aput-object v8, v0, v5

    const/4 v5, 0x5

    .line 243
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "delete consume"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    sub-long/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v5

    .line 242
    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x64

    .line 245
    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v4, 0x0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v3, v0

    const/4 v4, 0x0

    .line 247
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_4
    return v4

    :cond_9
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    :goto_5
    new-array v0, v3, [Ljava/lang/Object;

    const-string v5, "postDataMap is null"

    aput-object v5, v0, v4

    invoke-static {v2, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iput-boolean v4, v1, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->bRunning:Z

    return v3
.end method


# virtual methods
.method public buildEventRequestMap(Ljava/util/List;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/core/model/Log;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 253
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 257
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move-object v3, v0

    move-object v5, v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 261
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x2

    const-string v10, "UploadLogFromDB"

    const/4 v11, 0x1

    if-ge v0, v6, :cond_6

    .line 262
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/analytics/core/model/Log;

    const/high16 v12, 0x500000

    if-le v4, v12, :cond_1

    .line 265
    invoke-direct {p0, v3, v6}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->addToDelayList(Ljava/util/List;Lcom/alibaba/analytics/core/model/Log;)Ljava/util/List;

    move-result-object v3

    .line 266
    new-array v8, v8, [Ljava/lang/Object;

    const-string v12, "log delay to upload because totalUploadSize Exceed. log"

    aput-object v12, v8, v2

    aput-object v6, v8, v11

    const-string/jumbo v6, "totalUploadSize"

    aput-object v6, v8, v9

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v7

    .line 266
    invoke-static {v10, v8}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 271
    :cond_1
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v7

    .line 272
    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/Log;->getContent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/alibaba/analytics/core/logbuilder/LogAssemble;->disassemble(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    .line 271
    invoke-virtual {v7, v8}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->checkDelayLog(Ljava/util/Map;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 274
    invoke-direct {p0, v3, v6}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->addToDelayList(Ljava/util/List;Lcom/alibaba/analytics/core/model/Log;)Ljava/util/List;

    move-result-object v3

    .line 276
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/analytics/core/model/Log;

    iget-object v7, v7, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_3

    if-nez v5, :cond_2

    .line 278
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 280
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    new-array v7, v9, [Ljava/lang/Object;

    const-string v8, "log delay to upload because delay config. log"

    aput-object v8, v7, v2

    aput-object v6, v7, v11

    invoke-static {v10, v7}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 286
    :cond_4
    iget-object v7, v6, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/StringBuilder;

    if-nez v7, :cond_5

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    iget-object v6, v6, Lcom/alibaba/analytics/core/model/Log;->eventId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 291
    :cond_5
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 294
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/analytics/core/model/Log;

    invoke-virtual {v6}, Lcom/alibaba/analytics/core/model/Log;->getContent()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v4, v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 301
    invoke-interface {p1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    if-eqz v5, :cond_9

    const/4 v0, 0x0

    .line 304
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    .line 305
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/analytics/core/model/Log;

    const-string v6, "2"

    iput-object v6, v3, Lcom/alibaba/analytics/core/model/Log;->priority:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 307
    :cond_8
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->updateLogPriority(Ljava/util/List;)V

    .line 310
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 311
    iput v4, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    .line 312
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 313
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 316
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 317
    iget v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    int-to-float v1, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAveragePackageSize:F

    :cond_b
    const/4 v1, 0x6

    .line 319
    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "averagePackageSize"

    aput-object v3, v1, v2

    iget v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mAveragePackageSize:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v11

    const-string v2, "mUploadByteSize"

    aput-object v2, v1, v9

    iget v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadByteSize:I

    .line 320
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "count"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    .line 319
    invoke-static {v10, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-object v0
.end method

.method public hasSuccess()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->hasSuccess:Z

    return v0
.end method

.method public upload()V
    .locals 5

    const-string v0, "UploadLogFromDB"

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/Variables;->isAllServiceClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->uploadEventLog()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "isAllServiceClosed"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 69
    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mIUploadExcuted:Lcom/alibaba/analytics/core/sync/IUploadExcuted;

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mIUploadExcuted:Lcom/alibaba/analytics/core/sync/IUploadExcuted;

    iget-wide v3, p0, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mUploadCount:J

    invoke-interface {v2, v3, v4}, Lcom/alibaba/analytics/core/sync/IUploadExcuted;->onUploadExcuted(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 76
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method
