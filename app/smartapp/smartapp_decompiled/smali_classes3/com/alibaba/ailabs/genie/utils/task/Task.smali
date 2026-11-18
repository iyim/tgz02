.class public abstract Lcom/alibaba/ailabs/genie/utils/task/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/utils/task/Task$SimpleCallback;,
        Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/Task;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    return-void
.end method


# virtual methods
.method getCallback()Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/Task;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    return-object v0
.end method

.method setCalllback(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/Task;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    return-void
.end method
