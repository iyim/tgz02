.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;
.super Ljava/lang/Object;
.source "SoundPrintRemoveRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private printId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.voiceprint.delete"

    .line 23
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 29
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_ECODE:Z

    .line 39
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_SESSION:Z

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->printId:J

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method private setPreApiName(Ljava/lang/String;)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintId()J
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->printId:J

    return-wide v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setPrintId(J)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->printId:J

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
