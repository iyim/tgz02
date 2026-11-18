.class Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;
.super Ljava/lang/Object;
.source "MarketItemView.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->marketFavorites(ZLandroid/widget/TextView;)V
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
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

.field final synthetic val$tvFavorites:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;Landroid/widget/TextView;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->val$tvFavorites:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 515
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object p1

    const-string p2, "itemCollectClickError"

    const-string v0, "MarketItem"

    invoke-static {p2, v0, p1}, Lcom/alibaba/ailabs/base/util/ReportUtil;->reportItemEvent(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;)V

    return-void
.end method

.method public onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;",
            ">;)V"
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "MarketItemView"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "collectApplet"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/net/rsp/StringResponse;->getModel()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 498
    new-instance p1, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    .line 499
    invoke-static {v2}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$600(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v3}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "custom"

    invoke-static {v2, v3, v4}, Lcom/alibaba/ailabs/appbox/utils/AppUtil;->convertMarketAppItemBean2ApplistDBBean(Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/alibaba/ailabs/appbox/busmessage/InstallListChangeEventMessage;-><init>(ILcom/alibaba/ailabs/appbox/bean/db/ApplistDbBean;)V

    .line 500
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "marketFavorites unCollectApplet2 iapId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$000(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->this$0:Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;->val$tvFavorites:Landroid/widget/TextView;

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;->access$900(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView;ZLandroid/widget/TextView;)V

    .line 505
    :cond_0
    new-instance p1, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9$1;-><init>(Lcom/alibaba/ailabs/appbox/fragment/recommendvh/MarketItemView$9;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
