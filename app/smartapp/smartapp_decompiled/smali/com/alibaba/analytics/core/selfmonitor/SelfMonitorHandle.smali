.class public Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;
.super Ljava/lang/Object;
.source "SelfMonitorHandle.java"

# interfaces
.implements Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;


# static fields
.field private static instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;->instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;
    .locals 1

    .line 23
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;->instance:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorHandle;

    return-object v0
.end method


# virtual methods
.method public handleEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromDB;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/analytics/core/sync/UploadLogFromDB;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 30
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->getInstance()Lcom/alibaba/analytics/core/sync/UploadLogFromCache;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/analytics/core/sync/UploadLogFromCache;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 35
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 38
    :goto_1
    :try_start_2
    sget-object v2, Lcom/alibaba/analytics/core/sync/UrlWrapper;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 40
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_2
    :try_start_3
    sget-object v2, Lcom/alibaba/analytics/core/sync/BizRequest;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    .line 45
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    :goto_3
    :try_start_4
    sget-object v2, Lcom/alibaba/analytics/core/store/LogStoreMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    .line 50
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 53
    :goto_4
    :try_start_5
    invoke-static {}, Lcom/ut/mini/core/UTLogTransferMain;->getInstance()Lcom/ut/mini/core/UTLogTransferMain;

    move-result-object v2

    iget-object v2, v2, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v2

    .line 55
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 58
    :goto_5
    :try_start_6
    sget-object v2, Lcom/alibaba/analytics/core/config/UTOrangeConfMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v2

    .line 60
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 63
    :goto_6
    :try_start_7
    sget-object v2, Lcom/alibaba/analytics/core/sync/TnetUtil;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v2

    .line 65
    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    :goto_7
    :try_start_8
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-virtual {v2, p0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->regiserListener(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventListener;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v2

    .line 70
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method public onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V
    .locals 5

    .line 80
    iget-object v0, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    const-string v2, "AppMonitor"

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->arg:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->type:Lcom/alibaba/appmonitor/event/EventType;

    sget-object v1, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v0, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->monitorPoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->dvs:Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    iget-object p1, p1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->mvs:Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    invoke-static {v2, v0, v1, p1}, Lcom/alibaba/appmonitor/delegate/AppMonitorDelegate$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    :cond_1
    :goto_0
    return-void
.end method
