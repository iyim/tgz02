.class final Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;
.super Ljava/lang/Object;
.source "MarketMtopUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->collectApplet2(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/genie/second/MtopClient$Callback<",
        "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$bean:Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectApplet"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$appId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCancel"

    const-string v2, "false"

    .line 480
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -- "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onError"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$page:Ljava/lang/String;

    const-string p2, "collectAppletFinish"

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "collectApplet"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/SPUtil;->removeAppidHasUninstalled(Ljava/lang/String;)Z

    .line 448
    new-instance v0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2$1;-><init>(Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "\u6570\u636e\u5f02\u5e38"

    const-string/jumbo v2, "\u6536\u85cf\u5931\u8d25"

    .line 462
    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 467
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$appId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCancel"

    const-string v2, "false"

    .line 468
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$2;->val$page:Ljava/lang/String;

    const-string v1, "collectAppletFinish"

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
