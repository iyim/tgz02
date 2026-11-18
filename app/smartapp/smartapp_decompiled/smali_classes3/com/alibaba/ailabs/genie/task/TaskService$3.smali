.class Lcom/alibaba/ailabs/genie/task/TaskService$3;
.super Landroid/content/BroadcastReceiver;
.source "TaskService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/TaskService;->initInstallReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/TaskService;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/TaskService;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/TaskService$3;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "TaskService-Service"

    const-string v0, "processInstallReceiver receiver"

    .line 103
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/task/TaskService$3;->this$0:Lcom/alibaba/ailabs/genie/task/TaskService;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/task/utils/TaskConfig;->checkAndStart(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
