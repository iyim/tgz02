.class public Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;
.super Ljava/lang/Object;
.source "ShoppingItemDetailRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private delieverId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private quantity:Ljava/lang/String;

.field private skuId:Ljava/lang/String;

.field private ttid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.shopping.item.show"

    .line 20
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->id:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->authInfo:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->delieverId:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->quantity:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->skuId:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->ttid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getDelieverId()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->delieverId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->quantity:Ljava/lang/String;

    return-object v0
.end method

.method public getSkuId()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->skuId:Ljava/lang/String;

    return-object v0
.end method

.method public getTtid()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->ttid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setDelieverId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->delieverId:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->id:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setQuantity(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->quantity:Ljava/lang/String;

    return-void
.end method

.method public setSkuId(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->skuId:Ljava/lang/String;

    return-void
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->ttid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mtop/request/ShoppingItemDetailRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
