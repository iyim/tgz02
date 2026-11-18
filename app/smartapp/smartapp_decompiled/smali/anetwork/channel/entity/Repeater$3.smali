.class Lanetwork/channel/entity/Repeater$3;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanetwork/channel/entity/Repeater;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanetwork/channel/entity/Repeater;

.field final synthetic val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic val$l:Lanetwork/channel/aidl/ParcelableNetworkListener;


# direct methods
.method constructor <init>(Lanetwork/channel/entity/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    iput-object p2, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lanetwork/channel/entity/Repeater$3;->val$l:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 112
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;->setContext(Ljava/lang/Object;)V

    .line 116
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 117
    iget-object v0, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v0, v0, Lanetwork/channel/aidl/DefaultFinishEvent;->rs:Lanet/channel/statist/RequestStatistic;

    if-eqz v0, :cond_1

    .line 119
    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->rspCbStart:J

    .line 120
    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspEnd:J

    sub-long v4, v2, v4

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->lastProcessTime:J

    .line 121
    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->retryCostTime:J

    iget-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v6, v2, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 122
    iget-object v4, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v4}, Lanetwork/channel/aidl/DefaultFinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v4

    invoke-virtual {v4, v0}, Lanetwork/channel/statist/StatisticData;->filledBy(Lanet/channel/statist/RequestStatistic;)V

    .line 124
    :cond_1
    iget-object v4, p0, Lanetwork/channel/entity/Repeater$3;->val$l:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v5, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-interface {v4, v5}, Lanetwork/channel/aidl/ParcelableNetworkListener;->onFinished(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    if-eqz v0, :cond_2

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 127
    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->rspCbEnd:J

    sub-long/2addr v4, v2

    .line 128
    iput-wide v4, v0, Lanet/channel/statist/RequestStatistic;->callbackTime:J

    .line 131
    invoke-static {}, Lanet/channel/fulltrace/AnalysisFactory;->getInstance()Lanet/channel/fulltrace/IFullTraceAnalysis;

    move-result-object v2

    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->traceId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lanet/channel/fulltrace/IFullTraceAnalysis;->commitRequest(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 134
    :cond_2
    iget-object v2, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v2}, Lanetwork/channel/entity/Repeater;->access$100(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 135
    iget-object v2, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v2}, Lanetwork/channel/entity/Repeater;->access$100(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/aidl/adapter/ParcelableInputStreamImpl;->writeEnd()V

    :cond_3
    if-eqz v0, :cond_f

    .line 138
    iget v2, v0, Lanet/channel/statist/RequestStatistic;->ret:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "anet.Repeater"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    :try_start_1
    iget v2, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    if-gtz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    .line 140
    invoke-static {v2}, Lanet/channel/util/ALog;->isPrintLog(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 141
    invoke-virtual {v0}, Lanet/channel/statist/RequestStatistic;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v6}, Lanetwork/channel/entity/Repeater;->access$300(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v6, v7}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 139
    :cond_5
    :goto_0
    invoke-virtual {v0}, Lanet/channel/statist/RequestStatistic;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v6}, Lanetwork/channel/entity/Repeater;->access$300(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v6, v7}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_6
    :goto_1
    invoke-static {}, Lanet/channel/GlobalAppRuntimeInfo;->getBucketInfo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_7

    .line 148
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Lanet/channel/statist/RequestStatistic;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 153
    :cond_7
    invoke-static {}, Lanet/channel/fulltrace/AnalysisFactory;->getInstance()Lanet/channel/fulltrace/IFullTraceAnalysis;

    move-result-object v2

    invoke-interface {v2}, Lanet/channel/fulltrace/IFullTraceAnalysis;->getSceneInfo()Lanet/channel/fulltrace/SceneInfo;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 155
    invoke-virtual {v2}, Lanet/channel/fulltrace/SceneInfo;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v7}, Lanetwork/channel/entity/Repeater;->access$300(Lanetwork/channel/entity/Repeater;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v7, v8}, Lanet/channel/util/ALog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    iget-wide v6, v0, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v8, v2, Lanet/channel/fulltrace/SceneInfo;->appLaunchTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->sinceInitTime:J

    .line 157
    iget v3, v2, Lanet/channel/fulltrace/SceneInfo;->startType:I

    iput v3, v0, Lanet/channel/statist/RequestStatistic;->startType:I

    .line 159
    iget v3, v2, Lanet/channel/fulltrace/SceneInfo;->startType:I

    if-eq v3, v5, :cond_8

    .line 160
    iget-wide v6, v2, Lanet/channel/fulltrace/SceneInfo;->appLaunchTime:J

    iget-wide v8, v2, Lanet/channel/fulltrace/SceneInfo;->lastLaunchTime:J

    sub-long/2addr v6, v8

    iput-wide v6, v0, Lanet/channel/statist/RequestStatistic;->sinceLastLaunchTime:J

    .line 162
    :cond_8
    iget v3, v2, Lanet/channel/fulltrace/SceneInfo;->deviceLevel:I

    iput v3, v0, Lanet/channel/statist/RequestStatistic;->deviceLevel:I

    .line 163
    iget-boolean v2, v2, Lanet/channel/fulltrace/SceneInfo;->isUrlLaunch:Z

    if-eqz v2, :cond_9

    const/4 v4, 0x1

    :cond_9
    iput v4, v0, Lanet/channel/statist/RequestStatistic;->isFromExternal:I

    .line 167
    :cond_a
    iget-wide v2, v0, Lanet/channel/statist/RequestStatistic;->reqServiceTransmissionEnd:J

    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->netReqStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->serializeTransferTime:J

    .line 169
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v2

    invoke-interface {v2, v0}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 171
    invoke-static {v0}, Lanetwork/channel/config/NetworkConfigCenter;->isRequestInMonitorList(Lanet/channel/statist/RequestStatistic;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 172
    new-instance v2, Lanet/channel/statist/RequestMonitor;

    invoke-direct {v2, v0}, Lanet/channel/statist/RequestMonitor;-><init>(Lanet/channel/statist/RequestStatistic;)V

    .line 173
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v3

    invoke-interface {v3, v2}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :cond_b
    :try_start_2
    iget-object v2, v0, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    .line 179
    iget-object v3, v0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    if-nez v3, :cond_c

    goto :goto_3

    :cond_c
    iget-object v1, v0, Lanet/channel/statist/RequestStatistic;->extra:Lorg/json/JSONObject;

    const-string v3, "firstIp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_3
    invoke-static {v2}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {v1}, Lanet/channel/strategy/utils/Utils;->isIPV6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 181
    :cond_d
    new-instance v1, Lanet/channel/statist/RequestMonitor;

    invoke-direct {v1, v0}, Lanet/channel/statist/RequestMonitor;-><init>(Lanet/channel/statist/RequestStatistic;)V

    .line 182
    invoke-static {}, Lanet/channel/appmonitor/AppMonitor;->getInstance()Lanet/channel/appmonitor/IAppMonitor;

    move-result-object v0

    invoke-interface {v0, v1}, Lanet/channel/appmonitor/IAppMonitor;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 188
    :catch_0
    :cond_e
    :try_start_3
    invoke-static {}, Lanetwork/channel/stat/NetworkStat;->getNetworkStat()Lanetwork/channel/stat/INetworkStat;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/entity/Repeater$3;->this$0:Lanetwork/channel/entity/Repeater;

    invoke-static {v1}, Lanetwork/channel/entity/Repeater;->access$200(Lanetwork/channel/entity/Repeater;)Lanetwork/channel/entity/RequestConfig;

    move-result-object v1

    invoke-virtual {v1}, Lanetwork/channel/entity/RequestConfig;->getUrlString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/entity/Repeater$3;->val$event:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v2}, Lanetwork/channel/aidl/DefaultFinishEvent;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lanetwork/channel/stat/INetworkStat;->put(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    :cond_f
    return-void
.end method
