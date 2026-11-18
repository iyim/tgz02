.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;
.super Ljava/lang/Object;
.source "PayPasswordCreateRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private soundPrintInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.paypassword.create"

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 27
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_ECODE:Z

    .line 37
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->soundPrintInfo:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method private setPreApiName(Ljava/lang/String;)V
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundPrintInfo()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->soundPrintInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setSoundPrintInfo(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->soundPrintInfo:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordCreateRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
