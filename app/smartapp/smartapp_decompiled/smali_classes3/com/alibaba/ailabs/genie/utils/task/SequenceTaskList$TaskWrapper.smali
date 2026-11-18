.class Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;
.super Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;
.source "SequenceTaskList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskWrapper"
.end annotation


# instance fields
.field private mStopWhenFailed:Z


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/Task;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/Task;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method shouldStop()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;->mStopWhenFailed:Z

    return v0
.end method

.method stopWhenFailed()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;->mStopWhenFailed:Z

    return-void
.end method
