.class public Lmtopsdk/mtop/util/MtopStatistics;
.super Ljava/lang/Object;
.source "MtopStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;,
        Lmtopsdk/mtop/util/MtopStatistics$RetType;
    }
.end annotation


# static fields
.field private static final MTOP_EXCEPTIONS_MONITOR_POINT:Ljava/lang/String; = "mtopExceptions"

.field private static final MTOP_STATS_MODULE:Ljava/lang/String; = "mtopsdk"

.field private static final MTOP_STATS_MONITOR_POINT:Ljava/lang/String; = "mtopStats"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopStatistics"

.field private static volatile isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public apiKey:Ljava/lang/String;

.field public backGround:Z

.field public buildParamsTime:J

.field public cacheCostTime:J

.field public cacheHitType:I

.field public cacheResponseParseEndTime:J

.field public cacheResponseParseStartTime:J

.field public cacheResponseParseTime:J

.field public cacheReturnTime:J

.field public cacheSwitch:I

.field public clientTraceId:Ljava/lang/String;

.field public commitStat:Z

.field public computeMiniWuaTime:J

.field public computeSignTime:J

.field public computeWuaTime:J

.field public domain:Ljava/lang/String;

.field protected endTime:J

.field public intSeqNo:I

.field public mappingCode:Ljava/lang/String;

.field public netSendEndTime:J

.field public netSendStartTime:J

.field public netStats:Lmtopsdk/network/domain/NetworkStats;

.field public netTotalTime:J

.field public pageName:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field private rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

.field public retCode:Ljava/lang/String;

.field public retType:I

.field public final seqNo:Ljava/lang/String;

.field public serverTraceId:Ljava/lang/String;

.field public startCallbackTime:J

.field public startExecuteTime:J

.field public startTime:J

.field protected statSum:Ljava/lang/String;

.field public statusCode:I

.field public totalTime:J

.field private uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

.field public waitCallbackTime:J

.field public waitExecuteTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lmtopsdk/mtop/util/MtopStatistics;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lmtopsdk/mtop/stat/IUploadStats;)V
    .locals 1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 130
    iput v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->retType:I

    const-string v0, ""

    .line 198
    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    .line 252
    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    .line 253
    invoke-static {}, Lmtopsdk/common/util/MtopUtils;->createIntSeqNo()I

    move-result p1

    iput p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->intSeqNo:I

    .line 254
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MTOP"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->intSeqNo:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/stat/IUploadStats;Lmtopsdk/mtop/common/MtopNetworkProp;)V
    .locals 0

    .line 260
    invoke-direct {p0, p1}, Lmtopsdk/mtop/util/MtopStatistics;-><init>(Lmtopsdk/mtop/stat/IUploadStats;)V

    if-eqz p2, :cond_0

    .line 262
    iget-object p1, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->pageName:Ljava/lang/String;

    .line 263
    iget-object p1, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    invoke-static {p1}, Lmtopsdk/common/util/MtopUtils;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    .line 264
    iget-boolean p1, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->backGround:Z

    iput-boolean p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->backGround:Z

    :cond_0
    return-void
.end method

