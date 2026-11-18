.class public Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "MtopAlibabaAicloudTPhotoGetTokenResponse.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lmtopsdk/mtop/domain/BaseOutDo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getData()Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;->data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;->getData()Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/response/MtopAlibabaAicloudTPhotoGetTokenResponse;->data:Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;

    return-void
.end method
