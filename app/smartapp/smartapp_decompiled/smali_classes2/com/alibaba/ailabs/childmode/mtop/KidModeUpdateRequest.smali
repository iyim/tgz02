.class public Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;
.super Ljava/lang/Object;
.source "KidModeUpdateRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private kidModeDTO:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.device.kidMode.update"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->kidModeDTO:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getKidModeDTO()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->kidModeDTO:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setKidModeDTO(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->kidModeDTO:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/mtop/KidModeUpdateRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
