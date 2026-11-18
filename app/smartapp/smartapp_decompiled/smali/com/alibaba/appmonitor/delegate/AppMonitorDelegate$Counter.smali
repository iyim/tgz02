.class public Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Counter;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Counter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 394
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    .line 405
    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 418
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 422
    :cond_0
    sget-boolean v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "value"

    const/4 v6, 0x6

    const/4 v7, 0x5

    const-string v9, "args"

    const/4 v10, 0x4

    const/4 v11, 0x3

    const-string v12, "monitorPoint"

    const/4 v13, 0x2

    const-string v14, "module"

    const/16 v15, 0x8

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->isNotDisAM()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    .line 423
    invoke-virtual {v1}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v1, :cond_1

    .line 424
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v1

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v4, v0, v8}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    const-string v1, "commitCount"

    .line 425
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v14, v4, v2

    aput-object v0, v4, v3

    aput-object v12, v4, v13

    aput-object v8, v4, v11

    aput-object v9, v4, v10

    aput-object p2, v4, v7

    aput-object v5, v4, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v4, v3

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 426
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2, v0, v8}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->isOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 427
    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->getInstance()Lcom/alibaba/analytics/core/Variables;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/analytics/core/Variables;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 429
    invoke-static {}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v1, v2, v0, v8}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorConfigMgr;->isNeedMonitorForOffline(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_abtest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 431
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/appmonitor/event/EventRepo;->countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    move-object v1, v10

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 433
    :goto_0
    invoke-static {}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->getInstance()Lcom/alibaba/appmonitor/offline/TempEventMgr;

    move-result-object v10

    sget-object v11, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    new-instance v12, Lcom/alibaba/appmonitor/offline/TempCounter;

    invoke-static {v9}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v9}, Lcom/alibaba/analytics/core/network/NetworkUtil;->getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/appmonitor/offline/TempCounter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Lcom/alibaba/appmonitor/offline/TempEventMgr;->add(Lcom/alibaba/appmonitor/event/EventType;Lcom/alibaba/appmonitor/offline/TempEvent;)V

    goto :goto_2

    .line 435
    :cond_3
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v1

    sget-object v2, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v2}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/alibaba/appmonitor/event/EventRepo;->countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_2

    :cond_4
    const-string v1, "log discard !"

    .line 439
    new-array v4, v15, [Ljava/lang/Object;

    aput-object v14, v4, v2

    aput-object v0, v4, v3

    aput-object v12, v4, v13

    aput-object v8, v4, v11

    aput-object v9, v4, v10

    aput-object p2, v4, v7

    aput-object v5, v4, v6

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v2, 0x7

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string v0, "AppMonitorDelegate"

    .line 419
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "module & monitorPoint must not null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 442
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public static setSampling(I)V
    .locals 2

    .line 386
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1

    .line 378
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 379
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-static {v0, p0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method
