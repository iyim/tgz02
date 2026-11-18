.class Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;
.super Ljava/lang/Object;
.source "OrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

.field final synthetic val$goodInfoTemp:Lcom/alibaba/genie/shopping/bean/GoodInfo;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    iput-object p2, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->val$goodInfoTemp:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    .line 501
    invoke-static {}, Lcom/alibaba/genie/shopping/utils/Utils;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 502
    iget-object p1, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->getPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->val$goodInfoTemp:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    iget-object v2, v2, Lcom/alibaba/genie/shopping/bean/GoodInfo;->itemId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->val$goodInfoTemp:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    .line 503
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "0"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->val$goodInfoTemp:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    iget-object v3, v3, Lcom/alibaba/genie/shopping/bean/GoodInfo;->skuId:Ljava/lang/String;

    :goto_0
    iget-object v4, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v4}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$400(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    .line 504
    invoke-static {v5}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v5}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$500(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;->deliverId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v5, v2

    :goto_1
    iget-object v6, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v6}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    invoke-static {v2}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$600(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;)Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->payInfo:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;

    iget-wide v6, v2, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroupPayInfo;->totalPrice:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v6, v2

    move-object v2, p1

    .line 502
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v7, p0, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity$6;->this$0:Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;

    const/4 v12, 0x2

    const/4 v13, 0x0

    const-string v8, "order_click"

    const-string v9, "shoppin_Order confirmation page"

    const-string v10, "a1z3lt.12021288"

    const-string v11, "1"

    invoke-static/range {v7 .. v13}, Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;->access$700(Lcom/alibaba/genie/shopping/activity/OrderDetailActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_3
    return-void
.end method
