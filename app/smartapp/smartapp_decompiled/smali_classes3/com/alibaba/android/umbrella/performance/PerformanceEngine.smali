.class public Lcom/alibaba/android/umbrella/performance/PerformanceEngine;
.super Ljava/lang/Object;
.source "PerformanceEngine.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static commitPerformancePage(Lcom/alibaba/android/umbrella/performance/PerformanceEntity;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static commitPerformancePage(Lcom/alibaba/android/umbrella/performance/ProcessEntity;)V
    .locals 2

    if-eqz p0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceClosePerformancePage()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->toJsonString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PerformanceEngine"

    invoke-static {v1, v0}, Lcom/taobao/tao/log/TLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/ProcessEntity;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Page_Umbrella_Performance_Govern"

    const-string v1, "Monitor_Page_Load_Service"

    invoke-static {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static commitPerformancePoint(Lcom/alibaba/android/umbrella/performance/PerformanceEntity;)V
    .locals 2

    .line 31
    invoke-static {}, Lcom/alibaba/android/umbrella/trace/UmbrellaSimple;->isForceClosePerformancePoint()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Monitor_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/android/umbrella/performance/PerformanceEntity;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/android/umbrella/performance/PerformanceEntity;->toJsonString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Page_Umbrella_Performance_Govern"

    invoke-static {v1, v0, p0}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