.method private commitStatData()V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "backGround"

    const-string v2, "pageUrl"

    const-string v3, "pageName"

    const-string/jumbo v4, "serverTraceId"

    const-string v5, "clientTraceId"

    const-string v6, "domain"

    const-string v7, "httpResponseStatus"

    const-string/jumbo v8, "retType"

    const-string/jumbo v9, "ret"

    const-string v10, "api"

    .line 382
    iget-boolean v11, v1, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    if-nez v11, :cond_0

    return-void

    .line 386
    :cond_0
    iget-object v11, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-nez v11, :cond_1

    return-void

    .line 390
    :cond_1
    sget-object v11, Lmtopsdk/mtop/util/MtopStatistics;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 391
    invoke-direct/range {p0 .. p0}, Lmtopsdk/mtop/util/MtopStatistics;->registerMtopStats()V

    .line 396
    :cond_2
    :try_start_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 397
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    invoke-interface {v11, v10, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-interface {v11, v9, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->retType:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v7, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    invoke-interface {v11, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "cacheSwitch"

    .line 402
    iget v15, v1, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "cacheHitType"

    .line 403
    iget v15, v1, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    invoke-interface {v11, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-interface {v11, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->pageName:Ljava/lang/String;

    invoke-interface {v11, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    invoke-interface {v11, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-boolean v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->backGround:Z

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    :goto_0
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-virtual/range {p0 .. p0}, Lmtopsdk/mtop/util/MtopStatistics;->getNetworkStats()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string v15, "connType"

    .line 412
    iget-object v12, v14, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    invoke-interface {v11, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "isSSL"

    .line 413
    iget-boolean v15, v14, Lmtopsdk/network/domain/NetworkStats;->isSSL:Z

    if-eqz v15, :cond_4

    const-string v15, "1"

    goto :goto_1

    :cond_4
    const-string v15, "0"

    :goto_1
    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v12, "retryTimes"

    .line 414
    iget v15, v14, Lmtopsdk/network/domain/NetworkStats;->retryTimes:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "ip_port"

    .line 415
    iget-object v15, v14, Lmtopsdk/network/domain/NetworkStats;->ip_port:Ljava/lang/String;

    invoke-interface {v11, v12, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_5
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v15, "totalTime"

    move-object/from16 v17, v14

    .line 420
    iget-wide v13, v1, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-interface {v12, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "networkExeTime"

    .line 421
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "cacheCostTime"

    .line 422
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "cacheResponseParseTime"

    .line 423
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "waitExecuteTime"

    .line 424
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->waitExecuteTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "waitCallbackTime"

    .line 425
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->waitCallbackTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "signTime"

    .line 426
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->computeSignTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v13, "wuaTime"

    .line 427
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->computeWuaTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "miniWuaTime"

    .line 428
    iget-wide v14, v1, Lmtopsdk/mtop/util/MtopStatistics;->computeMiniWuaTime:J

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v17, :cond_6

    const-string v13, "firstDataTime"

    move-object v15, v2

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    .line 431
    iget-wide v2, v14, Lmtopsdk/network/domain/NetworkStats;->firstDataTime:J

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v12, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "recDataTime"

    move-object v13, v4

    .line 432
    iget-wide v3, v14, Lmtopsdk/network/domain/NetworkStats;->recDataTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "oneWayTime_ANet"

    .line 433
    iget-wide v3, v14, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "serverRT"

    .line 434
    iget-wide v3, v14, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "revSize"

    .line 435
    iget-wide v3, v14, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dataSpeed"

    .line 436
    iget-wide v3, v14, Lmtopsdk/network/domain/NetworkStats;->dataSpeed:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    move-object v15, v2

    move-object/from16 v17, v3

    move-object v13, v4

    .line 439
    :goto_2
    iget-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "rbReqTime"

    .line 440
    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v3, v3, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "toMainThTime"

    .line 441
    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v3, v3, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mtopJsonParseTime"

    .line 442
    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v3, v3, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "mtopReqTime"

    .line 443
    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v3, v3, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_7
    iget-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "mtopsdk"

    if-eqz v2, :cond_8

    .line 446
    :try_start_1
    iget-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v4, "mtopStats"

    invoke-interface {v2, v3, v4, v11, v12}, Lmtopsdk/mtop/stat/IUploadStats;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 449
    :cond_8
    iget-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/mtop/util/ErrorConstant;->isSuccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 452
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 453
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    invoke-interface {v2, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-interface {v2, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    iget v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->retType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mappingCode"

    .line 456
    iget-object v8, v1, Lmtopsdk/mtop/util/MtopStatistics;->mappingCode:Ljava/lang/String;

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->domain:Ljava/lang/String;

    invoke-interface {v2, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "refer"

    .line 459
    iget-object v6, v1, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-interface {v2, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->pageName:Ljava/lang/String;

    move-object/from16 v5, v17

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->pageUrl:Ljava/lang/String;

    move-object v5, v15

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-boolean v4, v1, Lmtopsdk/mtop/util/MtopStatistics;->backGround:Z

    if-eqz v4, :cond_9

    const/16 v16, 0x1

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    :goto_3
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v0, :cond_a

    .line 467
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v4, "mtopExceptions"

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v2, v5}, Lmtopsdk/mtop/stat/IUploadStats;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "mtopsdk.MtopStatistics"

    .line 472
    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[commitStatData] commit mtopStats error ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    .line 474
    :goto_4
    iput-boolean v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    return-void

    :goto_5
    iput-boolean v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    throw v0
.end method

.method private registerMtopStats()V
    .locals 25

    move-object/from16 v1, p0

    const-string v0, "backGround"

    const-string v2, "pageUrl"

    const-string v3, "pageName"

    const-string/jumbo v4, "serverTraceId"

    const-string v5, "clientTraceId"

    const-string/jumbo v6, "retType"

    const-string/jumbo v7, "ret"

    const-string v8, "httpResponseStatus"

    const-string v9, "domain"

    const-string v10, "api"

    const-string v11, "mtopsdk.MtopStatistics"

    .line 514
    :try_start_0
    iget-object v12, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-nez v12, :cond_0

    .line 515
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    const-string v2, "[registerMtopStats]register MtopStats error, uploadStats=null"

    invoke-static {v11, v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 519
    :cond_0
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 520
    invoke-interface {v15, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-interface {v15, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-interface {v15, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-interface {v15, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "cacheSwitch"

    .line 525
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "cacheHitType"

    .line 526
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-interface {v15, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "connType"

    .line 529
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "isSSL"

    .line 530
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "retryTimes"

    .line 531
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "ip_port"

    .line 532
    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-interface {v15, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-interface {v15, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {v15, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v12, "totalTime"

    .line 539
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "networkExeTime"

    .line 540
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "cacheCostTime"

    .line 543
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "cacheResponseParseTime"

    .line 544
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "waitExecuteTime"

    .line 545
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "waitCallbackTime"

    .line 546
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "signTime"

    .line 547
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "wuaTime"

    .line 548
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "miniWuaTime"

    .line 549
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "rbReqTime"

    .line 552
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "toMainThTime"

    .line 553
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "mtopJsonParseTime"

    .line 554
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "mtopReqTime"

    .line 555
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "firstDataTime"

    .line 557
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "recDataTime"

    .line 558
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "revSize"

    .line 559
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "dataSpeed"

    .line 560
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v12, "oneWayTime_ANet"

    .line 561
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v12, "serverRT"

    .line 562
    invoke-interface {v14, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    iget-object v12, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v12, :cond_1

    .line 566
    iget-object v12, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v13, "mtopsdk"

    const-string v16, "mtopStats"

    const/16 v17, 0x0

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v18

    invoke-interface/range {v12 .. v17}, Lmtopsdk/mtop/stat/IUploadStats;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 570
    :cond_1
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 571
    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-interface {v12, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-interface {v12, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "mappingCode"

    .line 575
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-interface {v12, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "refer"

    .line 577
    invoke-interface {v12, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-interface {v12, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-interface {v12, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-interface {v12, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-interface {v12, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    if-eqz v0, :cond_2

    .line 584
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    const-string v20, "mtopsdk"

    const-string v21, "mtopExceptions"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v0

    move-object/from16 v22, v12

    invoke-interface/range {v19 .. v24}, Lmtopsdk/mtop/stat/IUploadStats;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 586
    :cond_2
    iget-object v0, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerMtopStats]register MtopStats executed.uploadStats="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmtopsdk/mtop/util/MtopStatistics;->uploadStats:Lmtopsdk/mtop/stat/IUploadStats;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v0, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 589
    iget-object v2, v1, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[registerMtopStats] register MtopStats error ---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 504
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public commitStatData(Z)V
    .locals 0

    .line 374
    iput-boolean p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 375
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    return-void
.end method

.method public currentTimeMillis()J
    .locals 4

    .line 270
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNetStat()Lanetwork/channel/statist/StatisticData;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    .line 345
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-boolean v1, v1, Lmtopsdk/network/domain/NetworkStats;->isRequestSuccess:Z

    iput-boolean v1, v0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 346
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 347
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v1, v1, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 348
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v1, v1, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 349
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v1, v1, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    iput-wide v1, v0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNetworkStats()Lmtopsdk/network/domain/NetworkStats;
    .locals 1

    .line 332
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    return-object v0
.end method

.method public declared-synchronized getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    .locals 2

    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;-><init>(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/util/MtopStatistics$1;)V

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    .line 498
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatSum()Ljava/lang/String;
    .locals 2

    .line 359
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 366
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    return-wide v0
.end method

.method public onEndAndCommit()V
    .locals 7

    .line 278
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    .line 281
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    .line 282
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->startExecuteTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_0

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v4

    :goto_0
    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->waitExecuteTime:J

    .line 283
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    cmp-long v2, v0, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v0, v2

    goto :goto_1

    :cond_1
    move-wide v0, v4

    :goto_1
    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    .line 284
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    .line 285
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    .line 286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    .line 288
    :cond_2
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    .line 289
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startCallbackTime:J

    cmp-long v6, v2, v0

    if-lez v6, :cond_3

    sub-long v4, v2, v0

    :cond_3
    iput-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->waitCallbackTime:J

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "apiKey="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",httpResponseStatus="

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",retCode="

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",retType="

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->retType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mappingCode="

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->mappingCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mtopTotalTime="

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",networkTotalTime="

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",waitExecuteTime="

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->waitExecuteTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",buildParamsTime="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->buildParamsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",computeSignTime="

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->computeSignTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",computeMiniWuaTime="

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->computeMiniWuaTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",computeWuaTime="

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->computeWuaTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",waitCallbackTime="

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->waitCallbackTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cacheSwitch="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cacheHitType="

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cacheCostTime="

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",cacheResponseParseTime="

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    if-eqz v1, :cond_5

    const-string v1, ","

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->netStatSum:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 313
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    invoke-virtual {v1}, Lmtopsdk/network/domain/NetworkStats;->sumNetStat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 315
    :cond_4
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    .line 321
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->clientTraceId:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->serverTraceId:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->logTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->seqNo:Ljava/lang/String;

    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtopsdk.MtopStatistics"

    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "MtopStatistics "

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "[SumStat(ms)]:"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v1, :cond_0

    const-string v1, " [rbStatData]:"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 486
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
