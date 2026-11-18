.class public Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;
.super Ljava/lang/Object;
.source "UserInfoRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.user.externalInfo.get"

    .line 20
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->authInfo:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->type:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/tradepay/mtop/request/UserInfoRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
