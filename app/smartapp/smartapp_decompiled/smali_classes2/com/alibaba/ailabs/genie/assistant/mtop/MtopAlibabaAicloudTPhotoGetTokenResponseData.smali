.class public Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;
.super Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;
.source "MtopAlibabaAicloudTPhotoGetTokenResponseData.java"


# instance fields
.field private model:Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getModel()Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;->model:Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;

    return-object v0
.end method

.method public setModel(Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/mtop/MtopAlibabaAicloudTPhotoGetTokenResponseData;->model:Lcom/alibaba/ailabs/genie/assistant/mtop/AicloudTPhotoTokenData;

    return-void
.end method
