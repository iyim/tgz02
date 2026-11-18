.class public Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;
.super Lcom/alibaba/ailabs/genie/utils/task/Task;
.source "SequenceTaskList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;,
        Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;,
        Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;
    }
.end annotation


# instance fields
.field private mFinished:Z

.field private final mHookCallback:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;

.field private mPendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/utils/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/utils/task/Task;",
            ">;",
            "Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;",
            ")V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/utils/task/Task;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    .line 49
    new-instance p2, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;-><init>(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mHookCallback:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;

    .line 54
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mPendingTasks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;-><init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mFinished:Z

    return p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->runNext()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private declared-synchronized fetchNextTask()Lcom/alibaba/ailabs/genie/utils/task/Task;
    .locals 2

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mPendingTasks:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/utils/task/Task;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 95
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onDone()V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->setCalllback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mHookCallback:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->access$100(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;)V

    return-void
.end method

.method private runNext()V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->run()V

    return-void
.end method


# virtual methods
.method public declared-synchronized interrupt()V
    .locals 2

    monitor-enter p0

    .line 80
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 81
    monitor-exit p0

    return-void

    .line 84
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onFailed(Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->onDone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->fetchNextTask()Lcom/alibaba/ailabs/genie/utils/task/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mHookCallback:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;

    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->hook(Lcom/alibaba/ailabs/genie/utils/task/Task;)V

    .line 65
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/task/Task;->run()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mFinished:Z

    .line 68
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->onDone()V

    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
