.class public Lanet/channel/session/TnetSpdySession;
.super Lanet/channel/Session;
.source "TnetSpdySession.java"

# interfaces
.implements Lorg/android/spdy/SessionCb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/session/TnetSpdySession$RequestCallback;
    }
.end annotation


# static fields
.field private static final SSL_TIKET_KEY2:Ljava/lang/String; = "accs_ssl_key2_"

.field private static final TAG:Ljava/lang/String; = "awcn.TnetSpdySession"


# instance fields
.field protected auth:Lanet/channel/IAuth;

.field protected dataFrameCb:Lanet/channel/DataFrameCb;

.field protected heartbeat:Lanet/channel/heartbeat/IHeartbeat;

.field protected iSecurity:Lanet/channel/security/ISecurity;

.field protected mAgent:Lorg/android/spdy/SpdyAgent;

.field protected mAppkey:Ljava/lang/String;

.field protected mConnectedTime:J

.field protected volatile mHasUnrevPing:Z

.field protected mLastPingTime:J

.field protected mSession:Lorg/android/spdy/SpdySession;

.field private requestTimeoutCount:I

.field protected tnetPublicKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1, p2}, Lanet/channel/Session;-><init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    const-wide/16 v0, 0x0

    .line 77
    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 78
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    .line 82
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 83
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    .line 84
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    return-void
.end method

.method static synthetic access$000(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/Event;)V

    return-void
.end method

.method static synthetic access$100(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/Event;)V

    return-void
.end method

.method static synthetic access$1100(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;I)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseCode(Lanet/channel/request/Request;I)V

    return-void
.end method

