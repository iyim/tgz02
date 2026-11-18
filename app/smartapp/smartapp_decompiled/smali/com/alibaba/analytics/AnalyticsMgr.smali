.class public Lcom/alibaba/analytics/AnalyticsMgr;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/AnalyticsMgr$UTInitTimeoutTask;,
        Lcom/alibaba/analytics/AnalyticsMgr$UtDelayInitTask;,
        Lcom/alibaba/analytics/AnalyticsMgr$RunMode;,
        Lcom/alibaba/analytics/AnalyticsMgr$Entity;,
        Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsMgr"

.field private static appKey:Ljava/lang/String;

.field private static appVersion:Ljava/lang/String;

.field private static application:Landroid/app/Application;

.field private static channel:Ljava/lang/String;

.field public static handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

.field private static handlerThread:Landroid/os/HandlerThread;

.field public static iAnalytics:Lcom/alibaba/analytics/IAnalytics;

.field private static isBindSuccess:Z

.field public static isDebug:Z

.field private static isEncode:Z

.field public static volatile isInit:Z

.field private static isNeedRestart:Z

.field private static isSecurity:Z

.field private static isTurnOnRealTimeDebug:Z

.field private static mConnection:Landroid/content/ServiceConnection;

.field private static mGlobalArgsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOpenid:Ljava/lang/String;

.field public static final mRegisterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/analytics/AnalyticsMgr$Entity;",
            ">;"
        }
    .end annotation
.end field

.field public static mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

.field private static realTimeDebugParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWaitMainProcessLock:Ljava/lang/Object;

.field private static final sWaitServiceConnectedLock:Ljava/lang/Object;

.field private static secret:Ljava/lang/String;

.field private static updateSessionProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static userId:Ljava/lang/String;

.field private static userNick:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitServiceConnectedLock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitMainProcessLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 43
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    .line 44
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Service:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 45
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isNeedRestart:Z

    const/4 v1, 0x0

    .line 48
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->appKey:Ljava/lang/String;

    .line 49
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->channel:Ljava/lang/String;

    .line 50
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->secret:Ljava/lang/String;

    .line 51
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isSecurity:Z

    .line 52
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->appVersion:Ljava/lang/String;

    .line 53
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->userNick:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->userId:Ljava/lang/String;

    .line 55
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isDebug:Z

    .line 56
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isTurnOnRealTimeDebug:Z

    .line 57
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->updateSessionProperties:Ljava/util/Map;

    .line 58
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->realTimeDebugParams:Ljava/util/Map;

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->mRegisterList:Ljava/util/List;

    .line 61
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v2, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    .line 62
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isBindSuccess:Z

    .line 63
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isEncode:Z

    .line 64
    sput-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->mOpenid:Ljava/lang/String;

    .line 268
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$1;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$1;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mConnection:Landroid/content/ServiceConnection;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Landroid/content/ServiceConnection;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitServiceConnectedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->isNeedRestart:Z

    return p0
.end method

.method static synthetic access$300()V
    .locals 0

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->newLocalAnalytics()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitMainProcessLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->getCoreProcessWaitTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isBindSuccess:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->isBindSuccess:Z

    return p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Runnable;
    .locals 1

    .line 34
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createInitTask()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static bindService()Z
    .locals 5

    .line 241
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->application:Landroid/app/Application;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 244
    :cond_0
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->application:Landroid/app/Application;

    .line 245
    invoke-virtual {v3}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/alibaba/analytics/AnalyticsService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 244
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->newLocalAnalytics()V

    :cond_1
    const/4 v2, 0x2

    .line 250
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "bindsuccess"

    aput-object v3, v2, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v2, v4

    const-string v1, "AnalyticsMgr"

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static checkInit()Z
    .locals 2

    .line 228
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 229
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Please call init() before call other method"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_0
    sget-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    return v0
.end method

.method private static createDispatchLocalHitTask()Ljava/lang/Runnable;
    .locals 1

    .line 496
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$12;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$12;-><init>()V

    return-object v0
.end method

.method private static createInitTask()Ljava/lang/Runnable;
    .locals 1

    .line 293
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$2;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$2;-><init>()V

    return-object v0
.end method

.method private static createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;
    .locals 8

    const/4 v0, 0x0

    .line 424
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$7;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/analytics/AnalyticsMgr$7;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    return-object v0
.end method

.method private static createRemoveGlobalPropertyTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 766
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$17;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$17;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static createSaveCacheDataToLocalTask()Ljava/lang/Runnable;
    .locals 1

    .line 510
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$13;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$13;-><init>()V

    return-object v0
.end method

.method private static createSessionTimeoutTask()Ljava/lang/Runnable;
    .locals 1

    .line 538
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$15;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$15;-><init>()V

    return-object v0
.end method

.method private static createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 440
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$8;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 408
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$6;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$6;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSetGlobalPropertyTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 752
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$16;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/analytics/AnalyticsMgr$16;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 394
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/analytics/AnalyticsMgr$5;-><init>(ZZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 524
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$14;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$14;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;
    .locals 1

    .line 379
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$4;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$4;-><init>()V

    return-object v0
.end method

.method private static createTurnOnDebugTask()Ljava/lang/Runnable;
    .locals 1

    .line 454
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$9;

    invoke-direct {v0}, Lcom/alibaba/analytics/AnalyticsMgr$9;-><init>()V

    return-object v0
.end method

.method private static createTurnOnRealTimeDebugTask(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$3;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$3;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 482
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$11;

    invoke-direct {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$11;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .line 468
    new-instance v0, Lcom/alibaba/analytics/AnalyticsMgr$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/analytics/AnalyticsMgr$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static dispatchLocalHits()V
    .locals 2

    .line 255
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createDispatchLocalHitTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static dispatchSaveCacheDataToLocal()V
    .locals 2

    .line 262
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createSaveCacheDataToLocalTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getCoreProcessWaitTime()I
    .locals 3

    .line 646
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UTANALYTICS_REMOTE_SERVICE_DELAY_SECOND"

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/AppInfoUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0xa

    if-nez v1, :cond_0

    .line 651
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v0, :cond_0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    move v2, v0

    :catch_0
    :cond_0
    return v2
.end method

.method public static getGlobalProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 741
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p0, :cond_1

    .line 746
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 201
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 206
    :cond_0
    :try_start_0
    invoke-interface {v0, p0}, Lcom/alibaba/analytics/IAnalytics;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v1
.end method

.method public static handleRemoteException(Ljava/lang/Exception;)V
    .locals 2

    const/4 v0, 0x0

    .line 552
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    invoke-static {v1, p0, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 553
    instance-of p0, p0, Landroid/os/DeadObjectException;

    if-eqz p0, :cond_0

    .line 554
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->restart()V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 10

    const-class v0, Lcom/alibaba/analytics/AnalyticsMgr;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 68
    :try_start_0
    sget-boolean v5, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    if-nez v5, :cond_2

    const-string v5, "AnalyticsMgr[init] start"

    .line 69
    new-array v6, v2, [Ljava/lang/Object;

    const-string/jumbo v7, "sdk_version"

    aput-object v7, v6, v4

    invoke-static {}, Lcom/alibaba/analytics/version/UTBuildInfo;->getInstance()Lcom/alibaba/analytics/version/UTBuildInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/analytics/version/UTBuildInfo;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->application:Landroid/app/Application;

    .line 72
    new-instance p0, Landroid/os/HandlerThread;

    const-string v5, "Analytics_Client"

    invoke-direct {p0, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->handlerThread:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 75
    :try_start_1
    sget-object v5, Lcom/alibaba/analytics/AnalyticsMgr;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "AnalyticsMgr"

    .line 77
    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "1"

    aput-object v8, v7, v4

    aput-object v5, v7, v3

    invoke-static {v6, v7}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    move-object v5, p0

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_1

    .line 81
    :try_start_3
    sget-object v6, Lcom/alibaba/analytics/AnalyticsMgr;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    const-wide/16 v6, 0xa

    .line 86
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v6

    :try_start_5
    const-string v7, "AnalyticsMgr"

    .line 88
    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "2"

    aput-object v9, v8, v4

    aput-object v6, v8, v3

    invoke-static {v7, v8}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :catch_2
    move-exception p0

    :try_start_6
    const-string v6, "AnalyticsMgr"

    .line 93
    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "3"

    aput-object v8, v7, v4

    aput-object p0, v7, v3

    invoke-static {v6, v7}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_1
    :goto_3
    new-instance p0, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-direct {p0, v5}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    :try_start_7
    sget-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    new-instance v5, Lcom/alibaba/analytics/AnalyticsMgr$UtDelayInitTask;

    invoke-direct {v5}, Lcom/alibaba/analytics/AnalyticsMgr$UtDelayInitTask;-><init>()V

    invoke-virtual {p0, v5}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_3
    move-exception p0

    :try_start_8
    const-string v5, "AnalyticsMgr"

    .line 100
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "4"

    aput-object v7, v6, v4

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :goto_4
    sput-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    const-string/jumbo p0, "\u5916\u9762init\u5b8c\u6210"

    .line 103
    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    :try_start_9
    const-string v5, "AnalyticsMgr"

    .line 106
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "5"

    aput-object v7, v6, v4

    aput-object p0, v6, v3

    invoke-static {v5, v6}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_5
    const-string p0, "AnalyticsMgr"

    const/4 v5, 0x4

    .line 108
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "isInit"

    aput-object v6, v5, v4

    sget-boolean v4, Lcom/alibaba/analytics/AnalyticsMgr;->isInit:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    const-string/jumbo v3, "sdk_version"

    aput-object v3, v5, v2

    invoke-static {}, Lcom/alibaba/analytics/version/UTBuildInfo;->getInstance()Lcom/alibaba/analytics/version/UTBuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/analytics/version/UTBuildInfo;->getFullSDKVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {p0, v5}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 109
    monitor-exit v0

    return-void

    :goto_6
    monitor-exit v0

    goto :goto_8

    :goto_7
    throw p0

    :goto_8
    goto :goto_7
.end method

.method private static newLocalAnalytics()V
    .locals 2

    .line 235
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Local:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    .line 236
    new-instance v0, Lcom/alibaba/analytics/AnalyticsImp;

    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->application:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/alibaba/analytics/AnalyticsImp;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    const/4 v0, 0x0

    .line 237
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Start AppMonitor Service failed,AppMonitor run in local Mode..."

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static notifyWaitLocked()V
    .locals 2

    .line 117
    :try_start_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitMainProcessLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->sWaitMainProcessLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 119
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static removeGlobalProperty(Ljava/lang/String;)V
    .locals 1

    .line 727
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 731
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createRemoveGlobalPropertyTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static restart()V
    .locals 10

    const/4 v0, 0x0

    .line 315
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "[restart]"

    invoke-static {v2, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 317
    :try_start_0
    sget-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isNeedRestart:Z

    if-eqz v3, :cond_5

    .line 318
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isNeedRestart:Z

    .line 320
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->newLocalAnalytics()V

    .line 321
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createInitTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 322
    sget-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isSecurity:Z

    sget-boolean v4, Lcom/alibaba/analytics/AnalyticsMgr;->isEncode:Z

    sget-object v5, Lcom/alibaba/analytics/AnalyticsMgr;->appKey:Ljava/lang/String;

    sget-object v6, Lcom/alibaba/analytics/AnalyticsMgr;->secret:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 324
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->channel:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 325
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->appVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 326
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->userNick:Ljava/lang/String;

    sget-object v4, Lcom/alibaba/analytics/AnalyticsMgr;->userId:Ljava/lang/String;

    sget-object v5, Lcom/alibaba/analytics/AnalyticsMgr;->mOpenid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/alibaba/analytics/AnalyticsMgr;->createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 327
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->updateSessionProperties:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/analytics/AnalyticsMgr;->createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 328
    sget-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isDebug:Z

    if-eqz v3, :cond_0

    .line 329
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createTurnOnDebugTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 331
    :cond_0
    sget-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isTurnOnRealTimeDebug:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->realTimeDebugParams:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 332
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->realTimeDebugParams:Ljava/util/Map;

    invoke-static {v3}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 333
    :cond_1
    sget-boolean v3, Lcom/alibaba/analytics/AnalyticsMgr;->isTurnOnRealTimeDebug:Z

    if-eqz v3, :cond_2

    .line 334
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 337
    :cond_2
    :goto_0
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->mRegisterList:Ljava/util/List;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    .line 338
    :goto_1
    :try_start_1
    sget-object v5, Lcom/alibaba/analytics/AnalyticsMgr;->mRegisterList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 339
    sget-object v5, Lcom/alibaba/analytics/AnalyticsMgr;->mRegisterList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    .line 342
    :try_start_2
    iget-object v6, v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;->module:Ljava/lang/String;

    iget-object v7, v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;->monitorPoint:Ljava/lang/String;

    iget-object v8, v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;->measureSet:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iget-object v9, v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;->dimensionSet:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iget-boolean v5, v5, Lcom/alibaba/analytics/AnalyticsMgr$Entity;->isCommitDetail:Z

    invoke-static {v6, v7, v8, v9, v5}, Lcom/alibaba/analytics/AnalyticsMgr;->createRegisterTask(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)Ljava/lang/Runnable;

    move-result-object v5

    .line 343
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_3
    const-string v6, "AnalyticsMgr"

    .line 345
    new-array v7, v1, [Ljava/lang/Object;

    const-string v8, "[RegisterTask.run]"

    aput-object v8, v7, v0

    aput-object v5, v7, v2

    invoke-static {v6, v7}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 349
    :cond_4
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 351
    :try_start_4
    sget-object v3, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 352
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 353
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 354
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 355
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 356
    invoke-static {v5, v4}, Lcom/alibaba/analytics/AnalyticsMgr;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v4

    .line 349
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v3

    .line 360
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "[restart]"

    aput-object v4, v1, v0

    aput-object v3, v1, v2

    const-string v0, "AnalyticsMgr"

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static sessionTimeout()V
    .locals 2

    .line 221
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createSessionTimeoutTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setAppVersion(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 165
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "aAppVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetAppVersionTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 170
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public static setChanel(Ljava/lang/String;)V
    .locals 2

    .line 127
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetChannelTask(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 131
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->channel:Ljava/lang/String;

    return-void
.end method

.method public static setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 711
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 715
    :cond_0
    invoke-static {p0}, Lcom/alibaba/analytics/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 716
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->mGlobalArgsMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0, p1}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetGlobalPropertyTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 719
    new-array p0, p0, [Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v0, "key is null or key is empty or value is null,please check it!"

    aput-object v0, p0, p1

    const-string/jumbo p1, "setGlobalProperty"

    invoke-static {p1, p0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 135
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetRequestAuthTask(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 140
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->isSecurity:Z

    .line 141
    sput-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->appKey:Ljava/lang/String;

    .line 142
    sput-object p3, Lcom/alibaba/analytics/AnalyticsMgr;->secret:Ljava/lang/String;

    .line 143
    sput-boolean p1, Lcom/alibaba/analytics/AnalyticsMgr;->isEncode:Z

    return-void
.end method

.method public static setSessionProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createSetSessionPropertiesTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static turnOffRealTimeDebug()V
    .locals 2

    .line 156
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createTurnOffRealTimeDebugTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 160
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isTurnOnRealTimeDebug:Z

    return-void
.end method

.method public static turnOnDebug()V
    .locals 2

    const/4 v0, 0x0

    .line 174
    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "turnOnDebug"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->createTurnOnDebugTask()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 179
    sput-boolean v0, Lcom/alibaba/analytics/AnalyticsMgr;->isDebug:Z

    .line 180
    invoke-static {v0}, Lcom/alibaba/analytics/utils/Logger;->setDebug(Z)V

    return-void
.end method

.method public static turnOnRealTimeDebug(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createTurnOnRealTimeDebugTask(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 151
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->realTimeDebugParams:Ljava/util/Map;

    const/4 p0, 0x1

    .line 152
    sput-boolean p0, Lcom/alibaba/analytics/AnalyticsMgr;->isTurnOnRealTimeDebug:Z

    return-void
.end method

.method public static updateSessionProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0}, Lcom/alibaba/analytics/AnalyticsMgr;->createUpdateSessionProperties(Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 197
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->updateSessionProperties:Ljava/util/Map;

    return-void
.end method

.method public static updateUserAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    .line 184
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Usernick"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string v2, "Userid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "openid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const-string v1, "AnalyticsMgr"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->checkInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 188
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    invoke-static {p0, p1, p2}, Lcom/alibaba/analytics/AnalyticsMgr;->createUpdateUserAccountTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postWatingTask(Ljava/lang/Runnable;)V

    .line 189
    invoke-static {p0, p1, p2}, Lcom/alibaba/analytics/AnalyticsMgr;->updateUserAccountWithOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateUserAccountWithOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 694
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->userNick:Ljava/lang/String;

    .line 695
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 696
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->userId:Ljava/lang/String;

    .line 697
    sput-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->mOpenid:Ljava/lang/String;

    goto :goto_0

    .line 698
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/alibaba/analytics/AnalyticsMgr;->userId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 699
    :cond_1
    sput-object p1, Lcom/alibaba/analytics/AnalyticsMgr;->userId:Ljava/lang/String;

    .line 700
    sput-object p2, Lcom/alibaba/analytics/AnalyticsMgr;->mOpenid:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method
