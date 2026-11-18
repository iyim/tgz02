.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private botId:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.videoSource.fetchMemberItem"

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 35
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_ECODE:Z

    .line 47
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->source:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->botId:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->authInfo:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->memberId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBotId()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setBotId(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->botId:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->memberId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->source:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchMemberItemRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
