.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installFailedCallback(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$retCode:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 429
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$msg:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDownloadState(Ljava/lang/String;I)V

    .line 433
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$100(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installFailedCallback url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",remove download thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Market3TaskManager-tag"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$700(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 436
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$700(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",listeners:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 441
    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$msg:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$9;->val$retCode:I

    invoke-interface {v2, v3, v4}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
