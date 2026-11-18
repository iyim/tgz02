.class public interface abstract Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;
.super Ljava/lang/Object;
.source "IShoppingMvpView.java"

# interfaces
.implements Lcom/alibaba/genie/tradepay/mvp/IMvpView;


# virtual methods
.method public abstract onCancelVoicePay(Z)V
.end method

.method public abstract onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemAddressData;",
            ">;",
            "Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;)V
.end method

.method public abstract onGetRecommandGoods(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPutOrderSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;)V
.end method

.method public abstract showSearchResultEmptyPage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showSearchResultPage(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation
.end method
