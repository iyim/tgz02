.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogueEntity"
.end annotation


# instance fields
.field private answer:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;

.field private query:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAnswer()Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->answer:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->query:Ljava/lang/String;

    return-object v0
.end method

.method public setAnswer(Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->answer:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;

    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->query:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogueEntity{query=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", answer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$DialogueEntity;->answer:Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
