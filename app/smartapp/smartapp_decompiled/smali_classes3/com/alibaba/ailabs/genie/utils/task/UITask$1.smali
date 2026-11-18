.class Lcom/alibaba/ailabs/genie/utils/task/UITask$1;
.super Ljava/lang/Object;
.source "UITask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/task/UITask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/utils/task/UITask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/UITask;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/UITask$1;->this$0:Lcom/alibaba/ailabs/genie/utils/task/UITask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/UITask$1;->this$0:Lcom/alibaba/ailabs/genie/utils/task/UITask;

    iget-object v1, v0, Lcom/alibaba/ailabs/genie/utils/task/UITask;->mCallback:Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/utils/task/UITask;->showUI(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    return-void
.end method
