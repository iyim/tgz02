.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTtsUpdateTtsSettingRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private characterId:J

.field private deviceMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.ai.CharacterMarketService.setDeviceCharacter"

    .line 10
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 11
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_ECODE:Z

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_SESSION:Z

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterId()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->characterId:J

    return-wide v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->deviceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setCharacterId(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->characterId:J

    return-void
.end method

.method public setDeviceMode(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->deviceMode:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
