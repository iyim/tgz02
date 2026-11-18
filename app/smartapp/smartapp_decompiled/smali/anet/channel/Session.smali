.class public abstract Lanet/channel/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/Session$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lanet/channel/Session;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.Session"

.field static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected autoReCreate:Z

.field private errorTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastAmdcRequestSend:J

.field protected mConnStrategy:Lanet/channel/strategy/IConnStrategy;

.field protected mConnTimeout:I

.field protected mConnType:Lanet/channel/entity/ConnType;

.field protected mConnectIp:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mEventCallBacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lanet/channel/entity/EventCb;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mHost:Ljava/lang/String;

.field protected mIp:Ljava/lang/String;

.field protected mIpToHost:Z

.field private mIsConnTimeOut:Z

.field protected mPort:I

.field protected mProxyIp:Ljava/lang/String;

.field protected mProxyPort:I

.field protected mReadTimeout:I

.field protected mRealHost:Ljava/lang/String;

.field protected mRecvTimeOutRunnable:Ljava/lang/Runnable;

.field public final mSeq:Ljava/lang/String;

.field public final mSessionStat:Lanet/channel/statist/SessionStatistic;

.field protected mStatus:I

.field private timeoutTaskFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field protected tryNextWhenFail:Z

.field protected unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 250
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lanet/channel/Session;->executorService:Ljava/util/concurrent/ExecutorService;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V
    .locals 5

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lanet/channel/Session;->mIsConnTimeOut:Z

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lanet/channel/Session;->mIpToHost:Z

    const/4 v2, 0x6

    .line 64
    iput v2, p0, Lanet/channel/Session;->mStatus:I

    .line 73
    iput-boolean v0, p0, Lanet/channel/Session;->autoReCreate:Z

    const/4 v2, 0x1

    .line 74
    iput-boolean v2, p0, Lanet/channel/Session;->tryNextWhenFail:Z

    .line 76
    iput-object v1, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    const-wide/16 v3, 0x0

    .line 77
    iput-wide v3, p0, Lanet/channel/Session;->lastAmdcRequestSend:J

    .line 109
    iput-object p1, p0, Lanet/channel/Session;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getIp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->mIp:Ljava/lang/String;

    .line 111
    iget-object p1, p0, Lanet/channel/Session;->mIp:Ljava/lang/String;

    iput-object p1, p0, Lanet/channel/Session;->mConnectIp:Ljava/lang/String;

    .line 112
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getPort()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->mPort:I

    .line 113
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getConnType()Lanet/channel/entity/ConnType;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    .line 114
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    .line 116
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getReadTimeout()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->mReadTimeout:I

    .line 117
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getConnectionTimeout()I

    move-result p1

    iput p1, p0, Lanet/channel/Session;->mConnTimeout:I

    .line 118
    iget-object p1, p2, Lanet/channel/entity/ConnInfo;->strategy:Lanet/channel/strategy/IConnStrategy;

    iput-object p1, p0, Lanet/channel/Session;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    .line 119
    iget-object p1, p0, Lanet/channel/Session;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lanet/channel/Session;->mIpToHost:Z

    .line 120
    invoke-virtual {p2}, Lanet/channel/entity/ConnInfo;->getSeq()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    .line 121
    new-instance p1, Lanet/channel/statist/SessionStatistic;

    invoke-direct {p1, p2}, Lanet/channel/statist/SessionStatistic;-><init>(Lanet/channel/entity/ConnInfo;)V

    iput-object p1, p0, Lanet/channel/Session;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    .line 122
    iget-object p1, p0, Lanet/channel/Session;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p2, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->host:Ljava/lang/String;

    return-void
.end method

