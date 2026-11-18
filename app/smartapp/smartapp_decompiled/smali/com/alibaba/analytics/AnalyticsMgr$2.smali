.class final Lcom/alibaba/analytics/AnalyticsMgr$2;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/analytics/AnalyticsMgr;->createInitTask()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 296
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "call Remote init start..."

    invoke-static {v2, v1}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :try_start_0
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-interface {v1}, Lcom/alibaba/analytics/IAnalytics;->initUT()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 300
    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "initut error"

    invoke-static {v3, v1, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 301
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$300()V

    .line 303
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    invoke-interface {v1}, Lcom/alibaba/analytics/IAnalytics;->initUT()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 305
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 308
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "call Remote init end"

    invoke-static {v1, v0}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
