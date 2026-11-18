.class Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$3;
.super Ljava/lang/Object;
.source "AppUpdateJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->handleAguiCallBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$3;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "AppUpdateJob"

    const-string v1, "AgisManager.callback true to start - task"

    .line 130
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$3;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;->access$100(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;)V

    return-void
.end method
