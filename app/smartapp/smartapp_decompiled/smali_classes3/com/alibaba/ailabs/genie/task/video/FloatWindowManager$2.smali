.class Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->onVideoResult(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run:isPlayer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$200(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TaskService-Video-FloatWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$200(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$300(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$2;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->showFloatWindows()V

    :cond_0
    return-void
.end method
