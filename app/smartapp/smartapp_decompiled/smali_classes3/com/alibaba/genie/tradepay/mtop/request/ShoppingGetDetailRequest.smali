.class public Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;
.super Ljava/lang/Object;
.source "ShoppingGetDetailRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private itemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.shopping.getDetail"

    .line 19
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 25
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_ECODE:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->itemId:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->itemId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/ShoppingGetDetailRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
