.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;
.super Ljava/lang/Object;
.source "ModifysoundprintRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.modifysoundprint"

    .line 16
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->name:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->position:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->uuid:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 114
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->position:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
