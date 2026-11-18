.class public Lcom/alibaba/appmonitor/delegate/TransactionDelegate;
.super Ljava/lang/Object;
.source "TransactionDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TransactionDelegate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addElapseEventDimensionValue(Lcom/alibaba/mtl/appmonitor/Transaction;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->dimensionValues:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    invoke-virtual {v0, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->addValues(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 39
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/appmonitor/event/EventRepo;->commitElapseEventDimensionValue(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    :cond_1
    return-void
.end method

.method public static begin(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 6

    .line 17
    :try_start_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "TransactionDelegate"

    const/4 v1, 0x6

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "statEvent begin. module: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, " monitorPoint: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, " measureName: "

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    :cond_2
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->eventId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/appmonitor/event/EventRepo;->beginStatEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p0}, Lcom/alibaba/appmonitor/delegate/TransactionDelegate;->addElapseEventDimensionValue(Lcom/alibaba/mtl/appmonitor/Transaction;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 29
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static end(Lcom/alibaba/mtl/appmonitor/Transaction;Ljava/lang/String;)V
    .locals 5

    .line 46
    :try_start_0
    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->sdkInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p0, :cond_1

    return-void

    :cond_1
    const-string v0, "TransactionDelegate"

    const/4 v1, 0x6

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "statEvent end. module: "

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, " monitorPoint: "

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, " measureName: "

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v0}, Lcom/alibaba/appmonitor/event/EventType;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate;->IS_DEBUG:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->getInstance()Lcom/alibaba/appmonitor/sample/AMSamplingMgr;

    move-result-object v0

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    iget-object v2, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->module:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/appmonitor/sample/AMSamplingMgr;->checkSampled(Lcom/alibaba/appmonitor/event/EventType;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    :cond_2
    invoke-static {p0}, Lcom/alibaba/appmonitor/delegate/TransactionDelegate;->addElapseEventDimensionValue(Lcom/alibaba/mtl/appmonitor/Transaction;)V

    .line 55
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventRepo;->getRepo()Lcom/alibaba/appmonitor/event/EventRepo;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/mtl/appmonitor/Transaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, v3}, Lcom/alibaba/appmonitor/event/EventRepo;->endStatEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {p1, p0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method
