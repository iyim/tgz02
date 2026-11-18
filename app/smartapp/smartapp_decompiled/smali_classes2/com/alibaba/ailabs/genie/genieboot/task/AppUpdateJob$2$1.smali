.class Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;
.super Ljava/lang/Object;
.source "AppUpdateJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;->onGatewayStatus(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->access$100(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieboot/BootApplication;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    iget-object v1, v1, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->callback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AgisManager;->unregisterAguiCommonCallback(Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;->this$1:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->callback:Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;

    const-string v0, "AppUpdateJob"

    const-string v1, "AgisManager.callback true to start - task"

    .line 94
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
