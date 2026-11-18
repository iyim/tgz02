.class public Lcom/alibaba/genie/shopping/model/ShoppingModel;
.super Lcom/alibaba/genie/shopping/model/BaseModel;
.source "ShoppingModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ShoppingModel"


# instance fields
.field private mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

.field protected mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/model/BaseModel;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    return-void
.end method


# virtual methods
.method public cancelVoicePay(Ljava/lang/String;)V
    .locals 1

    const v0, 0x186a9

    .line 115
    invoke-static {p1, p0, v0}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->cancelVoicePay(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get all detail request, authInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", addressId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    move-object v2, p3

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skuId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3

    move-object v1, p4

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v8, 0x186a4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    .line 75
    invoke-static/range {v2 .. v8}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method

.method public getDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get detail request, authInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skuId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    move-object v1, p3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x186a3

    .line 69
    invoke-static {p1, p2, p3, p0, v0}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->getDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method

.method public getGoodDetail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGoodDetail, authInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v1, p2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x186ab

    .line 125
    invoke-static {p1, p2, p0, v0}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->getGoodDetail(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method

.method public getRecommandGoods(Ljava/lang/String;)V
    .locals 2

    const v0, 0x186a8

    const-string v1, "orderDetail"

    .line 98
    invoke-static {p1, p0, v0, v1}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->getShoppingCateData(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getShoppingCateData(Ljava/lang/String;)V
    .locals 2

    const v0, 0x186a8

    const-string v1, "search"

    .line 84
    invoke-static {p1, p0, v0, v1}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->getShoppingCateData(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    const-string v4, "; errorMessage="

    const-string v5, "jesonma"

    const-string v6, "null"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_9

    .line 261
    :pswitch_1
    iget-object v3, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v3, v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetGoodDetailInfoFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get new good detail response, errorCode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v6

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 287
    :pswitch_2
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onCancelVoicePay(Z)V

    goto/16 :goto_9

    .line 284
    :pswitch_3
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    if-eqz p4, :cond_2

    move-object/from16 v2, p4

    check-cast v2, Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-interface {v1, v3, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetCateList(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 280
    :pswitch_4
    iget-object v3, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v3, v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->putOrderFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "put order failure, errorCode="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 276
    :pswitch_5
    iget-object v7, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v7 .. v14}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get all detail failure, errorCode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, v6

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move-object v2, v6

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 272
    :pswitch_6
    iget-object v7, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v7, v3}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetGoodDetail(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get detail failure, errorCode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, v6

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_6

    goto :goto_6

    :cond_6
    move-object v2, v6

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 269
    :pswitch_7
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v3}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->getSearchEmptyRecommandData(Ljava/util/List;)V

    goto :goto_9

    .line 265
    :pswitch_8
    iget-object v3, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v3, v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->searchGoodsListFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "search order response, errorCode="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move-object v1, v6

    :goto_7
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_8

    goto :goto_8

    :cond_8
    move-object v2, v6

    :goto_8
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string v2, "null"

    const-string v3, "jesonma"

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 133
    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;->getMsgCode()Ljava/lang/String;

    move-result-object v4

    .line 140
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;->getMsgInfo()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    move-object v5, v1

    .line 143
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGoodDetail response, shoppingGetDetailResponseDataModule="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v2, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v2, v4, v5, v1}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetGoodDetailInfoSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponseDataModule;)V

    goto/16 :goto_4

    .line 243
    :pswitch_2
    move-object/from16 v2, p1

    check-cast v2, Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponse;

    if-eqz v2, :cond_2

    .line 245
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponseData;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 246
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponseData;->getModel()Z

    move-result v1

    .line 249
    :cond_2
    iget-object v2, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v2, v1}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onCancelVoicePay(Z)V

    goto/16 :goto_4

    .line 233
    :pswitch_3
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponse;

    if-eqz v1, :cond_3

    .line 235
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponseData;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignList;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignList;->campaignTabDTOList:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v1, v4

    .line 239
    :goto_1
    iget-object v2, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    if-eqz p3, :cond_4

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/String;

    :cond_4
    invoke-interface {v2, v1, v4}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetCateList(Ljava/util/List;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 224
    :pswitch_4
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;

    if-eqz v1, :cond_5

    .line 226
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put order success, shoppingOrderConfirmResponse="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;

    move-result-object v4

    .line 230
    :cond_5
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v4}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->putOrderSuccess(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResult;)V

    goto/16 :goto_4

    .line 205
    :pswitch_5
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;

    if-eqz v1, :cond_6

    .line 206
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 207
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v4

    iget-object v4, v4, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->resultCode:Ljava/lang/String;

    .line 208
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v5

    iget-object v5, v5, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->resultMsg:Ljava/lang/String;

    .line 209
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v6

    iget-object v6, v6, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->voiceText:Ljava/lang/String;

    .line 210
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v7

    iget-object v7, v7, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->orderGroup:Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;

    .line 211
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v8

    iget-object v8, v8, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->addressList:Ljava/util/List;

    .line 212
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v9

    iget-object v9, v9, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->tbNickName:Ljava/lang/String;

    .line 213
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponseModule;->extendInfo:Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;

    move-object/from16 v16, v1

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object v4, v9

    goto :goto_2

    :cond_6
    move-object v11, v4

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    .line 219
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get all detail success, resultCode="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; resultMsg="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; voiceText="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; orderGroup="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v2

    :goto_3
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; addressList="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_8

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; tbNickName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v10, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    move-object/from16 v17, v4

    invoke-interface/range {v10 .. v17}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetAllGoodDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/genie/shopping/bean/shopping/OrderGroup;Ljava/util/List;Lcom/alibaba/genie/shopping/bean/shopping/GoodExtendInfo;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 189
    :pswitch_6
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponse;

    if-eqz v1, :cond_9

    .line 190
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseData;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseModule;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 191
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseModule;

    move-result-object v1

    iget-object v4, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponseModule;->goodinfo:Lcom/alibaba/genie/shopping/bean/GoodInfo;

    .line 194
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get detail success, goodInfo="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/alibaba/genie/shopping/bean/GoodInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v4}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetGoodDetail(Lcom/alibaba/genie/shopping/bean/GoodInfo;)V

    goto/16 :goto_4

    .line 157
    :pswitch_7
    move-object/from16 v2, p1

    check-cast v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;

    if-eqz v2, :cond_b

    .line 159
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;->getModel()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 160
    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponseData;->getModel()Ljava/util/List;

    move-result-object v4

    .line 163
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_d

    .line 164
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v5, :cond_d

    .line 165
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;

    if-eqz v1, :cond_c

    .line 167
    new-instance v3, Lcom/alibaba/genie/shopping/bean/GoodInfo;

    invoke-direct {v3, v1}, Lcom/alibaba/genie/shopping/bean/GoodInfo;-><init>(Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v1, 0x1

    .line 170
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;

    if-eqz v1, :cond_d

    .line 172
    new-instance v3, Lcom/alibaba/genie/shopping/bean/GoodInfo;

    invoke-direct {v3, v1}, Lcom/alibaba/genie/shopping/bean/GoodInfo;-><init>(Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemData;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz p3, :cond_11

    .line 177
    move-object/from16 v1, p3

    check-cast v1, Ljava/lang/String;

    const-string v3, "search"

    .line 178
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 179
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->getSearchEmptyRecommandData(Ljava/util/List;)V

    goto :goto_4

    :cond_e
    const-string v3, "orderDetail"

    .line 180
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 182
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v2}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->onGetRecommandGoods(Ljava/util/List;)V

    goto :goto_4

    .line 148
    :pswitch_8
    move-object/from16 v1, p1

    check-cast v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "search order response, ShoppingSearchResponse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_f
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_10

    .line 151
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponseData;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponseData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchItemList;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 152
    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponseData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchItemList;

    move-result-object v1

    iget-object v4, v1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchItemList;->itemDTOList:Ljava/util/List;

    .line 154
    :cond_10
    iget-object v1, v0, Lcom/alibaba/genie/shopping/model/ShoppingModel;->mShoppingCallback:Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;

    invoke-interface {v1, v4}, Lcom/alibaba/genie/shopping/presenter/ShoppingCallback;->searchGoodsListSuccess(Ljava/util/List;)V

    :cond_11
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x186a1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put order request, authInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", itemId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skuId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    move-object v2, p3

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", quantity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_3

    move-object v2, p4

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delieverId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_4

    move-object v2, p5

    goto :goto_4

    :cond_4
    move-object v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", payPrice="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_5

    move-object/from16 v1, p6

    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jesonma"

    invoke-static {v1, v0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v9, 0x186a5

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p0

    .line 111
    invoke-static/range {v2 .. v9}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x186a1

    .line 59
    invoke-static {p1, p2, p0, v0}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->search(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public searchRecommand(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const v0, 0x186a2

    .line 93
    invoke-static {p1, p2, p0, v0, p3}, Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;->searchRecommand(Ljava/lang/String;ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
