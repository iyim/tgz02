.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;
.super Ljava/lang/Object;
.source "ListswitchRequest.java"

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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.soundprint.listswitch"

    .line 16
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 21
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_ECODE:Z

    .line 31
    iput-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
