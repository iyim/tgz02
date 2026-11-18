.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;
.super Ljava/lang/Object;
.source "SwitchInsertorupdateRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private voicePrintSwitch:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.switch.insertorupdate"

    .line 16
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->voicePrintSwitch:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicePrintSwitch()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->voicePrintSwitch:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public setVoicePrintSwitch(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->voicePrintSwitch:Ljava/lang/String;

    return-void
.end method
