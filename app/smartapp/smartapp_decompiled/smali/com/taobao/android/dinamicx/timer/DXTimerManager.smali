.class public Lcom/taobao/android/dinamicx/timer/DXTimerManager;
.super Ljava/lang/Object;
.source "DXTimerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;
    }
.end annotation


# static fields
.field private static final MSG:I = 0x1


# instance fields
.field private cancelled:Z

.field private finalTickInterval:J

.field private handler:Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

.field private listenerWrappers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancelled:Z

    .line 31
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->finalTickInterval:J

    .line 32
    new-instance p1, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;-><init>(Lcom/taobao/android/dinamicx/timer/DXTimerManager;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->handler:Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/timer/DXTimerManager;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancelled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/timer/DXTimerManager;)J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->finalTickInterval:J

    return-wide v0
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancelled:Z

    .line 27
    iget-object v1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->handler:Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

    invoke-virtual {v1, v0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;->removeMessages(I)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancel()V

    return-void
.end method

.method public final onTick()V
    .locals 8

    .line 39
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 45
    iget-object v2, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;

    .line 46
    iget-wide v4, v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->startTime:J

    sub-long v4, v0, v4

    .line 47
    iget-wide v6, v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->interval:J

    div-long/2addr v4, v6

    long-to-int v5, v4

    .line 48
    iget v4, v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->repeatCount:I

    add-int/lit8 v4, v4, 0x1

    if-ge v5, v4, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v4, v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->timerListener:Lcom/taobao/android/dinamicx/timer/DXTimerListener;

    invoke-interface {v4}, Lcom/taobao/android/dinamicx/timer/DXTimerListener;->onTimerCallback()V

    .line 53
    iput v5, v3, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->repeatCount:I

    goto :goto_0

    :cond_2
    return-void

    .line 40
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancel()V

    return-void
.end method

.method public registerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;J)V
    .locals 3

    if-eqz p1, :cond_5

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;

    .line 67
    iget-object v1, v1, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->timerListener:Lcom/taobao/android/dinamicx/timer/DXTimerListener;

    if-ne v1, p1, :cond_2

    return-void

    .line 72
    :cond_3
    new-instance v0, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;-><init>()V

    .line 73
    iput-object p1, v0, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->timerListener:Lcom/taobao/android/dinamicx/timer/DXTimerListener;

    .line 74
    iget-wide v1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->finalTickInterval:J

    cmp-long p1, p2, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    move-wide p2, v1

    :goto_0
    iput-wide p2, v0, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->interval:J

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->startTime:J

    .line 77
    iget-object p1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->start()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final start()V
    .locals 3

    .line 105
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancelled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancelled:Z

    .line 107
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->handler:Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;->setStartTimer(J)V

    .line 108
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->handler:Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/timer/DXTimerManager$DXHandlerTimer;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancel()V

    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;

    .line 93
    iget-object v2, v1, Lcom/taobao/android/dinamicx/timer/DXTimerListenerWrapper;->timerListener:Lcom/taobao/android/dinamicx/timer/DXTimerListener;

    if-ne v2, p1, :cond_2

    .line 94
    iget-object p1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->listenerWrappers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    .line 100
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/timer/DXTimerManager;->cancel()V

    :cond_4
    return-void
.end method
