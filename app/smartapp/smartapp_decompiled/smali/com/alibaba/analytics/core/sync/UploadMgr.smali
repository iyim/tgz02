.class public Lcom/alibaba/analytics/core/sync/UploadMgr;
.super Ljava/lang/Object;
.source "UploadMgr.java"

# interfaces
.implements Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;


# static fields
.field private static final DEFAULT_BACKGROUND_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_INTERVAL:I = 0x7530

.field private static final ONE_SECOND:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "UploadMgr"

.field private static final TAG_BACKGROUND_INTERVAL:Ljava/lang/String; = "bu"

.field private static final TAG_FOREGROUND_INTERVAL:Ljava/lang/String; = "fu"

.field static mInstance:Lcom/alibaba/analytics/core/sync/UploadMgr;


# instance fields
.field private mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field private mBatchThreshold:J

.field private mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

.field private mCurrentUploadInterval:J

.field private mLeftCount:J

.field private mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

.field private mUploadCount:J

.field private mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

.field private mUserSettingInterval:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMgr;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/sync/UploadMgr;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mInstance:Lcom/alibaba/analytics/core/sync/UploadMgr;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7530

    .line 52
    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 56
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadTask;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/sync/UploadTask;-><init>()V

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    const-wide/16 v0, 0x32

    .line 57
    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mBatchThreshold:J

    .line 58
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const-wide/16 v0, 0x0

    .line 60
    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadCount:J

    .line 61
    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mLeftCount:J

    .line 64
    invoke-static {p0}, Lcom/alibaba/appmonitor/delegate/BackgroundTrigger;->registerCallback(Lcom/alibaba/appmonitor/delegate/BackgroundTrigger$AppStatusChangeCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/analytics/core/sync/UploadMgr;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$202(Lcom/alibaba/analytics/core/sync/UploadMgr;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alibaba/analytics/core/sync/UploadMgr;)Lcom/alibaba/analytics/core/sync/UploadTask;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/analytics/core/sync/UploadMgr;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mBatchThreshold:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/alibaba/analytics/core/sync/UploadMgr;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadCount:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/alibaba/analytics/core/sync/UploadMgr;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadCount:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/alibaba/analytics/core/sync/UploadMgr;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mLeftCount:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/alibaba/analytics/core/sync/UploadMgr;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/alibaba/analytics/core/sync/UploadMgr;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/alibaba/analytics/core/sync/UploadMgr;)J
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->calNextInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method private calNextInterval()J
    .locals 5

    .line 280
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/analytics/utils/AppInfoUtil;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string v3, "bu"

    invoke-virtual {v0, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    const-wide/32 v3, 0x493e0

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string v3, "fu"

    invoke-virtual {v0, v3}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    .line 291
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUserSettingInterval:J

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v3, v2

    goto :goto_0

    :cond_1
    move-wide v3, v0

    :cond_2
    :goto_0
    return-wide v3
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/sync/UploadMgr;
    .locals 1

    .line 68
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mInstance:Lcom/alibaba/analytics/core/sync/UploadMgr;

    return-object v0
.end method

.method private readLocalConfig()V
    .locals 2

    .line 99
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UTANALYTICS_UPLOAD_ALLOWED_NETWORK_STATUS"

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "ALL"

    .line 101
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    :cond_0
    const-string v1, "2G"

    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    :cond_1
    const-string v1, "3G"

    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    :cond_2
    const-string v1, "4G"

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    goto :goto_0

    :cond_3
    const-string v1, "WIFI"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    :cond_4
    :goto_0
    return-void
.end method

.method private declared-synchronized start(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "startMode"

    const/4 v1, 0x2

    .line 171
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mode"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMgr$6;->$SwitchMap$com$alibaba$analytics$core$sync$UploadMode:[I

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/sync/UploadMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v3, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->startIntervalMode()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->startDeveloperMode()V

    goto :goto_0

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->startLunchMode()V

    goto :goto_0

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->startBatchMode()V

    goto :goto_0

    .line 174
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->startRealTimeMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private startBatchMode()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    if-eqz v0, :cond_0

    .line 215
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->unRegisterChangeListener(Lcom/alibaba/analytics/core/store/ILogChangeListener;)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setIUploadExcuted(Lcom/alibaba/analytics/core/sync/IUploadExcuted;)V

    .line 218
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 219
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMgr$3;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/core/sync/UploadMgr$3;-><init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    .line 236
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->registerLogChangeListener(Lcom/alibaba/analytics/core/store/ILogChangeListener;)V

    return-void
.end method

.method private startDeveloperMode()V
    .locals 5

    .line 260
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setIUploadExcuted(Lcom/alibaba/analytics/core/sync/IUploadExcuted;)V

    .line 261
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/analytics/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startIntervalMode()V
    .locals 5

    .line 265
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->calNextInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    const/4 v0, 0x2

    .line 266
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "startIntervalMode CurrentUploadInterval"

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "UploadMgr"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    new-instance v1, Lcom/alibaba/analytics/core/sync/UploadMgr$5;

    invoke-direct {v1, p0}, Lcom/alibaba/analytics/core/sync/UploadMgr$5;-><init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setIUploadExcuted(Lcom/alibaba/analytics/core/sync/IUploadExcuted;)V

    .line 276
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/analytics/utils/TaskExecutor;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private startLunchMode()V
    .locals 5

    .line 240
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->count()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mLeftCount:J

    .line 241
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mLeftCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 242
    iput-wide v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadCount:J

    .line 243
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    new-instance v1, Lcom/alibaba/analytics/core/sync/UploadMgr$4;

    invoke-direct {v1, p0}, Lcom/alibaba/analytics/core/sync/UploadMgr$4;-><init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setIUploadExcuted(Lcom/alibaba/analytics/core/sync/IUploadExcuted;)V

    .line 254
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 255
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/analytics/utils/TaskExecutor;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method private startRealTimeMode()V
    .locals 2

    .line 193
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    if-eqz v0, :cond_0

    .line 194
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->unRegisterChangeListener(Lcom/alibaba/analytics/core/store/ILogChangeListener;)V

    .line 196
    :cond_0
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadMgr$2;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/core/sync/UploadMgr$2;-><init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    .line 210
    invoke-static {}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->getInstance()Lcom/alibaba/analytics/core/store/LogStoreMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mListener:Lcom/alibaba/analytics/core/store/ILogChangeListener;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->registerLogChangeListener(Lcom/alibaba/analytics/core/store/ILogChangeListener;)V

    return-void
.end method


# virtual methods
.method public dispatchHits()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 329
    invoke-static {}, Lcom/alibaba/analytics/utils/TaskExecutor;->getInstance()Lcom/alibaba/analytics/utils/TaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadTaskTask:Lcom/alibaba/analytics/core/sync/UploadTask;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getCurrentMode()Lcom/alibaba/analytics/core/sync/UploadMode;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    return-object v0
.end method

.method public getCurrentUploadInterval()J
    .locals 2

    .line 320
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    return-wide v0
.end method

.method public onBackground()V
    .locals 5

    .line 299
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 300
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v0, v1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->calNextInterval()J

    move-result-wide v0

    .line 302
    iget-wide v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    :cond_0
    return-void
.end method

.method public onForeground()V
    .locals 5

    .line 310
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 311
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v0, v1, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->calNextInterval()J

    move-result-wide v0

    .line 313
    iget-wide v2, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    :cond_0
    return-void
.end method

.method public setAllowedNetoworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    if-eq v0, p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-void
.end method

.method public setBatchThreshold(J)V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadMode;->BATCH:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mBatchThreshold:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    .line 160
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mBatchThreshold:J

    return-void
.end method

.method public setMode(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-eq v0, p1, :cond_1

    .line 134
    iput-object p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    :cond_1
    return-void
.end method

.method public setUploadInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 146
    :cond_0
    iput-wide p1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUserSettingInterval:J

    .line 147
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->calNextInterval()J

    move-result-wide p1

    .line 148
    iget-wide v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentUploadInterval:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start()V

    :cond_1
    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 78
    invoke-direct {p0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->readLocalConfig()V

    .line 80
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadQueueMgr;->getInstance()Lcom/alibaba/analytics/core/sync/UploadQueueMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/analytics/core/sync/UploadQueueMgr;->start()V

    .line 81
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromCache;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mAllowedNetworkStatus:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->setAllowedNetworkStatus(Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;)V

    .line 82
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromCache;

    move-result-object v0

    new-instance v1, Lcom/alibaba/analytics/core/sync/UploadMgr$1;

    invoke-direct {v1, p0}, Lcom/alibaba/analytics/core/sync/UploadMgr$1;-><init>(Lcom/alibaba/analytics/core/sync/UploadMgr;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->setIUploadExcuted(Lcom/alibaba/analytics/core/sync/IUploadExcuted;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadMode;->INTERVAL:Lcom/alibaba/analytics/core/sync/UploadMode;

    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;

    invoke-direct {p0, v0}, Lcom/alibaba/analytics/core/sync/UploadMgr;->start(Lcom/alibaba/analytics/core/sync/UploadMode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 119
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 120
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mUploadFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/alibaba/analytics/core/sync/UploadMgr;->mCurrentMode:Lcom/alibaba/analytics/core/sync/UploadMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
