.class Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;
.super Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;
.source "MtopFinishListenerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopFinishListenerImpl"


# direct methods
.method public constructor <init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/taobao/tao/remotebusiness/listener/MtopBaseListener;-><init>(Lcom/taobao/tao/remotebusiness/MtopBusiness;Lmtopsdk/mtop/common/MtopListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 13

    .line 32
    iget-object p2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {p2}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->getSeqNo()Ljava/lang/String;

    move-result-object p2

    .line 33
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    const-string v1, "mtopsdk.MtopFinishListenerImpl"

    if-eqz v0, :cond_0

    const-string v0, "Mtop onFinished event received."

    .line 34
    invoke-static {v1, p2, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-virtual {v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->isTaskCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget-object p1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {p1}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "The request of MtopBusiness is canceled."

    .line 39
    invoke-static {v1, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-nez v0, :cond_3

    const-string p1, "The listener of MtopBusiness is null."

    .line 45
    invoke-static {v1, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    if-nez p1, :cond_4

    const-string p1, "MtopFinishEvent is null."

    .line 50
    invoke-static {v1, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_4
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-nez v0, :cond_5

    const-string p1, "The MtopResponse of MtopFinishEvent is null."

    .line 57
    invoke-static {v1, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v4, v4, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;

    if-eqz v4, :cond_6

    .line 65
    :try_start_0
    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v4, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;

    invoke-interface {v4, v0}, Lcom/taobao/tao/remotebusiness/IRemoteParserListener;->parseResponse(Lmtopsdk/mtop/domain/MtopResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "listener parseResponse callback error."

    .line 67
    invoke-static {v1, p2, v5, v4}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    :cond_6
    :goto_0
    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->listener:Lmtopsdk/mtop/common/MtopListener;

    iget-object v5, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    invoke-static {v4, p1, v5}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->getHandlerMsg(Lmtopsdk/mtop/common/MtopListener;Lmtopsdk/mtop/common/MtopEvent;Lcom/taobao/tao/remotebusiness/MtopBusiness;)Lcom/taobao/tao/remotebusiness/handler/HandlerParam;

    move-result-object p1

    .line 72
    iput-object v0, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v6, v6, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    if-eqz v6, :cond_7

    .line 77
    iget-object v6, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v6, v6, Lcom/taobao/tao/remotebusiness/MtopBusiness;->clazz:Ljava/lang/Class;

    invoke-static {v0, v6}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v6

    iput-object v6, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    :cond_7
    move-wide v6, v4

    .line 80
    :goto_1
    iget-object v8, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iput-wide v6, v8, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    .line 81
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;

    move-result-object v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 84
    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    move-result-object v8

    .line 85
    iget-object v9, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v9, v9, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    iget-object v11, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v11, v11, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    sub-long/2addr v9, v11

    iput-wide v9, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->beforeReqTime:J

    .line 86
    iget-object v9, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v9, v9, Lcom/taobao/tao/remotebusiness/MtopBusiness;->sendStartTime:J

    sub-long v9, v2, v9

    iput-wide v9, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    .line 87
    iget-object v9, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v9, v9, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    sub-long/2addr v9, v2

    iput-wide v9, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->afterReqTime:J

    sub-long v2, v4, v2

    .line 88
    iput-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->parseTime:J

    sub-long/2addr v6, v4

    .line 89
    iput-wide v6, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    .line 90
    iget-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    iput-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonTime:J

    .line 91
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v2, v2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->onBgFinishTime:J

    iget-object v4, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-wide v4, v4, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    .line 92
    iget-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    iput-wide v2, v8, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->totalTime:J

    .line 96
    :cond_8
    iget-object v2, p0, Lcom/taobao/tao/remotebusiness/listener/MtopFinishListenerImpl;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v2, v2, Lcom/taobao/tao/remotebusiness/MtopBusiness;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v2, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_e

    .line 97
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    const-string v3, "onReceive: ON_FINISHED in self-defined handler."

    if-eqz v2, :cond_9

    .line 98
    invoke-static {v1, p2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 102
    iget-object v2, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopBusiness:Lcom/taobao/tao/remotebusiness/MtopBusiness;

    iget-object v6, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v7, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->pojo:Lmtopsdk/mtop/domain/BaseOutDo;

    invoke-virtual {v2, v6, v7}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->doFinish(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;)V

    .line 104
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/16 v6, 0x0

    .line 106
    iget-object v2, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v2

    if-eqz v2, :cond_a

    .line 107
    iget-object p1, p1, Lcom/taobao/tao/remotebusiness/handler/HandlerParam;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p1

    array-length p1, p1

    int-to-long v6, p1

    .line 109
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 110
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "doFinishTime="

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", dataSize="

    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_b

    .line 114
    invoke-virtual {v8}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    if-eqz v0, :cond_d

    const/4 p1, 0x1

    .line 120
    invoke-virtual {v0, p1}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData(Z)V

    :cond_d
    return-void

    .line 129
    :cond_e
    invoke-static {}, Lcom/taobao/tao/remotebusiness/handler/HandlerMgr;->instance()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
