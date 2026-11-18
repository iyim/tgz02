.class public Lcom/alibaba/genie/shopping/timer/SimpleTimer;
.super Ljava/lang/Object;
.source "SimpleTimer.java"


# static fields
.field public static mInstance:Lcom/alibaba/genie/shopping/timer/SimpleTimer;


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "timer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    new-instance v1, Lcom/alibaba/genie/shopping/timer/SimpleTimer$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/genie/shopping/timer/SimpleTimer$1;-><init>(Lcom/alibaba/genie/shopping/timer/SimpleTimer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized getInstance()Lcom/alibaba/genie/shopping/timer/SimpleTimer;
    .locals 2

    const-class v0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mInstance:Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/timer/SimpleTimer;-><init>()V

    sput-object v1, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mInstance:Lcom/alibaba/genie/shopping/timer/SimpleTimer;

    .line 46
    :cond_0
    sget-object v1, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mInstance:Lcom/alibaba/genie/shopping/timer/SimpleTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addJob(Lcom/alibaba/genie/shopping/timer/ScheduleJob;)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/alibaba/genie/shopping/timer/ScheduleJob;->getId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/alibaba/genie/shopping/timer/ScheduleJob;->getPeriod()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public removeJob(I)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/timer/SimpleTimer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
