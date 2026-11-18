.class public Lcom/aliyun/oss/ClientConfiguration;
.super Ljava/lang/Object;
.source "ClientConfiguration.java"


# static fields
.field public static final DEFAULT_CNAME_EXCLUDE_LIST:Ljava/lang/String; = "aliyuncs.com,aliyun-inc.com,aliyun.com"

.field public static final DEFAULT_CONNECTION_REQUEST_TIMEOUT:I = -0x1

.field public static final DEFAULT_CONNECTION_TIMEOUT:I = 0xc350

.field public static final DEFAULT_CONNECTION_TTL:J = -0x1L

.field public static final DEFAULT_IDLE_CONNECTION_TIME:J = 0xea60L

.field public static final DEFAULT_MAX_CONNECTIONS:I = 0x400

.field private static final DEFAULT_MAX_RETRIES:I = 0x3

.field public static final DEFAULT_REQUEST_TIMEOUT:I = 0x493e0

.field public static final DEFAULT_SLOW_REQUESTS_THRESHOLD:J = 0x493e0L

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0xc350

.field public static final DEFAULT_THREAD_POOL_WAIT_TIME:I = 0xea60

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String;

.field public static final DEFAULT_USE_REAPER:Z = true

.field public static final DEFAULT_VALIDATE_AFTER_INACTIVITY:I = 0x7d0


# instance fields
.field private cnameExcludeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private connectionRequestTimeout:I

.field private connectionTTL:J

.field private connectionTimeout:I

.field private crcCheckEnabled:Z

.field private defaultHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private idleConnectionTime:J

.field private maxConnections:I

.field private maxErrorRetry:I

.field private protocol:Lcom/aliyun/oss/common/comm/Protocol;

.field private proxyDomain:Ljava/lang/String;

.field private proxyHost:Ljava/lang/String;

.field private proxyPassword:Ljava/lang/String;

.field private proxyPort:I

.field private proxyUsername:Ljava/lang/String;

.field private proxyWorkstation:Ljava/lang/String;

.field private requestTimeout:I

.field private requestTimeoutEnabled:Z

.field private rlock:Ljava/util/concurrent/locks/Lock;

.field private sldEnabled:Z

.field private slowRequestsThreshold:J

.field private socketTimeout:I

.field private supportCname:Z

.field private useReaper:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/aliyun/oss/common/utils/VersionInfoUtils;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/oss/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-object v0, Lcom/aliyun/oss/ClientConfiguration;->DEFAULT_USER_AGENT:Ljava/lang/String;

    iput-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->userAgent:Ljava/lang/String;

    const/4 v0, 0x3

    .line 61
    iput v0, p0, Lcom/aliyun/oss/ClientConfiguration;->maxErrorRetry:I

    const/4 v0, -0x1

    .line 62
    iput v0, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionRequestTimeout:I

    const v1, 0xc350

    .line 63
    iput v1, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTimeout:I

    .line 64
    iput v1, p0, Lcom/aliyun/oss/ClientConfiguration;->socketTimeout:I

    const/16 v1, 0x400

    .line 65
    iput v1, p0, Lcom/aliyun/oss/ClientConfiguration;->maxConnections:I

    const-wide/16 v1, -0x1

    .line 66
    iput-wide v1, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTTL:J

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/aliyun/oss/ClientConfiguration;->useReaper:Z

    const-wide/32 v2, 0xea60

    .line 68
    iput-wide v2, p0, Lcom/aliyun/oss/ClientConfiguration;->idleConnectionTime:J

    .line 70
    sget-object v2, Lcom/aliyun/oss/common/comm/Protocol;->HTTP:Lcom/aliyun/oss/common/comm/Protocol;

    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->protocol:Lcom/aliyun/oss/common/comm/Protocol;

    const/4 v2, 0x0

    .line 72
    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    .line 73
    iput v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPort:I

    .line 74
    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    .line 79
    iput-boolean v1, p0, Lcom/aliyun/oss/ClientConfiguration;->supportCname:Z

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->rlock:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->sldEnabled:Z

    const v2, 0x493e0

    .line 85
    iput v2, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeout:I

    .line 86
    iput-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeoutEnabled:Z

    const-wide/32 v2, 0x493e0

    .line 87
    iput-wide v2, p0, Lcom/aliyun/oss/ClientConfiguration;->slowRequestsThreshold:J

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->defaultHeaders:Ljava/util/Map;

    .line 91
    iput-boolean v1, p0, Lcom/aliyun/oss/ClientConfiguration;->crcCheckEnabled:Z

    return-void
.end method

