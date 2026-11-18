.class public Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;
.super Lcom/taobao/android/dinamic/view/HandlerTimer;
.source "IntensiveHandlerTimer.java"


# instance fields
.field public originInterval:J

.field private startTime:J


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamic/view/HandlerTimer;-><init>(JLjava/lang/Runnable;)V

    .line 22
    iput-wide p1, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->originInterval:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamic/view/HandlerTimer;-><init>(JLjava/lang/Runnable;Landroid/os/Handler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;-><init>(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 88
    invoke-super {p0}, Lcom/taobao/android/dinamic/view/HandlerTimer;->cancel()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getInterval()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    return-wide v0
.end method

.method public pause()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->status:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->startTime:J

    sub-long/2addr v0, v2

    .line 57
    iget-wide v2, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    .line 59
    invoke-super {p0}, Lcom/taobao/android/dinamic/view/HandlerTimer;->pause()V

    return-void
.end method

.method public restart()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->status:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->startTime:J

    .line 70
    iget-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 71
    iget-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->originInterval:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    .line 74
    :cond_1
    invoke-super {p0}, Lcom/taobao/android/dinamic/view/HandlerTimer;->restart()V

    return-void
.end method

.method public runOver()V
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->originInterval:J

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->startTime:J

    return-void
.end method

.method public start()V
    .locals 2

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->startTime:J

    .line 33
    invoke-super {p0}, Lcom/taobao/android/dinamic/view/HandlerTimer;->start()V

    return-void
.end method

.method public start(I)V
    .locals 2

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->startTime:J

    int-to-long v0, p1

    .line 39
    iput-wide v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    .line 40
    invoke-super {p0, v0, v1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->start(J)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->status:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    if-ne v0, v1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-super {p0}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    return-void
.end method

.method public updateInterval(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/taobao/android/dinamic/view/IntensiveHandlerTimer;->interval:J

    return-void
.end method
