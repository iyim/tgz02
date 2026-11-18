.class Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;
.source "AppUpdateJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;Landroid/content/Context;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;->this$0:Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob;

    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/agis/AguiCommonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onGatewayStatus(Z)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgisManager.callback onGatewayStatus - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdateJob"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance p1, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2$1;-><init>(Lcom/alibaba/ailabs/genie/genieboot/task/AppUpdateJob$2;)V

    const-wide/16 v0, 0x2710

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onUserStatus(Z)V
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AgisManager.callback onUserStatus - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppUpdateJob"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
