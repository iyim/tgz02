.class public Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;
.super Ljava/lang/Object;
.source "ShoppingItemSelectRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private skuId:Ljava/lang/String;

.field private ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.shopping.item.select"

    .line 19
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 25
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_ECODE:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->itemId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->skuId:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->authInfo:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->ttid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->skuId:Ljava/lang/String;

    return-void
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->ttid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingItemSelectRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
