.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingPaymentRequestSendResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponse;->getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingPaymentRequestSendResponseData;

    return-void
.end method
