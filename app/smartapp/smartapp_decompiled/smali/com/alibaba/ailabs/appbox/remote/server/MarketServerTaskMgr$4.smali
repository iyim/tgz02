.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;
.super Ljava/lang/Object;
.source "MarketServerTaskMgr.java"

# interfaces
.implements Lcom/taobao/downloader/request/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->getDownloadListener(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lcom/taobao/downloader/request/DownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field errMsg:Ljava/lang/String;

.field path:Ljava/lang/String;

.field progress:I

.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

.field final synthetic val$fromClientBundle:Landroid/os/Bundle;

.field final synthetic val$keyToClientBundle:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$fromClientBundle:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$keyToClientBundle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, -0x15

    .line 412
    iput p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->progress:I

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 436
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->errMsg:Ljava/lang/String;

    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadError --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 445
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->path:Ljava/lang/String;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadFinish --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 4

    .line 420
    iget v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->progress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 423
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->progress:I

    .line 424
    rem-int/lit8 v0, p1, 0x14

    if-nez v0, :cond_1

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloadProgress --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_1
    rem-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send download progress --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadProgress"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 429
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$url:Ljava/lang/String;

    aput-object v3, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "DownloadListener"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 430
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$keyToClientBundle:Ljava/lang/String;

    const/16 v2, 0x2712

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 1

    .line 454
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDownloadStateChange --> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish(Z)V
    .locals 4

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->remove()V

    const/4 v0, 0x4

    .line 463
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$url:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->path:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->errMsg:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const v2, -0x186d3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "DownloadListener"

    const-string v1, "onFinish"

    invoke-static {p1, v1, v0}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->getJson(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 464
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$fromClientBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$4;->val$keyToClientBundle:Ljava/lang/String;

    const/16 v2, 0x2712

    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/ailabs/appbox/remote/server/ServerUtil;->exeClientMethodByJson(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 0

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onNetworkLimit --> "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/taobao/downloader/request/Param;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MarketTaskMgr-tag"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
