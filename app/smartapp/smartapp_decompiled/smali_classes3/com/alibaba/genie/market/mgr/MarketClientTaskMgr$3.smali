.class Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->installFaildCallback(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

.field final synthetic val$listeners:Ljava/util/ArrayList;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$retCode:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iput-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$listeners:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$msg:Ljava/lang/String;

    iput p4, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$retCode:I

    iput-object p5, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;

    .line 209
    iget-object v2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$msg:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$retCode:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;->onInstallFailed(Ljava/lang/String;I)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$url:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$500(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    invoke-static {v0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$200(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
