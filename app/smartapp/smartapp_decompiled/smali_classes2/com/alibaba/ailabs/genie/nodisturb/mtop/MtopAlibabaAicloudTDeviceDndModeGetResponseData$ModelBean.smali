.class public Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;
.super Ljava/lang/Object;
.source "MtopAlibabaAicloudTDeviceDndModeGetResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private actionButton:Z

.field private actionEnd:Ljava/lang/String;

.field private actionStart:Ljava/lang/String;

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

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getActionEnd()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getActionStart()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getDndModeVersion()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dndModeVersion:I

    return v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->start:Ljava/lang/String;

    return-object v0
.end method

.method public isActionButton()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionButton:Z

    return v0
.end method

.method public isActionValue()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionValue:Z

    return v0
.end method

.method public isDsbEasyWakeup()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbEasyWakeup:Z

    return v0
.end method

.method public isDsbMsgNotify()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbMsgNotify:Z

    return v0
.end method

.method public isDsbPhoneNotify()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbPhoneNotify:Z

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 131
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->enable:Z

    return v0
.end method

.method public isMinDarkScreen()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->minDarkScreen:Z

    return v0
.end method

.method public setActionButton(Z)V
    .locals 0

    .line 119
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionButton:Z

    return-void
.end method

.method public setActionEnd(Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionEnd:Ljava/lang/String;

    return-void
.end method

.method public setActionStart(Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionStart:Ljava/lang/String;

    return-void
.end method

.method public setActionValue(Z)V
    .locals 0

    .line 127
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->actionValue:Z

    return-void
.end method

.method public setDndModeVersion(I)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dndModeVersion:I

    return-void
.end method

.method public setDsbEasyWakeup(Z)V
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbEasyWakeup:Z

    return-void
.end method

.method public setDsbMsgNotify(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbMsgNotify:Z

    return-void
.end method

.method public setDsbPhoneNotify(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->dsbPhoneNotify:Z

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 135
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->enable:Z

    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->end:Ljava/lang/String;

    return-void
.end method

.method public setMinDarkScreen(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->minDarkScreen:Z

    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/mtop/MtopAlibabaAicloudTDeviceDndModeGetResponseData$ModelBean;->start:Ljava/lang/String;

    return-void
.end method
