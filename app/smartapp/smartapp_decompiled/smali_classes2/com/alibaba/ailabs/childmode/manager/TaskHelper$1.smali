.class Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;
.super Ljava/lang/Object;
.source "TaskHelper.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->registerMonitorSceneListener(Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/childmode/manager/TaskHelper;

.field final synthetic val$monitorSceneListener:Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->this$0:Lcom/alibaba/ailabs/childmode/manager/TaskHelper;

    iput-object p2, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->val$monitorSceneListener:Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePackage(Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChangePackage  packageInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreventAddictionNew"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->this$0:Lcom/alibaba/ailabs/childmode/manager/TaskHelper;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->access$000(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Lcom/alibaba/ailabs/genie/assistant/sdk/task/PackageInfo;)Z

    move-result p1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->this$0:Lcom/alibaba/ailabs/childmode/manager/TaskHelper;

    invoke-static {v0}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->access$100(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->val$monitorSceneListener:Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$IMonitorSceneListener;->onEntertainment(Z)V

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/manager/TaskHelper$1;->this$0:Lcom/alibaba/ailabs/childmode/manager/TaskHelper;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/manager/TaskHelper;->access$102(Lcom/alibaba/ailabs/childmode/manager/TaskHelper;Z)Z

    :cond_0
    return-void
.end method
