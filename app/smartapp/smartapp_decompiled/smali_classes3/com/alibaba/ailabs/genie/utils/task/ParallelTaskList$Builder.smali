.class public Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;
.super Ljava/lang/Object;
.source "ParallelTaskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

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
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mTasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lcom/alibaba/ailabs/genie/utils/task/Task;)Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    .line 39
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mTasks:Ljava/util/List;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not append the same task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;
    .locals 2

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList$Builder;->mTasks:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/ParallelTaskList;-><init>(Ljava/util/List;)V

    return-object v0
.end method
