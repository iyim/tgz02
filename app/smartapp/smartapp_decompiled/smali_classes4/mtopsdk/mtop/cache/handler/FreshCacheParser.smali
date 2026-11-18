.class public Lmtopsdk/mtop/cache/handler/FreshCacheParser;
.super Ljava/lang/Object;
.source "FreshCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FreshCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 8

    .line 23
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    .line 24
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "mtopsdk.FreshCacheParser"

    const-string v1, "[parse]FreshCacheParser parse called"

    .line 25
    invoke-static {v0, v5, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 30
    iget-object v6, p1, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lmtopsdk/framework/domain/MtopContext;

    .line 31
    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 32
    iget-object v7, v6, Lmtopsdk/framework/domain/MtopContext;->stats:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v1, 0x1

    .line 33
    iput v1, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 34
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    .line 35
    iget-object v2, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    invoke-static {v2, v0}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/domain/MtopRequest;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 36
    sget-object v2, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 37
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    .line 38
    invoke-virtual {v0, v7}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 39
    iput-object v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 40
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    .line 43
    iget-object v2, v6, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v2, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    if-eqz v2, :cond_2

    .line 44
    iput-boolean v1, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 45
    iget-object v2, v6, Lmtopsdk/framework/domain/MtopContext;->mtopListener:Lmtopsdk/mtop/common/MtopListener;

    .line 46
    instance-of p1, v2, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz p1, :cond_2

    .line 47
    iget-object p1, v6, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 48
    new-instance v3, Lmtopsdk/mtop/common/MtopCacheEvent;

    invoke-direct {v3, v0}, Lmtopsdk/mtop/common/MtopCacheEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 49
    iput-object v5, v3, Lmtopsdk/mtop/common/MtopCacheEvent;->seqNo:Ljava/lang/String;

    .line 50
    invoke-static {v7, v0}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnExpiredCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 51
    iget-object p1, v6, Lmtopsdk/framework/domain/MtopContext;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean p1, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    if-nez p1, :cond_1

    .line 52
    new-instance p1, Lmtopsdk/mtop/cache/handler/FreshCacheParser$1;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/cache/handler/FreshCacheParser$1;-><init>(Lmtopsdk/mtop/cache/handler/FreshCacheParser;Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v6, Lmtopsdk/framework/domain/MtopContext;->seqNo:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 52
    invoke-static {p2, p1, v0}, Lmtopsdk/framework/util/FilterUtils;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    :cond_1
    const/4 p1, 0x3

    .line 63
    iput p1, v7, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    :cond_2
    return-void
.end method
