.class Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;
.super Ljava/lang/Object;
.source "SnackBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;,
        Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;


# instance fields
.field private mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$1;-><init>(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;I)Z
    .locals 2

    .line 185
    iget-object v0, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 189
    invoke-interface {v0, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;->dismiss(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static getInstance()Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->sSnackbarManager:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->sSnackbarManager:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    .line 25
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->sSnackbarManager:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->isSnackBar(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNextSnackBarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->isSnackBar(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private scheduleTimeoutLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V
    .locals 4

    .line 204
    iget v0, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 210
    iget v1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    if-lez v1, :cond_1

    .line 211
    iget v0, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    goto :goto_0

    .line 212
    :cond_1
    iget v1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 215
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 216
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackBarLocked()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eqz v0, :cond_1

    .line 171
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    .line 174
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;

    if-eqz v1, :cond_0

    .line 176
    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;->show()V

    goto :goto_0

    .line 179
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;I)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;I)Z

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;I)Z

    .line 93
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method handleTimeout(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 222
    invoke-direct {p0, p1, v1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;I)Z

    .line 224
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrent(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 145
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrentOrNext(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDismissed(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eqz p1, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->showNextSnackBarLocked()V

    .line 109
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onShown(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V

    .line 121
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pauseTimeout(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->paused:Z

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->paused:Z

    .line 128
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restoreTimeoutIfPaused(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    iget-boolean p1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->paused:Z

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->paused:Z

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public show(ILcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isCurrentSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    iput p1, p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    .line 62
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->scheduleTimeoutLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;)V

    .line 64
    monitor-exit v0

    return-void

    .line 65
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->isNextSnackBarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    iput p1, p2, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;->duration:I

    goto :goto_0

    .line 70
    :cond_1
    new-instance v1, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    invoke-direct {v1, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;-><init>(ILcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$Callback;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mNextSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->cancelSnackbarLocked(Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->mCurrentSnackbar:Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager$SnackBarRecord;

    .line 81
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/widget/topsnackbar/SnackBarManager;->showNextSnackBarLocked()V

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
