.class Lanet/channel/SessionRequest;
.super Ljava/lang/Object;
.source "SessionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/SessionRequest$IConnCb;,
        Lanet/channel/SessionRequest$ConnCb;,
        Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;,
        Lanet/channel/SessionRequest$ConnectTimeoutTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.SessionRequest"


# instance fields
.field private callbackTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lanet/channel/SessionGetCallback;",
            "Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;",
            ">;"
        }
    .end annotation
.end field

.field connStat:Lanet/channel/statist/SessionConnStat;

.field volatile connectingSession:Lanet/channel/Session;

.field volatile isConnecting:Z

.field volatile isToClose:Z

.field private locked:Ljava/lang/Object;

.field private mHost:Ljava/lang/String;

.field private mRealHost:Ljava/lang/String;

.field private sessionCenter:Lanet/channel/SessionCenter;

.field private sessionInfo:Lanet/channel/SessionInfo;

.field private sessionPool:Lanet/channel/SessionPool;

.field private volatile timeoutTask:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Ljava/lang/String;Lanet/channel/SessionCenter;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->isConnecting:Z

    .line 63
    iput-boolean v0, p0, Lanet/channel/SessionRequest;->isToClose:Z

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->locked:Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/SessionRequest;->mRealHost:Ljava/lang/String;

    .line 73
    iput-object p2, p0, Lanet/channel/SessionRequest;->sessionCenter:Lanet/channel/SessionCenter;

    .line 74
    iget-object p1, p2, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    iget-object v0, p0, Lanet/channel/SessionRequest;->mRealHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lanet/channel/SessionAttributeManager;->getSessionInfo(Ljava/lang/String;)Lanet/channel/SessionInfo;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/SessionRequest;->sessionInfo:Lanet/channel/SessionInfo;

    .line 75
    iget-object p1, p2, Lanet/channel/SessionCenter;->sessionPool:Lanet/channel/SessionPool;

    iput-object p1, p0, Lanet/channel/SessionRequest;->sessionPool:Lanet/channel/SessionPool;

    return-void
.end method

.method static synthetic access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$100(Lanet/channel/SessionRequest;)Lanet/channel/SessionPool;
    .locals 0

    .line 52
    iget-object p0, p0, Lanet/channel/SessionRequest;->sessionPool:Lanet/channel/SessionPool;

    return-object p0
.end method

