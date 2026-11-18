.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private showRawId:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.videoSource.confirmOrderV6"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->source:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->showRawId:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->authInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getShowRawId()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->showRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 124
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->NEED_SESSION:Z

    return-void
.end method

.method public setShowRawId(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->showRawId:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->source:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceConfirmOrderV6Request;->VERSION:Ljava/lang/String;

    return-void
.end method
