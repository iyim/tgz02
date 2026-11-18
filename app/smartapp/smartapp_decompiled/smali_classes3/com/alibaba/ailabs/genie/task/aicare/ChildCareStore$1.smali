.class Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;
.super Landroid/database/ContentObserver;
.source "ChildCareStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->getContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;Landroid/os/Handler;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 74
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->access$000(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;)Z

    move-result p1

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->access$100()Z

    move-result v0

    const-string v1, "TaskService-AiCare"

    if-ne v0, p1, :cond_0

    const-string p1, "onChange the same value"

    .line 76
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 79
    :cond_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->access$102(Z)Z

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange isOpen:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->access$100()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance p1, Landroid/content/Intent;

    const-string v0, "aicare.enable.change"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;->access$200(Lcom/alibaba/ailabs/genie/task/aicare/ChildCareStore;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
