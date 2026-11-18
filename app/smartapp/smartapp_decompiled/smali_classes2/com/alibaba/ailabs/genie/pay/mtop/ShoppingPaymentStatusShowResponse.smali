.class public Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingPaymentStatusShowResponse.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;


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
.method public getData()Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponse;->data:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponse;->data:Lcom/alibaba/ailabs/genie/pay/mtop/ShoppingPaymentStatusShowResponseData;

    return-void
.end method
