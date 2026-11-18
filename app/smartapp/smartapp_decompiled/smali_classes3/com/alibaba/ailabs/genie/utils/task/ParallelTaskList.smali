.class public Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;
.super Lcom/alibaba/ailabs/genie/utils/task/Task;
.source "ParallelTaskList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;
    }
.end annotation


# instance fields
.field private mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/utils/task/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/utils/task/Task;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/Task;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;->mTasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/utils/task/Task;

    .line 24
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/utils/task/Task;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