.method public static configTnetALog(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    .line 147
    sget-object v0, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v1, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {p0, v0, v1}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {p0, p1, p2, p3}, Lorg/android/spdy/SpdyAgent;->configLogFile(Ljava/lang/String;II)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 151
    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {}, Lorg/android/spdy/SpdyAgent;->checkLoadSucc()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "agent null or configTnetALog load so fail!!!"

    const-string p3, "loadso"

    invoke-static {p2, p0, p3, p1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected cancelTimeout()V
    .locals 2

    .line 332
    iget-object v0, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lanet/channel/Session;->timeoutTaskFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 335
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public checkAvailable()V
    .locals 1

    const/4 v0, 0x1

    .line 137
    invoke-virtual {p0, v0}, Lanet/channel/Session;->ping(Z)V

    return-void
.end method

.method public abstract close()V
.end method

.method public close(Z)V
    .locals 0

    .line 168
    iput-boolean p1, p0, Lanet/channel/Session;->autoReCreate:Z

    .line 169
    invoke-virtual {p0}, Lanet/channel/Session;->close()V

    return-void
.end method

.method public compareTo(Lanet/channel/Session;)I
    .locals 1

    .line 100
    iget-object v0, p0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    iget-object p1, p1, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    invoke-static {v0, p1}, Lanet/channel/entity/ConnType;->compare(Lanet/channel/entity/ConnType;Lanet/channel/entity/ConnType;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 46
    check-cast p1, Lanet/channel/Session;

    invoke-virtual {p0, p1}, Lanet/channel/Session;->compareTo(Lanet/channel/Session;)I

    move-result p1

    return p1
.end method

.method public connect()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getConnStrategy()Lanet/channel/strategy/IConnStrategy;
    .locals 1

    .line 238
    iget-object v0, p0, Lanet/channel/Session;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object v0
.end method

.method public getConnType()Lanet/channel/entity/ConnType;
    .locals 1

    .line 226
    iget-object v0, p0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lanet/channel/Session;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lanet/channel/Session;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 222
    iget v0, p0, Lanet/channel/Session;->mPort:I

    return v0
.end method

.method public getRealHost()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getRecvTimeOutRunnable()Ljava/lang/Runnable;
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    return-object v0
.end method

.method protected handleCallbacks(ILanet/channel/entity/Event;)V
    .locals 2

    .line 252
    sget-object v0, Lanet/channel/Session;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lanet/channel/Session$1;

    invoke-direct {v1, p0, p1, p2}, Lanet/channel/Session$1;-><init>(Lanet/channel/Session;ILanet/channel/entity/Event;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected handleResponseCode(Lanet/channel/request/Request;I)V
    .locals 6

    .line 348
    invoke-virtual {p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "x-pv"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_4

    const/16 v0, 0x258

    if-ge p2, v0, :cond_4

    .line 354
    monitor-enter p0

    .line 355
    :try_start_0
    iget-object p2, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    if-nez p2, :cond_1

    .line 356
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    .line 359
    :cond_1
    iget-object p2, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x5

    if-ge p2, v0, :cond_2

    .line 360
    iget-object p1, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 362
    :cond_2
    iget-object p2, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v4, 0xea60

    cmp-long p2, v0, v4

    if-gtz p2, :cond_3

    .line 365
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 366
    iget-object p1, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 368
    :cond_3
    iget-object p1, p0, Lanet/channel/Session;->errorTimeList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method protected handleResponseHeaders(Lanet/channel/request/Request;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lanet/channel/request/Request;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "x-switch-unit"

    .line 377
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    invoke-static {p2, v0}, Lanet/channel/util/HttpHelper;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 379
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    .line 382
    :cond_0
    iget-object v0, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    invoke-static {v0, p2}, Lanet/channel/util/StringUtils;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 384
    iget-wide v2, p0, Lanet/channel/Session;->lastAmdcRequestSend:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 385
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p2

    invoke-virtual {p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lanet/channel/strategy/IStrategyInstance;->forceRefreshStrategy(Ljava/lang/String;)V

    .line 386
    iput-wide v0, p0, Lanet/channel/Session;->lastAmdcRequestSend:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public abstract isAvailable()Z
.end method

.method protected declared-synchronized notifyStatus(ILanet/channel/entity/Event;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "awcn.Session"

    const-string v1, "notifyStatus"

    .line 282
    iget-object v2, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "status"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Lanet/channel/Session$Status;->getName(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v0, v1, v2, v4}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget v0, p0, Lanet/channel/Session;->mStatus:I

    if-ne p1, v0, :cond_0

    const-string p1, "awcn.Session"

    const-string p2, "ignore notifyStatus"

    .line 284
    iget-object v0, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    iput p1, p0, Lanet/channel/Session;->mStatus:I

    .line 288
    iget p1, p0, Lanet/channel/Session;->mStatus:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lanet/channel/Session;->onDisconnect()V

    .line 303
    iget-boolean p1, p0, Lanet/channel/Session;->mIsConnTimeOut:Z

    if-nez p1, :cond_1

    .line 304
    invoke-virtual {p0, v3, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/Event;)V

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x400

    .line 314
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/Event;)V

    goto :goto_0

    .line 310
    :pswitch_2
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/Session;->mRealHost:Ljava/lang/String;

    invoke-interface {p1, v0}, Lanet/channel/strategy/IStrategyInstance;->getUnitByHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/Session;->unit:Ljava/lang/String;

    const/16 p1, 0x200

    .line 311
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/Event;)V

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x100

    .line 298
    invoke-virtual {p0, p1, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/Event;)V

    goto :goto_0

    .line 292
    :pswitch_4
    invoke-virtual {p0, v7, p2}, Lanet/channel/Session;->handleCallbacks(ILanet/channel/entity/Event;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_1
    :goto_0
    :pswitch_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onDisconnect()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public ping(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public registerEventcb(ILanet/channel/entity/EventCb;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public abstract request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
.end method

.method public sendCustomFrame(I[BI)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected setPingTimeout()V
    .locals 4

    .line 322
    iget-object v0, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lanet/channel/Session;->getRecvTimeOutRunnable()Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    .line 325
    :cond_0
    invoke-virtual {p0}, Lanet/channel/Session;->cancelTimeout()V

    .line 326
    iget-object v0, p0, Lanet/channel/Session;->mRecvTimeOutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 327
    iget v1, p0, Lanet/channel/Session;->mReadTimeout:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/thread/ThreadPoolExecutorFactory;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/Session;->timeoutTaskFuture:Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session@["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lanet/channel/Session;->mSeq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lanet/channel/Session;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected unReceiveEventCb(Lanet/channel/entity/EventCb;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lanet/channel/Session;->mEventCallBacks:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
