.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;
.super Ljava/lang/Object;
.source "SecurityRiskCheckRequest.java"

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 12
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->VERSION:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.securityRisk.check"

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAiServiceContext()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->aiServiceContext:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCtuParams()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->ctuParams:Ljava/lang/String;

    return-object v0
.end method

.method public getNEED_ECODE()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->NEED_ECODE:Z

    return v0
.end method

.method public getNEED_SESSION()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->NEED_SESSION:Z

    return v0
.end method

.method public getRiskType()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->riskType:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAiServiceContext(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->aiServiceContext:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setCtuParams(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->ctuParams:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setRiskType(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->riskType:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/SecurityRiskCheckRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
