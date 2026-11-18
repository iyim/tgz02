.class Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;
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

    .line 169
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->val$bundle:Landroid/os/Bundle;

    iput p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->val$method:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->this$0:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->getOnPackageListener()Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->val$bundle:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->parser(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;->onChangePackage(Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)V

    :cond_0
    const-string v2, "TaskClient"

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "method = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient$2;->val$method:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",packageInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", listener = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
