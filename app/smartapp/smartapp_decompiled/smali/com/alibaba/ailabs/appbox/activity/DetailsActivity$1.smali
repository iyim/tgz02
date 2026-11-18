.class Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;
.super Ljava/lang/Object;
.source "DetailsActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->init(Landroid/content/Intent;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

.field final synthetic val$queryId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->val$queryId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMarketInfoById onError s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",s1:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DetailsActivity"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$2;-><init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
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

    const-string v0, "DetailsActivity"

    const-string v1, "getMarketInfoById_success"

    .line 81
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####3333 bean isCollected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\uff1b thread:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "queryCollectedAppletWithPattern"

    .line 88
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/base/util/LogTime;->logTimeMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->this$0:Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;->val$queryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;->access$000(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/base/util/PatternUtils;->getCurrentPattern()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1$1;-><init>(Lcom/alibaba/ailabs/appbox/activity/DetailsActivity$1;Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/appbox/mtop/MarketMtopUtil;->queryCollectedAppletWithPattern(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;)V

    :cond_1
    :goto_0
    return-void
.end method
