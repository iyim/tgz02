.class public Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;
.super Ljava/lang/Object;
.source "ConfigArrivedMonitor.java"

# interfaces
.implements Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;


# static fields
.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# instance fields
.field private mCurrentValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mCurrentValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "test_config_arrival_rate"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "key"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string/jumbo p1, "value"

    const/4 v3, 0x2

    aput-object p1, v0, v3

    const/4 v4, 0x3

    aput-object p2, v0, v4

    const/4 v4, 0x0

    invoke-static {v4, v0}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v5, "arrival_time"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getInstance()Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/analytics/core/logbuilder/SessionTimeAndIndexMgr;->getSessionTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v5, "app_start_time"

    invoke-interface {v0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object p1, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v5, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CONFIG_ARRIVE:I

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 38
    new-array p1, v3, [Ljava/lang/Object;

    const-string v3, "json"

    aput-object v3, p1, v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {v4, p1}, Lcom/alibaba/analytics/utils/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :cond_0
    iput-object p2, p0, Lcom/alibaba/analytics/core/selfmonitor/ConfigArrivedMonitor;->mCurrentValue:Ljava/lang/String;

    return-void
.end method

.method public start()V
    .locals 2

    .line 19
    invoke-static {}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->getInstance()Lcom/alibaba/analytics/core/config/SystemConfigMgr;

    move-result-object v0

    const-string/jumbo v1, "test_config_arrival_rate"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/analytics/core/config/SystemConfigMgr;->register(Ljava/lang/String;Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;)V

    return-void
.end method