.method private static AppendDefaultExcludeList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "aliyuncs.com,aliyun-inc.com,aliyun.com"

    const-string v1, ","

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 405
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addDefaultHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->defaultHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCnameExcludeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->rlock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 372
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-static {v0}, Lcom/aliyun/oss/ClientConfiguration;->AppendDefaultExcludeList(Ljava/util/List;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->rlock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionRequestTimeout()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionRequestTimeout:I

    return v0
.end method

.method public getConnectionTTL()J
    .locals 2

    .line 310
    iget-wide v0, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTTL:J

    return-wide v0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTimeout:I

    return v0
.end method

.method public getDefaultHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->defaultHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getIdleConnectionTime()J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/aliyun/oss/ClientConfiguration;->idleConnectionTime:J

    return-wide v0
.end method

.method public getMaxConnections()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->maxConnections:I

    return v0
.end method

.method public getMaxErrorRetry()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->maxErrorRetry:I

    return v0
.end method

.method public getProtocol()Lcom/aliyun/oss/common/comm/Protocol;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->protocol:Lcom/aliyun/oss/common/comm/Protocol;

    return-object v0
.end method

.method public getProxyDomain()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyHost()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPassword()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPort:I

    return v0
.end method

.method public getProxyUsername()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyWorkstation()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestTimeout()I
    .locals 1

    .line 490
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeout:I

    return v0
.end method

.method public getSlowRequestsThreshold()J
    .locals 2

    .line 498
    iget-wide v0, p0, Lcom/aliyun/oss/ClientConfiguration;->slowRequestsThreshold:J

    return-wide v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/aliyun/oss/ClientConfiguration;->socketTimeout:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public getValidateAfterInactivity()I
    .locals 1

    const/16 v0, 0x7d0

    return v0
.end method

.method public isCrcCheckEnabled()Z
    .locals 1

    .line 539
    iget-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->crcCheckEnabled:Z

    return v0
.end method

.method public isRequestTimeoutEnabled()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeoutEnabled:Z

    return v0
.end method

.method public isSLDEnabled()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->sldEnabled:Z

    return v0
.end method

.method public isSupportCname()Z
    .locals 1

    .line 417
    iget-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->supportCname:Z

    return v0
.end method

.method public isUseReaper()Z
    .locals 1

    .line 325
    iget-boolean v0, p0, Lcom/aliyun/oss/ClientConfiguration;->useReaper:Z

    return v0
.end method

.method public setCnameExcludeList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 389
    iget-object v0, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 390
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    :cond_1
    iget-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->cnameExcludeList:Ljava/util/List;

    invoke-static {p1}, Lcom/aliyun/oss/ClientConfiguration;->AppendDefaultExcludeList(Ljava/util/List;)V

    return-void

    .line 386
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cname exclude list should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public setConnectionRequestTimeout(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionRequestTimeout:I

    return-void
.end method

.method public setConnectionTTL(J)V
    .locals 0

    .line 318
    iput-wide p1, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTTL:J

    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->connectionTimeout:I

    return-void
.end method

.method public setCrcCheckEnabled(Z)V
    .locals 0

    .line 548
    iput-boolean p1, p0, Lcom/aliyun/oss/ClientConfiguration;->crcCheckEnabled:Z

    return-void
.end method

.method public setDefaultHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->defaultHeaders:Ljava/util/Map;

    return-void
.end method

.method public setIdleConnectionTime(J)V
    .locals 0

    .line 348
    iput-wide p1, p0, Lcom/aliyun/oss/ClientConfiguration;->idleConnectionTime:J

    return-void
.end method

.method public setMaxConnections(I)V
    .locals 0

    .line 231
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->maxConnections:I

    return-void
.end method

.method public setMaxErrorRetry(I)V
    .locals 0

    .line 302
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->maxErrorRetry:I

    return-void
.end method

.method public setProtocol(Lcom/aliyun/oss/common/comm/Protocol;)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->protocol:Lcom/aliyun/oss/common/comm/Protocol;

    return-void
.end method

.method public setProxyDomain(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyDomain:Ljava/lang/String;

    return-void
.end method

.method public setProxyHost(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyHost:Ljava/lang/String;

    return-void
.end method

.method public setProxyPassword(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPassword:Ljava/lang/String;

    return-void
.end method

.method public setProxyPort(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    if-lez p1, :cond_0

    .line 145
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyPort:I

    return-void

    .line 142
    :cond_0
    new-instance p1, Lcom/aliyun/oss/ClientException;

    const-string v0, "common"

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/ResourceManager;->getInstance(Ljava/lang/String;)Lcom/aliyun/oss/common/utils/ResourceManager;

    move-result-object v0

    const-string v1, "ParameterIsInvalid"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setProxyUsername(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyUsername:Ljava/lang/String;

    return-void
.end method

.method public setProxyWorkstation(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->proxyWorkstation:Ljava/lang/String;

    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeout:I

    return-void
.end method

.method public setRequestTimeoutEnabled(Z)V
    .locals 0

    .line 476
    iput-boolean p1, p0, Lcom/aliyun/oss/ClientConfiguration;->requestTimeoutEnabled:Z

    return-void
.end method

.method public setSLDEnabled(Z)Lcom/aliyun/oss/ClientConfiguration;
    .locals 0

    .line 450
    iput-boolean p1, p0, Lcom/aliyun/oss/ClientConfiguration;->sldEnabled:Z

    return-object p0
.end method

.method public setSlowRequestsThreshold(J)V
    .locals 0

    .line 505
    iput-wide p1, p0, Lcom/aliyun/oss/ClientConfiguration;->slowRequestsThreshold:J

    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 0

    .line 250
    iput p1, p0, Lcom/aliyun/oss/ClientConfiguration;->socketTimeout:I

    return-void
.end method

.method public setSupportCname(Z)Lcom/aliyun/oss/ClientConfiguration;
    .locals 0

    .line 432
    iput-boolean p1, p0, Lcom/aliyun/oss/ClientConfiguration;->supportCname:Z

    return-object p0
.end method

.method public setUseReaper(Z)V
    .locals 0

    .line 332
    iput-boolean p1, p0, Lcom/aliyun/oss/ClientConfiguration;->useReaper:Z

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/aliyun/oss/ClientConfiguration;->userAgent:Ljava/lang/String;

    return-void
.end method
