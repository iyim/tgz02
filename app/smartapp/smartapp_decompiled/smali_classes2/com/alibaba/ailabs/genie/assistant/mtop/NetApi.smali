.class public final Lcom/alibaba/ailabs/genie/assistant/mtop/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAicloudTPhotoToken(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 23
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/mtop/request/MtopAlibabaAicloudTPhotoGetTokenRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/request/MtopAlibabaAicloudTPhotoGetTokenRequest;-><init>()V

    .line 24
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/request/MtopAlibabaAicloudTPhotoGetTokenRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static updateCorpusData(ILcom/alibaba/ailabs/tg/mtop/OnResponseListener;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 14
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/mtop/request/UploadCorpusRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/assistant/mtop/request/UploadCorpusRequest;-><init>()V

    .line 15
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->getInstance()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfoManager;->getAuthInfo()Lcom/alibaba/ailabs/genie/assistant/mtop/AuthInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/mtop/request/UploadCorpusRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1, p2}, Lcom/alibaba/ailabs/genie/assistant/mtop/request/UploadCorpusRequest;->setData(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/genie/assistant/mtop/response/CorpusTipGetResponse;

    move-object v3, p1

    move v4, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
