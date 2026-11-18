.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingPaymentStatusShowResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;


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
.method public getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingPaymentStatusShowResponseData;

    return-void
.end method
