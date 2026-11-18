.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KidModeBean"
.end annotation


# instance fields
.field private antiAddictionEnd:Ljava/lang/String;

.field private antiAddictionStart:Ljava/lang/String;

.field private dailyAvailableTime:Ljava/lang/String;

.field private enable:Ljava/lang/String;

.field private enablePass:Ljava/lang/String;

.field private kidModeVersion:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private singleAvailableTime:Ljava/lang/String;

.field private voiceType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAntiAddictionEnd()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->antiAddictionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getAntiAddictionStart()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->antiAddictionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyAvailableTime()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->dailyAvailableTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getEnablePass()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->enablePass:Ljava/lang/String;

    return-object v0
.end method

.method public getKidModeVersion()Ljava/lang/String;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->kidModeVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleAvailableTime()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->singleAvailableTime:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->voiceType:Ljava/lang/String;

    return-object v0
.end method

.method public setAntiAddictionEnd(Ljava/lang/String;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->antiAddictionEnd:Ljava/lang/String;

    return-void
.end method

.method public setAntiAddictionStart(Ljava/lang/String;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->antiAddictionStart:Ljava/lang/String;

    return-void
.end method

.method public setDailyAvailableTime(Ljava/lang/String;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->dailyAvailableTime:Ljava/lang/String;

    return-void
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->enable:Ljava/lang/String;

    return-void
.end method

.method public setEnablePass(Ljava/lang/String;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->enablePass:Ljava/lang/String;

    return-void
.end method

.method public setKidModeVersion(Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->kidModeVersion:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->password:Ljava/lang/String;

    return-void
.end method

.method public setSingleAvailableTime(Ljava/lang/String;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->singleAvailableTime:Ljava/lang/String;

    return-void
.end method

.method public setVoiceType(Ljava/lang/String;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$KidModeBean;->voiceType:Ljava/lang/String;

    return-void
.end method
