.class public Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaEntity"
.end annotation


# instance fields
.field private mediaURL:Ljava/lang/String;

.field private txt:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMediaURL()Ljava/lang/String;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->mediaURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTxt()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->txt:Ljava/lang/String;

    return-object v0
.end method

.method public setMediaURL(Ljava/lang/String;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->mediaURL:Ljava/lang/String;

    return-void
.end method

.method public setTxt(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->txt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaEntity{txt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->txt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediaURL=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/tts/mtop/MtopAlibabaAicloudTtsQueryDeviceVoiceDetailResponseData$MediaEntity;->mediaURL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
