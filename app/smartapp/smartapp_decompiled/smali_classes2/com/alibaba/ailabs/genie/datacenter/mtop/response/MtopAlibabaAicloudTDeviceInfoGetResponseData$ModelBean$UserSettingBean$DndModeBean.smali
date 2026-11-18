.class public Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceInfoGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DndModeBean"
.end annotation


# instance fields
.field private actionButton:Z

.field private actionEnd:J

.field private actionStart:J

.field private actionValue:Z

.field private dndModeVersion:I

.field private dsbEasyWakeup:Z

.field private dsbMsgNotify:Z

.field private dsbPhoneNotify:Z

.field private enable:Z

.field private end:Ljava/lang/String;

.field private minDarkScreen:Z

.field private start:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionEnd()J
    .locals 2

    .line 712
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionEnd:J

    return-wide v0
.end method

.method public getActionStart()J
    .locals 2

    .line 696
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionStart:J

    return-wide v0
.end method

.method public getDndModeVersion()I
    .locals 1

    .line 784
    iget v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dndModeVersion:I

    return v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->start:Ljava/lang/String;

    return-object v0
.end method

.method public isActionButton()Z
    .locals 1

    .line 744
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionButton:Z

    return v0
.end method

.method public isActionValue()Z
    .locals 1

    .line 720
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionValue:Z

    return v0
.end method

.method public isDsbEasyWakeup()Z
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbEasyWakeup:Z

    return v0
.end method

.method public isDsbMsgNotify()Z
    .locals 1

    .line 776
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbMsgNotify:Z

    return v0
.end method

.method public isDsbPhoneNotify()Z
    .locals 1

    .line 752
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbPhoneNotify:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 728
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->enable:Z

    return v0
.end method

.method public isMinDarkScreen()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->minDarkScreen:Z

    return v0
.end method

.method public setActionButton(Z)V
    .locals 0

    .line 748
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionButton:Z

    return-void
.end method

.method public setActionEnd(J)V
    .locals 0

    .line 716
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionEnd:J

    return-void
.end method

.method public setActionStart(J)V
    .locals 0

    .line 700
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionStart:J

    return-void
.end method

.method public setActionValue(Z)V
    .locals 0

    .line 724
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->actionValue:Z

    return-void
.end method

.method public setDndModeVersion(I)V
    .locals 0

    .line 788
    iput p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dndModeVersion:I

    return-void
.end method

.method public setDsbEasyWakeup(Z)V
    .locals 0

    .line 772
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbEasyWakeup:Z

    return-void
.end method

.method public setDsbMsgNotify(Z)V
    .locals 0

    .line 780
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbMsgNotify:Z

    return-void
.end method

.method public setDsbPhoneNotify(Z)V
    .locals 0

    .line 756
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->dsbPhoneNotify:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 732
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->enable:Z

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setMinDarkScreen(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->minDarkScreen:Z

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/mtop/response/MtopAlibabaAicloudTDeviceInfoGetResponseData$ModelBean$UserSettingBean$DndModeBean;->start:Ljava/lang/String;

    return-void
.end method
