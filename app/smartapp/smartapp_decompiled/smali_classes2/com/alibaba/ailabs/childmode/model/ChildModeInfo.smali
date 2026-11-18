.class public Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;
.super Ljava/lang/Object;
.source "ChildModeInfo.java"


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

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAntiAddictionEnd()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->antiAddictionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getAntiAddictionStart()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->antiAddictionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getDailyAvailableTime()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->dailyAvailableTime:I

    return v0
.end method

.method public getKidModeVersion()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->kidModeVersion:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleAvailableTime()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->singleAvailableTime:I

    return v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->voiceType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->enable:Z

    return v0
.end method

.method public isEnablePass()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->enablePass:Z

    return v0
.end method

.method public setAntiAddictionEnd(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->antiAddictionEnd:Ljava/lang/String;

    return-void
.end method

.method public setAntiAddictionStart(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->antiAddictionStart:Ljava/lang/String;

    return-void
.end method

.method public setDailyAvailableTime(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->dailyAvailableTime:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->enable:Z

    return-void
.end method

.method public setEnablePass(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->enablePass:Z

    return-void
.end method

.method public setKidModeVersion(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->kidModeVersion:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->password:Ljava/lang/String;

    return-void
.end method

.method public setSingleAvailableTime(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->singleAvailableTime:I

    return-void
.end method

.method public setVoiceType(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/model/ChildModeInfo;->voiceType:Ljava/lang/String;

    return-void
.end method
