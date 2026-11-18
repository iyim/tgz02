.class Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;
.super Ljava/lang/Object;
.source "MarketServerTaskMgr.java"

# interfaces
.implements Lcom/taobao/downloader/request/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->toDownload(Ljava/lang/String;Lcom/taobao/downloader/request/DownloadRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDownload onDownloadError url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 301
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 303
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDownload onDownloadFinish url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 317
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 319
    invoke-interface {v1, p1, p2}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadFinish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadProgress(I)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 288
    invoke-interface {v1, p1}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadProgress(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDownloadStateChange(Ljava/lang/String;Z)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDownload onDownloadStateChange url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 335
    invoke-interface {v1, p1, p2}, Lcom/taobao/downloader/request/DownloadListener;->onDownloadStateChange(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFinish(Z)V
    .locals 3

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDownload onFinish url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 349
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 354
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 355
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 357
    invoke-interface {v1, p1}, Lcom/taobao/downloader/request/DownloadListener;->onFinish(Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "toDownload onNetworkLimit url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",param:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",networkLimitCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTaskMgr-tag"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 382
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->this$0:Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;->access$000(Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/remote/server/MarketServerTaskMgr$3;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 386
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 387
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/downloader/request/DownloadListener;

    .line 389
    invoke-interface {v1, p1, p2, p3}, Lcom/taobao/downloader/request/DownloadListener;->onNetworkLimit(ILcom/taobao/downloader/request/Param;Lcom/taobao/downloader/request/DownloadListener$NetworkLimitCallback;)V

    goto :goto_0

    :cond_2
    return-void
.end method
