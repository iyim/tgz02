.class Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/store/LogStoreMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitorDBTask"
.end annotation


# instance fields
.field private min:I

.field final synthetic this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/store/LogStoreMgr;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 249
    iput p1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->min:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-static {v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->access$100(Lcom/alibaba/analytics/core/store/LogStoreMgr;)Lcom/alibaba/analytics/core/store/ILogStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/analytics/core/store/ILogStore;->count()I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-static {v1}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->access$100(Lcom/alibaba/analytics/core/store/LogStoreMgr;)Lcom/alibaba/analytics/core/store/ILogStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/analytics/core/store/ILogStore;->getDbFileSize()D

    move-result-wide v1

    .line 261
    invoke-static {}, Lcom/alibaba/analytics/utils/SystemUtils;->getSystemFreeSize()D

    move-result-wide v3

    .line 262
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "min"

    .line 263
    iget v7, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->min:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "dbLeft"

    .line 264
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dbFileSize"

    .line 265
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "freeSize"

    .line 266
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/alibaba/analytics/core/store/LogStoreMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v1, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->DB_MONITOR:I

    invoke-static {v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public setMin(I)Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;
    .locals 0

    .line 252
    iput p1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$MonitorDBTask;->min:I

    return-object p0
.end method
