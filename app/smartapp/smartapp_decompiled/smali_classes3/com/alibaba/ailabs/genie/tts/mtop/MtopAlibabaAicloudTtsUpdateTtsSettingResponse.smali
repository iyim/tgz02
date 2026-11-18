.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponse;
.super Lmtopsdk/mtop/domain/BaseOutDo;
.source "MtopAlibabaAicloudTtsUpdateTtsSettingResponse.java"


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;


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
.method public getData()Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponse;->data:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;

    return-object v0
.end method

.method public bridge synthetic getData()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponse;->getData()Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;

    move-result-object v0

    return-object v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponse;->data:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsUpdateTtsSettingResponseData;

    return-void
.end method
