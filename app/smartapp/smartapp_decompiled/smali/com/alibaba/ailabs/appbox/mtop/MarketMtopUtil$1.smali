.class final Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;
.super Ljava/lang/Object;
.source "MarketMtopUtil.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->unCollectApplet2(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

.field final synthetic val$page:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$page:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unCollectApplet onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unCollectApplet"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 384
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$appId:Ljava/lang/String;

    const-string v2, "appid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCancel"

    const-string/jumbo v2, "true"

    .line 385
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
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

    .line 387
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$page:Ljava/lang/String;

    const-string p2, "collectAppletFinish"

    invoke-static {p2, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$callback:Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;

    if-eqz v0, :cond_0

    .line 364
    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;->onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    .line 367
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unCollectApplet onSuccess "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "unCollectApplet"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$appId:Ljava/lang/String;

    const-string v3, "appid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "isCancel"

    .line 374
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v1, "success"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil$1;->val$page:Ljava/lang/String;

    const-string v1, "collectAppletFinish"

    invoke-static {v1, p1, v0}, Lcom/alibaba/ailabs/genie/second/utils/UTUtils;->customHit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
