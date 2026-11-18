.class Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;
.super Ljava/lang/Object;
.source "SequenceTaskList.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HookCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/utils/task/Task$Callback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private mRealCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

.field private mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

.field final synthetic this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;


# direct methods
.method private constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$1;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;-><init>(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->reset()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mRealCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    .line 166
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

    return-void
.end method


# virtual methods
.method public hook(Lcom/alibaba/ailabs/genie/utils/task/Task;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/task/Task;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mRealCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    .line 133
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/utils/task/Task;->setCalllback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    return-void
.end method

.method public onFailed(Ljava/lang/Object;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mRealCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onFailed(Ljava/lang/Object;)V

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->access$200(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 144
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mTask:Lcom/alibaba/ailabs/genie/utils/task/Task;

    instance-of v0, p1, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$TaskWrapper;->shouldStop()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 146
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->interrupt()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->access$300(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->mRealCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;->onSuccess(Ljava/lang/Object;)V

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->access$200(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList$HookCallback;->this$0:Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;->access$300(Lcom/alibaba/ailabs/genie/utils/task/SequenceTaskList;)V

    :cond_1
    return-void
.end method
