.class public Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;
.super Ljava/lang/Object;
.source "ShoppingOrderConfirmRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private delieverId:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private payPrice:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private skuId:Ljava/lang/String;

.field private ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.shopping.order.confirm"

    .line 19
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 25
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_ECODE:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->itemId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->quantity:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->skuId:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->authInfo:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->delieverId:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->payPrice:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->ttid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDelieverId()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->delieverId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getPayPrice()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->payPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->quantity:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDelieverId(Ljava/lang/String;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->delieverId:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 134
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setPayPrice(Ljava/lang/String;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->payPrice:Ljava/lang/String;

    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->quantity:Ljava/lang/String;

    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->skuId:Ljava/lang/String;

    return-void
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->ttid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingOrderConfirmRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
