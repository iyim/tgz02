.class public Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;
.super Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;
.source "DXNativeAutoLoopRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;,
        Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;
    }
.end annotation


# instance fields
.field private autoPlay:Z

.field private currentIndex:I

.field private dinamicXEngine:Lcom/taobao/android/dinamicx/DinamicXEngine;

.field private interval:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private manualSwitchEnabled:Z

.field private needProcessViewLifeCycle:Z

.field private onPageChangeListener:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

.field private runnable:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->manualSwitchEnabled:Z

    .line 43
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->needProcessViewLifeCycle:Z

    .line 168
    new-instance p1, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$1;-><init>(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;)V

    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    new-instance p1, Landroid/support/v7/widget/PagerSnapHelper;

    invoke-direct {p1}, Landroid/support/v7/widget/PagerSnapHelper;-><init>()V

    invoke-virtual {p1, p0}, Landroid/support/v7/widget/PagerSnapHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 63
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 69
    iget-boolean v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->manualSwitchEnabled:Z

    if-eqz v1, :cond_4

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    :cond_4
    :goto_0
    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    .line 193
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->currentIndex:I

    return v0
.end method

.method public getInterval()I
    .locals 1

    .line 185
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->interval:I

    return v0
.end method

.method public getOnPageChangeListener()Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->onPageChangeListener:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    return-object v0
.end method

.method public increaseCurrentIndex()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->currentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->currentIndex:I

    return v0
.end method

.method public isAutoPlay()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    return v0
.end method

.method public isSlider()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 135
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->onAttachedToWindow()V

    .line 136
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->needProcessViewLifeCycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->onDetachedFromWindow()V

    .line 149
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->needProcessViewLifeCycle:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    .line 152
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->manualSwitchEnabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->manualSwitchEnabled:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeRecyclerView;->onWindowVisibilityChanged(I)V

    .line 159
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->needProcessViewLifeCycle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->startTimer()V

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->stopTimer()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->currentIndex:I

    return-void
.end method

.method public setDinamicXEngine(Lcom/taobao/android/dinamicx/DinamicXEngine;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->dinamicXEngine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->interval:I

    return-void
.end method

.method public setManualSwitchEnabled(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->manualSwitchEnabled:Z

    return-void
.end method

.method public setNeedProcessViewLifeCycle(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->needProcessViewLifeCycle:Z

    return-void
.end method

.method public setOnPageChangeListener(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->onPageChangeListener:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;

    return-void
.end method

.method public startTimer()V
    .locals 4

    .line 119
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->runnable:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;

    if-nez v0, :cond_1

    .line 124
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;

    invoke-direct {v0, p0}, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;-><init>(Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->runnable:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->dinamicXEngine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_2

    .line 128
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->runnable:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;

    iget v2, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->interval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/taobao/android/dinamicx/DinamicXEngine;->registerTimerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;J)V

    :cond_2
    return-void
.end method

.method public stopTimer()V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->autoPlay:Z

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->dinamicXEngine:Lcom/taobao/android/dinamicx/DinamicXEngine;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView;->runnable:Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$LooperRunnable;

    invoke-virtual {v0, v1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->unregisterTimerListener(Lcom/taobao/android/dinamicx/timer/DXTimerListener;)V

    :cond_1
    return-void
.end method
