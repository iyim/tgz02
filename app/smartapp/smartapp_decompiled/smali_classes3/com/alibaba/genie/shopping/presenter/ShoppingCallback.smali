.class public interface abstract Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;
.super Ljava/lang/Object;
.source "ShoppingCallback.java"


# virtual methods
.method public abstract getSearchEmptyRecommandData(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCancelVoicePay(Z)V
.end method

.method public abstract onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemAddressData;",
            ">;",
            "Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetCateList(Ljava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignTabItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetGoodDetail(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
.end method

.method public abstract onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V
.end method

.method public abstract onGetRecommandGoods(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract putOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract putOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V
.end method

.method public abstract searchGoodsListFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract searchGoodsListSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method
