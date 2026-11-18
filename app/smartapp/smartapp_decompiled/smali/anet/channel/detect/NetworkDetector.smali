.class public Lanet/channel/detect/NetworkDetector;
.super Ljava/lang/Object;
.source "NetworkDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "awcn.NetworkDetector"

.field private static final enterBackground:Ljava/util/concurrent/locks/Condition;

.field private static final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final runnable:Ljava/lang/Runnable;

.field private static final seq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final taskArrived:Ljava/util/concurrent/locks/Condition;

.field private static final tasks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lanet/channel/strategy/StrategyResultParser$HrTask;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lanet/channel/detect/NetworkDetector;->tasks:Ljava/util/TreeMap;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lanet/channel/detect/NetworkDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lanet/channel/detect/NetworkDetector;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    sget-object v0, Lanet/channel/detect/NetworkDetector;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lanet/channel/detect/NetworkDetector;->enterBackground:Ljava/util/concurrent/locks/Condition;

    .line 50
    sget-object v0, Lanet/channel/detect/NetworkDetector;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lanet/channel/detect/NetworkDetector;->taskArrived:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 51
    sput-object v0, Lanet/channel/detect/NetworkDetector;->thread:Ljava/lang/Thread;

    .line 52
    new-instance v0, Lanet/channel/detect/NetworkDetector$1;

    invoke-direct {v0}, Lanet/channel/detect/NetworkDetector$1;-><init>()V

    sput-object v0, Lanet/channel/detect/NetworkDetector;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->enterBackground:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/TreeMap;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->tasks:Ljava/util/TreeMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->taskArrived:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$400(Lanet/channel/strategy/StrategyResultParser$HrTask;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lanet/channel/detect/NetworkDetector;->startTask(Lanet/channel/strategy/StrategyResultParser$HrTask;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500()Ljava/lang/Thread;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->thread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 43
    sput-object p0, Lanet/channel/detect/NetworkDetector;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/Runnable;
    .locals 1

    .line 43
    sget-object v0, Lanet/channel/detect/NetworkDetector;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private static makeConnStrategy(Lanet/channel/strategy/ConnProtocol;Lanet/channel/strategy/StrategyResultParser$Strategy;)Lanet/channel/strategy/IConnStrategy;
    .locals 1

    .line 310
    new-instance v0, Lanet/channel/detect/NetworkDetector$5;

    invoke-direct {v0, p1, p0}, Lanet/channel/detect/NetworkDetector$5;-><init>(Lanet/channel/strategy/StrategyResultParser$Strategy;Lanet/channel/strategy/ConnProtocol;)V

    return-object v0
.end method

.method public static registerListener()V
    .locals 4

    const/4 v0, 0x0

    .line 101
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "awcn.NetworkDetector"

    const-string/jumbo v2, "registerListener"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {}, Lanet/channel/strategy/StrategyCenter;->getInstance()Lanet/channel/strategy/IStrategyInstance;

    move-result-object v0

    new-instance v1, Lanet/channel/detect/NetworkDetector$2;

    invoke-direct {v1}, Lanet/channel/detect/NetworkDetector$2;-><init>()V

    invoke-interface {v0, v1}, Lanet/channel/strategy/IStrategyInstance;->registerListener(Lanet/channel/strategy/IStrategyListener;)V

    .line 138
    new-instance v0, Lanet/channel/detect/NetworkDetector$3;

    invoke-direct {v0}, Lanet/channel/detect/NetworkDetector$3;-><init>()V

    invoke-static {v0}, Lanet/channel/util/AppLifecycle;->registerLifecycleListener(Lanet/channel/util/AppLifecycle$AppLifecycleListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static startLongLinkTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V
    .locals 14

    .line 219
    iget-object v0, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    invoke-static {v0}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lanet/channel/strategy/StrategyResultParser$Aisles;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    .line 220
    invoke-static {v0}, Lanet/channel/entity/ConnType;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lanet/channel/entity/ConnType;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 225
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "host"

    aput-object v5, v3, v4

    const/4 v5, 0x1

    aput-object p0, v3, v5

    const/4 v5, 0x2

    const-string v6, "ip"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "port"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    iget-object v6, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v6, v6, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "protocol"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    aput-object v0, v3, v5

    const-string v5, "awcn.NetworkDetector"

    const-string/jumbo v6, "startLongLinkTask"

    invoke-static {v5, v6, v2, v3}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HR"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lanet/channel/detect/NetworkDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 228
    new-instance v2, Lanet/channel/session/TnetSpdySession;

    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Lanet/channel/entity/ConnInfo;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lanet/channel/entity/ConnType;->isSSL()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "https://"

    goto :goto_0

    :cond_1
    const-string v1, "http://"

    :goto_0
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1}, Lanet/channel/detect/NetworkDetector;->makeConnStrategy(Lanet/channel/strategy/ConnProtocol;Lanet/channel/strategy/StrategyResultParser$Strategy;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v0

    invoke-direct {v5, v1, v9, v0}, Lanet/channel/entity/ConnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V

    invoke-direct {v2, v3, v5}, Lanet/channel/session/TnetSpdySession;-><init>(Landroid/content/Context;Lanet/channel/entity/ConnInfo;)V

    .line 231
    new-instance v0, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v0, p0, p1}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/16 p0, 0x101

    .line 233
    new-instance v1, Lanet/channel/detect/NetworkDetector$4;

    move-object v5, v1

    move-object v6, v0

    move-wide v7, v12

    move-object v10, p1

    move-object v11, v2

    invoke-direct/range {v5 .. v11}, Lanet/channel/detect/NetworkDetector$4;-><init>(Lanet/channel/statist/HorseRaceStat;JLjava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;Lanet/channel/session/TnetSpdySession;)V

    invoke-virtual {v2, p0, v1}, Lanet/channel/session/TnetSpdySession;->registerEventcb(ILanet/channel/entity/EventCb;)V

    .line 294
    invoke-virtual {v2}, Lanet/channel/session/TnetSpdySession;->connect()V

    .line 295
    monitor-enter v0

    .line 297
    :try_start_0
    iget-object p0, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget p0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    if-nez p0, :cond_2

    const/16 p0, 0x2710

    goto :goto_1

    :cond_2
    iget-object p0, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget p0, p0, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    :goto_1
    int-to-long p0, p0

    .line 298
    invoke-virtual {v0, p0, p1}, Ljava/lang/Object;->wait(J)V

    .line 299
    iget-wide p0, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, p0, v5

    if-nez v1, :cond_3

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v12

    iput-wide p0, v0, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 302
    :cond_3
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 305
    :catch_0
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    invoke-virtual {v2, v4}, Lanet/channel/session/TnetSpdySession;->close(Z)V

    return-void

    .line 305
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static startShortLinkTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V
    .locals 7

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget-object v1, v1, Lanet/channel/strategy/StrategyResultParser$Aisles;->protocol:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lanet/channel/util/HttpUrl;->parse(Ljava/lang/String;)Lanet/channel/util/HttpUrl;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 189
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "url"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    aput-object v0, v2, v4

    const-string v5, "awcn.NetworkDetector"

    const-string/jumbo v6, "startShortLinkTask"

    invoke-static {v5, v6, v1, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    new-instance v1, Lanet/channel/request/Request$Builder;

    invoke-direct {v1}, Lanet/channel/request/Request$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lanet/channel/request/Request$Builder;->setUrl(Lanet/channel/util/HttpUrl;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {v0, v1, v2}, Lanet/channel/request/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v1, v1, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setConnectTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v1, v1, Lanet/channel/strategy/StrategyResultParser$Aisles;->rto:I

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setReadTimeout(I)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lanet/channel/request/Request$Builder;->setRedirectEnable(Z)Lanet/channel/request/Request$Builder;

    move-result-object v0

    new-instance v1, Lanet/channel/util/TlsSniSocketFactory;

    invoke-direct {v1, p0}, Lanet/channel/util/TlsSniSocketFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lanet/channel/detect/NetworkDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanet/channel/request/Request$Builder;->setSeq(Ljava/lang/String;)Lanet/channel/request/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lanet/channel/request/Request$Builder;->build()Lanet/channel/request/Request;

    move-result-object v0

    .line 199
    iget-object v1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    iget-object v2, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v2, v2, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    invoke-virtual {v0, v1, v2}, Lanet/channel/request/Request;->setDnsOptimize(Ljava/lang/String;I)V

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 202
    invoke-static {v0}, Lanet/channel/session/HttpConnector;->connect(Lanet/channel/request/Request;)Lanet/channel/session/HttpConnector$Response;

    move-result-object v0

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 205
    new-instance v1, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v1, p0, p1}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    .line 206
    iput-wide v5, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 207
    iget p0, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    if-gtz p0, :cond_1

    .line 208
    iget p0, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iput p0, v1, Lanet/channel/statist/HorseRaceStat;->connErrorCode:I

    goto :goto_0

    .line 210
    :cond_1
    iput v4, v1, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 211
    iget p0, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput v3, v1, Lanet/channel/statist/HorseRaceStat;->reqRet:I

    .line 212
    iget p0, v0, Lanet/channel/session/HttpConnector$Response;->httpCode:I

    iput p0, v1, Lanet/channel/statist/HorseRaceStat;->reqErrorCode:I

    .line 213
    iget-wide p0, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    iput-wide p0, v1, Lanet/channel/statist/HorseRaceStat;->reqTime:J

    .line 215
    :goto_0
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method

.method private static startTask(Lanet/channel/strategy/StrategyResultParser$HrTask;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HrTask;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HrTask;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 162
    :cond_0
    iget-object v0, p0, Lanet/channel/strategy/StrategyResultParser$HrTask;->host:Ljava/lang/String;

    const/4 v1, 0x0

    .line 163
    :goto_0
    iget-object v2, p0, Lanet/channel/strategy/StrategyResultParser$HrTask;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    array-length v2, v2

    if-ge v1, v2, :cond_6

    .line 164
    iget-object v2, p0, Lanet/channel/strategy/StrategyResultParser$HrTask;->strategies:[Lanet/channel/strategy/StrategyResultParser$Strategy;

    aget-object v2, v2, v1

    .line 165
    iget-object v3, v2, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget-object v3, v3, Lanet/channel/strategy/StrategyResultParser$Aisles;->protocol:Ljava/lang/String;

    const-string v4, "http"

    .line 167
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "http2"

    .line 169
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "spdy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "quic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "tcp"

    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    invoke-static {v0, v2}, Lanet/channel/detect/NetworkDetector;->startTcpTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    goto :goto_3

    .line 170
    :cond_3
    :goto_1
    invoke-static {v0, v2}, Lanet/channel/detect/NetworkDetector;->startLongLinkTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    goto :goto_3

    .line 168
    :cond_4
    :goto_2
    invoke-static {v0, v2}, Lanet/channel/detect/NetworkDetector;->startShortLinkTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    return-void
.end method

.method private static startTcpTask(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V
    .locals 9

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lanet/channel/detect/NetworkDetector;->seq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    .line 360
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ip"

    aput-object v3, v1, v2

    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string v5, "port"

    aput-object v5, v1, v3

    iget-object v3, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v3, v3, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    const-string v3, "awcn.NetworkDetector"

    const-string/jumbo v5, "startTcpTask"

    invoke-static {v3, v5, v0, v1}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    new-instance v1, Lanet/channel/statist/HorseRaceStat;

    invoke-direct {v1, p0, p1}, Lanet/channel/statist/HorseRaceStat;-><init>(Ljava/lang/String;Lanet/channel/strategy/StrategyResultParser$Strategy;)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 365
    :try_start_0
    new-instance p0, Ljava/net/Socket;

    iget-object v7, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->ip:Ljava/lang/String;

    iget-object v8, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v8, v8, Lanet/channel/strategy/StrategyResultParser$Aisles;->port:I

    invoke-direct {p0, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 366
    iget-object v7, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget v7, v7, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    if-nez v7, :cond_0

    const/16 p1, 0x2710

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lanet/channel/strategy/StrategyResultParser$Strategy;->aisles:Lanet/channel/strategy/StrategyResultParser$Aisles;

    iget p1, p1, Lanet/channel/strategy/StrategyResultParser$Aisles;->cto:I

    :goto_0
    invoke-virtual {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    const-string/jumbo p1, "socket connect success"

    .line 367
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0, v2}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iput v4, v1, Lanet/channel/statist/HorseRaceStat;->connRet:I

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v5

    iput-wide v2, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    .line 370
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 372
    :catch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v5

    iput-wide p0, v1, Lanet/channel/statist/HorseRaceStat;->connTime:J

    const/16 p0, -0x194

    .line 373
    iput p0, v1, Lanet/channel/statist/HorseRaceStat;->connErrorCode:I

    .line 375
    :goto_1
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object p0

    invoke-interface {p0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    return-void
.end method
