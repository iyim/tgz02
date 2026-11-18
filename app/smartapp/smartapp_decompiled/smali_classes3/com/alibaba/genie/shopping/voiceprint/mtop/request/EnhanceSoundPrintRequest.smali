.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;
.super Ljava/lang/Object;
.source "EnhanceSoundPrintRequest.java"

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

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.addsoundprint"

    .line 15
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 20
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_ECODE:Z

    .line 30
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->name:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->position:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->uuid:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->name:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->position:Ljava/lang/String;

    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->uuid:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
