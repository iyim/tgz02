.class public Lcom/taobao/uikit/utils/HandlerTimer;
.super Ljava/lang/Object;
.source "HandlerTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private interval:J

.field private status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .locals 2

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/taobao/uikit/utils/HandlerTimer;-><init>(JLjava/lang/Runnable;Landroid/os/Handler;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(JLjava/lang/Runnable;Landroid/os/Handler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 32
    iput-wide p1, p0, Lcom/taobao/uikit/utils/HandlerTimer;->interval:J

    .line 33
    iput-object p3, p0, Lcom/taobao/uikit/utils/HandlerTimer;->task:Ljava/lang/Runnable;

    .line 34
    iput-object p4, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    .line 35
    sget-object p1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object p1, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "handler or task must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 21
    invoke-direct {p0, v0, v1, p1}, Lcom/taobao/uikit/utils/HandlerTimer;-><init>(JLjava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 102
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 68
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 69
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public restart()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 80
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 81
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/taobao/uikit/utils/HandlerTimer;->interval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 50
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/taobao/uikit/utils/HandlerTimer;->interval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public start()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    if-eq v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 60
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/taobao/uikit/utils/HandlerTimer;->interval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->status:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 91
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
