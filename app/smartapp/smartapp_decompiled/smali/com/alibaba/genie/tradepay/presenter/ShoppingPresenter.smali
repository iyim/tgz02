.class public Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;
.super Lcom/alibaba/genie/tradepay/mvp/IMvpPresenter;
.source "ShoppingPresenter.java"

# interfaces
.implements Lcom/alibaba/genie/tradepay/presenter/ShoppingCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/tradepay/mvp/IMvpPresenter<",
        "Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;",
        ">;",
        "Lcom/alibaba/genie/tradepay/presenter/ShoppingCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShoppingPresenter"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/genie/tradepay/mvp/IMvpPresenter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getSearchEmptyRecommandData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->showSearchResultEmptyPage(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCancelVoicePay(Z)V
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onCancelVoicePay(Z)V

    :cond_0
    return-void
.end method

.method public onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .locals 9
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

    .line 47
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/tradepay/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetCateList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/mtop/response/ShoppingCampaignTabItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetail(Lcom/alibaba/genie/tradepay/bean/GoodInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseDataModule;)V

    :cond_0
    return-void
.end method

.method public onGetRecommandGoods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onGetRecommandGoods(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public putOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putOrderSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/tradepay/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/tradepay/activity/IShoppingMvpView;->onPutOrderSuccess(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingOrderConfirmResult;)V

    :cond_0
    return-void
.end method

.method public searchGoodsListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public searchGoodsListSuccess(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/tradepay/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
