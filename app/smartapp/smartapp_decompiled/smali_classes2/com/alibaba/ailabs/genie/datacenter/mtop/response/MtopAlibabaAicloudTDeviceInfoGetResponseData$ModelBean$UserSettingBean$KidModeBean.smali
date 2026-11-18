.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KidModeBean"
.end annotation


# instance fields
.field private antiAddictionEnd:Ljava/lang/String;

.field private antiAddictionStart:Ljava/lang/String;

.field private dailyAvailableTime:I

.field private enable:Z

.field private enablePass:Z

.field private kidModeVersion:I

.field private password:Ljava/lang/String;

.field private singleAvailableTime:I

.field private voiceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAntiAddictionEnd()Ljava/lang/String;
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->antiAddictionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getAntiAddictionStart()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->antiAddictionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyAvailableTime()I
    .locals 1

    .line 594
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->dailyAvailableTime:I

    return v0
.end method

.method public getKidModeVersion()I
    .locals 1

    .line 586
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->kidModeVersion:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleAvailableTime()I
    .locals 1

    .line 602
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->singleAvailableTime:I

    return v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->voiceType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 578
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->enable:Z

    return v0
.end method

.method public isEnablePass()Z
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->enablePass:Z

    return v0
.end method

.method public setAntiAddictionEnd(Ljava/lang/String;)V
    .locals 0

    .line 550
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->antiAddictionEnd:Ljava/lang/String;

    return-void
.end method

.method public setAntiAddictionStart(Ljava/lang/String;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->antiAddictionStart:Ljava/lang/String;

    return-void
.end method

.method public setDailyAvailableTime(I)V
    .locals 0

    .line 598
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->dailyAvailableTime:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 582
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->enable:Z

    return-void
.end method

.method public setEnablePass(Z)V
    .locals 0

    .line 566
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->enablePass:Z

    return-void
.end method

.method public setKidModeVersion(I)V
    .locals 0

    .line 590
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->kidModeVersion:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 558
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setSingleAvailableTime(I)V
    .locals 0

    .line 606
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->singleAvailableTime:I

    return-void
.end method

.method public setVoiceType(Ljava/lang/String;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$KidModeBean;->voiceType:Ljava/lang/String;

    return-void
.end method
