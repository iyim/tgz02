.class public Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "ShoppingOrderConfirmResponse.java"


# instance fields
.field private data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;


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
.method public getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingOrderConfirmResponse{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponse;->data:Lcom/alibaba/genie/shopping/mtop/response/ShoppingOrderConfirmResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
