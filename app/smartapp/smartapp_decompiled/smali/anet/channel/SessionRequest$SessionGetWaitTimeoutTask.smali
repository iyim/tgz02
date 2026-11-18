.class public Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;
.super Ljava/lang/Object;
.source "SessionRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SessionGetWaitTimeoutTask"
.end annotation


# instance fields
.field cb:Lanet/channel/SessionGetCallback;

.field isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lanet/channel/SessionRequest;


# direct methods
.method protected constructor <init>(Lanet/channel/SessionRequest;Lanet/channel/SessionGetCallback;)V
    .locals 1

    .line 122
    iput-object p1, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->cb:Lanet/channel/SessionGetCallback;

    .line 120
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    iput-object p2, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->cb:Lanet/channel/SessionGetCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->isFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "awcn.SessionRequest"

    const-string v3, "get session timeout"

    invoke-static {v2, v3, v0, v1}, Lanet/channel/util/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v0}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->this$0:Lanet/channel/SessionRequest;

    invoke-static {v1}, Lanet/channel/SessionRequest;->access$000(Lanet/channel/SessionRequest;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->cb:Lanet/channel/SessionGetCallback;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    iget-object v0, p0, Lanet/channel/SessionRequest$SessionGetWaitTimeoutTask;->cb:Lanet/channel/SessionGetCallback;

    invoke-interface {v0}, Lanet/channel/SessionGetCallback;->onSessionGetFail()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 132
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
