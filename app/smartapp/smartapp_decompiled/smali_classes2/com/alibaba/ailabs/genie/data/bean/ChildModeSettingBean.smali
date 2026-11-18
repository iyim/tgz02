.class public Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
.super Ljava/lang/Object;
.source "ChildModeSettingBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;,
        Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;
    }
.end annotation


# instance fields
.field private antiAddictionEnd:Ljava/lang/String;

.field private antiAddictionStart:Ljava/lang/String;

.field private appConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;",
            ">;"
        }
    .end annotation
.end field

.field private breakTime:I

.field private dailyAvailableTime:I

.field private enable:Z

.field private enablePass:Z

.field private forbiddenTime:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;",
            ">;"
        }
    .end annotation
.end field

.field private kidModeVersion:I

.field private password:Ljava/lang/String;

.field private singleAvailableTime:I

.field private totalTimeEnable:Z

.field private voiceType:Ljava/lang/String;

.field private weekendAvailableTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->singleAvailableTime:I

    const/16 v0, 0xe10

    .line 114
    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->dailyAvailableTime:I

    .line 115
    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->weekendAvailableTime:I

    const/16 v0, 0x258

    .line 116
    iput v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->breakTime:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 387
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    return-object v0
.end method

.method public getAntiAddictionEnd()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->antiAddictionEnd:Ljava/lang/String;

    return-object v0
.end method

.method public getAntiAddictionStart()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->antiAddictionStart:Ljava/lang/String;

    return-object v0
.end method

.method public getAppConfigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->appConfigList:Ljava/util/List;

    return-object v0
.end method

.method public getBreakTime()I
    .locals 1

    .line 217
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->breakTime:I

    return v0
.end method

.method public getDailyAvailableTime()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->dailyAvailableTime:I

    return v0
.end method

.method public getForbiddenTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->forbiddenTime:Ljava/util/List;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->forbiddenTime:Ljava/util/List;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->forbiddenTime:Ljava/util/List;

    return-object v0
.end method

.method public getKidModeVersion()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->kidModeVersion:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getSingleAvailableTime()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->singleAvailableTime:I

    return v0
.end method

.method public getVoiceType()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->voiceType:Ljava/lang/String;

    return-object v0
.end method

.method public getWeekendAvailableTime()I
    .locals 1

    .line 209
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->weekendAvailableTime:I

    return v0
.end method

.method public isEnable()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->enable:Z

    return v0
.end method

.method public isEnablePass()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->enablePass:Z

    return v0
.end method

.method public isTotalTimeEnable()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->totalTimeEnable:Z

    return v0
.end method

.method public setAntiAddictionEnd(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->antiAddictionEnd:Ljava/lang/String;

    return-void
.end method

.method public setAntiAddictionStart(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->antiAddictionStart:Ljava/lang/String;

    return-void
.end method

.method public setAppConfigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;",
            ">;)V"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->appConfigList:Ljava/util/List;

    return-void
.end method

.method public setBreakTime(I)V
    .locals 0

    .line 221
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->breakTime:I

    return-void
.end method

.method public setDailyAvailableTime(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->dailyAvailableTime:I

    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->enable:Z

    return-void
.end method

.method public setEnablePass(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->enablePass:Z

    return-void
.end method

.method public setForbiddenTime(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$ForbiddenTimeBean;",
            ">;)V"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->forbiddenTime:Ljava/util/List;

    return-void
.end method

.method public setKidModeVersion(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->kidModeVersion:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->password:Ljava/lang/String;

    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setEnablePass(Z)V

    goto :goto_0

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->password:Ljava/lang/String;

    const/4 p1, 0x1

    .line 138
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->setEnablePass(Z)V

    :goto_0
    return-void
.end method

.method public setSingleAvailableTime(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->singleAvailableTime:I

    return-void
.end method

.method public setTotalTimeEnable(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->totalTimeEnable:Z

    return-void
.end method

.method public setVoiceType(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->voiceType:Ljava/lang/String;

    return-void
.end method

.method public setWeekendAvailableTime(I)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->weekendAvailableTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 189
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
