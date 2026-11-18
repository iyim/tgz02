.class public Lcom/alibaba/analytics/AnalyticsMgr$UtDelayInitTask;
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
    name = "UtDelayInitTask"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "\u5ef6\u65f6\u542f\u52a8\u4efb\u52a1"

    .line 611
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    :try_start_1
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$500()I

    move-result v2

    if-lez v2, :cond_0

    .line 616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " second to start service,waiting..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/alibaba/analytics/utils/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$400()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 620
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 624
    :try_start_4
    invoke-static {}, Lcom/alibaba/analytics/AnalyticsMgr;->access$700()Z

    move-result v1

    invoke-static {v1}, Lcom/alibaba/analytics/AnalyticsMgr;->access$602(Z)Z

    .line 625
    sget-object v1, Lcom/alibaba/analytics/AnalyticsMgr;->handler:Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;

    new-instance v2, Lcom/alibaba/analytics/AnalyticsMgr$UTInitTimeoutTask;

    invoke-direct {v2}, Lcom/alibaba/analytics/AnalyticsMgr$UTInitTimeoutTask;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alibaba/analytics/AnalyticsMgr$WaitingHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 623
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    const/4 v2, 0x2

    .line 627
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "6"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "AnalyticsMgr"

    invoke-static {v0, v2}, Lcom/alibaba/analytics/utils/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
