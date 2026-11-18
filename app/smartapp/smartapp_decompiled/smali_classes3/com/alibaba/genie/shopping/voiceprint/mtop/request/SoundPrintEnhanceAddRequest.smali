.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;
.super Ljava/lang/Object;
.source "SoundPrintEnhanceAddRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private isEdit:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.isaddedoredited"

    .line 15
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 20
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_ECODE:Z

    .line 30
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->isEdit:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->name:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->position:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getIsEdit()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->isEdit:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setIsEdit(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->isEdit:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->position:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
