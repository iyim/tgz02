.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;
.super Ljava/lang/Object;
.source "SoundPrintEnablePayRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private enable:Z

.field private printId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.enablepay"

    .line 22
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 28
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_SESSION:Z

    const-wide/16 v1, 0x0

    .line 43
    iput-wide v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->printId:J

    .line 48
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->enable:Z

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method private setPreApiName(Ljava/lang/String;)V
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->API_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintId()J
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->printId:J

    return-wide v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->enable:Z

    return v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->enable:Z

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setPrintId(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->printId:J

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
