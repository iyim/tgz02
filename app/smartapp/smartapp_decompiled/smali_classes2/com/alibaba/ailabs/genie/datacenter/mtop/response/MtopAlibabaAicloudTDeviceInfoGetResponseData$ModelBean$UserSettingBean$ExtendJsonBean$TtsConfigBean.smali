.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TtsConfigBean"
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

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEncode()Ljava/lang/String;
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->encode:Ljava/lang/String;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .line 857
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->pitch:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 865
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->sampleRate:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .line 849
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->speechRate:I

    return v0
.end method

.method public getVoice()Ljava/lang/String;
    .locals 1

    .line 825
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->voice:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    .line 841
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->volume:I

    return v0
.end method

.method public setEncode(Ljava/lang/String;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->encode:Ljava/lang/String;

    return-void
.end method

.method public setPitch(I)V
    .locals 0

    .line 861
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->pitch:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 869
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->sampleRate:I

    return-void
.end method

.method public setSpeechRate(I)V
    .locals 0

    .line 853
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->speechRate:I

    return-void
.end method

.method public setVoice(Ljava/lang/String;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->voice:Ljava/lang/String;

    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 845
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$ExtendJsonBean$TtsConfigBean;->volume:I

    return-void
.end method
