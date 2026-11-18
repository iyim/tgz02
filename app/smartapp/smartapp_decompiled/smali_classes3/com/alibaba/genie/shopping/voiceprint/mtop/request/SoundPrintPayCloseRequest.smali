.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;
.super Ljava/lang/Object;
.source "SoundPrintPayCloseRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private enable:Ljava/lang/String;

.field private printId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.voiceprint.switch.update"

    .line 16
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->printId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->authInfo:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->enable:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getPrintId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->printId:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->enable:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setPrintId(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->printId:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
