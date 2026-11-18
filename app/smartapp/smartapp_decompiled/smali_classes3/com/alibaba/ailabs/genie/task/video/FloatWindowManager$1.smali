.class Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;
.super Ljava/lang/Object;
.source "FloatWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->removeAllFloatWindow()V
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

    .line 199
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$000(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    move-result-object v0

    const-string v1, "TaskService-Video-FloatWindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$000(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$100(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$000(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$000(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;->hideAllView()V

    .line 206
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->access$002(Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;)Lcom/alibaba/ailabs/genie/task/video/view/FloatWindowView;

    .line 207
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving:Z

    const-string v0, "removeAllFloatWindow real"

    .line 208
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;

    iput-boolean v2, v0, Lcom/alibaba/ailabs/genie/task/video/FloatWindowManager;->isRemoving:Z

    const-string v0, "removeAllFloatWindow mFloatWindowView is null "

    .line 211
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
