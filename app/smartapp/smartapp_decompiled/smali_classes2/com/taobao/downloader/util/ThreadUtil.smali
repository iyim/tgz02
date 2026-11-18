.class public Lcom/taobao/downloader/util/ThreadUtil;
.super Ljava/lang/Object;
.source "ThreadUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static execute(Ljava/lang/Runnable;Z)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    .line 21
    sget-object v0, Lcom/taobao/downloader/Configuration;->threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/taobao/downloader/Configuration;->threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;

    invoke-interface {v0, p0, p1}, Lcom/taobao/downloader/adpater/ThreadExecutor;->execute(Ljava/lang/Runnable;Z)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/taobao/downloader/util/ThreadUtil$1;

    invoke-direct {v0, p0}, Lcom/taobao/downloader/util/ThreadUtil$1;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 36
    sget-object v0, Lcom/taobao/downloader/Configuration;->threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/taobao/downloader/Configuration;->threadExecutor:Lcom/taobao/downloader/adpater/ThreadExecutor;

    invoke-interface {v0, p0, p1, p2}, Lcom/taobao/downloader/adpater/ThreadExecutor;->postDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "download-sdk"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/taobao/downloader/util/ThreadUtil$2;

    invoke-direct {v1, p0}, Lcom/taobao/downloader/util/ThreadUtil$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void
.end method
