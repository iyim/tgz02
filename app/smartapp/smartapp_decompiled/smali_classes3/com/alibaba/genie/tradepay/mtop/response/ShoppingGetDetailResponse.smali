.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingGetDetailResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;


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
.method public getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponse;->getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingGetDetailResponseData;

    return-void
.end method
