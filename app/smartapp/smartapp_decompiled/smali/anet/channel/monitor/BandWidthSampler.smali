.class public Lanet/channel/monitor/BandWidthSampler;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/monitor/BandWidthSampler$StaticHolder;
    }
.end annotation


# static fields
.field static final FAST:I = 0x5

.field static final SLOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "awcn.BandWidthSampler"

.field private static volatile isNetworkMeterStarted:Z = false

.field static mKalmanDataSize:J = 0x0L

.field static mKalmanTimeUsed:J = 0x0L

.field static mReceivedDataCount:I = 0x0

.field static mReceivedRequestFinishedTimePre:J = 0x0L

.field static mReceivedRequestStartTimePre:J = 0x0L

.field static mSpeedKalmanCount:J = 0x0L

.field static speed:D = 0.0

.field static speedPre:D = 0.0

.field static speedPrePre:D = 0.0

.field static speedThreshold:D = 40.0


# instance fields
.field private currentNetworkSpeed:I

.field private mNetWorkKalmanFilter:Lanet/channel/monitor/NetWorkKalmanFilter;

.field private mSinceLastNotification:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lanet/channel/monitor/BandWidthSampler;->currentNetworkSpeed:I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lanet/channel/monitor/BandWidthSampler;->mSinceLastNotification:I

    .line 32
    new-instance v0, Lanet/channel/monitor/NetWorkKalmanFilter;

    invoke-direct {v0}, Lanet/channel/monitor/NetWorkKalmanFilter;-><init>()V

    iput-object v0, p0, Lanet/channel/monitor/BandWidthSampler;->mNetWorkKalmanFilter:Lanet/channel/monitor/NetWorkKalmanFilter;

    .line 43
    new-instance v0, Lanet/channel/monitor/BandWidthSampler$1;

    invoke-direct {v0, p0}, Lanet/channel/monitor/BandWidthSampler$1;-><init>(Lanet/channel/monitor/BandWidthSampler;)V

    invoke-static {v0}, Lanet/channel/status/NetworkStatusHelper;->addStatusChangeListener(Lanet/channel/status/NetworkStatusHelper$INetworkStatusChangeListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lanet/channel/monitor/BandWidthSampler$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lanet/channel/monitor/BandWidthSampler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lanet/channel/monitor/BandWidthSampler;)Lanet/channel/monitor/NetWorkKalmanFilter;
    .locals 0

    .line 10
    iget-object p0, p0, Lanet/channel/monitor/BandWidthSampler;->mNetWorkKalmanFilter:Lanet/channel/monitor/NetWorkKalmanFilter;

    return-object p0
.end method

.method static synthetic access$200(Lanet/channel/monitor/BandWidthSampler;)I
    .locals 0

    .line 10
    iget p0, p0, Lanet/channel/monitor/BandWidthSampler;->mSinceLastNotification:I

    return p0
.end method

.method static synthetic access$202(Lanet/channel/monitor/BandWidthSampler;I)I
    .locals 0

    .line 10
    iput p1, p0, Lanet/channel/monitor/BandWidthSampler;->mSinceLastNotification:I

    return p1
.end method

.method static synthetic access$208(Lanet/channel/monitor/BandWidthSampler;)I
    .locals 2

    .line 10
    iget v0, p0, Lanet/channel/monitor/BandWidthSampler;->mSinceLastNotification:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lanet/channel/monitor/BandWidthSampler;->mSinceLastNotification:I

    return v0
.end method

.method static synthetic access$302(Lanet/channel/monitor/BandWidthSampler;I)I
    .locals 0

    .line 10
    iput p1, p0, Lanet/channel/monitor/BandWidthSampler;->currentNetworkSpeed:I

    return p1
.end method

.method public static getInstance()Lanet/channel/monitor/BandWidthSampler;
    .locals 1

    .line 39
    sget-object v0, Lanet/channel/monitor/BandWidthSampler$StaticHolder;->instance:Lanet/channel/monitor/BandWidthSampler;

    return-object v0
.end method


# virtual methods
.method public getNetSpeedValue()D
    .locals 2

    .line 61
    sget-wide v0, Lanet/channel/monitor/BandWidthSampler;->speed:D

    return-wide v0
.end method

.method public getNetworkSpeed()I
    .locals 2

    .line 54
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 57
    :cond_0
    iget v0, p0, Lanet/channel/monitor/BandWidthSampler;->currentNetworkSpeed:I

    return v0
.end method

.method public onDataReceived(JJJ)V
    .locals 9

    .line 87
    sget-boolean v0, Lanet/channel/monitor/BandWidthSampler;->isNetworkMeterStarted:Z

    if-nez v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_0
    const/4 v0, 0x1

    .line 91
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 92
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "mRequestStartTime"

    aput-object v4, v2, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "mRequestFinishedTime"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "mRequestDataSize"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "awcn.BandWidthSampler"

    const-string v3, "onDataReceived"

    invoke-static {v0, v3, v1, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const-wide/16 v0, 0xbb8

    cmp-long v2, p5, v0

    if-lez v2, :cond_3

    cmp-long v0, p1, p3

    if-ltz v0, :cond_2

    goto :goto_0

    .line 102
    :cond_2
    new-instance v0, Lanet/channel/monitor/BandWidthSampler$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p5

    move-wide v5, p3

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lanet/channel/monitor/BandWidthSampler$2;-><init>(Lanet/channel/monitor/BandWidthSampler;JJJ)V

    invoke-static {v0}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public declared-synchronized startNetworkMeter()V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "awcn.BandWidthSampler"

    const-string v3, "[startNetworkMeter]"

    const/4 v4, 0x2

    .line 69
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "NetworkStatus"

    aput-object v5, v4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v0, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getStatus()Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    sget-object v3, Lanet/channel/status/NetworkStatusHelper$NetworkStatus;->G2:Lanet/channel/status/NetworkStatusHelper$NetworkStatus;

    if-ne v2, v3, :cond_0

    .line 71
    sput-boolean v1, Lanet/channel/monitor/BandWidthSampler;->isNetworkMeterStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 75
    :cond_0
    :try_start_1
    sput-boolean v6, Lanet/channel/monitor/BandWidthSampler;->isNetworkMeterStarted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "awcn.BandWidthSampler"

    const-string/jumbo v4, "startNetworkMeter fail."

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v2, v1}, Lanet/channel/util/ALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public stopNetworkMeter()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lanet/channel/monitor/BandWidthSampler;->isNetworkMeterStarted:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
