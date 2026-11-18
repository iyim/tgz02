.class public Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;
.super Ljava/lang/Object;
.source "SequenceTaskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

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

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public append(Lcom/alibaba/ailabs/genie/utils/task/Task;)Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    .line 184
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 181
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Do not append the same task."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;-><init>(Ljava/util/List;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    .line 218
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    return-object v0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Must call append() before build method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    return-object p0
.end method

.method public stopWhenFailed()Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    if-eqz v0, :cond_0

    .line 196
    new-instance v1, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V

    .line 197
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;->stopWhenFailed()V

    .line 198
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 199
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$Builder;->mCurrent:Lcom/alibaba/ailabs/genie/utils/task/Task;

    return-object p0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "Must call append() before stopWhenFailed method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method
