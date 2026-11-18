.class public Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;
.super Ljava/lang/Object;
.source "ExpiredCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExpiredCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 11

    .line 26
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    .line 27
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mtopsdk.ExpiredCacheParser"

    const-string v1, "[parse]ExpiredCacheParser parse called"

    .line 28
    invoke-static {v0, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v6, p1, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    .line 32
    iget-object v7, v6, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v0, 0x2

    .line 33
    iput v0, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 34
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    .line 35
    iget-object v8, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 36
    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-static {v8, v0}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/domain/MtopRequest;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v9

    .line 37
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v9, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 38
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    .line 39
    invoke-virtual {v9, v7}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 41
    iget-object v2, v6, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    .line 42
    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 43
    instance-of v0, v2, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v0, :cond_1

    .line 44
    new-instance v3, Lmtopsdk/mtop/common/MtopCacheEvent;

    invoke-direct {v3, v9}, Lmtopsdk/mtop/common/MtopCacheEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 45
    iput-object v5, v3, Lmtopsdk/mtop/common/MtopCacheEvent;->seqNo:Ljava/lang/String;

    .line 46
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    .line 47
    invoke-static {v7, v9}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnExpiredCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 48
    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    if-nez v0, :cond_1

    .line 49
    new-instance v10, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser$1;

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/cache/handler/ExpiredCacheParser$1;-><init>(Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 49
    invoke-static {p2, v10, v0}, Lmtopsdk/framework/util/FilterUtils;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    :cond_1
    const/4 p2, 0x3

    .line 61
    iput p2, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 62
    iget-object p2, v6, Lmtopsdk/framework/domain/MtopContext;->networkRequest:Lmtopsdk/network/domain/Request;

    if-eqz p2, :cond_3

    .line 65
    iget-object v0, v8, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, v8, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    const-string v1, "if-modified-since"

    invoke-virtual {p2, v1, v0}, Lmtopsdk/network/domain/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object v0, v8, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, v8, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    const-string v1, "if-none-match"

    invoke-virtual {p2, v1, v0}, Lmtopsdk/network/domain/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    iput-object v9, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    return-void
.end method
