.class public Lanetwork/channel/unified/CacheTask;
.super Ljava/lang/Object;
.source "CacheTask.java"

# interfaces
.implements Lanetwork/channel/unified/IUnifiedTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.CacheTask"


# instance fields
.field private cache:Lanetwork/channel/cache/Cache;

.field private volatile isCanceled:Z

.field private rc:Lanetwork/channel/unified/RequestContext;


# direct methods
.method public constructor <init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    .line 19
    iput-object v0, p0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lanetwork/channel/unified/CacheTask;->isCanceled:Z

    .line 23
    iput-object p1, p0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    .line 24
    iput-object p2, p0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lanetwork/channel/unified/CacheTask;->isCanceled:Z

    .line 30
    iget-object v0, p0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v0, v0, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v0, v0, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    return-void
.end method

.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 35
    iget-boolean v1, v0, Lanetwork/channel/unified/CacheTask;->isCanceled:Z

    if-eqz v1, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v1, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    iget-object v1, v1, Lanetwork/channel/entity/RequestConfig;->rs:Lanet/channel/statist/RequestStatistic;

    .line 42
    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    if-eqz v2, :cond_a

    .line 43
    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v2}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v3, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v3, v3, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v3}, Lanetwork/channel/entity/RequestConfig;->getAwcnRequest()Lanet/channel/request/Request;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lanet/channel/request/Request;->getHeaders()Ljava/util/Map;

    move-result-object v3

    const-string v4, "Cache-Control"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "no-store"

    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "anet.CacheTask"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v4, :cond_1

    .line 53
    iget-object v3, v0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    invoke-interface {v3, v2}, Lanetwork/channel/cache/Cache;->remove(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    const-string v12, "no-cache"

    .line 55
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 56
    iget-object v12, v0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    invoke-interface {v12, v2}, Lanetwork/channel/cache/Cache;->get(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v12

    .line 58
    invoke-static {v9}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 59
    iget-object v13, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v13, v13, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    const/16 v14, 0x8

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "hit"

    aput-object v15, v14, v11

    if-eqz v12, :cond_2

    const/4 v15, 0x1

    goto :goto_0

    :cond_2
    const/4 v15, 0x0

    :goto_0
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v10

    const-string v15, "cost"

    aput-object v15, v14, v9

    const/4 v15, 0x3

    iget-wide v8, v1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v14, v15

    const/4 v8, 0x4

    const-string v9, "length"

    aput-object v9, v14, v8

    const/4 v8, 0x5

    if-eqz v12, :cond_3

    iget-object v9, v12, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v9, v9

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v14, v8

    const/4 v8, 0x6

    const-string v9, "key"

    aput-object v9, v14, v8

    const/4 v8, 0x7

    aput-object v2, v14, v8

    const-string/jumbo v2, "read cache"

    invoke-static {v7, v2, v13, v14}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move-object v8, v12

    .line 64
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v5, v12, v5

    .line 65
    iput-wide v5, v1, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    if-eqz v8, :cond_7

    if-nez v3, :cond_7

    .line 67
    invoke-virtual {v8}, Lanetwork/channel/cache/Cache$Entry;->isFresh()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 68
    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v2, v2, Lanetwork/channel/unified/RequestContext;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v11, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    invoke-virtual {v2}, Lanetwork/channel/unified/RequestContext;->cancelTimeoutTask()V

    .line 71
    iput v10, v1, Lanet/channel/statist/RequestStatistic;->ret:I

    const/16 v2, 0xc8

    .line 72
    iput v2, v1, Lanet/channel/statist/RequestStatistic;->statusCode:I

    const-string v3, "SUCCESS"

    .line 73
    iput-object v3, v1, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    const-string v4, "cache"

    .line 74
    iput-object v4, v1, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 75
    iput-wide v12, v1, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    .line 76
    iget-wide v4, v1, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v12, v4

    iput-wide v12, v1, Lanet/channel/statist/RequestStatistic;->processTime:J

    const/4 v4, 0x2

    .line 78
    invoke-static {v4}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    iget-object v5, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v5, v5, Lanetwork/channel/unified/RequestContext;->seqNum:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    const-string v6, "URL"

    aput-object v6, v4, v11

    iget-object v6, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v6, v6, Lanetwork/channel/unified/RequestContext;->config:Lanetwork/channel/entity/RequestConfig;

    invoke-virtual {v6}, Lanetwork/channel/entity/RequestConfig;->getHttpUrl()Lanet/channel/util/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lanet/channel/util/HttpUrl;->urlString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v10

    const-string v6, "hit fresh cache"

    invoke-static {v7, v6, v5, v4}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_5
    iget-object v4, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v5, v8, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v4, v2, v5}, Lanetwork/channel/interceptor/Callback;->onResponseCode(ILjava/util/Map;)V

    .line 85
    iget-object v4, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v4, v4, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    iget-object v5, v8, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v5, v5

    iget-object v6, v8, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v6}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v6

    invoke-interface {v4, v10, v5, v6}, Lanetwork/channel/interceptor/Callback;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 86
    new-instance v4, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-direct {v4, v2, v3, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 87
    iget-object v1, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iget-object v1, v1, Lanetwork/channel/unified/RequestContext;->callback:Lanetwork/channel/interceptor/Callback;

    invoke-interface {v1, v4}, Lanetwork/channel/interceptor/Callback;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    :cond_6
    return-void

    .line 91
    :cond_7
    iget-boolean v1, v0, Lanetwork/channel/unified/CacheTask;->isCanceled:Z

    if-eqz v1, :cond_8

    return-void

    .line 95
    :cond_8
    new-instance v1, Lanetwork/channel/unified/NetworkTask;

    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    if-eqz v4, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    iget-object v3, v0, Lanetwork/channel/unified/CacheTask;->cache:Lanetwork/channel/cache/Cache;

    :goto_3
    invoke-direct {v1, v2, v3, v8}, Lanetwork/channel/unified/NetworkTask;-><init>(Lanetwork/channel/unified/RequestContext;Lanetwork/channel/cache/Cache;Lanetwork/channel/cache/Cache$Entry;)V

    .line 96
    iget-object v2, v0, Lanetwork/channel/unified/CacheTask;->rc:Lanetwork/channel/unified/RequestContext;

    iput-object v1, v2, Lanetwork/channel/unified/RequestContext;->runningTask:Lanetwork/channel/unified/IUnifiedTask;

    .line 97
    invoke-virtual {v1}, Lanetwork/channel/unified/NetworkTask;->run()V

    :cond_a
    return-void
.end method
