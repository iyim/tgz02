.class public Lcom/alibaba/genie/shopping/mtop/ShoppingRequestManager;
.super Ljava/lang/Object;
.source "ShoppingRequestManager.java"


# static fields
.field public static final FLAG_SHOPPING_CANCEL_VOICE_PAY:I = 0x186a9

.field public static final FLAG_SHOPPING_GET_ALL_DETAIL:I = 0x186a4

.field public static final FLAG_SHOPPING_GET_CATE_LIST:I = 0x186a8

.field public static final FLAG_SHOPPING_GET_DETAIL:I = 0x186a3

.field public static final FLAG_SHOPPING_GET_GOODDETAIL:I = 0x186ab

.field public static final FLAG_SHOPPING_GET_VOICE_CODE:I = 0x186a7

.field public static final FLAG_SHOPPING_PUT_ORDER:I = 0x186a5

.field public static final FLAG_SHOPPING_QUERY_PAYSTATUS:I = 0x186a6

.field public static final FLAG_SHOPPING_SEARCH:I = 0x186a1

.field public static final FLAG_SHOPPING_SEARCH_EMPTY_RECOMMAD:I = 0x186a2

.field public static final FLAG_SHOPPING_SEND_PHONE_PAY:I = 0x186aa


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cancelVoicePay(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 161
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/SoundPayCancelRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/SoundPayCancelRequest;-><init>()V

    .line 162
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/SoundPayCancelRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request cancelVoicePay; authInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "jesonma"

    invoke-static {v0, p0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/SoundPayCancelResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getAllDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 89
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;-><init>()V

    .line 90
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setId(Ljava/lang/String;)V

    .line 92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setDelieverId(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setSkuId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p4}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setQuantity(Ljava/lang/String;)V

    const-string p0, "10019843@turandot_android_1.1.0.328"

    .line 96
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->setTtid(Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemDetailResponse;

    const/4 v5, 0x0

    move-object v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 72
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;-><init>()V

    .line 73
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;->setItemId(Ljava/lang/String;)V

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;->setSkuId(Ljava/lang/String;)V

    const-string p0, "10019843@turandot_android_1.1.0.328"

    .line 76
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemSelectRequest;->setTtid(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingItemSelectResponse;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getGoodDetail(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 191
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetDetailRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetDetailRequest;-><init>()V

    .line 192
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetDetailRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 193
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetDetailRequest;->setItemId(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetDetailResponse;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getShoppingCateData(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;)V
    .locals 6

    .line 107
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignListRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignListRequest;-><init>()V

    .line 108
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignListRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignListResponse;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static putOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 1

    .line 128
    new-instance v0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;

    invoke-direct {v0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;-><init>()V

    .line 129
    invoke-virtual {v0, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setItemId(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0, p2}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setSkuId(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0, p3}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setQuantity(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, p4}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setDelieverId(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p5}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setPayPrice(Ljava/lang/String;)V

    const-string p0, "10019843@turandot_android_1.1.0.328"

    .line 135
    invoke-virtual {v0, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->setTtid(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object p0

    const-class p2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;

    const/4 p5, 0x0

    move-object p1, v0

    move-object p3, p6

    move p4, p7

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static queryPaymentStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 146
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentStatusShowRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentStatusShowRequest;-><init>()V

    .line 147
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentStatusShowRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentStatusShowRequest;->setOrderCode(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentStatusShowRequest;->setPayOrderCode(Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request pay status; authInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; orderCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; payOrderCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jesonma"

    invoke-static {p1, p0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 58
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingSearchRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingSearchRequest;-><init>()V

    .line 59
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingSearchRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingSearchRequest;->setQ(Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingSearchResponse;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static searchRecommand(Ljava/lang/String;ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;)V
    .locals 6

    .line 113
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignShowRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignShowRequest;-><init>()V

    .line 114
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignShowRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingCampaignShowRequest;->setCampaignId(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingCampaignShowResponse;

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static sendPayToPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 174
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;-><init>()V

    .line 175
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;->setOrderId(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;->setOrderDescription(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingPaymentRequestSendRequest;->setPicture(Ljava/lang/String;)V

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendPayToPhone; orderId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; orderDescription="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; picture="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jesonma"

    invoke-static {p1, p0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
