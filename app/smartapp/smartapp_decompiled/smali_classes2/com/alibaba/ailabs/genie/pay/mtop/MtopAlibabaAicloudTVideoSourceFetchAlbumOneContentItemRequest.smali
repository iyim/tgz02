.class public Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private albumRawId:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private botId:Ljava/lang/String;

.field private contentRawId:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private pageNum:Ljava/lang/String;

.field private pageSize:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "mtop.alibaba.aicloud.t.videoSource.fetchAlbumOneContentItem"

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->API_NAME:Ljava/lang/String;

    const-string v0, "1.0"

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->VERSION:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_ECODE:Z

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_SESSION:Z

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->albumRawId:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageSize:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->source:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->botId:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageNum:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->authInfo:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->contentRawId:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->memberId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumRawId()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->albumRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBotId()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentRawId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->contentRawId:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageNum()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSize()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAlbumRawId(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->albumRawId:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setBotId(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->botId:Ljava/lang/String;

    return-void
.end method

.method public setContentRawId(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->contentRawId:Ljava/lang/String;

    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->memberId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 149
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setPageNum(Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageNum:Ljava/lang/String;

    return-void
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->pageSize:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->source:Ljava/lang/String;

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/MtopAlibabaAicloudTVideoSourceFetchAlbumOneContentItemRequest;->VERSION:Ljava/lang/String;

    return-void
.end method