.method static synthetic access$200(Lanet/channel/SessionRequest;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lanet/channel/SessionRequest;->finish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lanet/channel/SessionRequest;Lanet/channel/Session;II)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lanet/channel/SessionRequest;->commitFail(Lanet/channel/Session;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Lanet/channel/SessionRequest;Landroid/content/Context;Lanet/channel/entity/ConnInfo;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lanet/channel/SessionRequest;->createSession(Landroid/content/Context;Lanet/channel/entity/ConnInfo;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Lanet/channel/SessionRequest;Lanet/channel/Session;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lanet/channel/SessionRequest;->commitSuccess(Lanet/channel/Session;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$700(Lanet/channel/SessionRequest;)Lanet/channel/SessionCenter;
    .locals 0

    .line 52
    iget-object p0, p0, Lanet/channel/SessionRequest;->sessionCenter:Lanet/channel/SessionCenter;

    return-object p0
.end method

.method static synthetic access$800(Lanet/channel/SessionRequest;Lanet/channel/Session;ILjava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lanet/channel/SessionRequest;->sendConnectInfoBroadCastToAccs(Lanet/channel/Session;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private commitFail(Lanet/channel/Session;II)V
    .locals 4

    const/16 v0, 0x100

    if-ne v0, p2, :cond_0

    const/16 p2, -0xa35

    if-eq p3, p2, :cond_0

    const/16 p2, -0xa29

    if-eq p3, p2, :cond_0

    .line 388
    new-instance p2, Lanet/channel/statist/AlarmObject;

    invoke-direct {p2}, Lanet/channel/statist/AlarmObject;-><init>()V

    const-string v0, "networkPrefer"

    .line 389
    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    const-string v0, "policy"

    .line 390
    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    .line 392
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lanet/channel/statist/AlarmObject;->errorCode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p2, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 394
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v1

    invoke-interface {v1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 398
    iget-object p2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iput v0, p2, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 399
    invoke-virtual {p2, p3}, Lanet/channel/statist/SessionConnStat;->appendErrorTrace(I)V

    .line 400
    iget-object p2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lanet/channel/statist/SessionConnStat;->errorCode:Ljava/lang/String;

    .line 401
    iget-object p2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p3, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v2, p3, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p2, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 402
    iget-object p2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {p2, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 403
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    :cond_0
    return-void
.end method

.method private commitSuccess(Lanet/channel/Session;)V
    .locals 4

    .line 370
    new-instance v0, Lanet/channel/statist/AlarmObject;

    invoke-direct {v0}, Lanet/channel/statist/AlarmObject;-><init>()V

    const-string v1, "networkPrefer"

    .line 371
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->module:Ljava/lang/String;

    const-string v1, "policy"

    .line 372
    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->modulePoint:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lanet/channel/statist/AlarmObject;->arg:Ljava/lang/String;

    const/4 v1, 0x1

    .line 374
    iput-boolean v1, v0, Lanet/channel/statist/AlarmObject;->isSuccess:Z

    .line 375
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    .line 378
    iget-object v0, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {v0, p1}, Lanet/channel/statist/SessionConnStat;->syncValueFromSession(Lanet/channel/Session;)V

    .line 379
    iget-object p1, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iput v1, p1, Lanet/channel/statist/SessionConnStat;->ret:I

    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget-wide v2, v2, Lanet/channel/statist/SessionConnStat;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lanet/channel/statist/SessionConnStat;->totalTime:J

    .line 381
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-interface {p1, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method

.method private createSession(Landroid/content/Context;Lanet/channel/entity/ConnInfo;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V
    .locals 9

    .line 475
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 476
    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->isHttpType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    new-instance v0, Lanet/channel/session/TnetSpdySession;

    invoke-direct {v0, p1, p2}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V

    .line 478
    iget-object p1, p0, Lanet/channel/SessionRequest;->sessionCenter:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->config:Lanet/channel/Config;

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->initConfig(Lanet/channel/Config;)V

    .line 479
    iget-object p1, p0, Lanet/channel/SessionRequest;->sessionInfo:Lanet/channel/SessionInfo;

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->initSessionInfo(Lanet/channel/SessionInfo;)V

    .line 480
    iget-object p1, p0, Lanet/channel/SessionRequest;->sessionCenter:Lanet/channel/SessionCenter;

    iget-object p1, p1, Lanet/channel/SessionCenter;->attributeManager:Lanet/channel/SessionAttributeManager;

    iget-object v1, p0, Lanet/channel/SessionRequest;->mRealHost:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lanet/channel/SessionAttributeManager;->getPublicKey(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lanet/channel/session/TnetSpdySession;->setTnetPublicKey(I)V

    .line 481
    iput-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    goto :goto_0

    .line 483
    :cond_0
    new-instance v0, Lanet/channel/session/HttpSession;

    invoke-direct {v0, p1, p2}, Lanet/channel/session/HttpSession;-><init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V

    iput-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    :goto_0
    const/16 p1, 0xc

    .line 485
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Host"

    aput-object v1, p1, v0

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const/4 v0, 0x2

    const-string v2, "Type"

    aput-object v2, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x4

    const-string v2, "IP"

    aput-object v2, p1, v0

    const/4 v0, 0x5

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    const/4 v0, 0x6

    const-string v2, "Port"

    aput-object v2, p1, v0

    const/4 v0, 0x7

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/16 v0, 0x8

    const-string v2, "heartbeat"

    aput-object v2, p1, v0

    const/16 v0, 0x9

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getHeartbeat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v0

    const/16 v0, 0xa

    const-string/jumbo v2, "session"

    aput-object v2, p1, v0

    const/16 v0, 0xb

    iget-object v2, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    aput-object v2, p1, v0

    const-string v0, "awcn.SessionRequest"

    const-string v2, "create connection..."

    invoke-static {v0, v2, p4, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    iget-object v4, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v3, p0

    move-object v5, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lanet/channel/SessionRequest;->registerEvent(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;JLjava/lang/String;)V

    .line 487
    iget-object p1, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    invoke-virtual {p1}, Lanet/channel/Session;->connect()V

    .line 489
    iget-object p1, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    add-int/2addr p3, v1

    iput p3, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    .line 490
    iget-object p1, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p1, Lanet/channel/statist/SessionConnStat;->startConnect:J

    .line 491
    iget-object p1, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    iget p1, p1, Lanet/channel/statist/SessionConnStat;->retryTimes:I

    if-nez p1, :cond_1

    .line 492
    iget-object p1, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getIp()Ljava/lang/String;

    move-result-object p2

    const-string p3, "firstIp"

    invoke-virtual {p1, p3, p2}, Lanet/channel/statist/SessionConnStat;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private finish()V
    .locals 2

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p0, v0}, Lanet/channel/SessionRequest;->setConnecting(Z)V

    .line 624
    iget-object v0, p0, Lanet/channel/SessionRequest;->locked:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Lanet/channel/SessionRequest;->locked:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 626
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAvailStrategy(ILjava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;"
        }
    .end annotation

    const-string v0, "awcn.SessionRequest"

    .line 408
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v2, 0x0

    .line 410
    :try_start_0
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v3

    if-nez v3, :cond_0

    .line 412
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 415
    :cond_0
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v4

    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lanet/channel/strategy/IStrategyInstance;->getConnStrategyListByHost(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 417
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https"

    .line 418
    invoke-virtual {v3}, Lanet/channel/util/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 419
    invoke-static {}, Lanet/channel/util/Inet64Util;->isIPv4OnlyNetwork()Z

    move-result v4

    .line 420
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 421
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 422
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lanet/channel/strategy/IConnStrategy;

    .line 423
    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v7

    invoke-static {v7}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 431
    :cond_2
    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v8

    if-ne v8, v3, :cond_3

    sget v8, Lanet/channel/entity/SessionType;->ALL:I

    if-eq p1, v8, :cond_4

    invoke-virtual {v7}, Lanet/channel/entity/ConnType;->getType()I

    move-result v7

    if-eq v7, p1, :cond_4

    .line 433
    :cond_3
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    :cond_4
    if-eqz v4, :cond_1

    .line 437
    invoke-interface {v6}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 438
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    .line 443
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "[getAvailStrategy]"

    const/4 v4, 0x2

    .line 444
    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "strategies"

    aput-object v5, v4, v2

    aput-object v1, v4, p1

    invoke-static {v0, v3, p2, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 448
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    invoke-static {v0, v3, p2, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-object v1
.end method

.method private getConnInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lanet/channel/strategy/IConnStrategy;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lanet/channel/entity/ConnInfo;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 458
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 460
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 461
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lanet/channel/strategy/IConnStrategy;

    .line 462
    invoke-interface {v4}, Lanet/channel/strategy/IConnStrategy;->getRetryTimes()I

    move-result v5

    move v6, v3

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v5, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 465
    new-instance v7, Lanet/channel/entity/ConnInfo;

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v4}, Lanet/channel/entity/ConnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    .line 466
    iput v3, v7, Lanet/channel/entity/ConnInfo;->retryTime:I

    .line 467
    iput v5, v7, Lanet/channel/entity/ConnInfo;->maxRetryTime:I

    .line 468
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private registerEvent(Lanet/channel/Session;Lanet/channel/SessionRequest$IConnCb;JLjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/16 p5, 0xfff

    .line 500
    new-instance v0, Lanet/channel/SessionRequest$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lanet/channel/SessionRequest$1;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionRequest$IConnCb;J)V

    invoke-virtual {p1, p5, v0}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    const/16 p2, 0x700

    .line 535
    new-instance p3, Lanet/channel/SessionRequest$2;

    invoke-direct {p3, p0, p1}, Lanet/channel/SessionRequest$2;-><init>(Lanet/channel/SessionRequest;Lanet/channel/Session;)V

    invoke-virtual {p1, p2, p3}, Lanet/channel/Session;->registerEventcb(ILanet/channel/entity/EventCb;)V

    return-void
.end method

.method private sendConnectInfoBroadCastToAccs(Lanet/channel/Session;ILjava/lang/String;)V
    .locals 4

    .line 630
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lanet/channel/SessionRequest;->sessionInfo:Lanet/channel/SessionInfo;

    if-eqz v1, :cond_3

    iget-boolean v1, v1, Lanet/channel/SessionInfo;->isAccs:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 640
    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.taobao.accs.intent.action.RECEIVE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.taobao.accs.data.MsgDistributeService"

    .line 642
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "command"

    const/16 v3, 0x67

    .line 643
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "host"

    .line 644
    invoke-virtual {p1}, Lanet/channel/Session;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "is_center_host"

    const/4 v3, 0x1

    .line 645
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1}, Lanet/channel/Session;->isAvailable()Z

    move-result p1

    if-nez p1, :cond_2

    const-string v2, "errorCode"

    .line 649
    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "errorDetail"

    .line 650
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string p2, "connect_avail"

    .line 652
    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "type_inapp"

    .line 653
    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 656
    new-array p3, p3, [Ljava/lang/Object;

    const-string v0, "awcn.SessionRequest"

    const-string/jumbo v1, "sendConnectInfoBroadCastToAccs"

    invoke-static {v0, v1, p2, p1, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected await(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 592
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "timeoutMs"

    aput-object v2, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.SessionRequest"

    const-string v2, "[await]"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->locked:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 599
    :goto_0
    iget-boolean p1, p0, Lanet/channel/SessionRequest;->isConnecting:Z

    if-eqz p1, :cond_2

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_1

    goto :goto_1

    .line 604
    :cond_1
    iget-object v3, p0, Lanet/channel/SessionRequest;->locked:Ljava/lang/Object;

    sub-long p1, v1, p1

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    goto :goto_0

    .line 608
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lanet/channel/SessionRequest;->isConnecting:Z

    if-nez p1, :cond_3

    .line 611
    monitor-exit v0

    return-void

    .line 609
    :cond_3
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected closeSessions(Z)V
    .locals 5

    .line 554
    iget-object v0, p0, Lanet/channel/SessionRequest;->sessionCenter:Lanet/channel/SessionCenter;

    iget-object v0, v0, Lanet/channel/SessionCenter;->seqNum:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "host"

    aput-object v3, v1, v2

    iget-object v3, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v4, "autoCreate"

    aput-object v4, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const-string v3, "awcn.SessionRequest"

    const-string v4, "closeSessions"

    invoke-static {v3, v4, v0, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 556
    iget-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    iput-boolean v2, v0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 558
    iget-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    invoke-virtual {v0, v2}, Lanet/channel/Session;->close(Z)V

    .line 560
    :cond_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->sessionPool:Lanet/channel/SessionPool;

    invoke-virtual {v0, p0}, Lanet/channel/SessionPool;->getSessions(Lanet/channel/SessionRequest;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 562
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lanet/channel/Session;

    if-eqz v1, :cond_1

    .line 565
    invoke-virtual {v1, p1}, Lanet/channel/Session;->close(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected getConnectingType()I
    .locals 1

    .line 615
    iget-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, v0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v0}, Lanet/channel/entity/ConnType;->getType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method protected getHost()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method protected reCreateSession(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 572
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "host"

    aput-object v2, v0, v1

    iget-object v1, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "awcn.SessionRequest"

    const-string/jumbo v3, "reCreateSession"

    invoke-static {v1, v3, p1, v0}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p0, v2}, Lanet/channel/SessionRequest;->closeSessions(Z)V

    return-void
.end method

.method setConnecting(Z)V
    .locals 2

    .line 83
    iput-boolean p1, p0, Lanet/channel/SessionRequest;->isConnecting:Z

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lanet/channel/SessionRequest;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lanet/channel/SessionRequest;->timeoutTask:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 87
    iput-object v0, p0, Lanet/channel/SessionRequest;->timeoutTask:Ljava/util/concurrent/Future;

    .line 89
    :cond_0
    iput-object v0, p0, Lanet/channel/SessionRequest;->connectingSession:Lanet/channel/Session;

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected declared-synchronized start(Landroid/content/Context;ILjava/lang/String;Lanet/channel/SessionGetCallback;J)V
    .locals 9

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lanet/channel/SessionRequest;->sessionPool:Lanet/channel/SessionPool;

    invoke-virtual {v0, p0, p2}, Lanet/channel/SessionPool;->getSession(Lanet/channel/SessionRequest;I)Lanet/channel/Session;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string p1, "awcn.SessionRequest"

    const-string p2, "Available Session exist!!!"

    .line 150
    new-array p5, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, p3, p5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 152
    invoke-interface {p4, v0}, Lanet/channel/SessionGetCallback;->onSessionGetSuccess(Lanet/channel/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    :cond_1
    :try_start_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    .line 158
    invoke-static {p3}, Lanet/channel/util/SessionSeq;->createSequenceNo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_2
    const-string v0, "awcn.SessionRequest"

    const-string v2, "SessionRequest start"

    const/4 v3, 0x4

    .line 160
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "host"

    aput-object v5, v4, v1

    iget-object v5, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string/jumbo v5, "type"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x3

    aput-object v5, v4, v8

    invoke-static {v0, v2, p3, v4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-boolean v0, p0, Lanet/channel/SessionRequest;->isConnecting:Z

    if-eqz v0, :cond_5

    const-string p1, "awcn.SessionRequest"

    const-string/jumbo v0, "session connecting"

    .line 162
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "host"

    aput-object v3, v2, v1

    invoke-virtual {p0}, Lanet/channel/SessionRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {p1, v0, p3, v2}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    .line 164
    invoke-virtual {p0}, Lanet/channel/SessionRequest;->getConnectingType()I

    move-result p1

    if-ne p1, p2, :cond_3

    .line 165
    new-instance p1, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 166
    iget-object p2, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 167
    :try_start_2
    iget-object p3, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    :try_start_3
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 168
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    .line 171
    :cond_3
    invoke-interface {p4}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 174
    :cond_4
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_5
    :try_start_6
    invoke-virtual {p0, v6}, Lanet/channel/SessionRequest;->setConnecting(Z)V

    .line 177
    new-instance v0, Lanet/channel/SessionRequest$ConnectTimeoutTask;

    invoke-direct {v0, p0, p3}, Lanet/channel/SessionRequest$ConnectTimeoutTask;-><init>(Lanet/channel/SessionRequest;Ljava/lang/String;)V

    const-wide/16 v4, 0x2d

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v4, v5, v2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/SessionRequest;->timeoutTask:Ljava/util/concurrent/Future;

    .line 178
    new-instance v0, Lanet/channel/statist/SessionConnStat;

    invoke-direct {v0}, Lanet/channel/statist/SessionConnStat;-><init>()V

    iput-object v0, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    .line 179
    iget-object v0, p0, Lanet/channel/SessionRequest;->connStat:Lanet/channel/statist/SessionConnStat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lanet/channel/statist/SessionConnStat;->start:J

    .line 181
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 182
    invoke-static {v6}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "awcn.SessionRequest"

    const-string p2, "network is not available, can\'t create session"

    .line 183
    new-array p4, v7, [Ljava/lang/Object;

    const-string p5, "isConnected"

    aput-object p5, p4, v1

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->isConnected()Z

    move-result p5

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    aput-object p5, p4, v6

    invoke-static {p1, p2, p3, p4}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_6
    invoke-direct {p0}, Lanet/channel/SessionRequest;->finish()V

    .line 186
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "no network"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 188
    :cond_7
    invoke-direct {p0, p2, p3}, Lanet/channel/SessionRequest;->getAvailStrategy(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 196
    invoke-direct {p0, v0, p3}, Lanet/channel/SessionRequest;->getConnInfoList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 199
    :try_start_7
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lanet/channel/entity/ConnInfo;

    .line 200
    new-instance v0, Lanet/channel/SessionRequest$ConnCb;

    invoke-direct {v0, p0, p1, p2, p3}, Lanet/channel/SessionRequest$ConnCb;-><init>(Lanet/channel/SessionRequest;Landroid/content/Context;Ljava/util/List;Lanet/channel/entity/ConnInfo;)V

    invoke-virtual {p3}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v0, p2}, Lanet/channel/SessionRequest;->createSession(Landroid/content/Context;Lanet/channel/entity/ConnInfo;Lanet/channel/SessionRequest$IConnCb;Ljava/lang/String;)V

    if-eqz p4, :cond_8

    .line 202
    new-instance p1, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;

    invoke-direct {p1, p0, p4}, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;-><init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V

    .line 203
    iget-object p2, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    monitor-enter p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 204
    :try_start_8
    iget-object p3, p0, Lanet/channel/SessionRequest;->callbackTaskMap:Ljava/util/HashMap;

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 206
    :try_start_9
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, p5, p6, p2}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 205
    :try_start_a
    monitor-exit p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 209
    :catch_0
    :try_start_c
    invoke-direct {p0}, Lanet/channel/SessionRequest;->finish()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 211
    :cond_8
    :goto_1
    monitor-exit p0

    return-void

    :cond_9
    :try_start_d
    const-string p1, "awcn.SessionRequest"

    const-string p4, "no avalible strategy, can\'t create session"

    .line 191
    new-array p5, v3, [Ljava/lang/Object;

    const-string p6, "host"

    aput-object p6, p5, v1

    iget-object p6, p0, Lanet/channel/SessionRequest;->mHost:Ljava/lang/String;

    aput-object p6, p5, v6

    const-string/jumbo p6, "type"

    aput-object p6, p5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p5, v8

    invoke-static {p1, p4, p3, p5}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lanet/channel/SessionRequest;->finish()V

    .line 193
    new-instance p1, Lanet/channel/NoAvailStrategyException;

    const-string p2, "no avalible strategy"

    invoke-direct {p1, p2}, Lanet/channel/NoAvailStrategyException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method
