.class Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;
.super Ljava/lang/Object;
.source "MarketClientTaskMgr.java"

# interfaces
.implements Lcom/alibaba/genie/market/task/MarketDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->downloadAndInstall(Ljava/lang/String;ILcom/alibaba/genie/market/task/MarketDownloadAndInstallListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iput-object p2, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFailed(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadFailed -> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,code = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , msg == "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "DownloadTaskMgr-l"

    invoke-static {p4, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    const-string p4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {p1, p4, p3, p2}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$300(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2

    .line 137
    rem-int/lit8 v0, p1, 0x32

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , url == "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->val$url:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadTaskMgr-l"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    iget-object v1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->val$url:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$400(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;ILjava/lang/String;)V

    return-void
.end method

.method public onDownloadSuccess(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 145
    iget-object p1, p0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;->this$0:Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->access$500(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;Ljava/lang/String;I)V

    .line 146
    invoke-static {}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->getInstance(Landroid/content/Context;)Lcom/alibaba/genie/market/task/MarketIpcClientMgr;

    move-result-object p1

    new-instance v0, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2$1;-><init>(Lcom/alibaba/genie/market/mgr/MarketClientTaskMgr$2;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, v0}, Lcom/alibaba/genie/market/task/MarketIpcClientMgr;->installApk(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/market/task/MarketInstallListener;)V

    return-void
.end method
