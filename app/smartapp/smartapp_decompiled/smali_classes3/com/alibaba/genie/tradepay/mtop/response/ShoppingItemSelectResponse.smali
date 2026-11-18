.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingItemSelectResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;


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
.method public getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponse;->getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingItemSelectResponseData;

    return-void
.end method
