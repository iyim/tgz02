.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;
.super Ljava/lang/Object;
.source "SecurityRiskConfirmRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private aiServiceContext:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private ctuParams:Ljava/lang/String;

.field private riskType:Ljava/lang/String;

.field private securityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 12
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->VERSION:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.securityRisk.confirm"

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAiServiceContext()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->aiServiceContext:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCtuParams()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->ctuParams:Ljava/lang/String;

    return-object v0
.end method

.method public getNEED_ECODE()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->NEED_ECODE:Z

    return v0
.end method

.method public getNEED_SESSION()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->NEED_SESSION:Z

    return v0
.end method

.method public getRiskType()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->riskType:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->securityId:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAiServiceContext(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->aiServiceContext:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setCtuParams(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->ctuParams:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setRiskType(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->riskType:Ljava/lang/String;

    return-void
.end method

.method public setSecurityId(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->securityId:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskConfirmRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
