.class Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;
.super Ljava/lang/Object;
.source "Market3TaskManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->installSuccessCallback(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

.field final synthetic val$listeners:Ljava/util/ArrayList;

.field final synthetic val$retCode:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$listeners:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$url:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 413
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$url:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$retCode:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallSuccess(Ljava/lang/String;I)V

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$url:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->setDownloadState(Ljava/lang/String;I)V

    .line 418
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 421
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installSuccessCallback url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",remove download thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Market3TaskManager-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->this$0:Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;->access$100(Lcom/alibaba/ailabs/appbox/download/Market3TaskManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/download/Market3TaskManager$8;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
