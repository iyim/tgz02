.class abstract Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;
.super Lcom/alibaba/ailabs/genie/utils/task/Task;
.source "BaseTaskWrapper.java"


# instance fields
.field private mTarget:Lcom/alibaba/ailabs/genie/utils/task/Task;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/Task;)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/utils/task/Task;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    .line 12
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;->mTarget:Lcom/alibaba/ailabs/genie/utils/task/Task;

    return-void
.end method


# virtual methods
.method getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;->mTarget:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/task/Task;->getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;->mTarget:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/task/Task;->run()V

    return-void
.end method

.method setCalllback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/BaseTaskWrapper;->mTarget:Lcom/alibaba/ailabs/genie/utils/task/Task;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/utils/task/Task;->setCalllback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    return-void
.end method
