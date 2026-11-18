.class Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;
.super Ljava/lang/Object;
.source "TaskClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;Landroid/os/Bundle;I)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$bundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$method:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "tt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 143
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$bundle:Landroid/os/Bundle;

    const-string/jumbo v2, "st_ex"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$bundle:Landroid/os/Bundle;

    const-string v3, "f"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$bundle:Landroid/os/Bundle;

    const-string v4, "pi"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 149
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$method:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 150
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getSceneListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    move-result-object v4

    goto :goto_0

    .line 151
    :cond_0
    iget v5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$method:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 152
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getOnTaskListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;

    move-result-object v4

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 155
    invoke-interface {v4, v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;->onScene(Ljava/lang/String;IILjava/lang/String;)Z

    :cond_2
    const-string v5, "TaskClient"

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "method = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$1;->val$method:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",taskType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sceneType = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",flag ="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",pageInfo ="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", listener = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
