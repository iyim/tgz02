.class Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->onDownloadSuccess(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->this$1:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;

    iput-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed(Ljava/lang/String;I)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallFailed -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ,code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTaskMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->this$1:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;

    iget-object v0, v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$url:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$300(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/genie/market/util/ClientTaskUtil;->deleteSingleFile(Ljava/lang/String;)Z

    return-void
.end method

.method public onInstallSuccess(Ljava/lang/String;I)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInstallSuccess -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTaskMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->this$1:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;

    iget-object v0, v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$url:Ljava/lang/String;

    invoke-static {v0, p2, v1, p1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$600(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;ILjava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;->val$path:Ljava/lang/String;

    invoke-static {p1}, Lcom/alibaba/genie/market/util/ClientTaskUtil;->deleteSingleFile(Ljava/lang/String;)Z

    return-void
.end method
