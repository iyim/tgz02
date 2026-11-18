.class public Landroid/taobao/windvane/thread/LockObject;
.super Ljava/lang/Object;
.source "LockObject.java"


# instance fields
.field private needwait:Z

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/taobao/windvane/thread/LockObject;->result:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroid/taobao/windvane/thread/LockObject;->needwait:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized lnotify()V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-boolean v0, p0, Landroid/taobao/windvane/thread/LockObject;->needwait:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Landroid/taobao/windvane/thread/LockObject;->needwait:Z

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lwait()V
    .locals 1

    monitor-enter p0

    .line 18
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/taobao/windvane/thread/LockObject;->needwait:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 20
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
