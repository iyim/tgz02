.class public Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$OffLineCounter;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OffLineCounter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static checkSampled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0, p1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static commit(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 11

    .line 488
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alibaba/analytics/core/Variables;->isNotDisAM()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    .line 493
    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_1

    .line 494
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v3, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v3, p0, p1}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "commitOffLineCount"

    const/4 v3, 0x6

    .line 496
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "module"

    aput-object v4, v3, v1

    aput-object p0, v3, v2

    const/4 v1, 0x2

    const-string v2, "monitorPoint"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    aput-object p1, v3, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "value"

    aput-object v2, v3, v1

    const/4 v1, 0x5

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v4

    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v5

    const/4 v8, 0x0

    move-object v6, p0

    move-object v7, p1

    move-wide v9, p2

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/appmonitor/event/EventRepo;->countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_1

    :cond_2
    const-string p0, "log discard !"

    .line 500
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, ""

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "AppMonitorDelegate"

    .line 489
    new-array p1, v2, [Ljava/lang/Object;

    const-string p2, "module & monitorPoint must not null"

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Lcom/alibaba/analytics/utils/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 504
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static setSampling(I)V
    .locals 2

    .line 467
    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 1

    .line 459
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 460
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    invoke-static {v0, p0}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    return-void
.end method
