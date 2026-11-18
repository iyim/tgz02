.class Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;
.super Ljava/lang/Object;
.source "MarketTabFragment.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->getMtopCallback()Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {p2}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "onError"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getMarketByCate"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    const/4 p2, -0x1

    iput p2, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loaddingIndex:I

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMarketByCate"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMarketByCate onSuccess traceid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getTraceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketTabFragment"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-static {v1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$000(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getMarketByCate_success"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->access$200(Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;Ljava/lang/String;)V

    .line 290
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment$2;->this$0:Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;

    const/4 v0, -0x1

    iput v0, p1, Lcom/alibaba/ailabs/appbox/fragment/MarketTabFragment;->loaddingIndex:I

    return-void
.end method
