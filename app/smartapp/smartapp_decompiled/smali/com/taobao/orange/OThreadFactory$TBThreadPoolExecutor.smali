.class Lcom/taobao/orange/OThreadFactory$TBThreadPoolExecutor;
.super Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.source "OThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TBThreadPoolExecutor"
.end annotation


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 2

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 38
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v0, v1, p1}, Lcom/taobao/orange/OThreadFactory$TBThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    const/4 p1, 0x1

    .line 39
    invoke-virtual {p0, p1}, Lcom/taobao/orange/OThreadFactory$TBThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    return-void
.end method
