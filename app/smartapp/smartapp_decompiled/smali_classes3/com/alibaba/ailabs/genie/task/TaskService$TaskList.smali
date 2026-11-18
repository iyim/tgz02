.class Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;
.super Ljava/util/ArrayList;
.source "TaskService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/task/TaskService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alibaba/ailabs/genie/task/ITask;",
        ">",
        "Ljava/util/ArrayList;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/TaskService;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Class;)Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;"
        }
    .end annotation

    .line 175
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public create(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->getTask(I)Lcom/alibaba/ailabs/genie/task/ITask;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/task/ITask;->onCreate(Landroid/content/Context;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->getTask(I)Lcom/alibaba/ailabs/genie/task/ITask;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/task/ITask;->onDestroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTask(I)Lcom/alibaba/ailabs/genie/task/ITask;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/task/ITask;

    return-object p1
.end method

.method public declared-synchronized receive(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 201
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 202
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->getTask(I)Lcom/alibaba/ailabs/genie/task/ITask;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/alibaba/ailabs/genie/task/ITask;->onReceiver(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public runTick()V
    .locals 2

    const/4 v0, 0x0

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/task/TaskService$TaskList;->getTask(I)Lcom/alibaba/ailabs/genie/task/ITask;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/ailabs/genie/task/ITask;->runTick()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
