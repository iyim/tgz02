.class public Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;
.super Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
.source "ShoppingPresenter.java"

# interfaces
.implements Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/genie/shopping/mvp/IMvpPresenter<",
        "Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;",
        ">;",
        "Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;"
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

    .line 27
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public cancelVoicePay()V
    .locals 2

    .line 164
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->cancelVoicePay(Ljava/lang/String;)V

    return-void
.end method

.method public getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 49
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getGoodDetail(Ljava/lang/String;)V
    .locals 2

    .line 77
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->getGoodDetail(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getRecommandGoods()V
    .locals 2

    .line 67
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->getRecommandGoods(Ljava/lang/String;)V

    return-void
.end method

.method public getSearchEmptyRecommandData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->showSearchResultEmptyPage(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onCancelVoicePay(Z)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onCancelVoicePay(Z)V

    :cond_0
    return-void
.end method

.method public onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V
    .locals 9
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

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetCateList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
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

    if-eqz p1, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignTabItem;

    if-eqz p1, :cond_0

    .line 135
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignTabItem;->id:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->searchRecommand(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetGoodDetail(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V

    :cond_0
    return-void
.end method

.method public onGetRecommandGoods(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onGetRecommandGoods(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 62
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public putOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onPutOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public putOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->onPutOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V

    :cond_0
    return-void
.end method

.method public searchGoodsList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 33
    new-instance v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->search(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public searchGoodsListFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 127
    new-instance p1, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->getShoppingCateData(Ljava/lang/String;)V

    return-void
.end method

.method public searchGoodsListSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/genie/shopping/bean/GoodInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/presenter/ShoppingPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;

    invoke-interface {v0, p1}, Lcom/alibaba/genie/shopping/activity/IShoppingMvpView;->showSearchResultPage(Ljava/util/List;)V

    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    new-instance p1, Lcom/alibaba/genie/shopping/model/ShoppingModel;

    invoke-direct {p1, p0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;-><init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/model/ShoppingModel;->getShoppingCateData(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
