.class public Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceTtsConfigGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private encode:Ljava/lang/String;

.field private pitch:I

.field private sampleRate:I

.field private speechRate:I

.field private voice:Ljava/lang/String;

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEncode()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->encode:Ljava/lang/String;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->pitch:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->sampleRate:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->speechRate:I

    return v0
.end method

.method public getVoice()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->volume:I

    return v0
.end method

.method public setEncode(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->encode:Ljava/lang/String;

    return-void
.end method

.method public setPitch(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->pitch:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->sampleRate:I

    return-void
.end method

.method public setSpeechRate(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->speechRate:I

    return-void
.end method

.method public setVoice(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->voice:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceTtsConfigGetResponseData$ModelBean;->volume:I

    return-void
.end method