.method static synthetic access$1200(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Ljava/util/Map;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleResponseHeaders(Lanet/channel/request/Request;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$200(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .locals 0

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object p0
.end method

.method static synthetic access$300(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    return-void
.end method

.method static synthetic access$400(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    return-void
.end method

.method static synthetic access$500(Lanet/channel/session/TnetSpdySession;)Landroid/content/Context;
    .locals 0

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lanet/channel/session/TnetSpdySession;ILanet/channel/entity/Event;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/Event;)V

    return-void
.end method

.method static synthetic access$702(Lanet/channel/session/TnetSpdySession;I)I
    .locals 0

    .line 68
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return p1
.end method

.method static synthetic access$704(Lanet/channel/session/TnetSpdySession;)I
    .locals 1

    .line 68
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    return v0
.end method

.method static synthetic access$800(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;
    .locals 0

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;
    .locals 0

    .line 68
    iget-object p0, p0, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    return-object p0
.end method

.method private initSpdyAgent()V
    .locals 7

    const-string/jumbo v0, "tnet disableHeaderCache"

    const-string v1, "awcn.TnetSpdySession"

    const/4 v2, 0x0

    .line 491
    sput-boolean v2, Lorg/android/spdy/SpdyAgent;->enableDebug:Z

    .line 492
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    sget-object v4, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v5, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v3, v4, v5}, Lorg/android/spdy/SpdyAgent;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lorg/android/spdy/SpdyAgent;

    move-result-object v3

    iput-object v3, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    .line 493
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    new-instance v4, Lanet/channel/session/TnetSpdySession$3;

    invoke-direct {v4, p0}, Lanet/channel/session/TnetSpdySession$3;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v3, v4}, Lorg/android/spdy/SpdyAgent;->setAccsSslCallback(Lorg/android/spdy/AccsSSLCallback;)V

    .line 511
    :cond_0
    invoke-static {}, Lanet/channel/AwcnConfig;->isTnetHeaderCacheEnable()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 513
    :try_start_0
    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "disableHeaderCache"

    .line 514
    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 517
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3, v4, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onDataFrameException(IIZLjava/lang/String;)V
    .locals 1

    .line 268
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0, p1, p2, p3, p4}, Lanet/channel/DataFrameCb;->onException(IIZLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected auth()V
    .locals 2

    .line 448
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    if-eqz v0, :cond_0

    .line 449
    new-instance v1, Lanet/channel/session/TnetSpdySession$2;

    invoke-direct {v1, p0}, Lanet/channel/session/TnetSpdySession$2;-><init>(Lanet/channel/session/TnetSpdySession;)V

    invoke-interface {v0, p0, v1}, Lanet/channel/IAuth;->auth(Lanet/channel/Session;Lanet/channel/IAuth$AuthCallback;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 475
    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 476
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const/4 v1, 0x1

    iput v1, v0, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 477
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v0, :cond_1

    .line 478
    invoke-interface {v0, p0}, Lanet/channel/heartbeat/IHeartbeat;->start(Lanet/channel/Session;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public close()V
    .locals 4

    .line 346
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "session"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "force close!"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 347
    invoke-virtual {p0, v1, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 350
    :try_start_0
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v1}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 352
    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 355
    :cond_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public connect()V
    .locals 16

    move-object/from16 v10, p0

    const-string v11, "awcn.TnetSpdySession"

    .line 278
    iget v0, v10, Lanet/channel/session/TnetSpdySession;->mStatus:I

    const/4 v12, 0x1

    if-eq v0, v12, :cond_a

    iget v0, v10, Lanet/channel/session/TnetSpdySession;->mStatus:I

    if-eqz v0, :cond_a

    iget v0, v10, Lanet/channel/session/TnetSpdySession;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    .line 283
    :try_start_0
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    if-nez v0, :cond_1

    .line 284
    invoke-direct/range {p0 .. p0}, Lanet/channel/session/TnetSpdySession;->initSpdyAgent()V

    .line 289
    :cond_1
    invoke-static {}, Lanet/channel/util/Inet64Util;->isIPv6OnlyNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/strategy/utils/Utils;->isIPV4Address(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_2

    .line 291
    :try_start_1
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    invoke-static {v0}, Lanet/channel/util/Inet64Util;->convertToIPv6ThrowsException(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lanet/channel/session/TnetSpdySession;->mConnectIp:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    :catch_0
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    const-string v0, "connect"

    .line 298
    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "host"

    aput-object v4, v3, v15

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v4, v3, v12

    const-string v4, "ip"

    aput-object v4, v3, v14

    const/4 v4, 0x3

    iget-object v5, v10, Lanet/channel/session/TnetSpdySession;->mConnectIp:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v4, "port"

    aput-object v4, v3, v1

    const/4 v1, 0x5

    iget v4, v10, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string/jumbo v4, "sessionId"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    aput-object v7, v3, v1

    const/16 v1, 0x8

    const-string v4, "SpdyProtocol,"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string v4, "proxyIp,"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    aput-object v4, v3, v1

    const/16 v1, 0xc

    const-string v4, "proxyPort,"

    aput-object v4, v3, v1

    const/16 v1, 0xd

    iget v4, v10, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v11, v0, v2, v3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    new-instance v0, Lorg/android/spdy/SessionInfo;

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->mConnectIp:Ljava/lang/String;

    iget v3, v10, Lanet/channel/session/TnetSpdySession;->mPort:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v10, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v10, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    iget v6, v10, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->getTnetConType()I

    move-result v9

    move-object v1, v0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lorg/android/spdy/SessionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lorg/android/spdy/SessionCb;I)V

    .line 302
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->mConnTimeout:I

    int-to-float v1, v1

    invoke-static {}, Lanet/channel/util/Utils;->getNetworkTimeFactor()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setConnectionTimeoutMs(I)V

    .line 304
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isPublicKeyAuto()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isQuic()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isH2S()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 307
    :cond_3
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    if-ltz v1, :cond_4

    .line 308
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    goto :goto_3

    .line 310
    :cond_4
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    if-eqz v2, :cond_5

    iget-object v2, v10, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    invoke-interface {v2}, Lanet/channel/security/ISecurity;->isSecOff()Z

    move-result v2

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lanet/channel/entity/ConnType;->getTnetPublicKey(Z)I

    move-result v1

    iput v1, v10, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    .line 311
    iget v1, v10, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setPubKeySeqNum(I)V

    goto :goto_3

    .line 305
    :cond_6
    :goto_1
    iget-boolean v1, v10, Lanet/channel/session/TnetSpdySession;->mIpToHost:Z

    if-eqz v1, :cond_7

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Lorg/android/spdy/SessionInfo;->setCertHost(Ljava/lang/String;)V

    .line 315
    :goto_3
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mAgent:Lorg/android/spdy/SpdyAgent;

    invoke-virtual {v1, v0}, Lorg/android/spdy/SpdyAgent;->createSession(Lorg/android/spdy/SessionInfo;)Lorg/android/spdy/SpdySession;

    move-result-object v0

    iput-object v0, v10, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    .line 317
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->getRefCount()I

    move-result v0

    if-le v0, v12, :cond_8

    const-string v0, "get session ref count > 1!!!"

    .line 318
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    invoke-static {v11, v0, v1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    new-instance v0, Lanet/channel/entity/Event;

    invoke-direct {v0, v12}, Lanet/channel/entity/Event;-><init>(I)V

    invoke-virtual {v10, v15, v0}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Lanet/channel/session/TnetSpdySession;->auth()V

    return-void

    .line 324
    :cond_8
    invoke-virtual {v10, v12, v13}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 325
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 329
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    iput v12, v0, Lanet/channel/statist/SessionStatistic;->isProxy:I

    .line 330
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string v1, "false"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->isTunnel:Ljava/lang/String;

    .line 331
    iget-object v0, v10, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->isAppBackground()Z

    move-result v1

    iput-boolean v1, v0, Lanet/channel/statist/SessionStatistic;->isBackground:Z

    const-wide/16 v0, 0x0

    .line 333
    iput-wide v0, v10, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 335
    invoke-virtual {v10, v14, v13}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 336
    iget-object v1, v10, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v2, v15, [Ljava/lang/Object;

    const-string v3, "connect exception "

    invoke-static {v11, v3, v1, v0, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_a
    :goto_5
    return-void
.end method

.method protected getRecvTimeOutRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 370
    new-instance v0, Lanet/channel/session/TnetSpdySession$1;

    invoke-direct {v0, p0}, Lanet/channel/session/TnetSpdySession$1;-><init>(Lanet/channel/session/TnetSpdySession;)V

    return-object v0
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 7

    .line 670
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    .line 671
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "awcn.TnetSpdySession"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 672
    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "get sslticket host is null"

    invoke-static {v2, v0, v3, p1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 677
    :cond_0
    :try_start_0
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    iget-object v4, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accs_ssl_key2_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v4, p1}, Lanet/channel/security/ISecurity;->getBytes(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 681
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "getSSLMeta"

    invoke-static {v2, v1, v3, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v3
.end method

.method public initConfig(Lanet/channel/Config;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Lanet/channel/Config;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->mAppkey:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lanet/channel/Config;->getSecurity()Lanet/channel/security/ISecurity;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    :cond_0
    return-void
.end method

.method public initSessionInfo(Lanet/channel/SessionInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p1, Lanet/channel/SessionInfo;->dataFrameCb:Lanet/channel/DataFrameCb;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    .line 106
    iget-object v0, p1, Lanet/channel/SessionInfo;->auth:Lanet/channel/IAuth;

    iput-object v0, p0, Lanet/channel/session/TnetSpdySession;->auth:Lanet/channel/IAuth;

    .line 107
    iget-boolean v0, p1, Lanet/channel/SessionInfo;->isKeepAlive:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-wide/16 v1, 0x1

    iput-wide v1, v0, Lanet/channel/statist/SessionStatistic;->isKL:J

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->autoReCreate:Z

    .line 110
    iget-object p1, p1, Lanet/channel/SessionInfo;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 111
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lanet/channel/heartbeat/HeartbeatManager;->getDefaultHeartbeat()Lanet/channel/heartbeat/IHeartbeat;

    move-result-object p1

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    .line 117
    :cond_0
    invoke-static {}, Lanet/channel/AwcnConfig;->isIdleSessionCloseEnable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-nez p1, :cond_1

    .line 118
    new-instance p1, Lanet/channel/heartbeat/SelfKillHeartbeatImpl;

    invoke-direct {p1}, Lanet/channel/heartbeat/SelfKillHeartbeatImpl;-><init>()V

    iput-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    :cond_1
    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 484
    iget v0, p0, Lanet/channel/session/TnetSpdySession;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 365
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public ping(Z)V
    .locals 11

    const/4 v0, 0x1

    .line 399
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    const-string v4, "ping"

    const/4 v5, 0x0

    const-string v6, "awcn.TnetSpdySession"

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "host"

    aput-object v8, v7, v5

    iget-object v8, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v8, v7, v0

    const-string/jumbo v8, "thread"

    aput-object v8, v7, v2

    const/4 v8, 0x3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v4, v1, v7}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_7

    .line 405
    :try_start_0
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v1, :cond_3

    .line 406
    iget v1, p0, Lanet/channel/session/TnetSpdySession;->mStatus:I

    if-eqz v1, :cond_1

    iget v1, p0, Lanet/channel/session/TnetSpdySession;->mStatus:I

    if-ne v1, v3, :cond_7

    :cond_1
    const/16 v1, 0x40

    const/4 v3, 0x0

    .line 407
    invoke-virtual {p0, v1, v3}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/Event;)V

    .line 408
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 409
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v7, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v1, Lanet/channel/statist/SessionStatistic;->ppkgCount:J

    .line 410
    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v1}, Lorg/android/spdy/SpdySession;->submitPing()I

    .line 411
    invoke-static {v0}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " submit ping ms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " force:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, v0, v1}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    :cond_2
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->setPingTimeout()V

    .line 416
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 418
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_7

    .line 419
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    goto :goto_0

    .line 424
    :cond_3
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    if-eqz p1, :cond_4

    .line 425
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v0, "session null"

    iput-object v0, p1, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 427
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " session null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, p1, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->close()V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v0, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 432
    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v1, -0x450

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v1, -0x44f

    if-ne v0, v1, :cond_6

    .line 434
    :cond_5
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "Send request on closed session!!!"

    invoke-static {v6, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x6

    .line 435
    new-instance v1, Lanet/channel/entity/Event;

    invoke-direct {v1, v2}, Lanet/channel/entity/Event;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 437
    :cond_6
    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v4, v0, p1, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 6

    .line 690
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->getDomain()Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 695
    :try_start_0
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    if-eqz v2, :cond_2

    .line 696
    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->iSecurity:Lanet/channel/security/ISecurity;

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accs_ssl_key2_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1, p2}, Lanet/channel/security/ISecurity;->saveBytes(Landroid/content/Context;Ljava/lang/String;[B)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 699
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, "putSSLMeta"

    invoke-static {v2, v3, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public request(Lanet/channel/request/Request;Lanet/channel/RequestCb;)Lanet/channel/request/Cancelable;
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "Host"

    const-string v4, "awcn.TnetSpdySession"

    .line 129
    sget-object v5, Lanet/channel/request/TnetCancelable;->NULL:Lanet/channel/request/TnetCancelable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v6, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    goto :goto_0

    :cond_0
    new-instance v6, Lanet/channel/statist/RequestStatistic;

    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->mRealHost:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lanet/channel/statist/RequestStatistic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v6, v7}, Lanet/channel/statist/RequestStatistic;->setConnType(Lanet/channel/entity/ConnType;)V

    .line 133
    iget-wide v7, v6, Lanet/channel/statist/RequestStatistic;->start:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->reqStart:J

    iput-wide v7, v6, Lanet/channel/statist/RequestStatistic;->start:J

    .line 136
    :cond_1
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->mConnectIp:Ljava/lang/String;

    iget v8, v1, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-virtual {v6, v7, v8}, Lanet/channel/statist/RequestStatistic;->setIPAndPort(Ljava/lang/String;I)V

    .line 137
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIpSource()I

    move-result v7

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->ipRefer:I

    .line 138
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->mConnStrategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v7}, Lanet/channel/strategy/IConnStrategy;->getIpType()I

    move-result v7

    iput v7, v6, Lanet/channel/statist/RequestStatistic;->ipType:I

    .line 139
    iget-object v7, v1, Lanet/channel/session/TnetSpdySession;->unit:Ljava/lang/String;

    iput-object v7, v6, Lanet/channel/statist/RequestStatistic;->unit:Ljava/lang/String;

    if-eqz v0, :cond_11

    if-nez v2, :cond_2

    goto/16 :goto_8

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 152
    :try_start_0
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v9, :cond_e

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->mStatus:I

    if-eqz v9, :cond_3

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->mStatus:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_e

    .line 153
    :cond_3
    iget-boolean v9, v1, Lanet/channel/session/TnetSpdySession;->mIpToHost:Z

    if-eqz v9, :cond_4

    .line 154
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    iget v10, v1, Lanet/channel/session/TnetSpdySession;->mPort:I

    invoke-virtual {v0, v9, v10}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 156
    :cond_4
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v9}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v9

    invoke-virtual {v0, v9}, Lanet/channel/request/Request;->setUrlScheme(Z)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getUrl()Ljava/net/URL;

    move-result-object v11

    .line 158
    invoke-static {v8}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v15, ""

    const/16 v21, 0x1

    if-eqz v9, :cond_5

    .line 159
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string/jumbo v12, "request URL"

    aput-object v12, v10, v7

    invoke-virtual {v11}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string/jumbo v12, "request Method"

    aput-object v12, v10, v7

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string/jumbo v12, "request headers"

    aput-object v12, v10, v7

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v12

    aput-object v12, v10, v21

    invoke-static {v4, v15, v9, v10}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_5
    iget-object v9, v1, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget v9, v1, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    if-gtz v9, :cond_6

    goto :goto_1

    .line 170
    :cond_6
    new-instance v9, Lorg/android/spdy/SpdyRequest;

    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/net/URL;->getPort()I

    move-result v13

    iget-object v14, v1, Lanet/channel/session/TnetSpdySession;->mProxyIp:Ljava/lang/String;

    iget v10, v1, Lanet/channel/session/TnetSpdySession;->mProxyPort:I

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const/16 v18, -0x1

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v19

    const/16 v20, 0x0

    move/from16 v22, v10

    move-object v10, v9

    move-object/from16 v23, v15

    move/from16 v15, v22

    invoke-direct/range {v10 .. v20}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Lorg/android/spdy/RequestPriority;III)V

    goto :goto_2

    :cond_7
    :goto_1
    move-object/from16 v23, v15

    .line 166
    new-instance v9, Lorg/android/spdy/SpdyRequest;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getMethod()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    const/4 v14, -0x1

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getConnectTimeout()I

    move-result v15

    move-object v10, v9

    invoke-direct/range {v10 .. v15}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 177
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getReadTimeout()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->setRequestRdTimeoutMs(I)V

    .line 178
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v10

    .line 179
    invoke-interface {v10, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v12, ":host"

    if-nez v11, :cond_9

    .line 180
    :try_start_2
    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 181
    iget-boolean v3, v1, Lanet/channel/session/TnetSpdySession;->mIpToHost:Z

    if-eqz v3, :cond_8

    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHost()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v9, v12, v3}, Lorg/android/spdy/SpdyRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 183
    :cond_9
    new-instance v10, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 184
    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 185
    iget-boolean v11, v1, Lanet/channel/session/TnetSpdySession;->mIpToHost:Z

    if-eqz v11, :cond_a

    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mIp:Ljava/lang/String;

    :cond_a
    invoke-interface {v10, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v9, v10}, Lorg/android/spdy/SpdyRequest;->addHeaders(Ljava/util/Map;)V

    .line 189
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getBodyBytes()[B

    move-result-object v3

    .line 190
    new-instance v10, Lorg/android/spdy/SpdyDataProvider;

    invoke-direct {v10, v3}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 192
    iget-object v3, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, v3, Lanet/channel/statist/RequestStatistic;->sendStart:J

    .line 193
    iget-object v3, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v11, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v11, v11, Lanet/channel/statist/RequestStatistic;->sendStart:J

    iget-object v13, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v13, v13, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v11, v13

    iput-wide v11, v3, Lanet/channel/statist/RequestStatistic;->processTime:J

    .line 194
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    new-instance v11, Lanet/channel/session/TnetSpdySession$RequestCallback;

    invoke-direct {v11, v1, v0, v2}, Lanet/channel/session/TnetSpdySession$RequestCallback;-><init>(Lanet/channel/session/TnetSpdySession;Lanet/channel/request/Request;Lanet/channel/RequestCb;)V

    invoke-virtual {v3, v9, v10, v1, v11}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I

    move-result v3

    .line 195
    invoke-static/range {v21 .. v21}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 196
    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v9

    new-array v10, v8, [Ljava/lang/Object;

    const-string/jumbo v11, "streamId"

    aput-object v11, v10, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v21

    move-object/from16 v11, v23

    invoke-static {v4, v11, v9, v10}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_b
    new-instance v9, Lanet/channel/request/TnetCancelable;

    iget-object v10, v1, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual/range {p1 .. p1}, Lanet/channel/request/Request;->getSeq()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v3, v11}, Lanet/channel/request/TnetCancelable;-><init>(Lorg/android/spdy/SpdySession;ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    :try_start_3
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v10, v3, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    iput-wide v10, v3, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 200
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v10, v3, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    add-long/2addr v10, v12

    iput-wide v10, v3, Lanet/channel/statist/SessionStatistic;->stdRCount:J

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v1, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 203
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz v3, :cond_c

    .line 204
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {v3}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    .line 207
    :cond_c
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {v3}, Lanet/channel/entity/ConnType;->isQuic()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 208
    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    const-string v3, "QuicConnectionID"

    iget-object v5, v1, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v5}, Lorg/android/spdy/SpdySession;->getQuicConnectionID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lanet/channel/statist/RequestStatistic;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_d
    move-object v5, v9

    goto :goto_7

    :catch_0
    move-object v5, v9

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v9

    goto :goto_6

    :cond_e
    const/16 v3, -0x12d

    .line 211
    :try_start_4
    invoke-static {v3}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v0, Lanet/channel/request/Request;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v2, v3, v9, v0}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    :try_end_4
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    :goto_5
    const/16 v0, -0x65

    .line 223
    invoke-static {v0}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    goto :goto_7

    :catch_3
    move-exception v0

    .line 214
    :goto_6
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v3

    const/16 v9, -0x450

    if-eq v3, v9, :cond_f

    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v3

    const/16 v9, -0x44f

    if-ne v3, v9, :cond_10

    .line 216
    :cond_f
    iget-object v3, v1, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v7, v7, [Ljava/lang/Object;

    const-string v9, "Send request on closed session!!!"

    invoke-static {v4, v9, v3, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x6

    .line 217
    new-instance v4, Lanet/channel/entity/Event;

    invoke-direct {v4, v8}, Lanet/channel/entity/Event;-><init>(I)V

    invoke-virtual {v1, v3, v4}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 219
    :cond_10
    invoke-virtual {v0}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, -0x12c

    invoke-static {v3, v0}, Lanet/channel/util/ErrorConstant;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :goto_7
    return-object v5

    :cond_11
    :goto_8
    if-eqz v2, :cond_12

    const/16 v0, -0x66

    .line 146
    invoke-static {v0}, Lanet/channel/util/ErrorConstant;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3, v6}, Lanet/channel/RequestCb;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    :cond_12
    return-object v5
.end method

.method public sendCustomFrame(I[BI)V
    .locals 11

    const-string/jumbo v0, "sendCustomFrame"

    const-string/jumbo v1, "sendCustomFrame error"

    const-string v2, "awcn.TnetSpdySession"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 236
    :try_start_0
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-nez v5, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "dataId"

    aput-object v8, v7, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x2

    const-string/jumbo v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v2, v0, v5, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget v5, p0, Lanet/channel/session/TnetSpdySession;->mStatus:I

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_1

    .line 242
    array-length v0, p2

    const/16 v5, 0x4000

    if-le v0, v5, :cond_1

    const/16 p2, -0x12f

    const/4 p3, 0x0

    .line 243
    invoke-direct {p0, p1, p2, v4, p3}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto/16 :goto_1

    .line 245
    :cond_1
    iget-object v5, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    const/4 v8, 0x0

    if-nez p2, :cond_2

    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    array-length v0, p2

    move v9, v0

    :goto_0
    move v6, p1

    move v7, p3

    move-object v10, p2

    invoke-virtual/range {v5 .. v10}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 247
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v5, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 248
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v5, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    add-long/2addr v5, v7

    iput-wide v5, p2, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    .line 250
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p2, :cond_4

    .line 251
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    invoke-interface {p2}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    goto :goto_1

    .line 255
    :cond_3
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array p3, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendCustomFrame con invalid mStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lanet/channel/session/TnetSpdySession;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v4

    invoke-static {v2, v0, p2, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, -0x12d

    const-string/jumbo p3, "session invalid"

    .line 256
    invoke-direct {p0, p1, p2, v3, p3}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 262
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, p3, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x65

    .line 263
    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v3, p2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p2

    .line 259
    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, p3, p2, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    const/16 p3, -0x12c

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpdyErrorException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, v3, p2}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setTnetPublicKey(I)V
    .locals 0

    .line 123
    iput p1, p0, Lanet/channel/session/TnetSpdySession;->tnetPublicKey:I

    return-void
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 3

    .line 663
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "dataId"

    aput-object v1, p2, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const-string v0, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyCustomControlFrameFailCallback"

    invoke-static {v0, v2, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo p1, "tnet error"

    .line 664
    invoke-direct {p0, p3, p4, v1, p1}, Lanet/channel/session/TnetSpdySession;->onDataFrameException(IIZLjava/lang/String;)V

    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 4

    .line 559
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 p2, 0x4

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p5, 0x0

    const-string v0, "len"

    aput-object v0, p2, p5

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    const-string v2, "frameCb"

    aput-object v2, p2, v0

    iget-object v2, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    const/4 v3, 0x3

    aput-object v2, p2, v3

    const-string v2, "awcn.TnetSpdySession"

    const-string v3, "[spdyCustomControlFrameRecvCallback]"

    invoke-static {v2, v3, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 560
    invoke-static {v1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/16 p1, 0x200

    if-ge p6, p1, :cond_1

    const-string p1, ""

    move-object p6, p1

    const/4 p1, 0x0

    .line 563
    :goto_0
    array-length v3, p7

    if-ge p1, v3, :cond_0

    .line 564
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p6, p7, p1

    and-int/lit16 p6, p6, 0xff

    invoke-static {p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " "

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 566
    :cond_0
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "str"

    aput-object v3, v0, p5

    aput-object p6, v0, v1

    invoke-static {v2, p2, p1, v0}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    :cond_1
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->dataFrameCb:Lanet/channel/DataFrameCb;

    if-eqz p1, :cond_2

    .line 571
    invoke-interface {p1, p0, p7, p3, p4}, Lanet/channel/DataFrameCb;->onDataReceive(Lanet/channel/session/TnetSpdySession;[BII)V

    goto :goto_1

    .line 573
    :cond_2
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array p3, p5, [Ljava/lang/Object;

    const-string p4, "AccsFrameCb is null"

    invoke-static {v2, p4, p1, p3}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    new-instance p1, Lanet/channel/statist/ExceptionStatistic;

    const/16 p3, -0x69

    const-string/jumbo p4, "rt"

    invoke-direct {p1, p3, p2, p4}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p2

    invoke-interface {p2, p1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 577
    :goto_1
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide p2, p1, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    const-wide/16 p4, 0x1

    add-long/2addr p2, p4

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    .line 578
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_3

    .line 579
    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    :cond_3
    return-void
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 4

    const/4 p1, 0x2

    .line 538
    invoke-static {p1}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 539
    iget-object p4, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Host"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lanet/channel/session/TnetSpdySession;->mHost:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "id"

    aput-object v2, v1, p1

    const/4 p1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "awcn.TnetSpdySession"

    const-string v2, "ping receive"

    invoke-static {p1, v2, p4, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gez p1, :cond_1

    return-void

    .line 544
    :cond_1
    iput-boolean v0, p0, Lanet/channel/session/TnetSpdySession;->mHasUnrevPing:Z

    .line 545
    iput v0, p0, Lanet/channel/session/TnetSpdySession;->requestTimeoutCount:I

    .line 546
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    if-eqz p1, :cond_2

    .line 547
    invoke-interface {p1}, Lanet/channel/heartbeat/IHeartbeat;->reSchedule()V

    :cond_2
    const/16 p1, 0x80

    const/4 p2, 0x0

    .line 549
    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->handleCallbacks(ILanet/channel/entity/Event;)V

    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 5

    .line 613
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, " errorCode:"

    aput-object v3, v1, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "awcn.TnetSpdySession"

    const-string/jumbo v4, "spdySessionCloseCallback"

    invoke-static {v3, v4, p2, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 615
    invoke-interface {p2}, Lanet/channel/heartbeat/IHeartbeat;->stop()V

    .line 616
    iput-object v1, p0, Lanet/channel/session/TnetSpdySession;->heartbeat:Lanet/channel/heartbeat/IHeartbeat;

    :cond_0
    if-eqz p1, :cond_1

    .line 621
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 624
    new-array p2, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "session clean up failed!"

    invoke-static {v3, v2, v1, p1, p2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x6

    .line 627
    new-instance p2, Lanet/channel/entity/Event;

    invoke-direct {p2, v0}, Lanet/channel/entity/Event;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    if-eqz p3, :cond_2

    .line 630
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->reused_counter:I

    int-to-long v0, p2

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 631
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget p2, p3, Lorg/android/spdy/SuperviseConnectInfo;->keepalive_period_second:I

    int-to-long v0, p2

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->liveTime:J

    .line 634
    :try_start_1
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mConnType:Lanet/channel/entity/ConnType;

    invoke-virtual {p1}, Lanet/channel/entity/ConnType;->isQuic()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 635
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    .line 636
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-string p2, "QuicConnectionID"

    iget-object v0, p0, Lanet/channel/session/TnetSpdySession;->mSession:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->getQuicConnectionID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-string/jumbo p2, "retransmissionRate"

    iget-wide v0, p3, Lorg/android/spdy/SuperviseConnectInfo;->retransmissionRate:D

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 638
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-string p2, "lossRate"

    iget-wide v0, p3, Lorg/android/spdy/SuperviseConnectInfo;->lossRate:D

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 639
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-string/jumbo p2, "tlpCount"

    iget v0, p3, Lorg/android/spdy/SuperviseConnectInfo;->tlpCount:I

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 640
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->extra:Lorg/json/JSONObject;

    const-string/jumbo p2, "rtoCount"

    iget p3, p3, Lorg/android/spdy/SuperviseConnectInfo;->rtoCount:I

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    .line 646
    :cond_2
    :goto_1
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide p1, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-nez p3, :cond_3

    .line 647
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long p2, p4

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 650
    :cond_3
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mLastPingTime:J

    sub-long/2addr p2, v0

    long-to-int p3, p2

    iput p3, p1, Lanet/channel/statist/SessionStatistic;->lastPingInterval:I

    .line 651
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 654
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 655
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    new-instance p2, Lanet/channel/statist/SessionMonitor;

    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-direct {p2, p3}, Lanet/channel/statist/SessionMonitor;-><init>(Lanet/channel/statist/SessionStatistic;)V

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 657
    :cond_4
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {p2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    return-void
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 4

    .line 525
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    int-to-long v0, v0

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->connectionTime:J

    .line 526
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    int-to-long v0, v0

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->sslTime:J

    .line 527
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget v0, p2, Lorg/android/spdy/SuperviseConnectInfo;->doHandshakeTime:I

    int-to-long v0, v0

    iput-wide v0, p1, Lanet/channel/statist/SessionStatistic;->sslCalTime:J

    .line 528
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lanet/channel/session/TnetSpdySession;->mConnectedTime:J

    .line 530
    new-instance p1, Lanet/channel/entity/Event;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lanet/channel/entity/Event;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 531
    invoke-virtual {p0}, Lanet/channel/session/TnetSpdySession;->auth()V

    .line 533
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "connectTime"

    aput-object v3, v2, v1

    iget v1, p2, Lorg/android/spdy/SuperviseConnectInfo;->connectTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string/jumbo v1, "sslTime:"

    aput-object v1, v2, v0

    iget p2, p2, Lorg/android/spdy/SuperviseConnectInfo;->handshakeTime:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x3

    aput-object p2, v2, v0

    const-string p2, "awcn.TnetSpdySession"

    const-string/jumbo v0, "spdySessionConnectCB connect"

    invoke-static {p2, v0, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 5

    const/4 p3, 0x0

    const-string v0, "awcn.TnetSpdySession"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 589
    :try_start_0
    invoke-virtual {p1}, Lorg/android/spdy/SpdySession;->cleanUp()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 592
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "[spdySessionFailedError]session clean up failed!"

    invoke-static {v0, v3, p3, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 595
    :cond_0
    :goto_0
    new-instance p1, Lanet/channel/entity/Event;

    const/16 v2, 0x100

    const-string/jumbo v3, "tnet connect fail"

    invoke-direct {p1, v2, p2, v3}, Lanet/channel/entity/Event;-><init>(IILjava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lanet/channel/session/TnetSpdySession;->notifyStatus(ILanet/channel/entity/Event;)V

    .line 596
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSeq:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, " errorId:"

    aput-object v3, v2, v1

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, p3, p1, v2}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    int-to-long p2, p2

    iput-wide p2, p1, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 598
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iput v1, p1, Lanet/channel/statist/SessionStatistic;->ret:I

    .line 599
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->getNetworkSubType()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lanet/channel/statist/SessionStatistic;->netType:Ljava/lang/String;

    .line 600
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 603
    iget-object p1, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-object p1, p1, Lanet/channel/statist/SessionStatistic;->ip:Ljava/lang/String;

    invoke-static {p1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 604
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    new-instance p2, Lanet/channel/statist/SessionMonitor;

    iget-object p3, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-direct {p2, p3}, Lanet/channel/statist/SessionMonitor;-><init>(Lanet/channel/statist/SessionStatistic;)V

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 606
    :cond_1
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p1

    iget-object p2, p0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    invoke-virtual {p2}, Lanet/channel/statist/SessionStatistic;->getAlarmObject()Lanet/channel/statist/AlarmObject;

    move-result-object p2

    invoke-interface {p1, p2}, Lanet/channel/appmonitor/IAppMonitor;->commitAlarm(Lanet/channel/statist/AlarmObject;)V

    return-void
.end method
