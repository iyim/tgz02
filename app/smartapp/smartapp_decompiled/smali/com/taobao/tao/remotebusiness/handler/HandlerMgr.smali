.class public Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;
.super Landroid/os/Handler;
.source "HandlerMgr.java"


# static fields
.field public static final ON_CACHED:I = 0x4

.field public static final ON_DATA_RECEIVED:I = 0x1

.field public static final ON_FINISHED:I = 0x3

.field public static final ON_HEADER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "mtopsdk.HandlerMgr"

.field private static volatile mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;
    .locals 1

    .line 187
    new-instance v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    invoke-direct {v0, p0, p1, p2}, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;-><init>(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)V

    return-object v0
.end method

.method public static instance()Landroid/os/Handler;
    .locals 3

    .line 47
    sget-object v0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->mHandler:Landroid/os/Handler;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 54
    :cond_1
    :goto_0
    sget-object v0, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 62
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    const-string v1, "mtopsdk.HandlerMgr"

    const-string v2, ""

    if-nez v0, :cond_0

    const-string p1, "HandlerMsg is null."

    .line 66
    invoke-static {v1, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    iget-object v3, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v3, :cond_1

    .line 71
    iget-object v2, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    .line 72
    iget-object v3, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "The request of MtopBusiness is cancelled."

    .line 73
    invoke-static {v1, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_1
    iget-object v3, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v3}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getReqContext()Ljava/lang/Object;

    move-result-object v3

    .line 79
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_12

    const/4 v7, 0x2

    if-eq v4, v7, :cond_10

    const/4 v7, 0x3

    if-eq v4, v7, :cond_8

    const/4 v7, 0x4

    if-eq v4, v7, :cond_2

    goto/16 :goto_2

    .line 147
    :cond_2
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "onReceive: ON_CACHED"

    .line 148
    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_3
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lmtopsdk/mtop/common/MtopEvent;

    check-cast v4, Lmtopsdk/mtop/common/MtopCacheEvent;

    if-nez v4, :cond_4

    const-string p1, "HandlerMsg.event is null."

    .line 152
    invoke-static {v1, v2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_4
    invoke-virtual {v4}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 157
    invoke-virtual {v4}, Lmtopsdk/mtop/common/MtopCacheEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v7

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 159
    invoke-virtual {v7}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v8

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v11, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    .line 161
    sget-object v9, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v9}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 162
    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v2, v8}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_5
    invoke-virtual {v7, v6}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData(Z)V

    .line 168
    :cond_6
    :try_start_0
    iget-object v6, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v6, v6, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;

    if-eqz v6, :cond_7

    const-string v6, "listener onCached callback"

    .line 169
    invoke-static {v1, v2, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v6, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v6, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-interface {v6, v4, v0, v3}, Lcom/taobao/tao/remotebusiness/IRemoteCacheListener;->onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 172
    :cond_7
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v4}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object v4

    const-string v6, "listener onCached transfer to onSuccess callback"

    invoke-static {v1, v4, v6}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v4, Lcom/taobao/tao/remotebusiness/IRemoteListener;

    iget-object v6, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v6}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getRequestType()I

    move-result v6

    iget-object v7, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-interface {v4, v6, v7, v0, v3}, Lcom/taobao/tao/remotebusiness/IRemoteListener;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v3, "listener onCached callback error."

    .line 176
    invoke-static {v1, v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 103
    :cond_8
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "onReceive: ON_FINISHED."

    .line 104
    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    .line 111
    iget-object v9, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v9}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 112
    invoke-virtual {v9}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v10

    .line 113
    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v11, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    sub-long v11, v3, v11

    iput-wide v11, v10, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    .line 114
    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v11

    if-eqz v11, :cond_c

    .line 115
    iget-object v7, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v7

    array-length v7, v7

    int-to-long v7, v7

    goto :goto_0

    :cond_a
    move-object v10, v5

    goto :goto_0

    :cond_b
    move-object v9, v5

    move-object v10, v9

    .line 119
    :cond_c
    :goto_0
    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v11, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v11, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    if-eqz v11, :cond_d

    .line 120
    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v11, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v11, v11, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    new-instance v12, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;

    invoke-direct {v12, p0, v0}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr$1;-><init>(Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;Lcom/taobao/tao/remotebusiness/handler/HandlerParam;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 127
    :cond_d
    iget-object v11, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v12, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-virtual {v11, v12, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V

    .line 130
    :goto_1
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "onReceive: ON_FINISHED. "

    .line 132
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "doFinishTime="

    .line 133
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; dataSize="

    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v10, :cond_e

    .line 136
    invoke-virtual {v10}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v9, :cond_14

    .line 142
    invoke-virtual {v9, v6}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData(Z)V

    goto :goto_2

    .line 92
    :cond_10
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "onReceive: ON_HEADER."

    .line 93
    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_11
    :try_start_1
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v4, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lmtopsdk/mtop/common/MtopEvent;

    check-cast v0, Lmtopsdk/mtop/common/MtopHeaderEvent;

    invoke-interface {v4, v0, v3}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onHeader(Lmtopsdk/mtop/common/MtopHeaderEvent;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "listener onHeader callback error."

    .line 98
    invoke-static {v1, v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 81
    :cond_12
    sget-object v4, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v4}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "onReceive: ON_DATA_RECEIVED."

    .line 82
    invoke-static {v1, v2, v4}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_13
    :try_start_2
    iget-object v4, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v4, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;

    iget-object v0, v0, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->event:Lmtopsdk/mtop/common/MtopEvent;

    check-cast v0, Lmtopsdk/mtop/common/MtopProgressEvent;

    invoke-interface {v4, v0, v3}, Lcom/taobao/tao/remotebusiness/IRemoteProcessListener;->onDataReceived(Lmtopsdk/mtop/common/MtopProgressEvent;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v3, "listener onDataReceived callback error."

    .line 87
    invoke-static {v1, v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    :cond_14
    :goto_2
    iput-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void
.end method
