.class public Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;
.super Ljava/lang/Object;
.source "FlowTaskManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlowTaskManager"

.field private static volatile mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;


# instance fields
.field private mSkipShowCongfigPage:Z

.field private mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

.field private mTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/alibaba/ailabs/childmode/common/FlowTask;",
            ">;"
        }
    .end annotation
.end field

.field private mValidatePasswordSuccess:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mSkipShowCongfigPage:Z

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mValidatePasswordSuccess:Z

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    return-void
.end method

.method public static finishCurrentFlow()V
    .locals 2

    const-string v0, "FlowTaskManager"

    const-string v1, "finishCurrentFlow "

    .line 77
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->next()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;
    .locals 2

    const-class v0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    .line 36
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private release()V
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release, isChildMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isChildMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEyeYieldMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/childmode/Global;->isEyeYieldMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlowTaskManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 96
    sput-object v0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    .line 97
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mSkipShowCongfigPage:Z

    .line 99
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mInstance:Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abortFlows()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->release()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public add(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlowTaskManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFirst(Lcom/alibaba/ailabs/childmode/common/FlowTask;)Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlowTaskManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isSkipShowConfigPage()Z
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSkipShowCongfigPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mSkipShowCongfigPage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlowTaskManager"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mSkipShowCongfigPage:Z

    return v0
.end method

.method public isValdatePasswordSuccess()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mValidatePasswordSuccess:Z

    return v0
.end method

.method public next()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    const-string v1, "FlowTaskManager"

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTaskQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/common/FlowTask;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next mTask:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mTask:Lcom/alibaba/ailabs/childmode/common/FlowTask;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/common/FlowTask;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "*************     Flow finish here ------------------"

    .line 89
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->release()V

    :goto_0
    return-void
.end method

.method public skipShowConfigDialog()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mSkipShowCongfigPage:Z

    return-void
.end method

.method public validatePassword(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mValidatePasswordSuccess:Z

    .line 61
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->mValidatePasswordSuccess:Z

    if-eqz p1, :cond_0

    .line 62
    invoke-static {}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->finishCurrentFlow()V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/common/FlowTaskManager;->abortFlows()V

    :goto_0
    return-void
.end method
