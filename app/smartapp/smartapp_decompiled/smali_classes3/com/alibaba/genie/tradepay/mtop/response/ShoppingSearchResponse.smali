.class public Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingSearchResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;


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
.method public getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponse;->getData()Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponse;->data:Lcom/alibaba/genie/tradepay/mtop/response/ShoppingSearchResponseData;

    return-void
.end method
