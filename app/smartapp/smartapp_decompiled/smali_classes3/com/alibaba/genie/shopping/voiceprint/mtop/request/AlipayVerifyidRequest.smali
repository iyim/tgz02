.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;
.super Ljava/lang/Object;
.source "AlipayVerifyidRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.voiceprint.alipayVerifyId.get"

    .line 22
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 28
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method private setPreApiName(Ljava/lang/String;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipayVerifyidRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
