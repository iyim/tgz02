.class public Lcom/alibaba/analytics/AnalyticsMgr$UTInitTimeoutTask;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/AnalyticsMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTInitTimeoutTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 666
    :try_start_0
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$600()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "delay 30 sec to wait the Remote service connected,waiting..."

    .line 667
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 670
    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$100()Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    .line 672
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 676
    :cond_0
    :goto_2
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->iAnalytics:Lcom/alibaba/analytics/IAnalytics;

    if-nez v1, :cond_1

    const-string v1, "cannot get remote analytics object,new local object"

    .line 677
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 678
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$300()V

    .line 680
    :cond_1
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$800()Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const/4 v2, 0x2

    .line 682
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "7"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "AnalyticsMgr"

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
