.class Lcom/alibaba/analytics/core/store/LogStoreMgr$CleanDbTask;
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
    name = "CleanDbTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;


# direct methods
.method constructor <init>(Lcom/alibaba/analytics/core/store/LogStoreMgr;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$CleanDbTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 220
    invoke-static {}, Lcom/alibaba/analytics/utils/Logger;->d()V

    .line 221
    iget-object v0, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$CleanDbTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-static {v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->access$000(Lcom/alibaba/analytics/core/store/LogStoreMgr;)I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    sget-object v1, Lcom/alibaba/analytics/core/store/LogStoreMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v2, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CLEAN_DB:I

    int-to-double v3, v0

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string/jumbo v3, "time_ex"

    .line 223
    invoke-static {v2, v3, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$CleanDbTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-static {v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->access$100(Lcom/alibaba/analytics/core/store/LogStoreMgr;)Lcom/alibaba/analytics/core/store/ILogStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/analytics/core/store/ILogStore;->count()I

    move-result v0

    const/16 v1, 0x2328

    if-le v0, v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/alibaba/analytics/core/store/LogStoreMgr$CleanDbTask;->this$0:Lcom/alibaba/analytics/core/store/LogStoreMgr;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/store/LogStoreMgr;->access$200(Lcom/alibaba/analytics/core/store/LogStoreMgr;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 230
    sget-object v1, Lcom/alibaba/analytics/core/store/LogStoreMgr;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v2, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->CLEAN_DB:I

    int-to-double v3, v0

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v3, "count_ex"

    .line 230
    invoke-static {v2, v3, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEvent;)V

    :cond_1
    return-void
.end method
