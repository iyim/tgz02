.class Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;
.super Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;
.source "MtopCacheListenerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopCacheListenerImpl"


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;)V
    .locals 13

    .line 34
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    .line 35
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    const-string v2, "mtopsdk.MtopCacheListenerImpl"

    if-eqz v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mtop onCached event received. apiKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v3, v3, Lcom/taobao/tao/remotebusiness/MtopBusiness;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The request of MtopBusiness is cancelled."

    .line 41
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-nez v1, :cond_3

    const-string p1, "The listener of MtopBusiness is null."

    .line 47
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "MtopCacheEvent is null."

    .line 52
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 56
    :cond_4
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    if-nez v1, :cond_5

    const-string p1, "The MtopResponse of MtopCacheEvent is null."

    .line 59
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 66
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v7, v7, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    if-eqz v7, :cond_6

    .line 67
    iget-object v7, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v7, v7, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    invoke-static {v1, v7}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v7

    goto :goto_0

    :cond_6
    move-object v7, v8

    .line 69
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 70
    iget-object v11, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iput-wide v9, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    .line 71
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v11

    const/4 v12, 0x1

    if-eqz v11, :cond_7

    .line 74
    invoke-virtual {v11}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v8

    sub-long/2addr v9, v5

    .line 75
    iput-wide v9, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    .line 76
    iget-wide v5, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    iput-wide v5, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonTime:J

    .line 77
    iput v12, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->isCache:I

    .line 78
    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v5, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    .line 79
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v3, v3, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v5, v5, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    .line 80
    iget-wide v3, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    iput-wide v3, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->totalTime:J

    .line 83
    :cond_7
    iget-object v3, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v3, p1, v4}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object v3

    .line 84
    iput-object v7, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    .line 85
    iput-object v1, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 87
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iput-boolean v12, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isCached:Z

    .line 88
    iget-object v1, p0, Lcom/taobao/tao/remotebusiness/listener/MtopCacheListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v1, v1, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_c

    .line 90
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "onReceive: ON_CACHED in self-defined handler."

    .line 91
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v11, :cond_a

    if-eqz v8, :cond_9

    .line 97
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 98
    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_9
    invoke-virtual {v11, v12}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData(Z)V

    .line 104
    :cond_a
    :try_start_0
    iget-object v1, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v1, v1, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;

    if-eqz v1, :cond_b

    const-string v1, "listener onCached callback"

    .line 105
    invoke-static {v2, v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v1, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;

    iget-object v3, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-interface {v1, p1, v3, p2}, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;->onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V

    goto :goto_1

    :cond_b
    const-string p1, "listener onCached transfer to onSuccess callback"

    .line 108
    invoke-static {v2, v0, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast p1, Lcom/taobao/tao/remotebusiness/IRemoteListener;

    iget-object v1, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestType()I

    move-result v1

    iget-object v4, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v3, v3, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-interface {p1, v1, v4, v3, p2}, Lcom/taobao/tao/remotebusiness/IRemoteListener;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "listener onCached callback error in self-defined handler."

    .line 112
    invoke-static {v2, v0, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void

    .line 120
    :cond_c
    invoke-static {}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->instance()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
